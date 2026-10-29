import InitECandidate.Proofs.DeadStages713.Chunk010
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input2816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2815 input2814)).val
theorem input2816_def : input2816 = (.seq input2815 input2814) := by
  unfold input2816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2815 output2814)).val
theorem output2816_def : output2816 = (.seq output2815 output2814) := by
  unfold output2816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2816_skip : Flapjack.WordAlloc.isSkip output2816 = false := by
  rw [output2816_def]
  conv => lhs; cbv
  try rfl
theorem node2816_eq : Flapjack.WordAlloc.removeDeadStructural input2816 value1412 value1 value2 = (output2816, value5, value1) := by
  rw [input2816_def, output2816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2814_eq]
  dsimp only
  rw [node2815_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2816 input2813)).val
theorem input2817_def : input2817 = (.seq input2816 input2813) := by
  unfold input2817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2816 output2813)).val
theorem output2817_def : output2817 = (.seq output2816 output2813) := by
  unfold output2817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2817_skip : Flapjack.WordAlloc.isSkip output2817 = false := by
  rw [output2817_def]
  conv => lhs; cbv
  try rfl
theorem node2817_eq : Flapjack.WordAlloc.removeDeadStructural input2817 value1411 value1 value2 = (output2817, value5, value1) := by
  rw [input2817_def, output2817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2813_eq]
  dsimp only
  rw [node2816_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2817 input2812)).val
theorem input2818_def : input2818 = (.seq input2817 input2812) := by
  unfold input2818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2817 output2812)).val
theorem output2818_def : output2818 = (.seq output2817 output2812) := by
  unfold output2818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2818_skip : Flapjack.WordAlloc.isSkip output2818 = false := by
  rw [output2818_def]
  conv => lhs; cbv
  try rfl
theorem node2818_eq : Flapjack.WordAlloc.removeDeadStructural input2818 value1410 value1 value2 = (output2818, value5, value1) := by
  rw [input2818_def, output2818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2812_eq]
  dsimp only
  rw [node2817_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2818 input2811)).val
theorem input2819_def : input2819 = (.seq input2818 input2811) := by
  unfold input2819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2818 output2811)).val
theorem output2819_def : output2819 = (.seq output2818 output2811) := by
  unfold output2819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2819_skip : Flapjack.WordAlloc.isSkip output2819 = false := by
  rw [output2819_def]
  conv => lhs; cbv
  try rfl
theorem node2819_eq : Flapjack.WordAlloc.removeDeadStructural input2819 value1408 value1 value2 = (output2819, value5, value1) := by
  rw [input2819_def, output2819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2811_eq]
  dsimp only
  rw [node2818_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1414 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24873 (Flapjack.WordLangAddr.addr 24877 0#64)))).val
theorem input2820_def : input2820 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24873 (Flapjack.WordLangAddr.addr 24877 0#64))) := by
  unfold input2820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24873 (Flapjack.WordLangAddr.addr 24877 0#64)))).val
theorem output2820_def : output2820 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24873 (Flapjack.WordLangAddr.addr 24877 0#64))) := by
  unfold output2820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2820_skip : Flapjack.WordAlloc.isSkip output2820 = false := by
  rw [output2820_def]
  conv => lhs; cbv
  try rfl
theorem node2820_eq : Flapjack.WordAlloc.removeDeadStructural input2820 value5 value1 value2 = (output2820, value1414, value1) := by
  rw [input2820_def, output2820_def]
  try (conv => lhs; cbv)
  try rfl

def value1415 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24877, 24865)])).val
theorem input2821_def : input2821 = (Flapjack.WordLangProgHOL.move 0 [(24877, 24865)]) := by
  unfold input2821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24877, 24865)])).val
theorem output2821_def : output2821 = (Flapjack.WordLangProgHOL.move 0 [(24877, 24865)]) := by
  unfold output2821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2821_skip : Flapjack.WordAlloc.isSkip output2821 = false := by
  rw [output2821_def]
  conv => lhs; cbv
  try rfl
theorem node2821_eq : Flapjack.WordAlloc.removeDeadStructural input2821 value1414 value1 value2 = (output2821, value1415, value1) := by
  rw [input2821_def, output2821_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2821 input2820)).val
theorem input2822_def : input2822 = (.seq input2821 input2820) := by
  unfold input2822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2821 output2820)).val
theorem output2822_def : output2822 = (.seq output2821 output2820) := by
  unfold output2822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2822_skip : Flapjack.WordAlloc.isSkip output2822 = false := by
  rw [output2822_def]
  conv => lhs; cbv
  try rfl
theorem node2822_eq : Flapjack.WordAlloc.removeDeadStructural input2822 value5 value1 value2 = (output2822, value1415, value1) := by
  rw [input2822_def, output2822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2820_eq]
  dsimp only
  rw [node2821_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1416 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24873 0#64))).val
theorem input2823_def : input2823 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24873 0#64)) := by
  unfold input2823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24873 0#64))).val
theorem output2823_def : output2823 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24873 0#64)) := by
  unfold output2823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2823_skip : Flapjack.WordAlloc.isSkip output2823 = false := by
  rw [output2823_def]
  conv => lhs; cbv
  try rfl
theorem node2823_eq : Flapjack.WordAlloc.removeDeadStructural input2823 value1415 value1 value2 = (output2823, value1416, value1) := by
  rw [input2823_def, output2823_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24869 0#64))).val
theorem input2824_def : input2824 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24869 0#64)) := by
  unfold input2824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2824_def : output2824 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2824_skip : Flapjack.WordAlloc.isSkip output2824 = true := by
  rw [output2824_def]
  conv => lhs; cbv
  try rfl
theorem node2824_eq : Flapjack.WordAlloc.removeDeadStructural input2824 value1416 value1 value2 = (output2824, value1416, value1) := by
  rw [input2824_def, output2824_def]
  try (conv => lhs; cbv)
  try rfl

def value1417 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24865 24857 (Flapjack.WordRegImm.reg 24861))))).val
theorem input2825_def : input2825 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24865 24857 (Flapjack.WordRegImm.reg 24861)))) := by
  unfold input2825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24865 24857 (Flapjack.WordRegImm.reg 24861))))).val
theorem output2825_def : output2825 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24865 24857 (Flapjack.WordRegImm.reg 24861)))) := by
  unfold output2825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2825_skip : Flapjack.WordAlloc.isSkip output2825 = false := by
  rw [output2825_def]
  conv => lhs; cbv
  try rfl
theorem node2825_eq : Flapjack.WordAlloc.removeDeadStructural input2825 value1416 value1 value2 = (output2825, value1417, value1) := by
  rw [input2825_def, output2825_def]
  try (conv => lhs; cbv)
  try rfl

def value1418 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24861 5720#64))).val
theorem input2826_def : input2826 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24861 5720#64)) := by
  unfold input2826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24861 5720#64))).val
theorem output2826_def : output2826 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24861 5720#64)) := by
  unfold output2826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2826_skip : Flapjack.WordAlloc.isSkip output2826 = false := by
  rw [output2826_def]
  conv => lhs; cbv
  try rfl
theorem node2826_eq : Flapjack.WordAlloc.removeDeadStructural input2826 value1417 value1 value2 = (output2826, value1418, value1) := by
  rw [input2826_def, output2826_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2826 input2825)).val
theorem input2827_def : input2827 = (.seq input2826 input2825) := by
  unfold input2827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2826 output2825)).val
theorem output2827_def : output2827 = (.seq output2826 output2825) := by
  unfold output2827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2827_skip : Flapjack.WordAlloc.isSkip output2827 = false := by
  rw [output2827_def]
  conv => lhs; cbv
  try rfl
theorem node2827_eq : Flapjack.WordAlloc.removeDeadStructural input2827 value1416 value1 value2 = (output2827, value1418, value1) := by
  rw [input2827_def, output2827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2825_eq]
  dsimp only
  rw [node2826_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1419 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24857 (Flapjack.WordLangAddr.addr 24853 18446744073709551104#64)))).val
theorem input2828_def : input2828 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24857 (Flapjack.WordLangAddr.addr 24853 18446744073709551104#64))) := by
  unfold input2828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24857 (Flapjack.WordLangAddr.addr 24853 18446744073709551104#64)))).val
theorem output2828_def : output2828 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24857 (Flapjack.WordLangAddr.addr 24853 18446744073709551104#64))) := by
  unfold output2828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2828_skip : Flapjack.WordAlloc.isSkip output2828 = false := by
  rw [output2828_def]
  conv => lhs; cbv
  try rfl
theorem node2828_eq : Flapjack.WordAlloc.removeDeadStructural input2828 value1418 value1 value2 = (output2828, value1419, value1) := by
  rw [input2828_def, output2828_def]
  try (conv => lhs; cbv)
  try rfl

def value1420 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24853 24849)).val
theorem input2829_def : input2829 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24853 24849) := by
  unfold input2829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24853 24849)).val
theorem output2829_def : output2829 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24853 24849) := by
  unfold output2829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2829_skip : Flapjack.WordAlloc.isSkip output2829 = false := by
  rw [output2829_def]
  conv => lhs; cbv
  try rfl
theorem node2829_eq : Flapjack.WordAlloc.removeDeadStructural input2829 value1419 value1 value2 = (output2829, value1420, value1) := by
  rw [input2829_def, output2829_def]
  try (conv => lhs; cbv)
  try rfl

def value1421 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24849 24845 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2830_def : input2830 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24849 24845 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24849 24845 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2830_def : output2830 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24849 24845 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2830_skip : Flapjack.WordAlloc.isSkip output2830 = false := by
  rw [output2830_def]
  conv => lhs; cbv
  try rfl
theorem node2830_eq : Flapjack.WordAlloc.removeDeadStructural input2830 value1420 value1 value2 = (output2830, value1421, value1) := by
  rw [input2830_def, output2830_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24845 Flapjack.WordStore.heapLength)).val
theorem input2831_def : input2831 = (Flapjack.WordLangProgHOL.get 24845 Flapjack.WordStore.heapLength) := by
  unfold input2831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24845 Flapjack.WordStore.heapLength)).val
theorem output2831_def : output2831 = (Flapjack.WordLangProgHOL.get 24845 Flapjack.WordStore.heapLength) := by
  unfold output2831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2831_skip : Flapjack.WordAlloc.isSkip output2831 = false := by
  rw [output2831_def]
  conv => lhs; cbv
  try rfl
theorem node2831_eq : Flapjack.WordAlloc.removeDeadStructural input2831 value1421 value1 value2 = (output2831, value5, value1) := by
  rw [input2831_def, output2831_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2831 input2830)).val
theorem input2832_def : input2832 = (.seq input2831 input2830) := by
  unfold input2832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2831 output2830)).val
theorem output2832_def : output2832 = (.seq output2831 output2830) := by
  unfold output2832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2832_skip : Flapjack.WordAlloc.isSkip output2832 = false := by
  rw [output2832_def]
  conv => lhs; cbv
  try rfl
theorem node2832_eq : Flapjack.WordAlloc.removeDeadStructural input2832 value1420 value1 value2 = (output2832, value5, value1) := by
  rw [input2832_def, output2832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2830_eq]
  dsimp only
  rw [node2831_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2832 input2829)).val
theorem input2833_def : input2833 = (.seq input2832 input2829) := by
  unfold input2833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2832 output2829)).val
theorem output2833_def : output2833 = (.seq output2832 output2829) := by
  unfold output2833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2833_skip : Flapjack.WordAlloc.isSkip output2833 = false := by
  rw [output2833_def]
  conv => lhs; cbv
  try rfl
theorem node2833_eq : Flapjack.WordAlloc.removeDeadStructural input2833 value1419 value1 value2 = (output2833, value5, value1) := by
  rw [input2833_def, output2833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2829_eq]
  dsimp only
  rw [node2832_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2833 input2828)).val
theorem input2834_def : input2834 = (.seq input2833 input2828) := by
  unfold input2834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2833 output2828)).val
theorem output2834_def : output2834 = (.seq output2833 output2828) := by
  unfold output2834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2834_skip : Flapjack.WordAlloc.isSkip output2834 = false := by
  rw [output2834_def]
  conv => lhs; cbv
  try rfl
theorem node2834_eq : Flapjack.WordAlloc.removeDeadStructural input2834 value1418 value1 value2 = (output2834, value5, value1) := by
  rw [input2834_def, output2834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2828_eq]
  dsimp only
  rw [node2833_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2834 input2827)).val
theorem input2835_def : input2835 = (.seq input2834 input2827) := by
  unfold input2835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2834 output2827)).val
theorem output2835_def : output2835 = (.seq output2834 output2827) := by
  unfold output2835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2835_skip : Flapjack.WordAlloc.isSkip output2835 = false := by
  rw [output2835_def]
  conv => lhs; cbv
  try rfl
theorem node2835_eq : Flapjack.WordAlloc.removeDeadStructural input2835 value1416 value1 value2 = (output2835, value5, value1) := by
  rw [input2835_def, output2835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2827_eq]
  dsimp only
  rw [node2834_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1422 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24837 (Flapjack.WordLangAddr.addr 24841 0#64)))).val
theorem input2836_def : input2836 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24837 (Flapjack.WordLangAddr.addr 24841 0#64))) := by
  unfold input2836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24837 (Flapjack.WordLangAddr.addr 24841 0#64)))).val
theorem output2836_def : output2836 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24837 (Flapjack.WordLangAddr.addr 24841 0#64))) := by
  unfold output2836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2836_skip : Flapjack.WordAlloc.isSkip output2836 = false := by
  rw [output2836_def]
  conv => lhs; cbv
  try rfl
theorem node2836_eq : Flapjack.WordAlloc.removeDeadStructural input2836 value5 value1 value2 = (output2836, value1422, value1) := by
  rw [input2836_def, output2836_def]
  try (conv => lhs; cbv)
  try rfl

def value1423 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
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
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24841, 24829)])).val
theorem input2837_def : input2837 = (Flapjack.WordLangProgHOL.move 0 [(24841, 24829)]) := by
  unfold input2837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24841, 24829)])).val
theorem output2837_def : output2837 = (Flapjack.WordLangProgHOL.move 0 [(24841, 24829)]) := by
  unfold output2837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2837_skip : Flapjack.WordAlloc.isSkip output2837 = false := by
  rw [output2837_def]
  conv => lhs; cbv
  try rfl
theorem node2837_eq : Flapjack.WordAlloc.removeDeadStructural input2837 value1422 value1 value2 = (output2837, value1423, value1) := by
  rw [input2837_def, output2837_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2837 input2836)).val
theorem input2838_def : input2838 = (.seq input2837 input2836) := by
  unfold input2838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2837 output2836)).val
theorem output2838_def : output2838 = (.seq output2837 output2836) := by
  unfold output2838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2838_skip : Flapjack.WordAlloc.isSkip output2838 = false := by
  rw [output2838_def]
  conv => lhs; cbv
  try rfl
theorem node2838_eq : Flapjack.WordAlloc.removeDeadStructural input2838 value5 value1 value2 = (output2838, value1423, value1) := by
  rw [input2838_def, output2838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2836_eq]
  dsimp only
  rw [node2837_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1424 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
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
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24837 0#64))).val
theorem input2839_def : input2839 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24837 0#64)) := by
  unfold input2839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24837 0#64))).val
theorem output2839_def : output2839 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24837 0#64)) := by
  unfold output2839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2839_skip : Flapjack.WordAlloc.isSkip output2839 = false := by
  rw [output2839_def]
  conv => lhs; cbv
  try rfl
theorem node2839_eq : Flapjack.WordAlloc.removeDeadStructural input2839 value1423 value1 value2 = (output2839, value1424, value1) := by
  rw [input2839_def, output2839_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24833 0#64))).val
theorem input2840_def : input2840 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24833 0#64)) := by
  unfold input2840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2840_def : output2840 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2840_skip : Flapjack.WordAlloc.isSkip output2840 = true := by
  rw [output2840_def]
  conv => lhs; cbv
  try rfl
theorem node2840_eq : Flapjack.WordAlloc.removeDeadStructural input2840 value1424 value1 value2 = (output2840, value1424, value1) := by
  rw [input2840_def, output2840_def]
  try (conv => lhs; cbv)
  try rfl

def value1425 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
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
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24829 24821 (Flapjack.WordRegImm.reg 24825))))).val
theorem input2841_def : input2841 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24829 24821 (Flapjack.WordRegImm.reg 24825)))) := by
  unfold input2841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24829 24821 (Flapjack.WordRegImm.reg 24825))))).val
theorem output2841_def : output2841 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24829 24821 (Flapjack.WordRegImm.reg 24825)))) := by
  unfold output2841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2841_skip : Flapjack.WordAlloc.isSkip output2841 = false := by
  rw [output2841_def]
  conv => lhs; cbv
  try rfl
theorem node2841_eq : Flapjack.WordAlloc.removeDeadStructural input2841 value1424 value1 value2 = (output2841, value1425, value1) := by
  rw [input2841_def, output2841_def]
  try (conv => lhs; cbv)
  try rfl

def value1426 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24825 5712#64))).val
theorem input2842_def : input2842 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24825 5712#64)) := by
  unfold input2842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24825 5712#64))).val
theorem output2842_def : output2842 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24825 5712#64)) := by
  unfold output2842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2842_skip : Flapjack.WordAlloc.isSkip output2842 = false := by
  rw [output2842_def]
  conv => lhs; cbv
  try rfl
theorem node2842_eq : Flapjack.WordAlloc.removeDeadStructural input2842 value1425 value1 value2 = (output2842, value1426, value1) := by
  rw [input2842_def, output2842_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2842 input2841)).val
theorem input2843_def : input2843 = (.seq input2842 input2841) := by
  unfold input2843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2842 output2841)).val
theorem output2843_def : output2843 = (.seq output2842 output2841) := by
  unfold output2843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2843_skip : Flapjack.WordAlloc.isSkip output2843 = false := by
  rw [output2843_def]
  conv => lhs; cbv
  try rfl
theorem node2843_eq : Flapjack.WordAlloc.removeDeadStructural input2843 value1424 value1 value2 = (output2843, value1426, value1) := by
  rw [input2843_def, output2843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2841_eq]
  dsimp only
  rw [node2842_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1427 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24821 (Flapjack.WordLangAddr.addr 24817 18446744073709551104#64)))).val
theorem input2844_def : input2844 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24821 (Flapjack.WordLangAddr.addr 24817 18446744073709551104#64))) := by
  unfold input2844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24821 (Flapjack.WordLangAddr.addr 24817 18446744073709551104#64)))).val
theorem output2844_def : output2844 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24821 (Flapjack.WordLangAddr.addr 24817 18446744073709551104#64))) := by
  unfold output2844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2844_skip : Flapjack.WordAlloc.isSkip output2844 = false := by
  rw [output2844_def]
  conv => lhs; cbv
  try rfl
theorem node2844_eq : Flapjack.WordAlloc.removeDeadStructural input2844 value1426 value1 value2 = (output2844, value1427, value1) := by
  rw [input2844_def, output2844_def]
  try (conv => lhs; cbv)
  try rfl

def value1428 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24817 24813)).val
theorem input2845_def : input2845 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24817 24813) := by
  unfold input2845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24817 24813)).val
theorem output2845_def : output2845 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24817 24813) := by
  unfold output2845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2845_skip : Flapjack.WordAlloc.isSkip output2845 = false := by
  rw [output2845_def]
  conv => lhs; cbv
  try rfl
theorem node2845_eq : Flapjack.WordAlloc.removeDeadStructural input2845 value1427 value1 value2 = (output2845, value1428, value1) := by
  rw [input2845_def, output2845_def]
  try (conv => lhs; cbv)
  try rfl

def value1429 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24813 24809 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2846_def : input2846 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24813 24809 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24813 24809 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2846_def : output2846 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24813 24809 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2846_skip : Flapjack.WordAlloc.isSkip output2846 = false := by
  rw [output2846_def]
  conv => lhs; cbv
  try rfl
theorem node2846_eq : Flapjack.WordAlloc.removeDeadStructural input2846 value1428 value1 value2 = (output2846, value1429, value1) := by
  rw [input2846_def, output2846_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24809 Flapjack.WordStore.heapLength)).val
theorem input2847_def : input2847 = (Flapjack.WordLangProgHOL.get 24809 Flapjack.WordStore.heapLength) := by
  unfold input2847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24809 Flapjack.WordStore.heapLength)).val
theorem output2847_def : output2847 = (Flapjack.WordLangProgHOL.get 24809 Flapjack.WordStore.heapLength) := by
  unfold output2847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2847_skip : Flapjack.WordAlloc.isSkip output2847 = false := by
  rw [output2847_def]
  conv => lhs; cbv
  try rfl
theorem node2847_eq : Flapjack.WordAlloc.removeDeadStructural input2847 value1429 value1 value2 = (output2847, value5, value1) := by
  rw [input2847_def, output2847_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2847 input2846)).val
theorem input2848_def : input2848 = (.seq input2847 input2846) := by
  unfold input2848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2847 output2846)).val
theorem output2848_def : output2848 = (.seq output2847 output2846) := by
  unfold output2848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2848_skip : Flapjack.WordAlloc.isSkip output2848 = false := by
  rw [output2848_def]
  conv => lhs; cbv
  try rfl
theorem node2848_eq : Flapjack.WordAlloc.removeDeadStructural input2848 value1428 value1 value2 = (output2848, value5, value1) := by
  rw [input2848_def, output2848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2846_eq]
  dsimp only
  rw [node2847_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2848 input2845)).val
theorem input2849_def : input2849 = (.seq input2848 input2845) := by
  unfold input2849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2848 output2845)).val
theorem output2849_def : output2849 = (.seq output2848 output2845) := by
  unfold output2849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2849_skip : Flapjack.WordAlloc.isSkip output2849 = false := by
  rw [output2849_def]
  conv => lhs; cbv
  try rfl
theorem node2849_eq : Flapjack.WordAlloc.removeDeadStructural input2849 value1427 value1 value2 = (output2849, value5, value1) := by
  rw [input2849_def, output2849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2845_eq]
  dsimp only
  rw [node2848_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2849 input2844)).val
theorem input2850_def : input2850 = (.seq input2849 input2844) := by
  unfold input2850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2849 output2844)).val
theorem output2850_def : output2850 = (.seq output2849 output2844) := by
  unfold output2850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2850_skip : Flapjack.WordAlloc.isSkip output2850 = false := by
  rw [output2850_def]
  conv => lhs; cbv
  try rfl
theorem node2850_eq : Flapjack.WordAlloc.removeDeadStructural input2850 value1426 value1 value2 = (output2850, value5, value1) := by
  rw [input2850_def, output2850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2844_eq]
  dsimp only
  rw [node2849_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2850 input2843)).val
theorem input2851_def : input2851 = (.seq input2850 input2843) := by
  unfold input2851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2850 output2843)).val
theorem output2851_def : output2851 = (.seq output2850 output2843) := by
  unfold output2851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2851_skip : Flapjack.WordAlloc.isSkip output2851 = false := by
  rw [output2851_def]
  conv => lhs; cbv
  try rfl
theorem node2851_eq : Flapjack.WordAlloc.removeDeadStructural input2851 value1424 value1 value2 = (output2851, value5, value1) := by
  rw [input2851_def, output2851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2843_eq]
  dsimp only
  rw [node2850_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1430 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24801 (Flapjack.WordLangAddr.addr 24805 0#64)))).val
theorem input2852_def : input2852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24801 (Flapjack.WordLangAddr.addr 24805 0#64))) := by
  unfold input2852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24801 (Flapjack.WordLangAddr.addr 24805 0#64)))).val
theorem output2852_def : output2852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24801 (Flapjack.WordLangAddr.addr 24805 0#64))) := by
  unfold output2852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2852_skip : Flapjack.WordAlloc.isSkip output2852 = false := by
  rw [output2852_def]
  conv => lhs; cbv
  try rfl
theorem node2852_eq : Flapjack.WordAlloc.removeDeadStructural input2852 value5 value1 value2 = (output2852, value1430, value1) := by
  rw [input2852_def, output2852_def]
  try (conv => lhs; cbv)
  try rfl

def value1431 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24805, 24793)])).val
theorem input2853_def : input2853 = (Flapjack.WordLangProgHOL.move 0 [(24805, 24793)]) := by
  unfold input2853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24805, 24793)])).val
theorem output2853_def : output2853 = (Flapjack.WordLangProgHOL.move 0 [(24805, 24793)]) := by
  unfold output2853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2853_skip : Flapjack.WordAlloc.isSkip output2853 = false := by
  rw [output2853_def]
  conv => lhs; cbv
  try rfl
theorem node2853_eq : Flapjack.WordAlloc.removeDeadStructural input2853 value1430 value1 value2 = (output2853, value1431, value1) := by
  rw [input2853_def, output2853_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2853 input2852)).val
theorem input2854_def : input2854 = (.seq input2853 input2852) := by
  unfold input2854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2853 output2852)).val
theorem output2854_def : output2854 = (.seq output2853 output2852) := by
  unfold output2854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2854_skip : Flapjack.WordAlloc.isSkip output2854 = false := by
  rw [output2854_def]
  conv => lhs; cbv
  try rfl
theorem node2854_eq : Flapjack.WordAlloc.removeDeadStructural input2854 value5 value1 value2 = (output2854, value1431, value1) := by
  rw [input2854_def, output2854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2852_eq]
  dsimp only
  rw [node2853_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1432 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24801 0#64))).val
theorem input2855_def : input2855 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24801 0#64)) := by
  unfold input2855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24801 0#64))).val
theorem output2855_def : output2855 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24801 0#64)) := by
  unfold output2855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2855_skip : Flapjack.WordAlloc.isSkip output2855 = false := by
  rw [output2855_def]
  conv => lhs; cbv
  try rfl
theorem node2855_eq : Flapjack.WordAlloc.removeDeadStructural input2855 value1431 value1 value2 = (output2855, value1432, value1) := by
  rw [input2855_def, output2855_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24797 0#64))).val
theorem input2856_def : input2856 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24797 0#64)) := by
  unfold input2856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2856_def : output2856 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2856_skip : Flapjack.WordAlloc.isSkip output2856 = true := by
  rw [output2856_def]
  conv => lhs; cbv
  try rfl
theorem node2856_eq : Flapjack.WordAlloc.removeDeadStructural input2856 value1432 value1 value2 = (output2856, value1432, value1) := by
  rw [input2856_def, output2856_def]
  try (conv => lhs; cbv)
  try rfl

def value1433 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24793 24785 (Flapjack.WordRegImm.reg 24789))))).val
theorem input2857_def : input2857 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24793 24785 (Flapjack.WordRegImm.reg 24789)))) := by
  unfold input2857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24793 24785 (Flapjack.WordRegImm.reg 24789))))).val
theorem output2857_def : output2857 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24793 24785 (Flapjack.WordRegImm.reg 24789)))) := by
  unfold output2857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2857_skip : Flapjack.WordAlloc.isSkip output2857 = false := by
  rw [output2857_def]
  conv => lhs; cbv
  try rfl
theorem node2857_eq : Flapjack.WordAlloc.removeDeadStructural input2857 value1432 value1 value2 = (output2857, value1433, value1) := by
  rw [input2857_def, output2857_def]
  try (conv => lhs; cbv)
  try rfl

def value1434 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24789 5704#64))).val
theorem input2858_def : input2858 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24789 5704#64)) := by
  unfold input2858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24789 5704#64))).val
theorem output2858_def : output2858 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24789 5704#64)) := by
  unfold output2858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2858_skip : Flapjack.WordAlloc.isSkip output2858 = false := by
  rw [output2858_def]
  conv => lhs; cbv
  try rfl
theorem node2858_eq : Flapjack.WordAlloc.removeDeadStructural input2858 value1433 value1 value2 = (output2858, value1434, value1) := by
  rw [input2858_def, output2858_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2858 input2857)).val
theorem input2859_def : input2859 = (.seq input2858 input2857) := by
  unfold input2859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2858 output2857)).val
theorem output2859_def : output2859 = (.seq output2858 output2857) := by
  unfold output2859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2859_skip : Flapjack.WordAlloc.isSkip output2859 = false := by
  rw [output2859_def]
  conv => lhs; cbv
  try rfl
theorem node2859_eq : Flapjack.WordAlloc.removeDeadStructural input2859 value1432 value1 value2 = (output2859, value1434, value1) := by
  rw [input2859_def, output2859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2857_eq]
  dsimp only
  rw [node2858_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1435 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24785 (Flapjack.WordLangAddr.addr 24781 18446744073709551104#64)))).val
theorem input2860_def : input2860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24785 (Flapjack.WordLangAddr.addr 24781 18446744073709551104#64))) := by
  unfold input2860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24785 (Flapjack.WordLangAddr.addr 24781 18446744073709551104#64)))).val
theorem output2860_def : output2860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24785 (Flapjack.WordLangAddr.addr 24781 18446744073709551104#64))) := by
  unfold output2860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2860_skip : Flapjack.WordAlloc.isSkip output2860 = false := by
  rw [output2860_def]
  conv => lhs; cbv
  try rfl
theorem node2860_eq : Flapjack.WordAlloc.removeDeadStructural input2860 value1434 value1 value2 = (output2860, value1435, value1) := by
  rw [input2860_def, output2860_def]
  try (conv => lhs; cbv)
  try rfl

def value1436 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24781 24777)).val
theorem input2861_def : input2861 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24781 24777) := by
  unfold input2861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24781 24777)).val
theorem output2861_def : output2861 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24781 24777) := by
  unfold output2861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2861_skip : Flapjack.WordAlloc.isSkip output2861 = false := by
  rw [output2861_def]
  conv => lhs; cbv
  try rfl
theorem node2861_eq : Flapjack.WordAlloc.removeDeadStructural input2861 value1435 value1 value2 = (output2861, value1436, value1) := by
  rw [input2861_def, output2861_def]
  try (conv => lhs; cbv)
  try rfl

def value1437 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24777 24773 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2862_def : input2862 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24777 24773 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24777 24773 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2862_def : output2862 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24777 24773 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2862_skip : Flapjack.WordAlloc.isSkip output2862 = false := by
  rw [output2862_def]
  conv => lhs; cbv
  try rfl
theorem node2862_eq : Flapjack.WordAlloc.removeDeadStructural input2862 value1436 value1 value2 = (output2862, value1437, value1) := by
  rw [input2862_def, output2862_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24773 Flapjack.WordStore.heapLength)).val
theorem input2863_def : input2863 = (Flapjack.WordLangProgHOL.get 24773 Flapjack.WordStore.heapLength) := by
  unfold input2863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24773 Flapjack.WordStore.heapLength)).val
theorem output2863_def : output2863 = (Flapjack.WordLangProgHOL.get 24773 Flapjack.WordStore.heapLength) := by
  unfold output2863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2863_skip : Flapjack.WordAlloc.isSkip output2863 = false := by
  rw [output2863_def]
  conv => lhs; cbv
  try rfl
theorem node2863_eq : Flapjack.WordAlloc.removeDeadStructural input2863 value1437 value1 value2 = (output2863, value5, value1) := by
  rw [input2863_def, output2863_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2863 input2862)).val
theorem input2864_def : input2864 = (.seq input2863 input2862) := by
  unfold input2864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2863 output2862)).val
theorem output2864_def : output2864 = (.seq output2863 output2862) := by
  unfold output2864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2864_skip : Flapjack.WordAlloc.isSkip output2864 = false := by
  rw [output2864_def]
  conv => lhs; cbv
  try rfl
theorem node2864_eq : Flapjack.WordAlloc.removeDeadStructural input2864 value1436 value1 value2 = (output2864, value5, value1) := by
  rw [input2864_def, output2864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2862_eq]
  dsimp only
  rw [node2863_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2864 input2861)).val
theorem input2865_def : input2865 = (.seq input2864 input2861) := by
  unfold input2865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2864 output2861)).val
theorem output2865_def : output2865 = (.seq output2864 output2861) := by
  unfold output2865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2865_skip : Flapjack.WordAlloc.isSkip output2865 = false := by
  rw [output2865_def]
  conv => lhs; cbv
  try rfl
theorem node2865_eq : Flapjack.WordAlloc.removeDeadStructural input2865 value1435 value1 value2 = (output2865, value5, value1) := by
  rw [input2865_def, output2865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2861_eq]
  dsimp only
  rw [node2864_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2865 input2860)).val
theorem input2866_def : input2866 = (.seq input2865 input2860) := by
  unfold input2866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2865 output2860)).val
theorem output2866_def : output2866 = (.seq output2865 output2860) := by
  unfold output2866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2866_skip : Flapjack.WordAlloc.isSkip output2866 = false := by
  rw [output2866_def]
  conv => lhs; cbv
  try rfl
theorem node2866_eq : Flapjack.WordAlloc.removeDeadStructural input2866 value1434 value1 value2 = (output2866, value5, value1) := by
  rw [input2866_def, output2866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2860_eq]
  dsimp only
  rw [node2865_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2866 input2859)).val
theorem input2867_def : input2867 = (.seq input2866 input2859) := by
  unfold input2867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2866 output2859)).val
theorem output2867_def : output2867 = (.seq output2866 output2859) := by
  unfold output2867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2867_skip : Flapjack.WordAlloc.isSkip output2867 = false := by
  rw [output2867_def]
  conv => lhs; cbv
  try rfl
theorem node2867_eq : Flapjack.WordAlloc.removeDeadStructural input2867 value1432 value1 value2 = (output2867, value5, value1) := by
  rw [input2867_def, output2867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2859_eq]
  dsimp only
  rw [node2866_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1438 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24765 (Flapjack.WordLangAddr.addr 24769 0#64)))).val
theorem input2868_def : input2868 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24765 (Flapjack.WordLangAddr.addr 24769 0#64))) := by
  unfold input2868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24765 (Flapjack.WordLangAddr.addr 24769 0#64)))).val
theorem output2868_def : output2868 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24765 (Flapjack.WordLangAddr.addr 24769 0#64))) := by
  unfold output2868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2868_skip : Flapjack.WordAlloc.isSkip output2868 = false := by
  rw [output2868_def]
  conv => lhs; cbv
  try rfl
theorem node2868_eq : Flapjack.WordAlloc.removeDeadStructural input2868 value5 value1 value2 = (output2868, value1438, value1) := by
  rw [input2868_def, output2868_def]
  try (conv => lhs; cbv)
  try rfl

def value1439 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24769, 24757)])).val
theorem input2869_def : input2869 = (Flapjack.WordLangProgHOL.move 0 [(24769, 24757)]) := by
  unfold input2869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24769, 24757)])).val
theorem output2869_def : output2869 = (Flapjack.WordLangProgHOL.move 0 [(24769, 24757)]) := by
  unfold output2869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2869_skip : Flapjack.WordAlloc.isSkip output2869 = false := by
  rw [output2869_def]
  conv => lhs; cbv
  try rfl
theorem node2869_eq : Flapjack.WordAlloc.removeDeadStructural input2869 value1438 value1 value2 = (output2869, value1439, value1) := by
  rw [input2869_def, output2869_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2869 input2868)).val
theorem input2870_def : input2870 = (.seq input2869 input2868) := by
  unfold input2870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2869 output2868)).val
theorem output2870_def : output2870 = (.seq output2869 output2868) := by
  unfold output2870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2870_skip : Flapjack.WordAlloc.isSkip output2870 = false := by
  rw [output2870_def]
  conv => lhs; cbv
  try rfl
theorem node2870_eq : Flapjack.WordAlloc.removeDeadStructural input2870 value5 value1 value2 = (output2870, value1439, value1) := by
  rw [input2870_def, output2870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2868_eq]
  dsimp only
  rw [node2869_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1440 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24765 0#64))).val
theorem input2871_def : input2871 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24765 0#64)) := by
  unfold input2871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24765 0#64))).val
theorem output2871_def : output2871 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24765 0#64)) := by
  unfold output2871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2871_skip : Flapjack.WordAlloc.isSkip output2871 = false := by
  rw [output2871_def]
  conv => lhs; cbv
  try rfl
theorem node2871_eq : Flapjack.WordAlloc.removeDeadStructural input2871 value1439 value1 value2 = (output2871, value1440, value1) := by
  rw [input2871_def, output2871_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24761 0#64))).val
theorem input2872_def : input2872 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24761 0#64)) := by
  unfold input2872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2872_def : output2872 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2872_skip : Flapjack.WordAlloc.isSkip output2872 = true := by
  rw [output2872_def]
  conv => lhs; cbv
  try rfl
theorem node2872_eq : Flapjack.WordAlloc.removeDeadStructural input2872 value1440 value1 value2 = (output2872, value1440, value1) := by
  rw [input2872_def, output2872_def]
  try (conv => lhs; cbv)
  try rfl

def value1441 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24757 24749 (Flapjack.WordRegImm.reg 24753))))).val
theorem input2873_def : input2873 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24757 24749 (Flapjack.WordRegImm.reg 24753)))) := by
  unfold input2873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24757 24749 (Flapjack.WordRegImm.reg 24753))))).val
theorem output2873_def : output2873 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24757 24749 (Flapjack.WordRegImm.reg 24753)))) := by
  unfold output2873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2873_skip : Flapjack.WordAlloc.isSkip output2873 = false := by
  rw [output2873_def]
  conv => lhs; cbv
  try rfl
theorem node2873_eq : Flapjack.WordAlloc.removeDeadStructural input2873 value1440 value1 value2 = (output2873, value1441, value1) := by
  rw [input2873_def, output2873_def]
  try (conv => lhs; cbv)
  try rfl

def value1442 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24753 5696#64))).val
theorem input2874_def : input2874 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24753 5696#64)) := by
  unfold input2874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24753 5696#64))).val
theorem output2874_def : output2874 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24753 5696#64)) := by
  unfold output2874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2874_skip : Flapjack.WordAlloc.isSkip output2874 = false := by
  rw [output2874_def]
  conv => lhs; cbv
  try rfl
theorem node2874_eq : Flapjack.WordAlloc.removeDeadStructural input2874 value1441 value1 value2 = (output2874, value1442, value1) := by
  rw [input2874_def, output2874_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2874 input2873)).val
theorem input2875_def : input2875 = (.seq input2874 input2873) := by
  unfold input2875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2874 output2873)).val
theorem output2875_def : output2875 = (.seq output2874 output2873) := by
  unfold output2875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2875_skip : Flapjack.WordAlloc.isSkip output2875 = false := by
  rw [output2875_def]
  conv => lhs; cbv
  try rfl
theorem node2875_eq : Flapjack.WordAlloc.removeDeadStructural input2875 value1440 value1 value2 = (output2875, value1442, value1) := by
  rw [input2875_def, output2875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2873_eq]
  dsimp only
  rw [node2874_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1443 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24749 (Flapjack.WordLangAddr.addr 24745 18446744073709551104#64)))).val
theorem input2876_def : input2876 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24749 (Flapjack.WordLangAddr.addr 24745 18446744073709551104#64))) := by
  unfold input2876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24749 (Flapjack.WordLangAddr.addr 24745 18446744073709551104#64)))).val
theorem output2876_def : output2876 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24749 (Flapjack.WordLangAddr.addr 24745 18446744073709551104#64))) := by
  unfold output2876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2876_skip : Flapjack.WordAlloc.isSkip output2876 = false := by
  rw [output2876_def]
  conv => lhs; cbv
  try rfl
theorem node2876_eq : Flapjack.WordAlloc.removeDeadStructural input2876 value1442 value1 value2 = (output2876, value1443, value1) := by
  rw [input2876_def, output2876_def]
  try (conv => lhs; cbv)
  try rfl

def value1444 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24745 24741)).val
theorem input2877_def : input2877 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24745 24741) := by
  unfold input2877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24745 24741)).val
theorem output2877_def : output2877 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24745 24741) := by
  unfold output2877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2877_skip : Flapjack.WordAlloc.isSkip output2877 = false := by
  rw [output2877_def]
  conv => lhs; cbv
  try rfl
theorem node2877_eq : Flapjack.WordAlloc.removeDeadStructural input2877 value1443 value1 value2 = (output2877, value1444, value1) := by
  rw [input2877_def, output2877_def]
  try (conv => lhs; cbv)
  try rfl

def value1445 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24741 24737 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2878_def : input2878 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24741 24737 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24741 24737 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2878_def : output2878 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24741 24737 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2878_skip : Flapjack.WordAlloc.isSkip output2878 = false := by
  rw [output2878_def]
  conv => lhs; cbv
  try rfl
theorem node2878_eq : Flapjack.WordAlloc.removeDeadStructural input2878 value1444 value1 value2 = (output2878, value1445, value1) := by
  rw [input2878_def, output2878_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24737 Flapjack.WordStore.heapLength)).val
theorem input2879_def : input2879 = (Flapjack.WordLangProgHOL.get 24737 Flapjack.WordStore.heapLength) := by
  unfold input2879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24737 Flapjack.WordStore.heapLength)).val
theorem output2879_def : output2879 = (Flapjack.WordLangProgHOL.get 24737 Flapjack.WordStore.heapLength) := by
  unfold output2879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2879_skip : Flapjack.WordAlloc.isSkip output2879 = false := by
  rw [output2879_def]
  conv => lhs; cbv
  try rfl
theorem node2879_eq : Flapjack.WordAlloc.removeDeadStructural input2879 value1445 value1 value2 = (output2879, value5, value1) := by
  rw [input2879_def, output2879_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2879 input2878)).val
theorem input2880_def : input2880 = (.seq input2879 input2878) := by
  unfold input2880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2879 output2878)).val
theorem output2880_def : output2880 = (.seq output2879 output2878) := by
  unfold output2880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2880_skip : Flapjack.WordAlloc.isSkip output2880 = false := by
  rw [output2880_def]
  conv => lhs; cbv
  try rfl
theorem node2880_eq : Flapjack.WordAlloc.removeDeadStructural input2880 value1444 value1 value2 = (output2880, value5, value1) := by
  rw [input2880_def, output2880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2878_eq]
  dsimp only
  rw [node2879_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2880 input2877)).val
theorem input2881_def : input2881 = (.seq input2880 input2877) := by
  unfold input2881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2880 output2877)).val
theorem output2881_def : output2881 = (.seq output2880 output2877) := by
  unfold output2881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2881_skip : Flapjack.WordAlloc.isSkip output2881 = false := by
  rw [output2881_def]
  conv => lhs; cbv
  try rfl
theorem node2881_eq : Flapjack.WordAlloc.removeDeadStructural input2881 value1443 value1 value2 = (output2881, value5, value1) := by
  rw [input2881_def, output2881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2877_eq]
  dsimp only
  rw [node2880_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2881 input2876)).val
theorem input2882_def : input2882 = (.seq input2881 input2876) := by
  unfold input2882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2881 output2876)).val
theorem output2882_def : output2882 = (.seq output2881 output2876) := by
  unfold output2882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2882_skip : Flapjack.WordAlloc.isSkip output2882 = false := by
  rw [output2882_def]
  conv => lhs; cbv
  try rfl
theorem node2882_eq : Flapjack.WordAlloc.removeDeadStructural input2882 value1442 value1 value2 = (output2882, value5, value1) := by
  rw [input2882_def, output2882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2876_eq]
  dsimp only
  rw [node2881_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2882 input2875)).val
theorem input2883_def : input2883 = (.seq input2882 input2875) := by
  unfold input2883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2882 output2875)).val
theorem output2883_def : output2883 = (.seq output2882 output2875) := by
  unfold output2883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2883_skip : Flapjack.WordAlloc.isSkip output2883 = false := by
  rw [output2883_def]
  conv => lhs; cbv
  try rfl
theorem node2883_eq : Flapjack.WordAlloc.removeDeadStructural input2883 value1440 value1 value2 = (output2883, value5, value1) := by
  rw [input2883_def, output2883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2875_eq]
  dsimp only
  rw [node2882_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1446 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24729 (Flapjack.WordLangAddr.addr 24733 0#64)))).val
theorem input2884_def : input2884 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24729 (Flapjack.WordLangAddr.addr 24733 0#64))) := by
  unfold input2884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24729 (Flapjack.WordLangAddr.addr 24733 0#64)))).val
theorem output2884_def : output2884 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24729 (Flapjack.WordLangAddr.addr 24733 0#64))) := by
  unfold output2884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2884_skip : Flapjack.WordAlloc.isSkip output2884 = false := by
  rw [output2884_def]
  conv => lhs; cbv
  try rfl
theorem node2884_eq : Flapjack.WordAlloc.removeDeadStructural input2884 value5 value1 value2 = (output2884, value1446, value1) := by
  rw [input2884_def, output2884_def]
  try (conv => lhs; cbv)
  try rfl

def value1447 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24733, 24721)])).val
theorem input2885_def : input2885 = (Flapjack.WordLangProgHOL.move 0 [(24733, 24721)]) := by
  unfold input2885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24733, 24721)])).val
theorem output2885_def : output2885 = (Flapjack.WordLangProgHOL.move 0 [(24733, 24721)]) := by
  unfold output2885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2885_skip : Flapjack.WordAlloc.isSkip output2885 = false := by
  rw [output2885_def]
  conv => lhs; cbv
  try rfl
theorem node2885_eq : Flapjack.WordAlloc.removeDeadStructural input2885 value1446 value1 value2 = (output2885, value1447, value1) := by
  rw [input2885_def, output2885_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2885 input2884)).val
theorem input2886_def : input2886 = (.seq input2885 input2884) := by
  unfold input2886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2885 output2884)).val
theorem output2886_def : output2886 = (.seq output2885 output2884) := by
  unfold output2886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2886_skip : Flapjack.WordAlloc.isSkip output2886 = false := by
  rw [output2886_def]
  conv => lhs; cbv
  try rfl
theorem node2886_eq : Flapjack.WordAlloc.removeDeadStructural input2886 value5 value1 value2 = (output2886, value1447, value1) := by
  rw [input2886_def, output2886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2884_eq]
  dsimp only
  rw [node2885_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1448 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24729 416399692810564414#64))).val
theorem input2887_def : input2887 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24729 416399692810564414#64)) := by
  unfold input2887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24729 416399692810564414#64))).val
theorem output2887_def : output2887 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24729 416399692810564414#64)) := by
  unfold output2887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2887_skip : Flapjack.WordAlloc.isSkip output2887 = false := by
  rw [output2887_def]
  conv => lhs; cbv
  try rfl
theorem node2887_eq : Flapjack.WordAlloc.removeDeadStructural input2887 value1447 value1 value2 = (output2887, value1448, value1) := by
  rw [input2887_def, output2887_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24725 416399692810564414#64))).val
theorem input2888_def : input2888 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24725 416399692810564414#64)) := by
  unfold input2888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2888_def : output2888 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2888_skip : Flapjack.WordAlloc.isSkip output2888 = true := by
  rw [output2888_def]
  conv => lhs; cbv
  try rfl
theorem node2888_eq : Flapjack.WordAlloc.removeDeadStructural input2888 value1448 value1 value2 = (output2888, value1448, value1) := by
  rw [input2888_def, output2888_def]
  try (conv => lhs; cbv)
  try rfl

def value1449 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24721 24713 (Flapjack.WordRegImm.reg 24717))))).val
theorem input2889_def : input2889 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24721 24713 (Flapjack.WordRegImm.reg 24717)))) := by
  unfold input2889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24721 24713 (Flapjack.WordRegImm.reg 24717))))).val
theorem output2889_def : output2889 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24721 24713 (Flapjack.WordRegImm.reg 24717)))) := by
  unfold output2889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2889_skip : Flapjack.WordAlloc.isSkip output2889 = false := by
  rw [output2889_def]
  conv => lhs; cbv
  try rfl
theorem node2889_eq : Flapjack.WordAlloc.removeDeadStructural input2889 value1448 value1 value2 = (output2889, value1449, value1) := by
  rw [input2889_def, output2889_def]
  try (conv => lhs; cbv)
  try rfl

def value1450 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24717 5688#64))).val
theorem input2890_def : input2890 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24717 5688#64)) := by
  unfold input2890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24717 5688#64))).val
theorem output2890_def : output2890 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24717 5688#64)) := by
  unfold output2890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2890_skip : Flapjack.WordAlloc.isSkip output2890 = false := by
  rw [output2890_def]
  conv => lhs; cbv
  try rfl
theorem node2890_eq : Flapjack.WordAlloc.removeDeadStructural input2890 value1449 value1 value2 = (output2890, value1450, value1) := by
  rw [input2890_def, output2890_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2890 input2889)).val
theorem input2891_def : input2891 = (.seq input2890 input2889) := by
  unfold input2891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2890 output2889)).val
theorem output2891_def : output2891 = (.seq output2890 output2889) := by
  unfold output2891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2891_skip : Flapjack.WordAlloc.isSkip output2891 = false := by
  rw [output2891_def]
  conv => lhs; cbv
  try rfl
theorem node2891_eq : Flapjack.WordAlloc.removeDeadStructural input2891 value1448 value1 value2 = (output2891, value1450, value1) := by
  rw [input2891_def, output2891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2889_eq]
  dsimp only
  rw [node2890_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1451 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24713 (Flapjack.WordLangAddr.addr 24709 18446744073709551104#64)))).val
theorem input2892_def : input2892 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24713 (Flapjack.WordLangAddr.addr 24709 18446744073709551104#64))) := by
  unfold input2892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24713 (Flapjack.WordLangAddr.addr 24709 18446744073709551104#64)))).val
theorem output2892_def : output2892 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24713 (Flapjack.WordLangAddr.addr 24709 18446744073709551104#64))) := by
  unfold output2892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2892_skip : Flapjack.WordAlloc.isSkip output2892 = false := by
  rw [output2892_def]
  conv => lhs; cbv
  try rfl
theorem node2892_eq : Flapjack.WordAlloc.removeDeadStructural input2892 value1450 value1 value2 = (output2892, value1451, value1) := by
  rw [input2892_def, output2892_def]
  try (conv => lhs; cbv)
  try rfl

def value1452 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24709 24705)).val
theorem input2893_def : input2893 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24709 24705) := by
  unfold input2893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24709 24705)).val
theorem output2893_def : output2893 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24709 24705) := by
  unfold output2893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2893_skip : Flapjack.WordAlloc.isSkip output2893 = false := by
  rw [output2893_def]
  conv => lhs; cbv
  try rfl
theorem node2893_eq : Flapjack.WordAlloc.removeDeadStructural input2893 value1451 value1 value2 = (output2893, value1452, value1) := by
  rw [input2893_def, output2893_def]
  try (conv => lhs; cbv)
  try rfl

def value1453 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24705 24701 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2894_def : input2894 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24705 24701 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24705 24701 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2894_def : output2894 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24705 24701 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2894_skip : Flapjack.WordAlloc.isSkip output2894 = false := by
  rw [output2894_def]
  conv => lhs; cbv
  try rfl
theorem node2894_eq : Flapjack.WordAlloc.removeDeadStructural input2894 value1452 value1 value2 = (output2894, value1453, value1) := by
  rw [input2894_def, output2894_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24701 Flapjack.WordStore.heapLength)).val
theorem input2895_def : input2895 = (Flapjack.WordLangProgHOL.get 24701 Flapjack.WordStore.heapLength) := by
  unfold input2895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24701 Flapjack.WordStore.heapLength)).val
theorem output2895_def : output2895 = (Flapjack.WordLangProgHOL.get 24701 Flapjack.WordStore.heapLength) := by
  unfold output2895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2895_skip : Flapjack.WordAlloc.isSkip output2895 = false := by
  rw [output2895_def]
  conv => lhs; cbv
  try rfl
theorem node2895_eq : Flapjack.WordAlloc.removeDeadStructural input2895 value1453 value1 value2 = (output2895, value5, value1) := by
  rw [input2895_def, output2895_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2895 input2894)).val
theorem input2896_def : input2896 = (.seq input2895 input2894) := by
  unfold input2896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2895 output2894)).val
theorem output2896_def : output2896 = (.seq output2895 output2894) := by
  unfold output2896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2896_skip : Flapjack.WordAlloc.isSkip output2896 = false := by
  rw [output2896_def]
  conv => lhs; cbv
  try rfl
theorem node2896_eq : Flapjack.WordAlloc.removeDeadStructural input2896 value1452 value1 value2 = (output2896, value5, value1) := by
  rw [input2896_def, output2896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2894_eq]
  dsimp only
  rw [node2895_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2896 input2893)).val
theorem input2897_def : input2897 = (.seq input2896 input2893) := by
  unfold input2897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2896 output2893)).val
theorem output2897_def : output2897 = (.seq output2896 output2893) := by
  unfold output2897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2897_skip : Flapjack.WordAlloc.isSkip output2897 = false := by
  rw [output2897_def]
  conv => lhs; cbv
  try rfl
theorem node2897_eq : Flapjack.WordAlloc.removeDeadStructural input2897 value1451 value1 value2 = (output2897, value5, value1) := by
  rw [input2897_def, output2897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2893_eq]
  dsimp only
  rw [node2896_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2897 input2892)).val
theorem input2898_def : input2898 = (.seq input2897 input2892) := by
  unfold input2898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2897 output2892)).val
theorem output2898_def : output2898 = (.seq output2897 output2892) := by
  unfold output2898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2898_skip : Flapjack.WordAlloc.isSkip output2898 = false := by
  rw [output2898_def]
  conv => lhs; cbv
  try rfl
theorem node2898_eq : Flapjack.WordAlloc.removeDeadStructural input2898 value1450 value1 value2 = (output2898, value5, value1) := by
  rw [input2898_def, output2898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2892_eq]
  dsimp only
  rw [node2897_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2898 input2891)).val
theorem input2899_def : input2899 = (.seq input2898 input2891) := by
  unfold input2899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2898 output2891)).val
theorem output2899_def : output2899 = (.seq output2898 output2891) := by
  unfold output2899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2899_skip : Flapjack.WordAlloc.isSkip output2899 = false := by
  rw [output2899_def]
  conv => lhs; cbv
  try rfl
theorem node2899_eq : Flapjack.WordAlloc.removeDeadStructural input2899 value1448 value1 value2 = (output2899, value5, value1) := by
  rw [input2899_def, output2899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2891_eq]
  dsimp only
  rw [node2898_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1454 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24693 (Flapjack.WordLangAddr.addr 24697 0#64)))).val
theorem input2900_def : input2900 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24693 (Flapjack.WordLangAddr.addr 24697 0#64))) := by
  unfold input2900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24693 (Flapjack.WordLangAddr.addr 24697 0#64)))).val
theorem output2900_def : output2900 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24693 (Flapjack.WordLangAddr.addr 24697 0#64))) := by
  unfold output2900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2900_skip : Flapjack.WordAlloc.isSkip output2900 = false := by
  rw [output2900_def]
  conv => lhs; cbv
  try rfl
theorem node2900_eq : Flapjack.WordAlloc.removeDeadStructural input2900 value5 value1 value2 = (output2900, value1454, value1) := by
  rw [input2900_def, output2900_def]
  try (conv => lhs; cbv)
  try rfl

def value1455 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24697, 24685)])).val
theorem input2901_def : input2901 = (Flapjack.WordLangProgHOL.move 0 [(24697, 24685)]) := by
  unfold input2901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24697, 24685)])).val
theorem output2901_def : output2901 = (Flapjack.WordLangProgHOL.move 0 [(24697, 24685)]) := by
  unfold output2901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2901_skip : Flapjack.WordAlloc.isSkip output2901 = false := by
  rw [output2901_def]
  conv => lhs; cbv
  try rfl
theorem node2901_eq : Flapjack.WordAlloc.removeDeadStructural input2901 value1454 value1 value2 = (output2901, value1455, value1) := by
  rw [input2901_def, output2901_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2901 input2900)).val
theorem input2902_def : input2902 = (.seq input2901 input2900) := by
  unfold input2902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2901 output2900)).val
theorem output2902_def : output2902 = (.seq output2901 output2900) := by
  unfold output2902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2902_skip : Flapjack.WordAlloc.isSkip output2902 = false := by
  rw [output2902_def]
  conv => lhs; cbv
  try rfl
theorem node2902_eq : Flapjack.WordAlloc.removeDeadStructural input2902 value5 value1 value2 = (output2902, value1455, value1) := by
  rw [input2902_def, output2902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2900_eq]
  dsimp only
  rw [node2901_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1456 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24693 13500519111022079365#64))).val
theorem input2903_def : input2903 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24693 13500519111022079365#64)) := by
  unfold input2903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24693 13500519111022079365#64))).val
theorem output2903_def : output2903 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24693 13500519111022079365#64)) := by
  unfold output2903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2903_skip : Flapjack.WordAlloc.isSkip output2903 = false := by
  rw [output2903_def]
  conv => lhs; cbv
  try rfl
theorem node2903_eq : Flapjack.WordAlloc.removeDeadStructural input2903 value1455 value1 value2 = (output2903, value1456, value1) := by
  rw [input2903_def, output2903_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24689 13500519111022079365#64))).val
theorem input2904_def : input2904 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24689 13500519111022079365#64)) := by
  unfold input2904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2904_def : output2904 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2904_skip : Flapjack.WordAlloc.isSkip output2904 = true := by
  rw [output2904_def]
  conv => lhs; cbv
  try rfl
theorem node2904_eq : Flapjack.WordAlloc.removeDeadStructural input2904 value1456 value1 value2 = (output2904, value1456, value1) := by
  rw [input2904_def, output2904_def]
  try (conv => lhs; cbv)
  try rfl

def value1457 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24685 24677 (Flapjack.WordRegImm.reg 24681))))).val
theorem input2905_def : input2905 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24685 24677 (Flapjack.WordRegImm.reg 24681)))) := by
  unfold input2905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24685 24677 (Flapjack.WordRegImm.reg 24681))))).val
theorem output2905_def : output2905 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24685 24677 (Flapjack.WordRegImm.reg 24681)))) := by
  unfold output2905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2905_skip : Flapjack.WordAlloc.isSkip output2905 = false := by
  rw [output2905_def]
  conv => lhs; cbv
  try rfl
theorem node2905_eq : Flapjack.WordAlloc.removeDeadStructural input2905 value1456 value1 value2 = (output2905, value1457, value1) := by
  rw [input2905_def, output2905_def]
  try (conv => lhs; cbv)
  try rfl

def value1458 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24681 5680#64))).val
theorem input2906_def : input2906 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24681 5680#64)) := by
  unfold input2906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24681 5680#64))).val
theorem output2906_def : output2906 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24681 5680#64)) := by
  unfold output2906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2906_skip : Flapjack.WordAlloc.isSkip output2906 = false := by
  rw [output2906_def]
  conv => lhs; cbv
  try rfl
theorem node2906_eq : Flapjack.WordAlloc.removeDeadStructural input2906 value1457 value1 value2 = (output2906, value1458, value1) := by
  rw [input2906_def, output2906_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2906 input2905)).val
theorem input2907_def : input2907 = (.seq input2906 input2905) := by
  unfold input2907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2906 output2905)).val
theorem output2907_def : output2907 = (.seq output2906 output2905) := by
  unfold output2907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2907_skip : Flapjack.WordAlloc.isSkip output2907 = false := by
  rw [output2907_def]
  conv => lhs; cbv
  try rfl
theorem node2907_eq : Flapjack.WordAlloc.removeDeadStructural input2907 value1456 value1 value2 = (output2907, value1458, value1) := by
  rw [input2907_def, output2907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2905_eq]
  dsimp only
  rw [node2906_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1459 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24677 (Flapjack.WordLangAddr.addr 24673 18446744073709551104#64)))).val
theorem input2908_def : input2908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24677 (Flapjack.WordLangAddr.addr 24673 18446744073709551104#64))) := by
  unfold input2908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24677 (Flapjack.WordLangAddr.addr 24673 18446744073709551104#64)))).val
theorem output2908_def : output2908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24677 (Flapjack.WordLangAddr.addr 24673 18446744073709551104#64))) := by
  unfold output2908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2908_skip : Flapjack.WordAlloc.isSkip output2908 = false := by
  rw [output2908_def]
  conv => lhs; cbv
  try rfl
theorem node2908_eq : Flapjack.WordAlloc.removeDeadStructural input2908 value1458 value1 value2 = (output2908, value1459, value1) := by
  rw [input2908_def, output2908_def]
  try (conv => lhs; cbv)
  try rfl

def value1460 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24673 24669)).val
theorem input2909_def : input2909 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24673 24669) := by
  unfold input2909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24673 24669)).val
theorem output2909_def : output2909 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24673 24669) := by
  unfold output2909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2909_skip : Flapjack.WordAlloc.isSkip output2909 = false := by
  rw [output2909_def]
  conv => lhs; cbv
  try rfl
theorem node2909_eq : Flapjack.WordAlloc.removeDeadStructural input2909 value1459 value1 value2 = (output2909, value1460, value1) := by
  rw [input2909_def, output2909_def]
  try (conv => lhs; cbv)
  try rfl

def value1461 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24669 24665 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2910_def : input2910 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24669 24665 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24669 24665 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2910_def : output2910 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24669 24665 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2910_skip : Flapjack.WordAlloc.isSkip output2910 = false := by
  rw [output2910_def]
  conv => lhs; cbv
  try rfl
theorem node2910_eq : Flapjack.WordAlloc.removeDeadStructural input2910 value1460 value1 value2 = (output2910, value1461, value1) := by
  rw [input2910_def, output2910_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24665 Flapjack.WordStore.heapLength)).val
theorem input2911_def : input2911 = (Flapjack.WordLangProgHOL.get 24665 Flapjack.WordStore.heapLength) := by
  unfold input2911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24665 Flapjack.WordStore.heapLength)).val
theorem output2911_def : output2911 = (Flapjack.WordLangProgHOL.get 24665 Flapjack.WordStore.heapLength) := by
  unfold output2911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2911_skip : Flapjack.WordAlloc.isSkip output2911 = false := by
  rw [output2911_def]
  conv => lhs; cbv
  try rfl
theorem node2911_eq : Flapjack.WordAlloc.removeDeadStructural input2911 value1461 value1 value2 = (output2911, value5, value1) := by
  rw [input2911_def, output2911_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2911 input2910)).val
theorem input2912_def : input2912 = (.seq input2911 input2910) := by
  unfold input2912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2911 output2910)).val
theorem output2912_def : output2912 = (.seq output2911 output2910) := by
  unfold output2912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2912_skip : Flapjack.WordAlloc.isSkip output2912 = false := by
  rw [output2912_def]
  conv => lhs; cbv
  try rfl
theorem node2912_eq : Flapjack.WordAlloc.removeDeadStructural input2912 value1460 value1 value2 = (output2912, value5, value1) := by
  rw [input2912_def, output2912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2910_eq]
  dsimp only
  rw [node2911_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2912 input2909)).val
theorem input2913_def : input2913 = (.seq input2912 input2909) := by
  unfold input2913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2912 output2909)).val
theorem output2913_def : output2913 = (.seq output2912 output2909) := by
  unfold output2913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2913_skip : Flapjack.WordAlloc.isSkip output2913 = false := by
  rw [output2913_def]
  conv => lhs; cbv
  try rfl
theorem node2913_eq : Flapjack.WordAlloc.removeDeadStructural input2913 value1459 value1 value2 = (output2913, value5, value1) := by
  rw [input2913_def, output2913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2909_eq]
  dsimp only
  rw [node2912_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2913 input2908)).val
theorem input2914_def : input2914 = (.seq input2913 input2908) := by
  unfold input2914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2913 output2908)).val
theorem output2914_def : output2914 = (.seq output2913 output2908) := by
  unfold output2914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2914_skip : Flapjack.WordAlloc.isSkip output2914 = false := by
  rw [output2914_def]
  conv => lhs; cbv
  try rfl
theorem node2914_eq : Flapjack.WordAlloc.removeDeadStructural input2914 value1458 value1 value2 = (output2914, value5, value1) := by
  rw [input2914_def, output2914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2908_eq]
  dsimp only
  rw [node2913_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2914 input2907)).val
theorem input2915_def : input2915 = (.seq input2914 input2907) := by
  unfold input2915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2914 output2907)).val
theorem output2915_def : output2915 = (.seq output2914 output2907) := by
  unfold output2915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2915_skip : Flapjack.WordAlloc.isSkip output2915 = false := by
  rw [output2915_def]
  conv => lhs; cbv
  try rfl
theorem node2915_eq : Flapjack.WordAlloc.removeDeadStructural input2915 value1456 value1 value2 = (output2915, value5, value1) := by
  rw [input2915_def, output2915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2907_eq]
  dsimp only
  rw [node2914_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1462 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24657 (Flapjack.WordLangAddr.addr 24661 0#64)))).val
theorem input2916_def : input2916 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24657 (Flapjack.WordLangAddr.addr 24661 0#64))) := by
  unfold input2916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24657 (Flapjack.WordLangAddr.addr 24661 0#64)))).val
theorem output2916_def : output2916 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24657 (Flapjack.WordLangAddr.addr 24661 0#64))) := by
  unfold output2916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2916_skip : Flapjack.WordAlloc.isSkip output2916 = false := by
  rw [output2916_def]
  conv => lhs; cbv
  try rfl
theorem node2916_eq : Flapjack.WordAlloc.removeDeadStructural input2916 value5 value1 value2 = (output2916, value1462, value1) := by
  rw [input2916_def, output2916_def]
  try (conv => lhs; cbv)
  try rfl

def value1463 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24661, 24649)])).val
theorem input2917_def : input2917 = (Flapjack.WordLangProgHOL.move 0 [(24661, 24649)]) := by
  unfold input2917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24661, 24649)])).val
theorem output2917_def : output2917 = (Flapjack.WordLangProgHOL.move 0 [(24661, 24649)]) := by
  unfold output2917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2917_skip : Flapjack.WordAlloc.isSkip output2917 = false := by
  rw [output2917_def]
  conv => lhs; cbv
  try rfl
theorem node2917_eq : Flapjack.WordAlloc.removeDeadStructural input2917 value1462 value1 value2 = (output2917, value1463, value1) := by
  rw [input2917_def, output2917_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2917 input2916)).val
theorem input2918_def : input2918 = (.seq input2917 input2916) := by
  unfold input2918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2917 output2916)).val
theorem output2918_def : output2918 = (.seq output2917 output2916) := by
  unfold output2918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2918_skip : Flapjack.WordAlloc.isSkip output2918 = false := by
  rw [output2918_def]
  conv => lhs; cbv
  try rfl
theorem node2918_eq : Flapjack.WordAlloc.removeDeadStructural input2918 value5 value1 value2 = (output2918, value1463, value1) := by
  rw [input2918_def, output2918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2916_eq]
  dsimp only
  rw [node2917_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1464 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24657 3658379999393219626#64))).val
theorem input2919_def : input2919 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24657 3658379999393219626#64)) := by
  unfold input2919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24657 3658379999393219626#64))).val
theorem output2919_def : output2919 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24657 3658379999393219626#64)) := by
  unfold output2919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2919_skip : Flapjack.WordAlloc.isSkip output2919 = false := by
  rw [output2919_def]
  conv => lhs; cbv
  try rfl
theorem node2919_eq : Flapjack.WordAlloc.removeDeadStructural input2919 value1463 value1 value2 = (output2919, value1464, value1) := by
  rw [input2919_def, output2919_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24653 3658379999393219626#64))).val
theorem input2920_def : input2920 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24653 3658379999393219626#64)) := by
  unfold input2920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2920_def : output2920 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2920_skip : Flapjack.WordAlloc.isSkip output2920 = true := by
  rw [output2920_def]
  conv => lhs; cbv
  try rfl
theorem node2920_eq : Flapjack.WordAlloc.removeDeadStructural input2920 value1464 value1 value2 = (output2920, value1464, value1) := by
  rw [input2920_def, output2920_def]
  try (conv => lhs; cbv)
  try rfl

def value1465 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24649 24641 (Flapjack.WordRegImm.reg 24645))))).val
theorem input2921_def : input2921 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24649 24641 (Flapjack.WordRegImm.reg 24645)))) := by
  unfold input2921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24649 24641 (Flapjack.WordRegImm.reg 24645))))).val
theorem output2921_def : output2921 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24649 24641 (Flapjack.WordRegImm.reg 24645)))) := by
  unfold output2921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2921_skip : Flapjack.WordAlloc.isSkip output2921 = false := by
  rw [output2921_def]
  conv => lhs; cbv
  try rfl
theorem node2921_eq : Flapjack.WordAlloc.removeDeadStructural input2921 value1464 value1 value2 = (output2921, value1465, value1) := by
  rw [input2921_def, output2921_def]
  try (conv => lhs; cbv)
  try rfl

def value1466 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24645 5672#64))).val
theorem input2922_def : input2922 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24645 5672#64)) := by
  unfold input2922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24645 5672#64))).val
theorem output2922_def : output2922 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24645 5672#64)) := by
  unfold output2922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2922_skip : Flapjack.WordAlloc.isSkip output2922 = false := by
  rw [output2922_def]
  conv => lhs; cbv
  try rfl
theorem node2922_eq : Flapjack.WordAlloc.removeDeadStructural input2922 value1465 value1 value2 = (output2922, value1466, value1) := by
  rw [input2922_def, output2922_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2922 input2921)).val
theorem input2923_def : input2923 = (.seq input2922 input2921) := by
  unfold input2923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2922 output2921)).val
theorem output2923_def : output2923 = (.seq output2922 output2921) := by
  unfold output2923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2923_skip : Flapjack.WordAlloc.isSkip output2923 = false := by
  rw [output2923_def]
  conv => lhs; cbv
  try rfl
theorem node2923_eq : Flapjack.WordAlloc.removeDeadStructural input2923 value1464 value1 value2 = (output2923, value1466, value1) := by
  rw [input2923_def, output2923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2921_eq]
  dsimp only
  rw [node2922_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1467 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24641 (Flapjack.WordLangAddr.addr 24637 18446744073709551104#64)))).val
theorem input2924_def : input2924 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24641 (Flapjack.WordLangAddr.addr 24637 18446744073709551104#64))) := by
  unfold input2924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24641 (Flapjack.WordLangAddr.addr 24637 18446744073709551104#64)))).val
theorem output2924_def : output2924 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24641 (Flapjack.WordLangAddr.addr 24637 18446744073709551104#64))) := by
  unfold output2924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2924_skip : Flapjack.WordAlloc.isSkip output2924 = false := by
  rw [output2924_def]
  conv => lhs; cbv
  try rfl
theorem node2924_eq : Flapjack.WordAlloc.removeDeadStructural input2924 value1466 value1 value2 = (output2924, value1467, value1) := by
  rw [input2924_def, output2924_def]
  try (conv => lhs; cbv)
  try rfl

def value1468 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24637 24633)).val
theorem input2925_def : input2925 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24637 24633) := by
  unfold input2925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24637 24633)).val
theorem output2925_def : output2925 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24637 24633) := by
  unfold output2925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2925_skip : Flapjack.WordAlloc.isSkip output2925 = false := by
  rw [output2925_def]
  conv => lhs; cbv
  try rfl
theorem node2925_eq : Flapjack.WordAlloc.removeDeadStructural input2925 value1467 value1 value2 = (output2925, value1468, value1) := by
  rw [input2925_def, output2925_def]
  try (conv => lhs; cbv)
  try rfl

def value1469 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24633 24629 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2926_def : input2926 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24633 24629 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24633 24629 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2926_def : output2926 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24633 24629 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2926_skip : Flapjack.WordAlloc.isSkip output2926 = false := by
  rw [output2926_def]
  conv => lhs; cbv
  try rfl
theorem node2926_eq : Flapjack.WordAlloc.removeDeadStructural input2926 value1468 value1 value2 = (output2926, value1469, value1) := by
  rw [input2926_def, output2926_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24629 Flapjack.WordStore.heapLength)).val
theorem input2927_def : input2927 = (Flapjack.WordLangProgHOL.get 24629 Flapjack.WordStore.heapLength) := by
  unfold input2927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24629 Flapjack.WordStore.heapLength)).val
theorem output2927_def : output2927 = (Flapjack.WordLangProgHOL.get 24629 Flapjack.WordStore.heapLength) := by
  unfold output2927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2927_skip : Flapjack.WordAlloc.isSkip output2927 = false := by
  rw [output2927_def]
  conv => lhs; cbv
  try rfl
theorem node2927_eq : Flapjack.WordAlloc.removeDeadStructural input2927 value1469 value1 value2 = (output2927, value5, value1) := by
  rw [input2927_def, output2927_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2927 input2926)).val
theorem input2928_def : input2928 = (.seq input2927 input2926) := by
  unfold input2928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2927 output2926)).val
theorem output2928_def : output2928 = (.seq output2927 output2926) := by
  unfold output2928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2928_skip : Flapjack.WordAlloc.isSkip output2928 = false := by
  rw [output2928_def]
  conv => lhs; cbv
  try rfl
theorem node2928_eq : Flapjack.WordAlloc.removeDeadStructural input2928 value1468 value1 value2 = (output2928, value5, value1) := by
  rw [input2928_def, output2928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2926_eq]
  dsimp only
  rw [node2927_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2928 input2925)).val
theorem input2929_def : input2929 = (.seq input2928 input2925) := by
  unfold input2929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2928 output2925)).val
theorem output2929_def : output2929 = (.seq output2928 output2925) := by
  unfold output2929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2929_skip : Flapjack.WordAlloc.isSkip output2929 = false := by
  rw [output2929_def]
  conv => lhs; cbv
  try rfl
theorem node2929_eq : Flapjack.WordAlloc.removeDeadStructural input2929 value1467 value1 value2 = (output2929, value5, value1) := by
  rw [input2929_def, output2929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2925_eq]
  dsimp only
  rw [node2928_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2929 input2924)).val
theorem input2930_def : input2930 = (.seq input2929 input2924) := by
  unfold input2930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2929 output2924)).val
theorem output2930_def : output2930 = (.seq output2929 output2924) := by
  unfold output2930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2930_skip : Flapjack.WordAlloc.isSkip output2930 = false := by
  rw [output2930_def]
  conv => lhs; cbv
  try rfl
theorem node2930_eq : Flapjack.WordAlloc.removeDeadStructural input2930 value1466 value1 value2 = (output2930, value5, value1) := by
  rw [input2930_def, output2930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2924_eq]
  dsimp only
  rw [node2929_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2930 input2923)).val
theorem input2931_def : input2931 = (.seq input2930 input2923) := by
  unfold input2931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2930 output2923)).val
theorem output2931_def : output2931 = (.seq output2930 output2923) := by
  unfold output2931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2931_skip : Flapjack.WordAlloc.isSkip output2931 = false := by
  rw [output2931_def]
  conv => lhs; cbv
  try rfl
theorem node2931_eq : Flapjack.WordAlloc.removeDeadStructural input2931 value1464 value1 value2 = (output2931, value5, value1) := by
  rw [input2931_def, output2931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2923_eq]
  dsimp only
  rw [node2930_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1470 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24621 (Flapjack.WordLangAddr.addr 24625 0#64)))).val
theorem input2932_def : input2932 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24621 (Flapjack.WordLangAddr.addr 24625 0#64))) := by
  unfold input2932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24621 (Flapjack.WordLangAddr.addr 24625 0#64)))).val
theorem output2932_def : output2932 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24621 (Flapjack.WordLangAddr.addr 24625 0#64))) := by
  unfold output2932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2932_skip : Flapjack.WordAlloc.isSkip output2932 = false := by
  rw [output2932_def]
  conv => lhs; cbv
  try rfl
theorem node2932_eq : Flapjack.WordAlloc.removeDeadStructural input2932 value5 value1 value2 = (output2932, value1470, value1) := by
  rw [input2932_def, output2932_def]
  try (conv => lhs; cbv)
  try rfl

def value1471 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24625, 24613)])).val
theorem input2933_def : input2933 = (Flapjack.WordLangProgHOL.move 0 [(24625, 24613)]) := by
  unfold input2933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24625, 24613)])).val
theorem output2933_def : output2933 = (Flapjack.WordLangProgHOL.move 0 [(24625, 24613)]) := by
  unfold output2933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2933_skip : Flapjack.WordAlloc.isSkip output2933 = false := by
  rw [output2933_def]
  conv => lhs; cbv
  try rfl
theorem node2933_eq : Flapjack.WordAlloc.removeDeadStructural input2933 value1470 value1 value2 = (output2933, value1471, value1) := by
  rw [input2933_def, output2933_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2933 input2932)).val
theorem input2934_def : input2934 = (.seq input2933 input2932) := by
  unfold input2934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2933 output2932)).val
theorem output2934_def : output2934 = (.seq output2933 output2932) := by
  unfold output2934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2934_skip : Flapjack.WordAlloc.isSkip output2934 = false := by
  rw [output2934_def]
  conv => lhs; cbv
  try rfl
theorem node2934_eq : Flapjack.WordAlloc.removeDeadStructural input2934 value5 value1 value2 = (output2934, value1471, value1) := by
  rw [input2934_def, output2934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2932_eq]
  dsimp only
  rw [node2933_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1472 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24621 9850925049107374429#64))).val
theorem input2935_def : input2935 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24621 9850925049107374429#64)) := by
  unfold input2935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24621 9850925049107374429#64))).val
theorem output2935_def : output2935 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24621 9850925049107374429#64)) := by
  unfold output2935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2935_skip : Flapjack.WordAlloc.isSkip output2935 = false := by
  rw [output2935_def]
  conv => lhs; cbv
  try rfl
theorem node2935_eq : Flapjack.WordAlloc.removeDeadStructural input2935 value1471 value1 value2 = (output2935, value1472, value1) := by
  rw [input2935_def, output2935_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24617 9850925049107374429#64))).val
theorem input2936_def : input2936 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24617 9850925049107374429#64)) := by
  unfold input2936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2936_def : output2936 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2936_skip : Flapjack.WordAlloc.isSkip output2936 = true := by
  rw [output2936_def]
  conv => lhs; cbv
  try rfl
theorem node2936_eq : Flapjack.WordAlloc.removeDeadStructural input2936 value1472 value1 value2 = (output2936, value1472, value1) := by
  rw [input2936_def, output2936_def]
  try (conv => lhs; cbv)
  try rfl

def value1473 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24613 24605 (Flapjack.WordRegImm.reg 24609))))).val
theorem input2937_def : input2937 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24613 24605 (Flapjack.WordRegImm.reg 24609)))) := by
  unfold input2937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24613 24605 (Flapjack.WordRegImm.reg 24609))))).val
theorem output2937_def : output2937 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24613 24605 (Flapjack.WordRegImm.reg 24609)))) := by
  unfold output2937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2937_skip : Flapjack.WordAlloc.isSkip output2937 = false := by
  rw [output2937_def]
  conv => lhs; cbv
  try rfl
theorem node2937_eq : Flapjack.WordAlloc.removeDeadStructural input2937 value1472 value1 value2 = (output2937, value1473, value1) := by
  rw [input2937_def, output2937_def]
  try (conv => lhs; cbv)
  try rfl

def value1474 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24609 5664#64))).val
theorem input2938_def : input2938 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24609 5664#64)) := by
  unfold input2938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24609 5664#64))).val
theorem output2938_def : output2938 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24609 5664#64)) := by
  unfold output2938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2938_skip : Flapjack.WordAlloc.isSkip output2938 = false := by
  rw [output2938_def]
  conv => lhs; cbv
  try rfl
theorem node2938_eq : Flapjack.WordAlloc.removeDeadStructural input2938 value1473 value1 value2 = (output2938, value1474, value1) := by
  rw [input2938_def, output2938_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2938 input2937)).val
theorem input2939_def : input2939 = (.seq input2938 input2937) := by
  unfold input2939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2938 output2937)).val
theorem output2939_def : output2939 = (.seq output2938 output2937) := by
  unfold output2939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2939_skip : Flapjack.WordAlloc.isSkip output2939 = false := by
  rw [output2939_def]
  conv => lhs; cbv
  try rfl
theorem node2939_eq : Flapjack.WordAlloc.removeDeadStructural input2939 value1472 value1 value2 = (output2939, value1474, value1) := by
  rw [input2939_def, output2939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2937_eq]
  dsimp only
  rw [node2938_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1475 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24605 (Flapjack.WordLangAddr.addr 24601 18446744073709551104#64)))).val
theorem input2940_def : input2940 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24605 (Flapjack.WordLangAddr.addr 24601 18446744073709551104#64))) := by
  unfold input2940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24605 (Flapjack.WordLangAddr.addr 24601 18446744073709551104#64)))).val
theorem output2940_def : output2940 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24605 (Flapjack.WordLangAddr.addr 24601 18446744073709551104#64))) := by
  unfold output2940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2940_skip : Flapjack.WordAlloc.isSkip output2940 = false := by
  rw [output2940_def]
  conv => lhs; cbv
  try rfl
theorem node2940_eq : Flapjack.WordAlloc.removeDeadStructural input2940 value1474 value1 value2 = (output2940, value1475, value1) := by
  rw [input2940_def, output2940_def]
  try (conv => lhs; cbv)
  try rfl

def value1476 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24601 24597)).val
theorem input2941_def : input2941 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24601 24597) := by
  unfold input2941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24601 24597)).val
theorem output2941_def : output2941 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24601 24597) := by
  unfold output2941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2941_skip : Flapjack.WordAlloc.isSkip output2941 = false := by
  rw [output2941_def]
  conv => lhs; cbv
  try rfl
theorem node2941_eq : Flapjack.WordAlloc.removeDeadStructural input2941 value1475 value1 value2 = (output2941, value1476, value1) := by
  rw [input2941_def, output2941_def]
  try (conv => lhs; cbv)
  try rfl

def value1477 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24597 24593 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2942_def : input2942 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24597 24593 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24597 24593 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2942_def : output2942 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24597 24593 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2942_skip : Flapjack.WordAlloc.isSkip output2942 = false := by
  rw [output2942_def]
  conv => lhs; cbv
  try rfl
theorem node2942_eq : Flapjack.WordAlloc.removeDeadStructural input2942 value1476 value1 value2 = (output2942, value1477, value1) := by
  rw [input2942_def, output2942_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24593 Flapjack.WordStore.heapLength)).val
theorem input2943_def : input2943 = (Flapjack.WordLangProgHOL.get 24593 Flapjack.WordStore.heapLength) := by
  unfold input2943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24593 Flapjack.WordStore.heapLength)).val
theorem output2943_def : output2943 = (Flapjack.WordLangProgHOL.get 24593 Flapjack.WordStore.heapLength) := by
  unfold output2943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2943_skip : Flapjack.WordAlloc.isSkip output2943 = false := by
  rw [output2943_def]
  conv => lhs; cbv
  try rfl
theorem node2943_eq : Flapjack.WordAlloc.removeDeadStructural input2943 value1477 value1 value2 = (output2943, value5, value1) := by
  rw [input2943_def, output2943_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2943 input2942)).val
theorem input2944_def : input2944 = (.seq input2943 input2942) := by
  unfold input2944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2943 output2942)).val
theorem output2944_def : output2944 = (.seq output2943 output2942) := by
  unfold output2944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2944_skip : Flapjack.WordAlloc.isSkip output2944 = false := by
  rw [output2944_def]
  conv => lhs; cbv
  try rfl
theorem node2944_eq : Flapjack.WordAlloc.removeDeadStructural input2944 value1476 value1 value2 = (output2944, value5, value1) := by
  rw [input2944_def, output2944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2942_eq]
  dsimp only
  rw [node2943_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2944 input2941)).val
theorem input2945_def : input2945 = (.seq input2944 input2941) := by
  unfold input2945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2944 output2941)).val
theorem output2945_def : output2945 = (.seq output2944 output2941) := by
  unfold output2945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2945_skip : Flapjack.WordAlloc.isSkip output2945 = false := by
  rw [output2945_def]
  conv => lhs; cbv
  try rfl
theorem node2945_eq : Flapjack.WordAlloc.removeDeadStructural input2945 value1475 value1 value2 = (output2945, value5, value1) := by
  rw [input2945_def, output2945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2941_eq]
  dsimp only
  rw [node2944_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2945 input2940)).val
theorem input2946_def : input2946 = (.seq input2945 input2940) := by
  unfold input2946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2945 output2940)).val
theorem output2946_def : output2946 = (.seq output2945 output2940) := by
  unfold output2946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2946_skip : Flapjack.WordAlloc.isSkip output2946 = false := by
  rw [output2946_def]
  conv => lhs; cbv
  try rfl
theorem node2946_eq : Flapjack.WordAlloc.removeDeadStructural input2946 value1474 value1 value2 = (output2946, value5, value1) := by
  rw [input2946_def, output2946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2940_eq]
  dsimp only
  rw [node2945_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2946 input2939)).val
theorem input2947_def : input2947 = (.seq input2946 input2939) := by
  unfold input2947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2946 output2939)).val
theorem output2947_def : output2947 = (.seq output2946 output2939) := by
  unfold output2947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2947_skip : Flapjack.WordAlloc.isSkip output2947 = false := by
  rw [output2947_def]
  conv => lhs; cbv
  try rfl
theorem node2947_eq : Flapjack.WordAlloc.removeDeadStructural input2947 value1472 value1 value2 = (output2947, value5, value1) := by
  rw [input2947_def, output2947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2939_eq]
  dsimp only
  rw [node2946_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1478 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24585 (Flapjack.WordLangAddr.addr 24589 0#64)))).val
theorem input2948_def : input2948 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24585 (Flapjack.WordLangAddr.addr 24589 0#64))) := by
  unfold input2948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24585 (Flapjack.WordLangAddr.addr 24589 0#64)))).val
theorem output2948_def : output2948 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24585 (Flapjack.WordLangAddr.addr 24589 0#64))) := by
  unfold output2948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2948_skip : Flapjack.WordAlloc.isSkip output2948 = false := by
  rw [output2948_def]
  conv => lhs; cbv
  try rfl
theorem node2948_eq : Flapjack.WordAlloc.removeDeadStructural input2948 value5 value1 value2 = (output2948, value1478, value1) := by
  rw [input2948_def, output2948_def]
  try (conv => lhs; cbv)
  try rfl

def value1479 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24589, 24577)])).val
theorem input2949_def : input2949 = (Flapjack.WordLangProgHOL.move 0 [(24589, 24577)]) := by
  unfold input2949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24589, 24577)])).val
theorem output2949_def : output2949 = (Flapjack.WordLangProgHOL.move 0 [(24589, 24577)]) := by
  unfold output2949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2949_skip : Flapjack.WordAlloc.isSkip output2949 = false := by
  rw [output2949_def]
  conv => lhs; cbv
  try rfl
theorem node2949_eq : Flapjack.WordAlloc.removeDeadStructural input2949 value1478 value1 value2 = (output2949, value1479, value1) := by
  rw [input2949_def, output2949_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2949 input2948)).val
theorem input2950_def : input2950 = (.seq input2949 input2948) := by
  unfold input2950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2949 output2948)).val
theorem output2950_def : output2950 = (.seq output2949 output2948) := by
  unfold output2950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2950_skip : Flapjack.WordAlloc.isSkip output2950 = false := by
  rw [output2950_def]
  conv => lhs; cbv
  try rfl
theorem node2950_eq : Flapjack.WordAlloc.removeDeadStructural input2950 value5 value1 value2 = (output2950, value1479, value1) := by
  rw [input2950_def, output2950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2948_eq]
  dsimp only
  rw [node2949_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1480 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24585 6640057249351452444#64))).val
theorem input2951_def : input2951 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24585 6640057249351452444#64)) := by
  unfold input2951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24585 6640057249351452444#64))).val
theorem output2951_def : output2951 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24585 6640057249351452444#64)) := by
  unfold output2951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2951_skip : Flapjack.WordAlloc.isSkip output2951 = false := by
  rw [output2951_def]
  conv => lhs; cbv
  try rfl
theorem node2951_eq : Flapjack.WordAlloc.removeDeadStructural input2951 value1479 value1 value2 = (output2951, value1480, value1) := by
  rw [input2951_def, output2951_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24581 6640057249351452444#64))).val
theorem input2952_def : input2952 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24581 6640057249351452444#64)) := by
  unfold input2952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2952_def : output2952 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2952_skip : Flapjack.WordAlloc.isSkip output2952 = true := by
  rw [output2952_def]
  conv => lhs; cbv
  try rfl
theorem node2952_eq : Flapjack.WordAlloc.removeDeadStructural input2952 value1480 value1 value2 = (output2952, value1480, value1) := by
  rw [input2952_def, output2952_def]
  try (conv => lhs; cbv)
  try rfl

def value1481 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24577 24569 (Flapjack.WordRegImm.reg 24573))))).val
theorem input2953_def : input2953 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24577 24569 (Flapjack.WordRegImm.reg 24573)))) := by
  unfold input2953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24577 24569 (Flapjack.WordRegImm.reg 24573))))).val
theorem output2953_def : output2953 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24577 24569 (Flapjack.WordRegImm.reg 24573)))) := by
  unfold output2953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2953_skip : Flapjack.WordAlloc.isSkip output2953 = false := by
  rw [output2953_def]
  conv => lhs; cbv
  try rfl
theorem node2953_eq : Flapjack.WordAlloc.removeDeadStructural input2953 value1480 value1 value2 = (output2953, value1481, value1) := by
  rw [input2953_def, output2953_def]
  try (conv => lhs; cbv)
  try rfl

def value1482 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24573 5656#64))).val
theorem input2954_def : input2954 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24573 5656#64)) := by
  unfold input2954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24573 5656#64))).val
theorem output2954_def : output2954 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24573 5656#64)) := by
  unfold output2954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2954_skip : Flapjack.WordAlloc.isSkip output2954 = false := by
  rw [output2954_def]
  conv => lhs; cbv
  try rfl
theorem node2954_eq : Flapjack.WordAlloc.removeDeadStructural input2954 value1481 value1 value2 = (output2954, value1482, value1) := by
  rw [input2954_def, output2954_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2954 input2953)).val
theorem input2955_def : input2955 = (.seq input2954 input2953) := by
  unfold input2955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2954 output2953)).val
theorem output2955_def : output2955 = (.seq output2954 output2953) := by
  unfold output2955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2955_skip : Flapjack.WordAlloc.isSkip output2955 = false := by
  rw [output2955_def]
  conv => lhs; cbv
  try rfl
theorem node2955_eq : Flapjack.WordAlloc.removeDeadStructural input2955 value1480 value1 value2 = (output2955, value1482, value1) := by
  rw [input2955_def, output2955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2953_eq]
  dsimp only
  rw [node2954_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1483 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24569 (Flapjack.WordLangAddr.addr 24565 18446744073709551104#64)))).val
theorem input2956_def : input2956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24569 (Flapjack.WordLangAddr.addr 24565 18446744073709551104#64))) := by
  unfold input2956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24569 (Flapjack.WordLangAddr.addr 24565 18446744073709551104#64)))).val
theorem output2956_def : output2956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24569 (Flapjack.WordLangAddr.addr 24565 18446744073709551104#64))) := by
  unfold output2956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2956_skip : Flapjack.WordAlloc.isSkip output2956 = false := by
  rw [output2956_def]
  conv => lhs; cbv
  try rfl
theorem node2956_eq : Flapjack.WordAlloc.removeDeadStructural input2956 value1482 value1 value2 = (output2956, value1483, value1) := by
  rw [input2956_def, output2956_def]
  try (conv => lhs; cbv)
  try rfl

def value1484 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24565 24561)).val
theorem input2957_def : input2957 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24565 24561) := by
  unfold input2957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24565 24561)).val
theorem output2957_def : output2957 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24565 24561) := by
  unfold output2957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2957_skip : Flapjack.WordAlloc.isSkip output2957 = false := by
  rw [output2957_def]
  conv => lhs; cbv
  try rfl
theorem node2957_eq : Flapjack.WordAlloc.removeDeadStructural input2957 value1483 value1 value2 = (output2957, value1484, value1) := by
  rw [input2957_def, output2957_def]
  try (conv => lhs; cbv)
  try rfl

def value1485 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24561 24557 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2958_def : input2958 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24561 24557 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24561 24557 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2958_def : output2958 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24561 24557 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2958_skip : Flapjack.WordAlloc.isSkip output2958 = false := by
  rw [output2958_def]
  conv => lhs; cbv
  try rfl
theorem node2958_eq : Flapjack.WordAlloc.removeDeadStructural input2958 value1484 value1 value2 = (output2958, value1485, value1) := by
  rw [input2958_def, output2958_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24557 Flapjack.WordStore.heapLength)).val
theorem input2959_def : input2959 = (Flapjack.WordLangProgHOL.get 24557 Flapjack.WordStore.heapLength) := by
  unfold input2959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24557 Flapjack.WordStore.heapLength)).val
theorem output2959_def : output2959 = (Flapjack.WordLangProgHOL.get 24557 Flapjack.WordStore.heapLength) := by
  unfold output2959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2959_skip : Flapjack.WordAlloc.isSkip output2959 = false := by
  rw [output2959_def]
  conv => lhs; cbv
  try rfl
theorem node2959_eq : Flapjack.WordAlloc.removeDeadStructural input2959 value1485 value1 value2 = (output2959, value5, value1) := by
  rw [input2959_def, output2959_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2959 input2958)).val
theorem input2960_def : input2960 = (.seq input2959 input2958) := by
  unfold input2960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2959 output2958)).val
theorem output2960_def : output2960 = (.seq output2959 output2958) := by
  unfold output2960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2960_skip : Flapjack.WordAlloc.isSkip output2960 = false := by
  rw [output2960_def]
  conv => lhs; cbv
  try rfl
theorem node2960_eq : Flapjack.WordAlloc.removeDeadStructural input2960 value1484 value1 value2 = (output2960, value5, value1) := by
  rw [input2960_def, output2960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2958_eq]
  dsimp only
  rw [node2959_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2960 input2957)).val
theorem input2961_def : input2961 = (.seq input2960 input2957) := by
  unfold input2961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2960 output2957)).val
theorem output2961_def : output2961 = (.seq output2960 output2957) := by
  unfold output2961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2961_skip : Flapjack.WordAlloc.isSkip output2961 = false := by
  rw [output2961_def]
  conv => lhs; cbv
  try rfl
theorem node2961_eq : Flapjack.WordAlloc.removeDeadStructural input2961 value1483 value1 value2 = (output2961, value5, value1) := by
  rw [input2961_def, output2961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2957_eq]
  dsimp only
  rw [node2960_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2961 input2956)).val
theorem input2962_def : input2962 = (.seq input2961 input2956) := by
  unfold input2962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2961 output2956)).val
theorem output2962_def : output2962 = (.seq output2961 output2956) := by
  unfold output2962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2962_skip : Flapjack.WordAlloc.isSkip output2962 = false := by
  rw [output2962_def]
  conv => lhs; cbv
  try rfl
theorem node2962_eq : Flapjack.WordAlloc.removeDeadStructural input2962 value1482 value1 value2 = (output2962, value5, value1) := by
  rw [input2962_def, output2962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2956_eq]
  dsimp only
  rw [node2961_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2962 input2955)).val
theorem input2963_def : input2963 = (.seq input2962 input2955) := by
  unfold input2963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2962 output2955)).val
theorem output2963_def : output2963 = (.seq output2962 output2955) := by
  unfold output2963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2963_skip : Flapjack.WordAlloc.isSkip output2963 = false := by
  rw [output2963_def]
  conv => lhs; cbv
  try rfl
theorem node2963_eq : Flapjack.WordAlloc.removeDeadStructural input2963 value1480 value1 value2 = (output2963, value5, value1) := by
  rw [input2963_def, output2963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2955_eq]
  dsimp only
  rw [node2962_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1486 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24549 (Flapjack.WordLangAddr.addr 24553 0#64)))).val
theorem input2964_def : input2964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24549 (Flapjack.WordLangAddr.addr 24553 0#64))) := by
  unfold input2964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24549 (Flapjack.WordLangAddr.addr 24553 0#64)))).val
theorem output2964_def : output2964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24549 (Flapjack.WordLangAddr.addr 24553 0#64))) := by
  unfold output2964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2964_skip : Flapjack.WordAlloc.isSkip output2964 = false := by
  rw [output2964_def]
  conv => lhs; cbv
  try rfl
theorem node2964_eq : Flapjack.WordAlloc.removeDeadStructural input2964 value5 value1 value2 = (output2964, value1486, value1) := by
  rw [input2964_def, output2964_def]
  try (conv => lhs; cbv)
  try rfl

def value1487 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24553, 24541)])).val
theorem input2965_def : input2965 = (Flapjack.WordLangProgHOL.move 0 [(24553, 24541)]) := by
  unfold input2965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24553, 24541)])).val
theorem output2965_def : output2965 = (Flapjack.WordLangProgHOL.move 0 [(24553, 24541)]) := by
  unfold output2965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2965_skip : Flapjack.WordAlloc.isSkip output2965 = false := by
  rw [output2965_def]
  conv => lhs; cbv
  try rfl
theorem node2965_eq : Flapjack.WordAlloc.removeDeadStructural input2965 value1486 value1 value2 = (output2965, value1487, value1) := by
  rw [input2965_def, output2965_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2965 input2964)).val
theorem input2966_def : input2966 = (.seq input2965 input2964) := by
  unfold input2966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2965 output2964)).val
theorem output2966_def : output2966 = (.seq output2965 output2964) := by
  unfold output2966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2966_skip : Flapjack.WordAlloc.isSkip output2966 = false := by
  rw [output2966_def]
  conv => lhs; cbv
  try rfl
theorem node2966_eq : Flapjack.WordAlloc.removeDeadStructural input2966 value5 value1 value2 = (output2966, value1487, value1) := by
  rw [input2966_def, output2966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2964_eq]
  dsimp only
  rw [node2965_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1488 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24549 7077594464397203414#64))).val
theorem input2967_def : input2967 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24549 7077594464397203414#64)) := by
  unfold input2967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24549 7077594464397203414#64))).val
theorem output2967_def : output2967 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24549 7077594464397203414#64)) := by
  unfold output2967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2967_skip : Flapjack.WordAlloc.isSkip output2967 = false := by
  rw [output2967_def]
  conv => lhs; cbv
  try rfl
theorem node2967_eq : Flapjack.WordAlloc.removeDeadStructural input2967 value1487 value1 value2 = (output2967, value1488, value1) := by
  rw [input2967_def, output2967_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24545 7077594464397203414#64))).val
theorem input2968_def : input2968 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24545 7077594464397203414#64)) := by
  unfold input2968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2968_def : output2968 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2968_skip : Flapjack.WordAlloc.isSkip output2968 = true := by
  rw [output2968_def]
  conv => lhs; cbv
  try rfl
theorem node2968_eq : Flapjack.WordAlloc.removeDeadStructural input2968 value1488 value1 value2 = (output2968, value1488, value1) := by
  rw [input2968_def, output2968_def]
  try (conv => lhs; cbv)
  try rfl

def value1489 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24541 24533 (Flapjack.WordRegImm.reg 24537))))).val
theorem input2969_def : input2969 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24541 24533 (Flapjack.WordRegImm.reg 24537)))) := by
  unfold input2969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24541 24533 (Flapjack.WordRegImm.reg 24537))))).val
theorem output2969_def : output2969 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24541 24533 (Flapjack.WordRegImm.reg 24537)))) := by
  unfold output2969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2969_skip : Flapjack.WordAlloc.isSkip output2969 = false := by
  rw [output2969_def]
  conv => lhs; cbv
  try rfl
theorem node2969_eq : Flapjack.WordAlloc.removeDeadStructural input2969 value1488 value1 value2 = (output2969, value1489, value1) := by
  rw [input2969_def, output2969_def]
  try (conv => lhs; cbv)
  try rfl

def value1490 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24537 5648#64))).val
theorem input2970_def : input2970 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24537 5648#64)) := by
  unfold input2970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24537 5648#64))).val
theorem output2970_def : output2970 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24537 5648#64)) := by
  unfold output2970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2970_skip : Flapjack.WordAlloc.isSkip output2970 = false := by
  rw [output2970_def]
  conv => lhs; cbv
  try rfl
theorem node2970_eq : Flapjack.WordAlloc.removeDeadStructural input2970 value1489 value1 value2 = (output2970, value1490, value1) := by
  rw [input2970_def, output2970_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2970 input2969)).val
theorem input2971_def : input2971 = (.seq input2970 input2969) := by
  unfold input2971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2970 output2969)).val
theorem output2971_def : output2971 = (.seq output2970 output2969) := by
  unfold output2971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2971_skip : Flapjack.WordAlloc.isSkip output2971 = false := by
  rw [output2971_def]
  conv => lhs; cbv
  try rfl
theorem node2971_eq : Flapjack.WordAlloc.removeDeadStructural input2971 value1488 value1 value2 = (output2971, value1490, value1) := by
  rw [input2971_def, output2971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2969_eq]
  dsimp only
  rw [node2970_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1491 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24533 (Flapjack.WordLangAddr.addr 24529 18446744073709551104#64)))).val
theorem input2972_def : input2972 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24533 (Flapjack.WordLangAddr.addr 24529 18446744073709551104#64))) := by
  unfold input2972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24533 (Flapjack.WordLangAddr.addr 24529 18446744073709551104#64)))).val
theorem output2972_def : output2972 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24533 (Flapjack.WordLangAddr.addr 24529 18446744073709551104#64))) := by
  unfold output2972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2972_skip : Flapjack.WordAlloc.isSkip output2972 = false := by
  rw [output2972_def]
  conv => lhs; cbv
  try rfl
theorem node2972_eq : Flapjack.WordAlloc.removeDeadStructural input2972 value1490 value1 value2 = (output2972, value1491, value1) := by
  rw [input2972_def, output2972_def]
  try (conv => lhs; cbv)
  try rfl

def value1492 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24529 24525)).val
theorem input2973_def : input2973 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24529 24525) := by
  unfold input2973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24529 24525)).val
theorem output2973_def : output2973 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24529 24525) := by
  unfold output2973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2973_skip : Flapjack.WordAlloc.isSkip output2973 = false := by
  rw [output2973_def]
  conv => lhs; cbv
  try rfl
theorem node2973_eq : Flapjack.WordAlloc.removeDeadStructural input2973 value1491 value1 value2 = (output2973, value1492, value1) := by
  rw [input2973_def, output2973_def]
  try (conv => lhs; cbv)
  try rfl

def value1493 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24525 24521 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2974_def : input2974 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24525 24521 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24525 24521 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2974_def : output2974 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24525 24521 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2974_skip : Flapjack.WordAlloc.isSkip output2974 = false := by
  rw [output2974_def]
  conv => lhs; cbv
  try rfl
theorem node2974_eq : Flapjack.WordAlloc.removeDeadStructural input2974 value1492 value1 value2 = (output2974, value1493, value1) := by
  rw [input2974_def, output2974_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24521 Flapjack.WordStore.heapLength)).val
theorem input2975_def : input2975 = (Flapjack.WordLangProgHOL.get 24521 Flapjack.WordStore.heapLength) := by
  unfold input2975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24521 Flapjack.WordStore.heapLength)).val
theorem output2975_def : output2975 = (Flapjack.WordLangProgHOL.get 24521 Flapjack.WordStore.heapLength) := by
  unfold output2975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2975_skip : Flapjack.WordAlloc.isSkip output2975 = false := by
  rw [output2975_def]
  conv => lhs; cbv
  try rfl
theorem node2975_eq : Flapjack.WordAlloc.removeDeadStructural input2975 value1493 value1 value2 = (output2975, value5, value1) := by
  rw [input2975_def, output2975_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2975 input2974)).val
theorem input2976_def : input2976 = (.seq input2975 input2974) := by
  unfold input2976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2975 output2974)).val
theorem output2976_def : output2976 = (.seq output2975 output2974) := by
  unfold output2976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2976_skip : Flapjack.WordAlloc.isSkip output2976 = false := by
  rw [output2976_def]
  conv => lhs; cbv
  try rfl
theorem node2976_eq : Flapjack.WordAlloc.removeDeadStructural input2976 value1492 value1 value2 = (output2976, value5, value1) := by
  rw [input2976_def, output2976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2974_eq]
  dsimp only
  rw [node2975_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2976 input2973)).val
theorem input2977_def : input2977 = (.seq input2976 input2973) := by
  unfold input2977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2976 output2973)).val
theorem output2977_def : output2977 = (.seq output2976 output2973) := by
  unfold output2977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2977_skip : Flapjack.WordAlloc.isSkip output2977 = false := by
  rw [output2977_def]
  conv => lhs; cbv
  try rfl
theorem node2977_eq : Flapjack.WordAlloc.removeDeadStructural input2977 value1491 value1 value2 = (output2977, value5, value1) := by
  rw [input2977_def, output2977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2973_eq]
  dsimp only
  rw [node2976_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2977 input2972)).val
theorem input2978_def : input2978 = (.seq input2977 input2972) := by
  unfold input2978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2977 output2972)).val
theorem output2978_def : output2978 = (.seq output2977 output2972) := by
  unfold output2978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2978_skip : Flapjack.WordAlloc.isSkip output2978 = false := by
  rw [output2978_def]
  conv => lhs; cbv
  try rfl
theorem node2978_eq : Flapjack.WordAlloc.removeDeadStructural input2978 value1490 value1 value2 = (output2978, value5, value1) := by
  rw [input2978_def, output2978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2972_eq]
  dsimp only
  rw [node2977_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2978 input2971)).val
theorem input2979_def : input2979 = (.seq input2978 input2971) := by
  unfold input2979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2978 output2971)).val
theorem output2979_def : output2979 = (.seq output2978 output2971) := by
  unfold output2979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2979_skip : Flapjack.WordAlloc.isSkip output2979 = false := by
  rw [output2979_def]
  conv => lhs; cbv
  try rfl
theorem node2979_eq : Flapjack.WordAlloc.removeDeadStructural input2979 value1488 value1 value2 = (output2979, value5, value1) := by
  rw [input2979_def, output2979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2971_eq]
  dsimp only
  rw [node2978_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1494 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24513 (Flapjack.WordLangAddr.addr 24517 0#64)))).val
theorem input2980_def : input2980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24513 (Flapjack.WordLangAddr.addr 24517 0#64))) := by
  unfold input2980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24513 (Flapjack.WordLangAddr.addr 24517 0#64)))).val
theorem output2980_def : output2980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24513 (Flapjack.WordLangAddr.addr 24517 0#64))) := by
  unfold output2980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2980_skip : Flapjack.WordAlloc.isSkip output2980 = false := by
  rw [output2980_def]
  conv => lhs; cbv
  try rfl
theorem node2980_eq : Flapjack.WordAlloc.removeDeadStructural input2980 value5 value1 value2 = (output2980, value1494, value1) := by
  rw [input2980_def, output2980_def]
  try (conv => lhs; cbv)
  try rfl

def value1495 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24517, 24505)])).val
theorem input2981_def : input2981 = (Flapjack.WordLangProgHOL.move 0 [(24517, 24505)]) := by
  unfold input2981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24517, 24505)])).val
theorem output2981_def : output2981 = (Flapjack.WordLangProgHOL.move 0 [(24517, 24505)]) := by
  unfold output2981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2981_skip : Flapjack.WordAlloc.isSkip output2981 = false := by
  rw [output2981_def]
  conv => lhs; cbv
  try rfl
theorem node2981_eq : Flapjack.WordAlloc.removeDeadStructural input2981 value1494 value1 value2 = (output2981, value1495, value1) := by
  rw [input2981_def, output2981_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2981 input2980)).val
theorem input2982_def : input2982 = (.seq input2981 input2980) := by
  unfold input2982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2981 output2980)).val
theorem output2982_def : output2982 = (.seq output2981 output2980) := by
  unfold output2982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2982_skip : Flapjack.WordAlloc.isSkip output2982 = false := by
  rw [output2982_def]
  conv => lhs; cbv
  try rfl
theorem node2982_eq : Flapjack.WordAlloc.removeDeadStructural input2982 value5 value1 value2 = (output2982, value1495, value1) := by
  rw [input2982_def, output2982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2980_eq]
  dsimp only
  rw [node2981_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1496 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24513 416399692810564414#64))).val
theorem input2983_def : input2983 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24513 416399692810564414#64)) := by
  unfold input2983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24513 416399692810564414#64))).val
theorem output2983_def : output2983 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24513 416399692810564414#64)) := by
  unfold output2983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2983_skip : Flapjack.WordAlloc.isSkip output2983 = false := by
  rw [output2983_def]
  conv => lhs; cbv
  try rfl
theorem node2983_eq : Flapjack.WordAlloc.removeDeadStructural input2983 value1495 value1 value2 = (output2983, value1496, value1) := by
  rw [input2983_def, output2983_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24509 416399692810564414#64))).val
theorem input2984_def : input2984 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24509 416399692810564414#64)) := by
  unfold input2984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2984_def : output2984 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2984_skip : Flapjack.WordAlloc.isSkip output2984 = true := by
  rw [output2984_def]
  conv => lhs; cbv
  try rfl
theorem node2984_eq : Flapjack.WordAlloc.removeDeadStructural input2984 value1496 value1 value2 = (output2984, value1496, value1) := by
  rw [input2984_def, output2984_def]
  try (conv => lhs; cbv)
  try rfl

def value1497 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24505 24497 (Flapjack.WordRegImm.reg 24501))))).val
theorem input2985_def : input2985 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24505 24497 (Flapjack.WordRegImm.reg 24501)))) := by
  unfold input2985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24505 24497 (Flapjack.WordRegImm.reg 24501))))).val
theorem output2985_def : output2985 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24505 24497 (Flapjack.WordRegImm.reg 24501)))) := by
  unfold output2985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2985_skip : Flapjack.WordAlloc.isSkip output2985 = false := by
  rw [output2985_def]
  conv => lhs; cbv
  try rfl
theorem node2985_eq : Flapjack.WordAlloc.removeDeadStructural input2985 value1496 value1 value2 = (output2985, value1497, value1) := by
  rw [input2985_def, output2985_def]
  try (conv => lhs; cbv)
  try rfl

def value1498 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24501 5640#64))).val
theorem input2986_def : input2986 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24501 5640#64)) := by
  unfold input2986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24501 5640#64))).val
theorem output2986_def : output2986 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24501 5640#64)) := by
  unfold output2986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2986_skip : Flapjack.WordAlloc.isSkip output2986 = false := by
  rw [output2986_def]
  conv => lhs; cbv
  try rfl
theorem node2986_eq : Flapjack.WordAlloc.removeDeadStructural input2986 value1497 value1 value2 = (output2986, value1498, value1) := by
  rw [input2986_def, output2986_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2986 input2985)).val
theorem input2987_def : input2987 = (.seq input2986 input2985) := by
  unfold input2987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2986 output2985)).val
theorem output2987_def : output2987 = (.seq output2986 output2985) := by
  unfold output2987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2987_skip : Flapjack.WordAlloc.isSkip output2987 = false := by
  rw [output2987_def]
  conv => lhs; cbv
  try rfl
theorem node2987_eq : Flapjack.WordAlloc.removeDeadStructural input2987 value1496 value1 value2 = (output2987, value1498, value1) := by
  rw [input2987_def, output2987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2985_eq]
  dsimp only
  rw [node2986_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1499 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24497 (Flapjack.WordLangAddr.addr 24493 18446744073709551104#64)))).val
theorem input2988_def : input2988 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24497 (Flapjack.WordLangAddr.addr 24493 18446744073709551104#64))) := by
  unfold input2988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24497 (Flapjack.WordLangAddr.addr 24493 18446744073709551104#64)))).val
theorem output2988_def : output2988 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24497 (Flapjack.WordLangAddr.addr 24493 18446744073709551104#64))) := by
  unfold output2988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2988_skip : Flapjack.WordAlloc.isSkip output2988 = false := by
  rw [output2988_def]
  conv => lhs; cbv
  try rfl
theorem node2988_eq : Flapjack.WordAlloc.removeDeadStructural input2988 value1498 value1 value2 = (output2988, value1499, value1) := by
  rw [input2988_def, output2988_def]
  try (conv => lhs; cbv)
  try rfl

def value1500 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24493 24489)).val
theorem input2989_def : input2989 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24493 24489) := by
  unfold input2989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24493 24489)).val
theorem output2989_def : output2989 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24493 24489) := by
  unfold output2989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2989_skip : Flapjack.WordAlloc.isSkip output2989 = false := by
  rw [output2989_def]
  conv => lhs; cbv
  try rfl
theorem node2989_eq : Flapjack.WordAlloc.removeDeadStructural input2989 value1499 value1 value2 = (output2989, value1500, value1) := by
  rw [input2989_def, output2989_def]
  try (conv => lhs; cbv)
  try rfl

def value1501 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24489 24485 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2990_def : input2990 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24489 24485 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24489 24485 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2990_def : output2990 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24489 24485 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2990_skip : Flapjack.WordAlloc.isSkip output2990 = false := by
  rw [output2990_def]
  conv => lhs; cbv
  try rfl
theorem node2990_eq : Flapjack.WordAlloc.removeDeadStructural input2990 value1500 value1 value2 = (output2990, value1501, value1) := by
  rw [input2990_def, output2990_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24485 Flapjack.WordStore.heapLength)).val
theorem input2991_def : input2991 = (Flapjack.WordLangProgHOL.get 24485 Flapjack.WordStore.heapLength) := by
  unfold input2991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24485 Flapjack.WordStore.heapLength)).val
theorem output2991_def : output2991 = (Flapjack.WordLangProgHOL.get 24485 Flapjack.WordStore.heapLength) := by
  unfold output2991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2991_skip : Flapjack.WordAlloc.isSkip output2991 = false := by
  rw [output2991_def]
  conv => lhs; cbv
  try rfl
theorem node2991_eq : Flapjack.WordAlloc.removeDeadStructural input2991 value1501 value1 value2 = (output2991, value5, value1) := by
  rw [input2991_def, output2991_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2991 input2990)).val
theorem input2992_def : input2992 = (.seq input2991 input2990) := by
  unfold input2992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2991 output2990)).val
theorem output2992_def : output2992 = (.seq output2991 output2990) := by
  unfold output2992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2992_skip : Flapjack.WordAlloc.isSkip output2992 = false := by
  rw [output2992_def]
  conv => lhs; cbv
  try rfl
theorem node2992_eq : Flapjack.WordAlloc.removeDeadStructural input2992 value1500 value1 value2 = (output2992, value5, value1) := by
  rw [input2992_def, output2992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2990_eq]
  dsimp only
  rw [node2991_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2992 input2989)).val
theorem input2993_def : input2993 = (.seq input2992 input2989) := by
  unfold input2993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2992 output2989)).val
theorem output2993_def : output2993 = (.seq output2992 output2989) := by
  unfold output2993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2993_skip : Flapjack.WordAlloc.isSkip output2993 = false := by
  rw [output2993_def]
  conv => lhs; cbv
  try rfl
theorem node2993_eq : Flapjack.WordAlloc.removeDeadStructural input2993 value1499 value1 value2 = (output2993, value5, value1) := by
  rw [input2993_def, output2993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2989_eq]
  dsimp only
  rw [node2992_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2993 input2988)).val
theorem input2994_def : input2994 = (.seq input2993 input2988) := by
  unfold input2994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2993 output2988)).val
theorem output2994_def : output2994 = (.seq output2993 output2988) := by
  unfold output2994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2994_skip : Flapjack.WordAlloc.isSkip output2994 = false := by
  rw [output2994_def]
  conv => lhs; cbv
  try rfl
theorem node2994_eq : Flapjack.WordAlloc.removeDeadStructural input2994 value1498 value1 value2 = (output2994, value5, value1) := by
  rw [input2994_def, output2994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2988_eq]
  dsimp only
  rw [node2993_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2994 input2987)).val
theorem input2995_def : input2995 = (.seq input2994 input2987) := by
  unfold input2995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2994 output2987)).val
theorem output2995_def : output2995 = (.seq output2994 output2987) := by
  unfold output2995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2995_skip : Flapjack.WordAlloc.isSkip output2995 = false := by
  rw [output2995_def]
  conv => lhs; cbv
  try rfl
theorem node2995_eq : Flapjack.WordAlloc.removeDeadStructural input2995 value1496 value1 value2 = (output2995, value5, value1) := by
  rw [input2995_def, output2995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2987_eq]
  dsimp only
  rw [node2994_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1502 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24477 (Flapjack.WordLangAddr.addr 24481 0#64)))).val
theorem input2996_def : input2996 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24477 (Flapjack.WordLangAddr.addr 24481 0#64))) := by
  unfold input2996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24477 (Flapjack.WordLangAddr.addr 24481 0#64)))).val
theorem output2996_def : output2996 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24477 (Flapjack.WordLangAddr.addr 24481 0#64))) := by
  unfold output2996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2996_skip : Flapjack.WordAlloc.isSkip output2996 = false := by
  rw [output2996_def]
  conv => lhs; cbv
  try rfl
theorem node2996_eq : Flapjack.WordAlloc.removeDeadStructural input2996 value5 value1 value2 = (output2996, value1502, value1) := by
  rw [input2996_def, output2996_def]
  try (conv => lhs; cbv)
  try rfl

def value1503 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24481, 24469)])).val
theorem input2997_def : input2997 = (Flapjack.WordLangProgHOL.move 0 [(24481, 24469)]) := by
  unfold input2997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24481, 24469)])).val
theorem output2997_def : output2997 = (Flapjack.WordLangProgHOL.move 0 [(24481, 24469)]) := by
  unfold output2997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2997_skip : Flapjack.WordAlloc.isSkip output2997 = false := by
  rw [output2997_def]
  conv => lhs; cbv
  try rfl
theorem node2997_eq : Flapjack.WordAlloc.removeDeadStructural input2997 value1502 value1 value2 = (output2997, value1503, value1) := by
  rw [input2997_def, output2997_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2997 input2996)).val
theorem input2998_def : input2998 = (.seq input2997 input2996) := by
  unfold input2998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2997 output2996)).val
theorem output2998_def : output2998 = (.seq output2997 output2996) := by
  unfold output2998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2998_skip : Flapjack.WordAlloc.isSkip output2998 = false := by
  rw [output2998_def]
  conv => lhs; cbv
  try rfl
theorem node2998_eq : Flapjack.WordAlloc.removeDeadStructural input2998 value5 value1 value2 = (output2998, value1503, value1) := by
  rw [input2998_def, output2998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2996_eq]
  dsimp only
  rw [node2997_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1504 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24477 13500519111022079365#64))).val
theorem input2999_def : input2999 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24477 13500519111022079365#64)) := by
  unfold input2999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24477 13500519111022079365#64))).val
theorem output2999_def : output2999 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24477 13500519111022079365#64)) := by
  unfold output2999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2999_skip : Flapjack.WordAlloc.isSkip output2999 = false := by
  rw [output2999_def]
  conv => lhs; cbv
  try rfl
theorem node2999_eq : Flapjack.WordAlloc.removeDeadStructural input2999 value1503 value1 value2 = (output2999, value1504, value1) := by
  rw [input2999_def, output2999_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24473 13500519111022079365#64))).val
theorem input3000_def : input3000 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24473 13500519111022079365#64)) := by
  unfold input3000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3000_def : output3000 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3000_skip : Flapjack.WordAlloc.isSkip output3000 = true := by
  rw [output3000_def]
  conv => lhs; cbv
  try rfl
theorem node3000_eq : Flapjack.WordAlloc.removeDeadStructural input3000 value1504 value1 value2 = (output3000, value1504, value1) := by
  rw [input3000_def, output3000_def]
  try (conv => lhs; cbv)
  try rfl

def value1505 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24469 24461 (Flapjack.WordRegImm.reg 24465))))).val
theorem input3001_def : input3001 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24469 24461 (Flapjack.WordRegImm.reg 24465)))) := by
  unfold input3001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24469 24461 (Flapjack.WordRegImm.reg 24465))))).val
theorem output3001_def : output3001 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24469 24461 (Flapjack.WordRegImm.reg 24465)))) := by
  unfold output3001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3001_skip : Flapjack.WordAlloc.isSkip output3001 = false := by
  rw [output3001_def]
  conv => lhs; cbv
  try rfl
theorem node3001_eq : Flapjack.WordAlloc.removeDeadStructural input3001 value1504 value1 value2 = (output3001, value1505, value1) := by
  rw [input3001_def, output3001_def]
  try (conv => lhs; cbv)
  try rfl

def value1506 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24465 5632#64))).val
theorem input3002_def : input3002 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24465 5632#64)) := by
  unfold input3002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24465 5632#64))).val
theorem output3002_def : output3002 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24465 5632#64)) := by
  unfold output3002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3002_skip : Flapjack.WordAlloc.isSkip output3002 = false := by
  rw [output3002_def]
  conv => lhs; cbv
  try rfl
theorem node3002_eq : Flapjack.WordAlloc.removeDeadStructural input3002 value1505 value1 value2 = (output3002, value1506, value1) := by
  rw [input3002_def, output3002_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3002 input3001)).val
theorem input3003_def : input3003 = (.seq input3002 input3001) := by
  unfold input3003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3002 output3001)).val
theorem output3003_def : output3003 = (.seq output3002 output3001) := by
  unfold output3003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3003_skip : Flapjack.WordAlloc.isSkip output3003 = false := by
  rw [output3003_def]
  conv => lhs; cbv
  try rfl
theorem node3003_eq : Flapjack.WordAlloc.removeDeadStructural input3003 value1504 value1 value2 = (output3003, value1506, value1) := by
  rw [input3003_def, output3003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3001_eq]
  dsimp only
  rw [node3002_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1507 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24461 (Flapjack.WordLangAddr.addr 24457 18446744073709551104#64)))).val
theorem input3004_def : input3004 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24461 (Flapjack.WordLangAddr.addr 24457 18446744073709551104#64))) := by
  unfold input3004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24461 (Flapjack.WordLangAddr.addr 24457 18446744073709551104#64)))).val
theorem output3004_def : output3004 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24461 (Flapjack.WordLangAddr.addr 24457 18446744073709551104#64))) := by
  unfold output3004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3004_skip : Flapjack.WordAlloc.isSkip output3004 = false := by
  rw [output3004_def]
  conv => lhs; cbv
  try rfl
theorem node3004_eq : Flapjack.WordAlloc.removeDeadStructural input3004 value1506 value1 value2 = (output3004, value1507, value1) := by
  rw [input3004_def, output3004_def]
  try (conv => lhs; cbv)
  try rfl

def value1508 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24457 24453)).val
theorem input3005_def : input3005 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24457 24453) := by
  unfold input3005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24457 24453)).val
theorem output3005_def : output3005 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24457 24453) := by
  unfold output3005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3005_skip : Flapjack.WordAlloc.isSkip output3005 = false := by
  rw [output3005_def]
  conv => lhs; cbv
  try rfl
theorem node3005_eq : Flapjack.WordAlloc.removeDeadStructural input3005 value1507 value1 value2 = (output3005, value1508, value1) := by
  rw [input3005_def, output3005_def]
  try (conv => lhs; cbv)
  try rfl

def value1509 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24453 24449 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3006_def : input3006 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24453 24449 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24453 24449 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3006_def : output3006 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24453 24449 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3006_skip : Flapjack.WordAlloc.isSkip output3006 = false := by
  rw [output3006_def]
  conv => lhs; cbv
  try rfl
theorem node3006_eq : Flapjack.WordAlloc.removeDeadStructural input3006 value1508 value1 value2 = (output3006, value1509, value1) := by
  rw [input3006_def, output3006_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24449 Flapjack.WordStore.heapLength)).val
theorem input3007_def : input3007 = (Flapjack.WordLangProgHOL.get 24449 Flapjack.WordStore.heapLength) := by
  unfold input3007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24449 Flapjack.WordStore.heapLength)).val
theorem output3007_def : output3007 = (Flapjack.WordLangProgHOL.get 24449 Flapjack.WordStore.heapLength) := by
  unfold output3007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3007_skip : Flapjack.WordAlloc.isSkip output3007 = false := by
  rw [output3007_def]
  conv => lhs; cbv
  try rfl
theorem node3007_eq : Flapjack.WordAlloc.removeDeadStructural input3007 value1509 value1 value2 = (output3007, value5, value1) := by
  rw [input3007_def, output3007_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3007 input3006)).val
theorem input3008_def : input3008 = (.seq input3007 input3006) := by
  unfold input3008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3007 output3006)).val
theorem output3008_def : output3008 = (.seq output3007 output3006) := by
  unfold output3008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3008_skip : Flapjack.WordAlloc.isSkip output3008 = false := by
  rw [output3008_def]
  conv => lhs; cbv
  try rfl
theorem node3008_eq : Flapjack.WordAlloc.removeDeadStructural input3008 value1508 value1 value2 = (output3008, value5, value1) := by
  rw [input3008_def, output3008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3006_eq]
  dsimp only
  rw [node3007_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3008 input3005)).val
theorem input3009_def : input3009 = (.seq input3008 input3005) := by
  unfold input3009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3008 output3005)).val
theorem output3009_def : output3009 = (.seq output3008 output3005) := by
  unfold output3009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3009_skip : Flapjack.WordAlloc.isSkip output3009 = false := by
  rw [output3009_def]
  conv => lhs; cbv
  try rfl
theorem node3009_eq : Flapjack.WordAlloc.removeDeadStructural input3009 value1507 value1 value2 = (output3009, value5, value1) := by
  rw [input3009_def, output3009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3005_eq]
  dsimp only
  rw [node3008_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3009 input3004)).val
theorem input3010_def : input3010 = (.seq input3009 input3004) := by
  unfold input3010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3009 output3004)).val
theorem output3010_def : output3010 = (.seq output3009 output3004) := by
  unfold output3010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3010_skip : Flapjack.WordAlloc.isSkip output3010 = false := by
  rw [output3010_def]
  conv => lhs; cbv
  try rfl
theorem node3010_eq : Flapjack.WordAlloc.removeDeadStructural input3010 value1506 value1 value2 = (output3010, value5, value1) := by
  rw [input3010_def, output3010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3004_eq]
  dsimp only
  rw [node3009_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3010 input3003)).val
theorem input3011_def : input3011 = (.seq input3010 input3003) := by
  unfold input3011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3010 output3003)).val
theorem output3011_def : output3011 = (.seq output3010 output3003) := by
  unfold output3011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3011_skip : Flapjack.WordAlloc.isSkip output3011 = false := by
  rw [output3011_def]
  conv => lhs; cbv
  try rfl
theorem node3011_eq : Flapjack.WordAlloc.removeDeadStructural input3011 value1504 value1 value2 = (output3011, value5, value1) := by
  rw [input3011_def, output3011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3003_eq]
  dsimp only
  rw [node3010_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1510 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24441 (Flapjack.WordLangAddr.addr 24445 0#64)))).val
theorem input3012_def : input3012 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24441 (Flapjack.WordLangAddr.addr 24445 0#64))) := by
  unfold input3012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24441 (Flapjack.WordLangAddr.addr 24445 0#64)))).val
theorem output3012_def : output3012 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24441 (Flapjack.WordLangAddr.addr 24445 0#64))) := by
  unfold output3012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3012_skip : Flapjack.WordAlloc.isSkip output3012 = false := by
  rw [output3012_def]
  conv => lhs; cbv
  try rfl
theorem node3012_eq : Flapjack.WordAlloc.removeDeadStructural input3012 value5 value1 value2 = (output3012, value1510, value1) := by
  rw [input3012_def, output3012_def]
  try (conv => lhs; cbv)
  try rfl

def value1511 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24445, 24433)])).val
theorem input3013_def : input3013 = (Flapjack.WordLangProgHOL.move 0 [(24445, 24433)]) := by
  unfold input3013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24445, 24433)])).val
theorem output3013_def : output3013 = (Flapjack.WordLangProgHOL.move 0 [(24445, 24433)]) := by
  unfold output3013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3013_skip : Flapjack.WordAlloc.isSkip output3013 = false := by
  rw [output3013_def]
  conv => lhs; cbv
  try rfl
theorem node3013_eq : Flapjack.WordAlloc.removeDeadStructural input3013 value1510 value1 value2 = (output3013, value1511, value1) := by
  rw [input3013_def, output3013_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3013 input3012)).val
theorem input3014_def : input3014 = (.seq input3013 input3012) := by
  unfold input3014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3013 output3012)).val
theorem output3014_def : output3014 = (.seq output3013 output3012) := by
  unfold output3014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3014_skip : Flapjack.WordAlloc.isSkip output3014 = false := by
  rw [output3014_def]
  conv => lhs; cbv
  try rfl
theorem node3014_eq : Flapjack.WordAlloc.removeDeadStructural input3014 value5 value1 value2 = (output3014, value1511, value1) := by
  rw [input3014_def, output3014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3012_eq]
  dsimp only
  rw [node3013_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1512 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24441 3658379999393219626#64))).val
theorem input3015_def : input3015 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24441 3658379999393219626#64)) := by
  unfold input3015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24441 3658379999393219626#64))).val
theorem output3015_def : output3015 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24441 3658379999393219626#64)) := by
  unfold output3015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3015_skip : Flapjack.WordAlloc.isSkip output3015 = false := by
  rw [output3015_def]
  conv => lhs; cbv
  try rfl
theorem node3015_eq : Flapjack.WordAlloc.removeDeadStructural input3015 value1511 value1 value2 = (output3015, value1512, value1) := by
  rw [input3015_def, output3015_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24437 3658379999393219626#64))).val
theorem input3016_def : input3016 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24437 3658379999393219626#64)) := by
  unfold input3016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3016_def : output3016 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3016_skip : Flapjack.WordAlloc.isSkip output3016 = true := by
  rw [output3016_def]
  conv => lhs; cbv
  try rfl
theorem node3016_eq : Flapjack.WordAlloc.removeDeadStructural input3016 value1512 value1 value2 = (output3016, value1512, value1) := by
  rw [input3016_def, output3016_def]
  try (conv => lhs; cbv)
  try rfl

def value1513 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24433 24425 (Flapjack.WordRegImm.reg 24429))))).val
theorem input3017_def : input3017 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24433 24425 (Flapjack.WordRegImm.reg 24429)))) := by
  unfold input3017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24433 24425 (Flapjack.WordRegImm.reg 24429))))).val
theorem output3017_def : output3017 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24433 24425 (Flapjack.WordRegImm.reg 24429)))) := by
  unfold output3017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3017_skip : Flapjack.WordAlloc.isSkip output3017 = false := by
  rw [output3017_def]
  conv => lhs; cbv
  try rfl
theorem node3017_eq : Flapjack.WordAlloc.removeDeadStructural input3017 value1512 value1 value2 = (output3017, value1513, value1) := by
  rw [input3017_def, output3017_def]
  try (conv => lhs; cbv)
  try rfl

def value1514 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24429 5624#64))).val
theorem input3018_def : input3018 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24429 5624#64)) := by
  unfold input3018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24429 5624#64))).val
theorem output3018_def : output3018 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24429 5624#64)) := by
  unfold output3018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3018_skip : Flapjack.WordAlloc.isSkip output3018 = false := by
  rw [output3018_def]
  conv => lhs; cbv
  try rfl
theorem node3018_eq : Flapjack.WordAlloc.removeDeadStructural input3018 value1513 value1 value2 = (output3018, value1514, value1) := by
  rw [input3018_def, output3018_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3018 input3017)).val
theorem input3019_def : input3019 = (.seq input3018 input3017) := by
  unfold input3019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3018 output3017)).val
theorem output3019_def : output3019 = (.seq output3018 output3017) := by
  unfold output3019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3019_skip : Flapjack.WordAlloc.isSkip output3019 = false := by
  rw [output3019_def]
  conv => lhs; cbv
  try rfl
theorem node3019_eq : Flapjack.WordAlloc.removeDeadStructural input3019 value1512 value1 value2 = (output3019, value1514, value1) := by
  rw [input3019_def, output3019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3017_eq]
  dsimp only
  rw [node3018_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1515 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24425 (Flapjack.WordLangAddr.addr 24421 18446744073709551104#64)))).val
theorem input3020_def : input3020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24425 (Flapjack.WordLangAddr.addr 24421 18446744073709551104#64))) := by
  unfold input3020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24425 (Flapjack.WordLangAddr.addr 24421 18446744073709551104#64)))).val
theorem output3020_def : output3020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24425 (Flapjack.WordLangAddr.addr 24421 18446744073709551104#64))) := by
  unfold output3020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3020_skip : Flapjack.WordAlloc.isSkip output3020 = false := by
  rw [output3020_def]
  conv => lhs; cbv
  try rfl
theorem node3020_eq : Flapjack.WordAlloc.removeDeadStructural input3020 value1514 value1 value2 = (output3020, value1515, value1) := by
  rw [input3020_def, output3020_def]
  try (conv => lhs; cbv)
  try rfl

def value1516 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24421 24417)).val
theorem input3021_def : input3021 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24421 24417) := by
  unfold input3021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24421 24417)).val
theorem output3021_def : output3021 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24421 24417) := by
  unfold output3021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3021_skip : Flapjack.WordAlloc.isSkip output3021 = false := by
  rw [output3021_def]
  conv => lhs; cbv
  try rfl
theorem node3021_eq : Flapjack.WordAlloc.removeDeadStructural input3021 value1515 value1 value2 = (output3021, value1516, value1) := by
  rw [input3021_def, output3021_def]
  try (conv => lhs; cbv)
  try rfl

def value1517 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24417 24413 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3022_def : input3022 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24417 24413 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24417 24413 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3022_def : output3022 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24417 24413 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3022_skip : Flapjack.WordAlloc.isSkip output3022 = false := by
  rw [output3022_def]
  conv => lhs; cbv
  try rfl
theorem node3022_eq : Flapjack.WordAlloc.removeDeadStructural input3022 value1516 value1 value2 = (output3022, value1517, value1) := by
  rw [input3022_def, output3022_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24413 Flapjack.WordStore.heapLength)).val
theorem input3023_def : input3023 = (Flapjack.WordLangProgHOL.get 24413 Flapjack.WordStore.heapLength) := by
  unfold input3023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24413 Flapjack.WordStore.heapLength)).val
theorem output3023_def : output3023 = (Flapjack.WordLangProgHOL.get 24413 Flapjack.WordStore.heapLength) := by
  unfold output3023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3023_skip : Flapjack.WordAlloc.isSkip output3023 = false := by
  rw [output3023_def]
  conv => lhs; cbv
  try rfl
theorem node3023_eq : Flapjack.WordAlloc.removeDeadStructural input3023 value1517 value1 value2 = (output3023, value5, value1) := by
  rw [input3023_def, output3023_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3023 input3022)).val
theorem input3024_def : input3024 = (.seq input3023 input3022) := by
  unfold input3024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3023 output3022)).val
theorem output3024_def : output3024 = (.seq output3023 output3022) := by
  unfold output3024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3024_skip : Flapjack.WordAlloc.isSkip output3024 = false := by
  rw [output3024_def]
  conv => lhs; cbv
  try rfl
theorem node3024_eq : Flapjack.WordAlloc.removeDeadStructural input3024 value1516 value1 value2 = (output3024, value5, value1) := by
  rw [input3024_def, output3024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3022_eq]
  dsimp only
  rw [node3023_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3024 input3021)).val
theorem input3025_def : input3025 = (.seq input3024 input3021) := by
  unfold input3025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3024 output3021)).val
theorem output3025_def : output3025 = (.seq output3024 output3021) := by
  unfold output3025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3025_skip : Flapjack.WordAlloc.isSkip output3025 = false := by
  rw [output3025_def]
  conv => lhs; cbv
  try rfl
theorem node3025_eq : Flapjack.WordAlloc.removeDeadStructural input3025 value1515 value1 value2 = (output3025, value5, value1) := by
  rw [input3025_def, output3025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3021_eq]
  dsimp only
  rw [node3024_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3025 input3020)).val
theorem input3026_def : input3026 = (.seq input3025 input3020) := by
  unfold input3026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3025 output3020)).val
theorem output3026_def : output3026 = (.seq output3025 output3020) := by
  unfold output3026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3026_skip : Flapjack.WordAlloc.isSkip output3026 = false := by
  rw [output3026_def]
  conv => lhs; cbv
  try rfl
theorem node3026_eq : Flapjack.WordAlloc.removeDeadStructural input3026 value1514 value1 value2 = (output3026, value5, value1) := by
  rw [input3026_def, output3026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3020_eq]
  dsimp only
  rw [node3025_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3026 input3019)).val
theorem input3027_def : input3027 = (.seq input3026 input3019) := by
  unfold input3027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3026 output3019)).val
theorem output3027_def : output3027 = (.seq output3026 output3019) := by
  unfold output3027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3027_skip : Flapjack.WordAlloc.isSkip output3027 = false := by
  rw [output3027_def]
  conv => lhs; cbv
  try rfl
theorem node3027_eq : Flapjack.WordAlloc.removeDeadStructural input3027 value1512 value1 value2 = (output3027, value5, value1) := by
  rw [input3027_def, output3027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3019_eq]
  dsimp only
  rw [node3026_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1518 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24405 (Flapjack.WordLangAddr.addr 24409 0#64)))).val
theorem input3028_def : input3028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24405 (Flapjack.WordLangAddr.addr 24409 0#64))) := by
  unfold input3028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24405 (Flapjack.WordLangAddr.addr 24409 0#64)))).val
theorem output3028_def : output3028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24405 (Flapjack.WordLangAddr.addr 24409 0#64))) := by
  unfold output3028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3028_skip : Flapjack.WordAlloc.isSkip output3028 = false := by
  rw [output3028_def]
  conv => lhs; cbv
  try rfl
theorem node3028_eq : Flapjack.WordAlloc.removeDeadStructural input3028 value5 value1 value2 = (output3028, value1518, value1) := by
  rw [input3028_def, output3028_def]
  try (conv => lhs; cbv)
  try rfl

def value1519 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24409, 24397)])).val
theorem input3029_def : input3029 = (Flapjack.WordLangProgHOL.move 0 [(24409, 24397)]) := by
  unfold input3029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24409, 24397)])).val
theorem output3029_def : output3029 = (Flapjack.WordLangProgHOL.move 0 [(24409, 24397)]) := by
  unfold output3029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3029_skip : Flapjack.WordAlloc.isSkip output3029 = false := by
  rw [output3029_def]
  conv => lhs; cbv
  try rfl
theorem node3029_eq : Flapjack.WordAlloc.removeDeadStructural input3029 value1518 value1 value2 = (output3029, value1519, value1) := by
  rw [input3029_def, output3029_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3029 input3028)).val
theorem input3030_def : input3030 = (.seq input3029 input3028) := by
  unfold input3030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3029 output3028)).val
theorem output3030_def : output3030 = (.seq output3029 output3028) := by
  unfold output3030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3030_skip : Flapjack.WordAlloc.isSkip output3030 = false := by
  rw [output3030_def]
  conv => lhs; cbv
  try rfl
theorem node3030_eq : Flapjack.WordAlloc.removeDeadStructural input3030 value5 value1 value2 = (output3030, value1519, value1) := by
  rw [input3030_def, output3030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3028_eq]
  dsimp only
  rw [node3029_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1520 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24405 9850925049107374429#64))).val
theorem input3031_def : input3031 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24405 9850925049107374429#64)) := by
  unfold input3031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24405 9850925049107374429#64))).val
theorem output3031_def : output3031 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24405 9850925049107374429#64)) := by
  unfold output3031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3031_skip : Flapjack.WordAlloc.isSkip output3031 = false := by
  rw [output3031_def]
  conv => lhs; cbv
  try rfl
theorem node3031_eq : Flapjack.WordAlloc.removeDeadStructural input3031 value1519 value1 value2 = (output3031, value1520, value1) := by
  rw [input3031_def, output3031_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24401 9850925049107374429#64))).val
theorem input3032_def : input3032 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24401 9850925049107374429#64)) := by
  unfold input3032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3032_def : output3032 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3032_skip : Flapjack.WordAlloc.isSkip output3032 = true := by
  rw [output3032_def]
  conv => lhs; cbv
  try rfl
theorem node3032_eq : Flapjack.WordAlloc.removeDeadStructural input3032 value1520 value1 value2 = (output3032, value1520, value1) := by
  rw [input3032_def, output3032_def]
  try (conv => lhs; cbv)
  try rfl

def value1521 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24397 24389 (Flapjack.WordRegImm.reg 24393))))).val
theorem input3033_def : input3033 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24397 24389 (Flapjack.WordRegImm.reg 24393)))) := by
  unfold input3033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24397 24389 (Flapjack.WordRegImm.reg 24393))))).val
theorem output3033_def : output3033 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24397 24389 (Flapjack.WordRegImm.reg 24393)))) := by
  unfold output3033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3033_skip : Flapjack.WordAlloc.isSkip output3033 = false := by
  rw [output3033_def]
  conv => lhs; cbv
  try rfl
theorem node3033_eq : Flapjack.WordAlloc.removeDeadStructural input3033 value1520 value1 value2 = (output3033, value1521, value1) := by
  rw [input3033_def, output3033_def]
  try (conv => lhs; cbv)
  try rfl

def value1522 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24393 5616#64))).val
theorem input3034_def : input3034 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24393 5616#64)) := by
  unfold input3034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24393 5616#64))).val
theorem output3034_def : output3034 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24393 5616#64)) := by
  unfold output3034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3034_skip : Flapjack.WordAlloc.isSkip output3034 = false := by
  rw [output3034_def]
  conv => lhs; cbv
  try rfl
theorem node3034_eq : Flapjack.WordAlloc.removeDeadStructural input3034 value1521 value1 value2 = (output3034, value1522, value1) := by
  rw [input3034_def, output3034_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3034 input3033)).val
theorem input3035_def : input3035 = (.seq input3034 input3033) := by
  unfold input3035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3034 output3033)).val
theorem output3035_def : output3035 = (.seq output3034 output3033) := by
  unfold output3035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3035_skip : Flapjack.WordAlloc.isSkip output3035 = false := by
  rw [output3035_def]
  conv => lhs; cbv
  try rfl
theorem node3035_eq : Flapjack.WordAlloc.removeDeadStructural input3035 value1520 value1 value2 = (output3035, value1522, value1) := by
  rw [input3035_def, output3035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3033_eq]
  dsimp only
  rw [node3034_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1523 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24389 (Flapjack.WordLangAddr.addr 24385 18446744073709551104#64)))).val
theorem input3036_def : input3036 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24389 (Flapjack.WordLangAddr.addr 24385 18446744073709551104#64))) := by
  unfold input3036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24389 (Flapjack.WordLangAddr.addr 24385 18446744073709551104#64)))).val
theorem output3036_def : output3036 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24389 (Flapjack.WordLangAddr.addr 24385 18446744073709551104#64))) := by
  unfold output3036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3036_skip : Flapjack.WordAlloc.isSkip output3036 = false := by
  rw [output3036_def]
  conv => lhs; cbv
  try rfl
theorem node3036_eq : Flapjack.WordAlloc.removeDeadStructural input3036 value1522 value1 value2 = (output3036, value1523, value1) := by
  rw [input3036_def, output3036_def]
  try (conv => lhs; cbv)
  try rfl

def value1524 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24385 24381)).val
theorem input3037_def : input3037 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24385 24381) := by
  unfold input3037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24385 24381)).val
theorem output3037_def : output3037 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24385 24381) := by
  unfold output3037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3037_skip : Flapjack.WordAlloc.isSkip output3037 = false := by
  rw [output3037_def]
  conv => lhs; cbv
  try rfl
theorem node3037_eq : Flapjack.WordAlloc.removeDeadStructural input3037 value1523 value1 value2 = (output3037, value1524, value1) := by
  rw [input3037_def, output3037_def]
  try (conv => lhs; cbv)
  try rfl

def value1525 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24381 24377 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3038_def : input3038 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24381 24377 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24381 24377 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3038_def : output3038 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24381 24377 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3038_skip : Flapjack.WordAlloc.isSkip output3038 = false := by
  rw [output3038_def]
  conv => lhs; cbv
  try rfl
theorem node3038_eq : Flapjack.WordAlloc.removeDeadStructural input3038 value1524 value1 value2 = (output3038, value1525, value1) := by
  rw [input3038_def, output3038_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24377 Flapjack.WordStore.heapLength)).val
theorem input3039_def : input3039 = (Flapjack.WordLangProgHOL.get 24377 Flapjack.WordStore.heapLength) := by
  unfold input3039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24377 Flapjack.WordStore.heapLength)).val
theorem output3039_def : output3039 = (Flapjack.WordLangProgHOL.get 24377 Flapjack.WordStore.heapLength) := by
  unfold output3039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3039_skip : Flapjack.WordAlloc.isSkip output3039 = false := by
  rw [output3039_def]
  conv => lhs; cbv
  try rfl
theorem node3039_eq : Flapjack.WordAlloc.removeDeadStructural input3039 value1525 value1 value2 = (output3039, value5, value1) := by
  rw [input3039_def, output3039_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3039 input3038)).val
theorem input3040_def : input3040 = (.seq input3039 input3038) := by
  unfold input3040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3039 output3038)).val
theorem output3040_def : output3040 = (.seq output3039 output3038) := by
  unfold output3040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3040_skip : Flapjack.WordAlloc.isSkip output3040 = false := by
  rw [output3040_def]
  conv => lhs; cbv
  try rfl
theorem node3040_eq : Flapjack.WordAlloc.removeDeadStructural input3040 value1524 value1 value2 = (output3040, value5, value1) := by
  rw [input3040_def, output3040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3038_eq]
  dsimp only
  rw [node3039_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3040 input3037)).val
theorem input3041_def : input3041 = (.seq input3040 input3037) := by
  unfold input3041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3040 output3037)).val
theorem output3041_def : output3041 = (.seq output3040 output3037) := by
  unfold output3041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3041_skip : Flapjack.WordAlloc.isSkip output3041 = false := by
  rw [output3041_def]
  conv => lhs; cbv
  try rfl
theorem node3041_eq : Flapjack.WordAlloc.removeDeadStructural input3041 value1523 value1 value2 = (output3041, value5, value1) := by
  rw [input3041_def, output3041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3037_eq]
  dsimp only
  rw [node3040_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3041 input3036)).val
theorem input3042_def : input3042 = (.seq input3041 input3036) := by
  unfold input3042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3041 output3036)).val
theorem output3042_def : output3042 = (.seq output3041 output3036) := by
  unfold output3042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3042_skip : Flapjack.WordAlloc.isSkip output3042 = false := by
  rw [output3042_def]
  conv => lhs; cbv
  try rfl
theorem node3042_eq : Flapjack.WordAlloc.removeDeadStructural input3042 value1522 value1 value2 = (output3042, value5, value1) := by
  rw [input3042_def, output3042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3036_eq]
  dsimp only
  rw [node3041_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3042 input3035)).val
theorem input3043_def : input3043 = (.seq input3042 input3035) := by
  unfold input3043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3042 output3035)).val
theorem output3043_def : output3043 = (.seq output3042 output3035) := by
  unfold output3043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3043_skip : Flapjack.WordAlloc.isSkip output3043 = false := by
  rw [output3043_def]
  conv => lhs; cbv
  try rfl
theorem node3043_eq : Flapjack.WordAlloc.removeDeadStructural input3043 value1520 value1 value2 = (output3043, value5, value1) := by
  rw [input3043_def, output3043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3035_eq]
  dsimp only
  rw [node3042_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1526 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24369 (Flapjack.WordLangAddr.addr 24373 0#64)))).val
theorem input3044_def : input3044 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24369 (Flapjack.WordLangAddr.addr 24373 0#64))) := by
  unfold input3044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24369 (Flapjack.WordLangAddr.addr 24373 0#64)))).val
theorem output3044_def : output3044 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24369 (Flapjack.WordLangAddr.addr 24373 0#64))) := by
  unfold output3044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3044_skip : Flapjack.WordAlloc.isSkip output3044 = false := by
  rw [output3044_def]
  conv => lhs; cbv
  try rfl
theorem node3044_eq : Flapjack.WordAlloc.removeDeadStructural input3044 value5 value1 value2 = (output3044, value1526, value1) := by
  rw [input3044_def, output3044_def]
  try (conv => lhs; cbv)
  try rfl

def value1527 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24373, 24361)])).val
theorem input3045_def : input3045 = (Flapjack.WordLangProgHOL.move 0 [(24373, 24361)]) := by
  unfold input3045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24373, 24361)])).val
theorem output3045_def : output3045 = (Flapjack.WordLangProgHOL.move 0 [(24373, 24361)]) := by
  unfold output3045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3045_skip : Flapjack.WordAlloc.isSkip output3045 = false := by
  rw [output3045_def]
  conv => lhs; cbv
  try rfl
theorem node3045_eq : Flapjack.WordAlloc.removeDeadStructural input3045 value1526 value1 value2 = (output3045, value1527, value1) := by
  rw [input3045_def, output3045_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3045 input3044)).val
theorem input3046_def : input3046 = (.seq input3045 input3044) := by
  unfold input3046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3045 output3044)).val
theorem output3046_def : output3046 = (.seq output3045 output3044) := by
  unfold output3046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3046_skip : Flapjack.WordAlloc.isSkip output3046 = false := by
  rw [output3046_def]
  conv => lhs; cbv
  try rfl
theorem node3046_eq : Flapjack.WordAlloc.removeDeadStructural input3046 value5 value1 value2 = (output3046, value1527, value1) := by
  rw [input3046_def, output3046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3044_eq]
  dsimp only
  rw [node3045_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1528 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24369 6640057249351452444#64))).val
theorem input3047_def : input3047 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24369 6640057249351452444#64)) := by
  unfold input3047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24369 6640057249351452444#64))).val
theorem output3047_def : output3047 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24369 6640057249351452444#64)) := by
  unfold output3047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3047_skip : Flapjack.WordAlloc.isSkip output3047 = false := by
  rw [output3047_def]
  conv => lhs; cbv
  try rfl
theorem node3047_eq : Flapjack.WordAlloc.removeDeadStructural input3047 value1527 value1 value2 = (output3047, value1528, value1) := by
  rw [input3047_def, output3047_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24365 6640057249351452444#64))).val
theorem input3048_def : input3048 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24365 6640057249351452444#64)) := by
  unfold input3048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3048_def : output3048 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3048_skip : Flapjack.WordAlloc.isSkip output3048 = true := by
  rw [output3048_def]
  conv => lhs; cbv
  try rfl
theorem node3048_eq : Flapjack.WordAlloc.removeDeadStructural input3048 value1528 value1 value2 = (output3048, value1528, value1) := by
  rw [input3048_def, output3048_def]
  try (conv => lhs; cbv)
  try rfl

def value1529 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24361 24353 (Flapjack.WordRegImm.reg 24357))))).val
theorem input3049_def : input3049 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24361 24353 (Flapjack.WordRegImm.reg 24357)))) := by
  unfold input3049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24361 24353 (Flapjack.WordRegImm.reg 24357))))).val
theorem output3049_def : output3049 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24361 24353 (Flapjack.WordRegImm.reg 24357)))) := by
  unfold output3049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3049_skip : Flapjack.WordAlloc.isSkip output3049 = false := by
  rw [output3049_def]
  conv => lhs; cbv
  try rfl
theorem node3049_eq : Flapjack.WordAlloc.removeDeadStructural input3049 value1528 value1 value2 = (output3049, value1529, value1) := by
  rw [input3049_def, output3049_def]
  try (conv => lhs; cbv)
  try rfl

def value1530 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24357 5608#64))).val
theorem input3050_def : input3050 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24357 5608#64)) := by
  unfold input3050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24357 5608#64))).val
theorem output3050_def : output3050 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24357 5608#64)) := by
  unfold output3050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3050_skip : Flapjack.WordAlloc.isSkip output3050 = false := by
  rw [output3050_def]
  conv => lhs; cbv
  try rfl
theorem node3050_eq : Flapjack.WordAlloc.removeDeadStructural input3050 value1529 value1 value2 = (output3050, value1530, value1) := by
  rw [input3050_def, output3050_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3050 input3049)).val
theorem input3051_def : input3051 = (.seq input3050 input3049) := by
  unfold input3051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3050 output3049)).val
theorem output3051_def : output3051 = (.seq output3050 output3049) := by
  unfold output3051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3051_skip : Flapjack.WordAlloc.isSkip output3051 = false := by
  rw [output3051_def]
  conv => lhs; cbv
  try rfl
theorem node3051_eq : Flapjack.WordAlloc.removeDeadStructural input3051 value1528 value1 value2 = (output3051, value1530, value1) := by
  rw [input3051_def, output3051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3049_eq]
  dsimp only
  rw [node3050_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1531 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24353 (Flapjack.WordLangAddr.addr 24349 18446744073709551104#64)))).val
theorem input3052_def : input3052 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24353 (Flapjack.WordLangAddr.addr 24349 18446744073709551104#64))) := by
  unfold input3052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24353 (Flapjack.WordLangAddr.addr 24349 18446744073709551104#64)))).val
theorem output3052_def : output3052 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24353 (Flapjack.WordLangAddr.addr 24349 18446744073709551104#64))) := by
  unfold output3052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3052_skip : Flapjack.WordAlloc.isSkip output3052 = false := by
  rw [output3052_def]
  conv => lhs; cbv
  try rfl
theorem node3052_eq : Flapjack.WordAlloc.removeDeadStructural input3052 value1530 value1 value2 = (output3052, value1531, value1) := by
  rw [input3052_def, output3052_def]
  try (conv => lhs; cbv)
  try rfl

def value1532 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24349 24345)).val
theorem input3053_def : input3053 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24349 24345) := by
  unfold input3053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24349 24345)).val
theorem output3053_def : output3053 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24349 24345) := by
  unfold output3053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3053_skip : Flapjack.WordAlloc.isSkip output3053 = false := by
  rw [output3053_def]
  conv => lhs; cbv
  try rfl
theorem node3053_eq : Flapjack.WordAlloc.removeDeadStructural input3053 value1531 value1 value2 = (output3053, value1532, value1) := by
  rw [input3053_def, output3053_def]
  try (conv => lhs; cbv)
  try rfl

def value1533 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24345 24341 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3054_def : input3054 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24345 24341 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24345 24341 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3054_def : output3054 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24345 24341 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3054_skip : Flapjack.WordAlloc.isSkip output3054 = false := by
  rw [output3054_def]
  conv => lhs; cbv
  try rfl
theorem node3054_eq : Flapjack.WordAlloc.removeDeadStructural input3054 value1532 value1 value2 = (output3054, value1533, value1) := by
  rw [input3054_def, output3054_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24341 Flapjack.WordStore.heapLength)).val
theorem input3055_def : input3055 = (Flapjack.WordLangProgHOL.get 24341 Flapjack.WordStore.heapLength) := by
  unfold input3055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24341 Flapjack.WordStore.heapLength)).val
theorem output3055_def : output3055 = (Flapjack.WordLangProgHOL.get 24341 Flapjack.WordStore.heapLength) := by
  unfold output3055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3055_skip : Flapjack.WordAlloc.isSkip output3055 = false := by
  rw [output3055_def]
  conv => lhs; cbv
  try rfl
theorem node3055_eq : Flapjack.WordAlloc.removeDeadStructural input3055 value1533 value1 value2 = (output3055, value5, value1) := by
  rw [input3055_def, output3055_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3055 input3054)).val
theorem input3056_def : input3056 = (.seq input3055 input3054) := by
  unfold input3056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3055 output3054)).val
theorem output3056_def : output3056 = (.seq output3055 output3054) := by
  unfold output3056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3056_skip : Flapjack.WordAlloc.isSkip output3056 = false := by
  rw [output3056_def]
  conv => lhs; cbv
  try rfl
theorem node3056_eq : Flapjack.WordAlloc.removeDeadStructural input3056 value1532 value1 value2 = (output3056, value5, value1) := by
  rw [input3056_def, output3056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3054_eq]
  dsimp only
  rw [node3055_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3056 input3053)).val
theorem input3057_def : input3057 = (.seq input3056 input3053) := by
  unfold input3057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3056 output3053)).val
theorem output3057_def : output3057 = (.seq output3056 output3053) := by
  unfold output3057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3057_skip : Flapjack.WordAlloc.isSkip output3057 = false := by
  rw [output3057_def]
  conv => lhs; cbv
  try rfl
theorem node3057_eq : Flapjack.WordAlloc.removeDeadStructural input3057 value1531 value1 value2 = (output3057, value5, value1) := by
  rw [input3057_def, output3057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3053_eq]
  dsimp only
  rw [node3056_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3057 input3052)).val
theorem input3058_def : input3058 = (.seq input3057 input3052) := by
  unfold input3058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3057 output3052)).val
theorem output3058_def : output3058 = (.seq output3057 output3052) := by
  unfold output3058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3058_skip : Flapjack.WordAlloc.isSkip output3058 = false := by
  rw [output3058_def]
  conv => lhs; cbv
  try rfl
theorem node3058_eq : Flapjack.WordAlloc.removeDeadStructural input3058 value1530 value1 value2 = (output3058, value5, value1) := by
  rw [input3058_def, output3058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3052_eq]
  dsimp only
  rw [node3057_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3058 input3051)).val
theorem input3059_def : input3059 = (.seq input3058 input3051) := by
  unfold input3059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3058 output3051)).val
theorem output3059_def : output3059 = (.seq output3058 output3051) := by
  unfold output3059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3059_skip : Flapjack.WordAlloc.isSkip output3059 = false := by
  rw [output3059_def]
  conv => lhs; cbv
  try rfl
theorem node3059_eq : Flapjack.WordAlloc.removeDeadStructural input3059 value1528 value1 value2 = (output3059, value5, value1) := by
  rw [input3059_def, output3059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3051_eq]
  dsimp only
  rw [node3058_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1534 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24333 (Flapjack.WordLangAddr.addr 24337 0#64)))).val
theorem input3060_def : input3060 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24333 (Flapjack.WordLangAddr.addr 24337 0#64))) := by
  unfold input3060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24333 (Flapjack.WordLangAddr.addr 24337 0#64)))).val
theorem output3060_def : output3060 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24333 (Flapjack.WordLangAddr.addr 24337 0#64))) := by
  unfold output3060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3060_skip : Flapjack.WordAlloc.isSkip output3060 = false := by
  rw [output3060_def]
  conv => lhs; cbv
  try rfl
theorem node3060_eq : Flapjack.WordAlloc.removeDeadStructural input3060 value5 value1 value2 = (output3060, value1534, value1) := by
  rw [input3060_def, output3060_def]
  try (conv => lhs; cbv)
  try rfl

def value1535 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24337, 24325)])).val
theorem input3061_def : input3061 = (Flapjack.WordLangProgHOL.move 0 [(24337, 24325)]) := by
  unfold input3061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24337, 24325)])).val
theorem output3061_def : output3061 = (Flapjack.WordLangProgHOL.move 0 [(24337, 24325)]) := by
  unfold output3061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3061_skip : Flapjack.WordAlloc.isSkip output3061 = false := by
  rw [output3061_def]
  conv => lhs; cbv
  try rfl
theorem node3061_eq : Flapjack.WordAlloc.removeDeadStructural input3061 value1534 value1 value2 = (output3061, value1535, value1) := by
  rw [input3061_def, output3061_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3061 input3060)).val
theorem input3062_def : input3062 = (.seq input3061 input3060) := by
  unfold input3062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3061 output3060)).val
theorem output3062_def : output3062 = (.seq output3061 output3060) := by
  unfold output3062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3062_skip : Flapjack.WordAlloc.isSkip output3062 = false := by
  rw [output3062_def]
  conv => lhs; cbv
  try rfl
theorem node3062_eq : Flapjack.WordAlloc.removeDeadStructural input3062 value5 value1 value2 = (output3062, value1535, value1) := by
  rw [input3062_def, output3062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3060_eq]
  dsimp only
  rw [node3061_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1536 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24333 7077594464397203414#64))).val
theorem input3063_def : input3063 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24333 7077594464397203414#64)) := by
  unfold input3063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24333 7077594464397203414#64))).val
theorem output3063_def : output3063 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24333 7077594464397203414#64)) := by
  unfold output3063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3063_skip : Flapjack.WordAlloc.isSkip output3063 = false := by
  rw [output3063_def]
  conv => lhs; cbv
  try rfl
theorem node3063_eq : Flapjack.WordAlloc.removeDeadStructural input3063 value1535 value1 value2 = (output3063, value1536, value1) := by
  rw [input3063_def, output3063_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24329 7077594464397203414#64))).val
theorem input3064_def : input3064 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24329 7077594464397203414#64)) := by
  unfold input3064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3064_def : output3064 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3064_skip : Flapjack.WordAlloc.isSkip output3064 = true := by
  rw [output3064_def]
  conv => lhs; cbv
  try rfl
theorem node3064_eq : Flapjack.WordAlloc.removeDeadStructural input3064 value1536 value1 value2 = (output3064, value1536, value1) := by
  rw [input3064_def, output3064_def]
  try (conv => lhs; cbv)
  try rfl

def value1537 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24325 24317 (Flapjack.WordRegImm.reg 24321))))).val
theorem input3065_def : input3065 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24325 24317 (Flapjack.WordRegImm.reg 24321)))) := by
  unfold input3065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24325 24317 (Flapjack.WordRegImm.reg 24321))))).val
theorem output3065_def : output3065 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24325 24317 (Flapjack.WordRegImm.reg 24321)))) := by
  unfold output3065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3065_skip : Flapjack.WordAlloc.isSkip output3065 = false := by
  rw [output3065_def]
  conv => lhs; cbv
  try rfl
theorem node3065_eq : Flapjack.WordAlloc.removeDeadStructural input3065 value1536 value1 value2 = (output3065, value1537, value1) := by
  rw [input3065_def, output3065_def]
  try (conv => lhs; cbv)
  try rfl

def value1538 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24321 5600#64))).val
theorem input3066_def : input3066 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24321 5600#64)) := by
  unfold input3066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24321 5600#64))).val
theorem output3066_def : output3066 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24321 5600#64)) := by
  unfold output3066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3066_skip : Flapjack.WordAlloc.isSkip output3066 = false := by
  rw [output3066_def]
  conv => lhs; cbv
  try rfl
theorem node3066_eq : Flapjack.WordAlloc.removeDeadStructural input3066 value1537 value1 value2 = (output3066, value1538, value1) := by
  rw [input3066_def, output3066_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3066 input3065)).val
theorem input3067_def : input3067 = (.seq input3066 input3065) := by
  unfold input3067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3066 output3065)).val
theorem output3067_def : output3067 = (.seq output3066 output3065) := by
  unfold output3067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3067_skip : Flapjack.WordAlloc.isSkip output3067 = false := by
  rw [output3067_def]
  conv => lhs; cbv
  try rfl
theorem node3067_eq : Flapjack.WordAlloc.removeDeadStructural input3067 value1536 value1 value2 = (output3067, value1538, value1) := by
  rw [input3067_def, output3067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3065_eq]
  dsimp only
  rw [node3066_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1539 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24317 (Flapjack.WordLangAddr.addr 24313 18446744073709551104#64)))).val
theorem input3068_def : input3068 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24317 (Flapjack.WordLangAddr.addr 24313 18446744073709551104#64))) := by
  unfold input3068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24317 (Flapjack.WordLangAddr.addr 24313 18446744073709551104#64)))).val
theorem output3068_def : output3068 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24317 (Flapjack.WordLangAddr.addr 24313 18446744073709551104#64))) := by
  unfold output3068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3068_skip : Flapjack.WordAlloc.isSkip output3068 = false := by
  rw [output3068_def]
  conv => lhs; cbv
  try rfl
theorem node3068_eq : Flapjack.WordAlloc.removeDeadStructural input3068 value1538 value1 value2 = (output3068, value1539, value1) := by
  rw [input3068_def, output3068_def]
  try (conv => lhs; cbv)
  try rfl

def value1540 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24313 24309)).val
theorem input3069_def : input3069 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24313 24309) := by
  unfold input3069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24313 24309)).val
theorem output3069_def : output3069 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24313 24309) := by
  unfold output3069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3069_skip : Flapjack.WordAlloc.isSkip output3069 = false := by
  rw [output3069_def]
  conv => lhs; cbv
  try rfl
theorem node3069_eq : Flapjack.WordAlloc.removeDeadStructural input3069 value1539 value1 value2 = (output3069, value1540, value1) := by
  rw [input3069_def, output3069_def]
  try (conv => lhs; cbv)
  try rfl

def value1541 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24309 24305 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3070_def : input3070 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24309 24305 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24309 24305 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3070_def : output3070 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24309 24305 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3070_skip : Flapjack.WordAlloc.isSkip output3070 = false := by
  rw [output3070_def]
  conv => lhs; cbv
  try rfl
theorem node3070_eq : Flapjack.WordAlloc.removeDeadStructural input3070 value1540 value1 value2 = (output3070, value1541, value1) := by
  rw [input3070_def, output3070_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24305 Flapjack.WordStore.heapLength)).val
theorem input3071_def : input3071 = (Flapjack.WordLangProgHOL.get 24305 Flapjack.WordStore.heapLength) := by
  unfold input3071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24305 Flapjack.WordStore.heapLength)).val
theorem output3071_def : output3071 = (Flapjack.WordLangProgHOL.get 24305 Flapjack.WordStore.heapLength) := by
  unfold output3071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3071_skip : Flapjack.WordAlloc.isSkip output3071 = false := by
  rw [output3071_def]
  conv => lhs; cbv
  try rfl
theorem node3071_eq : Flapjack.WordAlloc.removeDeadStructural input3071 value1541 value1 value2 = (output3071, value5, value1) := by
  rw [input3071_def, output3071_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node3071_eq
end InitECandidate.Proofs.DeadStages713
