import InitECandidate.Proofs.DeadStages713.Chunk027
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input7168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7167 input7166)).val
theorem input7168_def : input7168 = (.seq input7167 input7166) := by
  unfold input7168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7167 output7166)).val
theorem output7168_def : output7168 = (.seq output7167 output7166) := by
  unfold output7168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7168_skip : Flapjack.WordAlloc.isSkip output7168 = false := by
  rw [output7168_def]
  conv => lhs; cbv
  try rfl
theorem node7168_eq : Flapjack.WordAlloc.removeDeadStructural input7168 value3588 value1 value2 = (output7168, value5, value1) := by
  rw [input7168_def, output7168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7166_eq]
  dsimp only
  rw [node7167_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7168 input7165)).val
theorem input7169_def : input7169 = (.seq input7168 input7165) := by
  unfold input7169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7168 output7165)).val
theorem output7169_def : output7169 = (.seq output7168 output7165) := by
  unfold output7169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7169_skip : Flapjack.WordAlloc.isSkip output7169 = false := by
  rw [output7169_def]
  conv => lhs; cbv
  try rfl
theorem node7169_eq : Flapjack.WordAlloc.removeDeadStructural input7169 value3587 value1 value2 = (output7169, value5, value1) := by
  rw [input7169_def, output7169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7165_eq]
  dsimp only
  rw [node7168_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7169 input7164)).val
theorem input7170_def : input7170 = (.seq input7169 input7164) := by
  unfold input7170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7169 output7164)).val
theorem output7170_def : output7170 = (.seq output7169 output7164) := by
  unfold output7170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7170_skip : Flapjack.WordAlloc.isSkip output7170 = false := by
  rw [output7170_def]
  conv => lhs; cbv
  try rfl
theorem node7170_eq : Flapjack.WordAlloc.removeDeadStructural input7170 value3586 value1 value2 = (output7170, value5, value1) := by
  rw [input7170_def, output7170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7164_eq]
  dsimp only
  rw [node7169_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7170 input7163)).val
theorem input7171_def : input7171 = (.seq input7170 input7163) := by
  unfold input7171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7170 output7163)).val
theorem output7171_def : output7171 = (.seq output7170 output7163) := by
  unfold output7171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7171_skip : Flapjack.WordAlloc.isSkip output7171 = false := by
  rw [output7171_def]
  conv => lhs; cbv
  try rfl
theorem node7171_eq : Flapjack.WordAlloc.removeDeadStructural input7171 value3584 value1 value2 = (output7171, value5, value1) := by
  rw [input7171_def, output7171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7163_eq]
  dsimp only
  rw [node7170_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3590 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15081 (Flapjack.WordLangAddr.addr 15085 0#64)))).val
theorem input7172_def : input7172 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15081 (Flapjack.WordLangAddr.addr 15085 0#64))) := by
  unfold input7172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15081 (Flapjack.WordLangAddr.addr 15085 0#64)))).val
theorem output7172_def : output7172 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15081 (Flapjack.WordLangAddr.addr 15085 0#64))) := by
  unfold output7172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7172_skip : Flapjack.WordAlloc.isSkip output7172 = false := by
  rw [output7172_def]
  conv => lhs; cbv
  try rfl
theorem node7172_eq : Flapjack.WordAlloc.removeDeadStructural input7172 value5 value1 value2 = (output7172, value3590, value1) := by
  rw [input7172_def, output7172_def]
  try (conv => lhs; cbv)
  try rfl

def value3591 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15085, 15073)])).val
theorem input7173_def : input7173 = (Flapjack.WordLangProgHOL.move 0 [(15085, 15073)]) := by
  unfold input7173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15085, 15073)])).val
theorem output7173_def : output7173 = (Flapjack.WordLangProgHOL.move 0 [(15085, 15073)]) := by
  unfold output7173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7173_skip : Flapjack.WordAlloc.isSkip output7173 = false := by
  rw [output7173_def]
  conv => lhs; cbv
  try rfl
theorem node7173_eq : Flapjack.WordAlloc.removeDeadStructural input7173 value3590 value1 value2 = (output7173, value3591, value1) := by
  rw [input7173_def, output7173_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7173 input7172)).val
theorem input7174_def : input7174 = (.seq input7173 input7172) := by
  unfold input7174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7173 output7172)).val
theorem output7174_def : output7174 = (.seq output7173 output7172) := by
  unfold output7174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7174_skip : Flapjack.WordAlloc.isSkip output7174 = false := by
  rw [output7174_def]
  conv => lhs; cbv
  try rfl
theorem node7174_eq : Flapjack.WordAlloc.removeDeadStructural input7174 value5 value1 value2 = (output7174, value3591, value1) := by
  rw [input7174_def, output7174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7172_eq]
  dsimp only
  rw [node7173_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3592 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15081 5321510883028162054#64))).val
theorem input7175_def : input7175 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15081 5321510883028162054#64)) := by
  unfold input7175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15081 5321510883028162054#64))).val
theorem output7175_def : output7175 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15081 5321510883028162054#64)) := by
  unfold output7175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7175_skip : Flapjack.WordAlloc.isSkip output7175 = false := by
  rw [output7175_def]
  conv => lhs; cbv
  try rfl
theorem node7175_eq : Flapjack.WordAlloc.removeDeadStructural input7175 value3591 value1 value2 = (output7175, value3592, value1) := by
  rw [input7175_def, output7175_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15077 5321510883028162054#64))).val
theorem input7176_def : input7176 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15077 5321510883028162054#64)) := by
  unfold input7176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7176_def : output7176 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7176_skip : Flapjack.WordAlloc.isSkip output7176 = true := by
  rw [output7176_def]
  conv => lhs; cbv
  try rfl
theorem node7176_eq : Flapjack.WordAlloc.removeDeadStructural input7176 value3592 value1 value2 = (output7176, value3592, value1) := by
  rw [input7176_def, output7176_def]
  try (conv => lhs; cbv)
  try rfl

def value3593 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15073 15065 (Flapjack.WordRegImm.reg 15069))))).val
theorem input7177_def : input7177 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15073 15065 (Flapjack.WordRegImm.reg 15069)))) := by
  unfold input7177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15073 15065 (Flapjack.WordRegImm.reg 15069))))).val
theorem output7177_def : output7177 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15073 15065 (Flapjack.WordRegImm.reg 15069)))) := by
  unfold output7177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7177_skip : Flapjack.WordAlloc.isSkip output7177 = false := by
  rw [output7177_def]
  conv => lhs; cbv
  try rfl
theorem node7177_eq : Flapjack.WordAlloc.removeDeadStructural input7177 value3592 value1 value2 = (output7177, value3593, value1) := by
  rw [input7177_def, output7177_def]
  try (conv => lhs; cbv)
  try rfl

def value3594 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15069 3544#64))).val
theorem input7178_def : input7178 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15069 3544#64)) := by
  unfold input7178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15069 3544#64))).val
theorem output7178_def : output7178 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15069 3544#64)) := by
  unfold output7178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7178_skip : Flapjack.WordAlloc.isSkip output7178 = false := by
  rw [output7178_def]
  conv => lhs; cbv
  try rfl
theorem node7178_eq : Flapjack.WordAlloc.removeDeadStructural input7178 value3593 value1 value2 = (output7178, value3594, value1) := by
  rw [input7178_def, output7178_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7178 input7177)).val
theorem input7179_def : input7179 = (.seq input7178 input7177) := by
  unfold input7179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7178 output7177)).val
theorem output7179_def : output7179 = (.seq output7178 output7177) := by
  unfold output7179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7179_skip : Flapjack.WordAlloc.isSkip output7179 = false := by
  rw [output7179_def]
  conv => lhs; cbv
  try rfl
theorem node7179_eq : Flapjack.WordAlloc.removeDeadStructural input7179 value3592 value1 value2 = (output7179, value3594, value1) := by
  rw [input7179_def, output7179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7177_eq]
  dsimp only
  rw [node7178_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3595 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15065 (Flapjack.WordLangAddr.addr 15061 18446744073709551104#64)))).val
theorem input7180_def : input7180 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15065 (Flapjack.WordLangAddr.addr 15061 18446744073709551104#64))) := by
  unfold input7180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15065 (Flapjack.WordLangAddr.addr 15061 18446744073709551104#64)))).val
theorem output7180_def : output7180 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15065 (Flapjack.WordLangAddr.addr 15061 18446744073709551104#64))) := by
  unfold output7180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7180_skip : Flapjack.WordAlloc.isSkip output7180 = false := by
  rw [output7180_def]
  conv => lhs; cbv
  try rfl
theorem node7180_eq : Flapjack.WordAlloc.removeDeadStructural input7180 value3594 value1 value2 = (output7180, value3595, value1) := by
  rw [input7180_def, output7180_def]
  try (conv => lhs; cbv)
  try rfl

def value3596 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15061 15057)).val
theorem input7181_def : input7181 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15061 15057) := by
  unfold input7181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15061 15057)).val
theorem output7181_def : output7181 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15061 15057) := by
  unfold output7181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7181_skip : Flapjack.WordAlloc.isSkip output7181 = false := by
  rw [output7181_def]
  conv => lhs; cbv
  try rfl
theorem node7181_eq : Flapjack.WordAlloc.removeDeadStructural input7181 value3595 value1 value2 = (output7181, value3596, value1) := by
  rw [input7181_def, output7181_def]
  try (conv => lhs; cbv)
  try rfl

def value3597 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15057 15053 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7182_def : input7182 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15057 15053 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15057 15053 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7182_def : output7182 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15057 15053 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7182_skip : Flapjack.WordAlloc.isSkip output7182 = false := by
  rw [output7182_def]
  conv => lhs; cbv
  try rfl
theorem node7182_eq : Flapjack.WordAlloc.removeDeadStructural input7182 value3596 value1 value2 = (output7182, value3597, value1) := by
  rw [input7182_def, output7182_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15053 Flapjack.WordStore.heapLength)).val
theorem input7183_def : input7183 = (Flapjack.WordLangProgHOL.get 15053 Flapjack.WordStore.heapLength) := by
  unfold input7183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15053 Flapjack.WordStore.heapLength)).val
theorem output7183_def : output7183 = (Flapjack.WordLangProgHOL.get 15053 Flapjack.WordStore.heapLength) := by
  unfold output7183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7183_skip : Flapjack.WordAlloc.isSkip output7183 = false := by
  rw [output7183_def]
  conv => lhs; cbv
  try rfl
theorem node7183_eq : Flapjack.WordAlloc.removeDeadStructural input7183 value3597 value1 value2 = (output7183, value5, value1) := by
  rw [input7183_def, output7183_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7183 input7182)).val
theorem input7184_def : input7184 = (.seq input7183 input7182) := by
  unfold input7184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7183 output7182)).val
theorem output7184_def : output7184 = (.seq output7183 output7182) := by
  unfold output7184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7184_skip : Flapjack.WordAlloc.isSkip output7184 = false := by
  rw [output7184_def]
  conv => lhs; cbv
  try rfl
theorem node7184_eq : Flapjack.WordAlloc.removeDeadStructural input7184 value3596 value1 value2 = (output7184, value5, value1) := by
  rw [input7184_def, output7184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7182_eq]
  dsimp only
  rw [node7183_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7184 input7181)).val
theorem input7185_def : input7185 = (.seq input7184 input7181) := by
  unfold input7185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7184 output7181)).val
theorem output7185_def : output7185 = (.seq output7184 output7181) := by
  unfold output7185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7185_skip : Flapjack.WordAlloc.isSkip output7185 = false := by
  rw [output7185_def]
  conv => lhs; cbv
  try rfl
theorem node7185_eq : Flapjack.WordAlloc.removeDeadStructural input7185 value3595 value1 value2 = (output7185, value5, value1) := by
  rw [input7185_def, output7185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7181_eq]
  dsimp only
  rw [node7184_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7185 input7180)).val
theorem input7186_def : input7186 = (.seq input7185 input7180) := by
  unfold input7186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7185 output7180)).val
theorem output7186_def : output7186 = (.seq output7185 output7180) := by
  unfold output7186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7186_skip : Flapjack.WordAlloc.isSkip output7186 = false := by
  rw [output7186_def]
  conv => lhs; cbv
  try rfl
theorem node7186_eq : Flapjack.WordAlloc.removeDeadStructural input7186 value3594 value1 value2 = (output7186, value5, value1) := by
  rw [input7186_def, output7186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7180_eq]
  dsimp only
  rw [node7185_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7186 input7179)).val
theorem input7187_def : input7187 = (.seq input7186 input7179) := by
  unfold input7187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7186 output7179)).val
theorem output7187_def : output7187 = (.seq output7186 output7179) := by
  unfold output7187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7187_skip : Flapjack.WordAlloc.isSkip output7187 = false := by
  rw [output7187_def]
  conv => lhs; cbv
  try rfl
theorem node7187_eq : Flapjack.WordAlloc.removeDeadStructural input7187 value3592 value1 value2 = (output7187, value5, value1) := by
  rw [input7187_def, output7187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7179_eq]
  dsimp only
  rw [node7186_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3598 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15045 (Flapjack.WordLangAddr.addr 15049 0#64)))).val
theorem input7188_def : input7188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15045 (Flapjack.WordLangAddr.addr 15049 0#64))) := by
  unfold input7188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15045 (Flapjack.WordLangAddr.addr 15049 0#64)))).val
theorem output7188_def : output7188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15045 (Flapjack.WordLangAddr.addr 15049 0#64))) := by
  unfold output7188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7188_skip : Flapjack.WordAlloc.isSkip output7188 = false := by
  rw [output7188_def]
  conv => lhs; cbv
  try rfl
theorem node7188_eq : Flapjack.WordAlloc.removeDeadStructural input7188 value5 value1 value2 = (output7188, value3598, value1) := by
  rw [input7188_def, output7188_def]
  try (conv => lhs; cbv)
  try rfl

def value3599 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15049, 15037)])).val
theorem input7189_def : input7189 = (Flapjack.WordLangProgHOL.move 0 [(15049, 15037)]) := by
  unfold input7189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15049, 15037)])).val
theorem output7189_def : output7189 = (Flapjack.WordLangProgHOL.move 0 [(15049, 15037)]) := by
  unfold output7189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7189_skip : Flapjack.WordAlloc.isSkip output7189 = false := by
  rw [output7189_def]
  conv => lhs; cbv
  try rfl
theorem node7189_eq : Flapjack.WordAlloc.removeDeadStructural input7189 value3598 value1 value2 = (output7189, value3599, value1) := by
  rw [input7189_def, output7189_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7189 input7188)).val
theorem input7190_def : input7190 = (.seq input7189 input7188) := by
  unfold input7190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7189 output7188)).val
theorem output7190_def : output7190 = (.seq output7189 output7188) := by
  unfold output7190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7190_skip : Flapjack.WordAlloc.isSkip output7190 = false := by
  rw [output7190_def]
  conv => lhs; cbv
  try rfl
theorem node7190_eq : Flapjack.WordAlloc.removeDeadStructural input7190 value5 value1 value2 = (output7190, value3599, value1) := by
  rw [input7190_def, output7190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7188_eq]
  dsimp only
  rw [node7189_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3600 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15045 14846055306840460686#64))).val
theorem input7191_def : input7191 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15045 14846055306840460686#64)) := by
  unfold input7191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15045 14846055306840460686#64))).val
theorem output7191_def : output7191 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15045 14846055306840460686#64)) := by
  unfold output7191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7191_skip : Flapjack.WordAlloc.isSkip output7191 = false := by
  rw [output7191_def]
  conv => lhs; cbv
  try rfl
theorem node7191_eq : Flapjack.WordAlloc.removeDeadStructural input7191 value3599 value1 value2 = (output7191, value3600, value1) := by
  rw [input7191_def, output7191_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15041 14846055306840460686#64))).val
theorem input7192_def : input7192 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15041 14846055306840460686#64)) := by
  unfold input7192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7192_def : output7192 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7192_skip : Flapjack.WordAlloc.isSkip output7192 = true := by
  rw [output7192_def]
  conv => lhs; cbv
  try rfl
theorem node7192_eq : Flapjack.WordAlloc.removeDeadStructural input7192 value3600 value1 value2 = (output7192, value3600, value1) := by
  rw [input7192_def, output7192_def]
  try (conv => lhs; cbv)
  try rfl

def value3601 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15037 15029 (Flapjack.WordRegImm.reg 15033))))).val
theorem input7193_def : input7193 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15037 15029 (Flapjack.WordRegImm.reg 15033)))) := by
  unfold input7193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15037 15029 (Flapjack.WordRegImm.reg 15033))))).val
theorem output7193_def : output7193 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15037 15029 (Flapjack.WordRegImm.reg 15033)))) := by
  unfold output7193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7193_skip : Flapjack.WordAlloc.isSkip output7193 = false := by
  rw [output7193_def]
  conv => lhs; cbv
  try rfl
theorem node7193_eq : Flapjack.WordAlloc.removeDeadStructural input7193 value3600 value1 value2 = (output7193, value3601, value1) := by
  rw [input7193_def, output7193_def]
  try (conv => lhs; cbv)
  try rfl

def value3602 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15033 3536#64))).val
theorem input7194_def : input7194 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15033 3536#64)) := by
  unfold input7194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15033 3536#64))).val
theorem output7194_def : output7194 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15033 3536#64)) := by
  unfold output7194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7194_skip : Flapjack.WordAlloc.isSkip output7194 = false := by
  rw [output7194_def]
  conv => lhs; cbv
  try rfl
theorem node7194_eq : Flapjack.WordAlloc.removeDeadStructural input7194 value3601 value1 value2 = (output7194, value3602, value1) := by
  rw [input7194_def, output7194_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7194 input7193)).val
theorem input7195_def : input7195 = (.seq input7194 input7193) := by
  unfold input7195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7194 output7193)).val
theorem output7195_def : output7195 = (.seq output7194 output7193) := by
  unfold output7195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7195_skip : Flapjack.WordAlloc.isSkip output7195 = false := by
  rw [output7195_def]
  conv => lhs; cbv
  try rfl
theorem node7195_eq : Flapjack.WordAlloc.removeDeadStructural input7195 value3600 value1 value2 = (output7195, value3602, value1) := by
  rw [input7195_def, output7195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7193_eq]
  dsimp only
  rw [node7194_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3603 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15029 (Flapjack.WordLangAddr.addr 15025 18446744073709551104#64)))).val
theorem input7196_def : input7196 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15029 (Flapjack.WordLangAddr.addr 15025 18446744073709551104#64))) := by
  unfold input7196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15029 (Flapjack.WordLangAddr.addr 15025 18446744073709551104#64)))).val
theorem output7196_def : output7196 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 15029 (Flapjack.WordLangAddr.addr 15025 18446744073709551104#64))) := by
  unfold output7196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7196_skip : Flapjack.WordAlloc.isSkip output7196 = false := by
  rw [output7196_def]
  conv => lhs; cbv
  try rfl
theorem node7196_eq : Flapjack.WordAlloc.removeDeadStructural input7196 value3602 value1 value2 = (output7196, value3603, value1) := by
  rw [input7196_def, output7196_def]
  try (conv => lhs; cbv)
  try rfl

def value3604 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15025 15021)).val
theorem input7197_def : input7197 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15025 15021) := by
  unfold input7197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15025 15021)).val
theorem output7197_def : output7197 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 15025 15021) := by
  unfold output7197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7197_skip : Flapjack.WordAlloc.isSkip output7197 = false := by
  rw [output7197_def]
  conv => lhs; cbv
  try rfl
theorem node7197_eq : Flapjack.WordAlloc.removeDeadStructural input7197 value3603 value1 value2 = (output7197, value3604, value1) := by
  rw [input7197_def, output7197_def]
  try (conv => lhs; cbv)
  try rfl

def value3605 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15021 15017 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7198_def : input7198 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15021 15017 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15021 15017 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7198_def : output7198 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 15021 15017 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7198_skip : Flapjack.WordAlloc.isSkip output7198 = false := by
  rw [output7198_def]
  conv => lhs; cbv
  try rfl
theorem node7198_eq : Flapjack.WordAlloc.removeDeadStructural input7198 value3604 value1 value2 = (output7198, value3605, value1) := by
  rw [input7198_def, output7198_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15017 Flapjack.WordStore.heapLength)).val
theorem input7199_def : input7199 = (Flapjack.WordLangProgHOL.get 15017 Flapjack.WordStore.heapLength) := by
  unfold input7199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 15017 Flapjack.WordStore.heapLength)).val
theorem output7199_def : output7199 = (Flapjack.WordLangProgHOL.get 15017 Flapjack.WordStore.heapLength) := by
  unfold output7199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7199_skip : Flapjack.WordAlloc.isSkip output7199 = false := by
  rw [output7199_def]
  conv => lhs; cbv
  try rfl
theorem node7199_eq : Flapjack.WordAlloc.removeDeadStructural input7199 value3605 value1 value2 = (output7199, value5, value1) := by
  rw [input7199_def, output7199_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7199 input7198)).val
theorem input7200_def : input7200 = (.seq input7199 input7198) := by
  unfold input7200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7199 output7198)).val
theorem output7200_def : output7200 = (.seq output7199 output7198) := by
  unfold output7200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7200_skip : Flapjack.WordAlloc.isSkip output7200 = false := by
  rw [output7200_def]
  conv => lhs; cbv
  try rfl
theorem node7200_eq : Flapjack.WordAlloc.removeDeadStructural input7200 value3604 value1 value2 = (output7200, value5, value1) := by
  rw [input7200_def, output7200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7198_eq]
  dsimp only
  rw [node7199_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7200 input7197)).val
theorem input7201_def : input7201 = (.seq input7200 input7197) := by
  unfold input7201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7200 output7197)).val
theorem output7201_def : output7201 = (.seq output7200 output7197) := by
  unfold output7201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7201_skip : Flapjack.WordAlloc.isSkip output7201 = false := by
  rw [output7201_def]
  conv => lhs; cbv
  try rfl
theorem node7201_eq : Flapjack.WordAlloc.removeDeadStructural input7201 value3603 value1 value2 = (output7201, value5, value1) := by
  rw [input7201_def, output7201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7197_eq]
  dsimp only
  rw [node7200_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7201 input7196)).val
theorem input7202_def : input7202 = (.seq input7201 input7196) := by
  unfold input7202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7201 output7196)).val
theorem output7202_def : output7202 = (.seq output7201 output7196) := by
  unfold output7202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7202_skip : Flapjack.WordAlloc.isSkip output7202 = false := by
  rw [output7202_def]
  conv => lhs; cbv
  try rfl
theorem node7202_eq : Flapjack.WordAlloc.removeDeadStructural input7202 value3602 value1 value2 = (output7202, value5, value1) := by
  rw [input7202_def, output7202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7196_eq]
  dsimp only
  rw [node7201_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7202 input7195)).val
theorem input7203_def : input7203 = (.seq input7202 input7195) := by
  unfold input7203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7202 output7195)).val
theorem output7203_def : output7203 = (.seq output7202 output7195) := by
  unfold output7203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7203_skip : Flapjack.WordAlloc.isSkip output7203 = false := by
  rw [output7203_def]
  conv => lhs; cbv
  try rfl
theorem node7203_eq : Flapjack.WordAlloc.removeDeadStructural input7203 value3600 value1 value2 = (output7203, value5, value1) := by
  rw [input7203_def, output7203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7195_eq]
  dsimp only
  rw [node7202_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3606 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15009 (Flapjack.WordLangAddr.addr 15013 0#64)))).val
theorem input7204_def : input7204 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15009 (Flapjack.WordLangAddr.addr 15013 0#64))) := by
  unfold input7204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15009 (Flapjack.WordLangAddr.addr 15013 0#64)))).val
theorem output7204_def : output7204 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 15009 (Flapjack.WordLangAddr.addr 15013 0#64))) := by
  unfold output7204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7204_skip : Flapjack.WordAlloc.isSkip output7204 = false := by
  rw [output7204_def]
  conv => lhs; cbv
  try rfl
theorem node7204_eq : Flapjack.WordAlloc.removeDeadStructural input7204 value5 value1 value2 = (output7204, value3606, value1) := by
  rw [input7204_def, output7204_def]
  try (conv => lhs; cbv)
  try rfl

def value3607 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15013, 15001)])).val
theorem input7205_def : input7205 = (Flapjack.WordLangProgHOL.move 0 [(15013, 15001)]) := by
  unfold input7205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(15013, 15001)])).val
theorem output7205_def : output7205 = (Flapjack.WordLangProgHOL.move 0 [(15013, 15001)]) := by
  unfold output7205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7205_skip : Flapjack.WordAlloc.isSkip output7205 = false := by
  rw [output7205_def]
  conv => lhs; cbv
  try rfl
theorem node7205_eq : Flapjack.WordAlloc.removeDeadStructural input7205 value3606 value1 value2 = (output7205, value3607, value1) := by
  rw [input7205_def, output7205_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7205 input7204)).val
theorem input7206_def : input7206 = (.seq input7205 input7204) := by
  unfold input7206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7205 output7204)).val
theorem output7206_def : output7206 = (.seq output7205 output7204) := by
  unfold output7206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7206_skip : Flapjack.WordAlloc.isSkip output7206 = false := by
  rw [output7206_def]
  conv => lhs; cbv
  try rfl
theorem node7206_eq : Flapjack.WordAlloc.removeDeadStructural input7206 value5 value1 value2 = (output7206, value3607, value1) := by
  rw [input7206_def, output7206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7204_eq]
  dsimp only
  rw [node7205_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3608 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15009 1833315000454533566#64))).val
theorem input7207_def : input7207 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15009 1833315000454533566#64)) := by
  unfold input7207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15009 1833315000454533566#64))).val
theorem output7207_def : output7207 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15009 1833315000454533566#64)) := by
  unfold output7207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7207_skip : Flapjack.WordAlloc.isSkip output7207 = false := by
  rw [output7207_def]
  conv => lhs; cbv
  try rfl
theorem node7207_eq : Flapjack.WordAlloc.removeDeadStructural input7207 value3607 value1 value2 = (output7207, value3608, value1) := by
  rw [input7207_def, output7207_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15005 1833315000454533566#64))).val
theorem input7208_def : input7208 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 15005 1833315000454533566#64)) := by
  unfold input7208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7208_def : output7208 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7208_skip : Flapjack.WordAlloc.isSkip output7208 = true := by
  rw [output7208_def]
  conv => lhs; cbv
  try rfl
theorem node7208_eq : Flapjack.WordAlloc.removeDeadStructural input7208 value3608 value1 value2 = (output7208, value3608, value1) := by
  rw [input7208_def, output7208_def]
  try (conv => lhs; cbv)
  try rfl

def value3609 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15001 14993 (Flapjack.WordRegImm.reg 14997))))).val
theorem input7209_def : input7209 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15001 14993 (Flapjack.WordRegImm.reg 14997)))) := by
  unfold input7209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15001 14993 (Flapjack.WordRegImm.reg 14997))))).val
theorem output7209_def : output7209 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 15001 14993 (Flapjack.WordRegImm.reg 14997)))) := by
  unfold output7209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7209_skip : Flapjack.WordAlloc.isSkip output7209 = false := by
  rw [output7209_def]
  conv => lhs; cbv
  try rfl
theorem node7209_eq : Flapjack.WordAlloc.removeDeadStructural input7209 value3608 value1 value2 = (output7209, value3609, value1) := by
  rw [input7209_def, output7209_def]
  try (conv => lhs; cbv)
  try rfl

def value3610 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14997 3528#64))).val
theorem input7210_def : input7210 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14997 3528#64)) := by
  unfold input7210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14997 3528#64))).val
theorem output7210_def : output7210 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14997 3528#64)) := by
  unfold output7210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7210_skip : Flapjack.WordAlloc.isSkip output7210 = false := by
  rw [output7210_def]
  conv => lhs; cbv
  try rfl
theorem node7210_eq : Flapjack.WordAlloc.removeDeadStructural input7210 value3609 value1 value2 = (output7210, value3610, value1) := by
  rw [input7210_def, output7210_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7210 input7209)).val
theorem input7211_def : input7211 = (.seq input7210 input7209) := by
  unfold input7211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7210 output7209)).val
theorem output7211_def : output7211 = (.seq output7210 output7209) := by
  unfold output7211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7211_skip : Flapjack.WordAlloc.isSkip output7211 = false := by
  rw [output7211_def]
  conv => lhs; cbv
  try rfl
theorem node7211_eq : Flapjack.WordAlloc.removeDeadStructural input7211 value3608 value1 value2 = (output7211, value3610, value1) := by
  rw [input7211_def, output7211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7209_eq]
  dsimp only
  rw [node7210_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3611 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14993 (Flapjack.WordLangAddr.addr 14989 18446744073709551104#64)))).val
theorem input7212_def : input7212 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14993 (Flapjack.WordLangAddr.addr 14989 18446744073709551104#64))) := by
  unfold input7212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14993 (Flapjack.WordLangAddr.addr 14989 18446744073709551104#64)))).val
theorem output7212_def : output7212 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14993 (Flapjack.WordLangAddr.addr 14989 18446744073709551104#64))) := by
  unfold output7212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7212_skip : Flapjack.WordAlloc.isSkip output7212 = false := by
  rw [output7212_def]
  conv => lhs; cbv
  try rfl
theorem node7212_eq : Flapjack.WordAlloc.removeDeadStructural input7212 value3610 value1 value2 = (output7212, value3611, value1) := by
  rw [input7212_def, output7212_def]
  try (conv => lhs; cbv)
  try rfl

def value3612 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14989 14985)).val
theorem input7213_def : input7213 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14989 14985) := by
  unfold input7213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14989 14985)).val
theorem output7213_def : output7213 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14989 14985) := by
  unfold output7213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7213_skip : Flapjack.WordAlloc.isSkip output7213 = false := by
  rw [output7213_def]
  conv => lhs; cbv
  try rfl
theorem node7213_eq : Flapjack.WordAlloc.removeDeadStructural input7213 value3611 value1 value2 = (output7213, value3612, value1) := by
  rw [input7213_def, output7213_def]
  try (conv => lhs; cbv)
  try rfl

def value3613 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14985 14981 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7214_def : input7214 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14985 14981 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14985 14981 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7214_def : output7214 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14985 14981 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7214_skip : Flapjack.WordAlloc.isSkip output7214 = false := by
  rw [output7214_def]
  conv => lhs; cbv
  try rfl
theorem node7214_eq : Flapjack.WordAlloc.removeDeadStructural input7214 value3612 value1 value2 = (output7214, value3613, value1) := by
  rw [input7214_def, output7214_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14981 Flapjack.WordStore.heapLength)).val
theorem input7215_def : input7215 = (Flapjack.WordLangProgHOL.get 14981 Flapjack.WordStore.heapLength) := by
  unfold input7215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14981 Flapjack.WordStore.heapLength)).val
theorem output7215_def : output7215 = (Flapjack.WordLangProgHOL.get 14981 Flapjack.WordStore.heapLength) := by
  unfold output7215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7215_skip : Flapjack.WordAlloc.isSkip output7215 = false := by
  rw [output7215_def]
  conv => lhs; cbv
  try rfl
theorem node7215_eq : Flapjack.WordAlloc.removeDeadStructural input7215 value3613 value1 value2 = (output7215, value5, value1) := by
  rw [input7215_def, output7215_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7215 input7214)).val
theorem input7216_def : input7216 = (.seq input7215 input7214) := by
  unfold input7216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7215 output7214)).val
theorem output7216_def : output7216 = (.seq output7215 output7214) := by
  unfold output7216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7216_skip : Flapjack.WordAlloc.isSkip output7216 = false := by
  rw [output7216_def]
  conv => lhs; cbv
  try rfl
theorem node7216_eq : Flapjack.WordAlloc.removeDeadStructural input7216 value3612 value1 value2 = (output7216, value5, value1) := by
  rw [input7216_def, output7216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7214_eq]
  dsimp only
  rw [node7215_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7216 input7213)).val
theorem input7217_def : input7217 = (.seq input7216 input7213) := by
  unfold input7217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7216 output7213)).val
theorem output7217_def : output7217 = (.seq output7216 output7213) := by
  unfold output7217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7217_skip : Flapjack.WordAlloc.isSkip output7217 = false := by
  rw [output7217_def]
  conv => lhs; cbv
  try rfl
theorem node7217_eq : Flapjack.WordAlloc.removeDeadStructural input7217 value3611 value1 value2 = (output7217, value5, value1) := by
  rw [input7217_def, output7217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7213_eq]
  dsimp only
  rw [node7216_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7217 input7212)).val
theorem input7218_def : input7218 = (.seq input7217 input7212) := by
  unfold input7218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7217 output7212)).val
theorem output7218_def : output7218 = (.seq output7217 output7212) := by
  unfold output7218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7218_skip : Flapjack.WordAlloc.isSkip output7218 = false := by
  rw [output7218_def]
  conv => lhs; cbv
  try rfl
theorem node7218_eq : Flapjack.WordAlloc.removeDeadStructural input7218 value3610 value1 value2 = (output7218, value5, value1) := by
  rw [input7218_def, output7218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7212_eq]
  dsimp only
  rw [node7217_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7218 input7211)).val
theorem input7219_def : input7219 = (.seq input7218 input7211) := by
  unfold input7219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7218 output7211)).val
theorem output7219_def : output7219 = (.seq output7218 output7211) := by
  unfold output7219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7219_skip : Flapjack.WordAlloc.isSkip output7219 = false := by
  rw [output7219_def]
  conv => lhs; cbv
  try rfl
theorem node7219_eq : Flapjack.WordAlloc.removeDeadStructural input7219 value3608 value1 value2 = (output7219, value5, value1) := by
  rw [input7219_def, output7219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7211_eq]
  dsimp only
  rw [node7218_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3614 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14973 (Flapjack.WordLangAddr.addr 14977 0#64)))).val
theorem input7220_def : input7220 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14973 (Flapjack.WordLangAddr.addr 14977 0#64))) := by
  unfold input7220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14973 (Flapjack.WordLangAddr.addr 14977 0#64)))).val
theorem output7220_def : output7220 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14973 (Flapjack.WordLangAddr.addr 14977 0#64))) := by
  unfold output7220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7220_skip : Flapjack.WordAlloc.isSkip output7220 = false := by
  rw [output7220_def]
  conv => lhs; cbv
  try rfl
theorem node7220_eq : Flapjack.WordAlloc.removeDeadStructural input7220 value5 value1 value2 = (output7220, value3614, value1) := by
  rw [input7220_def, output7220_def]
  try (conv => lhs; cbv)
  try rfl

def value3615 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14977, 14965)])).val
theorem input7221_def : input7221 = (Flapjack.WordLangProgHOL.move 0 [(14977, 14965)]) := by
  unfold input7221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14977, 14965)])).val
theorem output7221_def : output7221 = (Flapjack.WordLangProgHOL.move 0 [(14977, 14965)]) := by
  unfold output7221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7221_skip : Flapjack.WordAlloc.isSkip output7221 = false := by
  rw [output7221_def]
  conv => lhs; cbv
  try rfl
theorem node7221_eq : Flapjack.WordAlloc.removeDeadStructural input7221 value3614 value1 value2 = (output7221, value3615, value1) := by
  rw [input7221_def, output7221_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7221 input7220)).val
theorem input7222_def : input7222 = (.seq input7221 input7220) := by
  unfold input7222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7221 output7220)).val
theorem output7222_def : output7222 = (.seq output7221 output7220) := by
  unfold output7222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7222_skip : Flapjack.WordAlloc.isSkip output7222 = false := by
  rw [output7222_def]
  conv => lhs; cbv
  try rfl
theorem node7222_eq : Flapjack.WordAlloc.removeDeadStructural input7222 value5 value1 value2 = (output7222, value3615, value1) := by
  rw [input7222_def, output7222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7220_eq]
  dsimp only
  rw [node7221_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3616 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14973 1007974600900082579#64))).val
theorem input7223_def : input7223 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14973 1007974600900082579#64)) := by
  unfold input7223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14973 1007974600900082579#64))).val
theorem output7223_def : output7223 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14973 1007974600900082579#64)) := by
  unfold output7223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7223_skip : Flapjack.WordAlloc.isSkip output7223 = false := by
  rw [output7223_def]
  conv => lhs; cbv
  try rfl
theorem node7223_eq : Flapjack.WordAlloc.removeDeadStructural input7223 value3615 value1 value2 = (output7223, value3616, value1) := by
  rw [input7223_def, output7223_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14969 1007974600900082579#64))).val
theorem input7224_def : input7224 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14969 1007974600900082579#64)) := by
  unfold input7224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7224_def : output7224 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7224_skip : Flapjack.WordAlloc.isSkip output7224 = true := by
  rw [output7224_def]
  conv => lhs; cbv
  try rfl
theorem node7224_eq : Flapjack.WordAlloc.removeDeadStructural input7224 value3616 value1 value2 = (output7224, value3616, value1) := by
  rw [input7224_def, output7224_def]
  try (conv => lhs; cbv)
  try rfl

def value3617 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14965 14957 (Flapjack.WordRegImm.reg 14961))))).val
theorem input7225_def : input7225 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14965 14957 (Flapjack.WordRegImm.reg 14961)))) := by
  unfold input7225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14965 14957 (Flapjack.WordRegImm.reg 14961))))).val
theorem output7225_def : output7225 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14965 14957 (Flapjack.WordRegImm.reg 14961)))) := by
  unfold output7225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7225_skip : Flapjack.WordAlloc.isSkip output7225 = false := by
  rw [output7225_def]
  conv => lhs; cbv
  try rfl
theorem node7225_eq : Flapjack.WordAlloc.removeDeadStructural input7225 value3616 value1 value2 = (output7225, value3617, value1) := by
  rw [input7225_def, output7225_def]
  try (conv => lhs; cbv)
  try rfl

def value3618 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14961 3520#64))).val
theorem input7226_def : input7226 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14961 3520#64)) := by
  unfold input7226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14961 3520#64))).val
theorem output7226_def : output7226 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14961 3520#64)) := by
  unfold output7226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7226_skip : Flapjack.WordAlloc.isSkip output7226 = false := by
  rw [output7226_def]
  conv => lhs; cbv
  try rfl
theorem node7226_eq : Flapjack.WordAlloc.removeDeadStructural input7226 value3617 value1 value2 = (output7226, value3618, value1) := by
  rw [input7226_def, output7226_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7226 input7225)).val
theorem input7227_def : input7227 = (.seq input7226 input7225) := by
  unfold input7227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7226 output7225)).val
theorem output7227_def : output7227 = (.seq output7226 output7225) := by
  unfold output7227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7227_skip : Flapjack.WordAlloc.isSkip output7227 = false := by
  rw [output7227_def]
  conv => lhs; cbv
  try rfl
theorem node7227_eq : Flapjack.WordAlloc.removeDeadStructural input7227 value3616 value1 value2 = (output7227, value3618, value1) := by
  rw [input7227_def, output7227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7225_eq]
  dsimp only
  rw [node7226_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3619 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14957 (Flapjack.WordLangAddr.addr 14953 18446744073709551104#64)))).val
theorem input7228_def : input7228 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14957 (Flapjack.WordLangAddr.addr 14953 18446744073709551104#64))) := by
  unfold input7228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14957 (Flapjack.WordLangAddr.addr 14953 18446744073709551104#64)))).val
theorem output7228_def : output7228 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14957 (Flapjack.WordLangAddr.addr 14953 18446744073709551104#64))) := by
  unfold output7228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7228_skip : Flapjack.WordAlloc.isSkip output7228 = false := by
  rw [output7228_def]
  conv => lhs; cbv
  try rfl
theorem node7228_eq : Flapjack.WordAlloc.removeDeadStructural input7228 value3618 value1 value2 = (output7228, value3619, value1) := by
  rw [input7228_def, output7228_def]
  try (conv => lhs; cbv)
  try rfl

def value3620 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14953 14949)).val
theorem input7229_def : input7229 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14953 14949) := by
  unfold input7229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14953 14949)).val
theorem output7229_def : output7229 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14953 14949) := by
  unfold output7229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7229_skip : Flapjack.WordAlloc.isSkip output7229 = false := by
  rw [output7229_def]
  conv => lhs; cbv
  try rfl
theorem node7229_eq : Flapjack.WordAlloc.removeDeadStructural input7229 value3619 value1 value2 = (output7229, value3620, value1) := by
  rw [input7229_def, output7229_def]
  try (conv => lhs; cbv)
  try rfl

def value3621 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14949 14945 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7230_def : input7230 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14949 14945 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14949 14945 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7230_def : output7230 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14949 14945 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7230_skip : Flapjack.WordAlloc.isSkip output7230 = false := by
  rw [output7230_def]
  conv => lhs; cbv
  try rfl
theorem node7230_eq : Flapjack.WordAlloc.removeDeadStructural input7230 value3620 value1 value2 = (output7230, value3621, value1) := by
  rw [input7230_def, output7230_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14945 Flapjack.WordStore.heapLength)).val
theorem input7231_def : input7231 = (Flapjack.WordLangProgHOL.get 14945 Flapjack.WordStore.heapLength) := by
  unfold input7231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14945 Flapjack.WordStore.heapLength)).val
theorem output7231_def : output7231 = (Flapjack.WordLangProgHOL.get 14945 Flapjack.WordStore.heapLength) := by
  unfold output7231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7231_skip : Flapjack.WordAlloc.isSkip output7231 = false := by
  rw [output7231_def]
  conv => lhs; cbv
  try rfl
theorem node7231_eq : Flapjack.WordAlloc.removeDeadStructural input7231 value3621 value1 value2 = (output7231, value5, value1) := by
  rw [input7231_def, output7231_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7231 input7230)).val
theorem input7232_def : input7232 = (.seq input7231 input7230) := by
  unfold input7232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7231 output7230)).val
theorem output7232_def : output7232 = (.seq output7231 output7230) := by
  unfold output7232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7232_skip : Flapjack.WordAlloc.isSkip output7232 = false := by
  rw [output7232_def]
  conv => lhs; cbv
  try rfl
theorem node7232_eq : Flapjack.WordAlloc.removeDeadStructural input7232 value3620 value1 value2 = (output7232, value5, value1) := by
  rw [input7232_def, output7232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7230_eq]
  dsimp only
  rw [node7231_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7232 input7229)).val
theorem input7233_def : input7233 = (.seq input7232 input7229) := by
  unfold input7233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7232 output7229)).val
theorem output7233_def : output7233 = (.seq output7232 output7229) := by
  unfold output7233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7233_skip : Flapjack.WordAlloc.isSkip output7233 = false := by
  rw [output7233_def]
  conv => lhs; cbv
  try rfl
theorem node7233_eq : Flapjack.WordAlloc.removeDeadStructural input7233 value3619 value1 value2 = (output7233, value5, value1) := by
  rw [input7233_def, output7233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7229_eq]
  dsimp only
  rw [node7232_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7233 input7228)).val
theorem input7234_def : input7234 = (.seq input7233 input7228) := by
  unfold input7234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7233 output7228)).val
theorem output7234_def : output7234 = (.seq output7233 output7228) := by
  unfold output7234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7234_skip : Flapjack.WordAlloc.isSkip output7234 = false := by
  rw [output7234_def]
  conv => lhs; cbv
  try rfl
theorem node7234_eq : Flapjack.WordAlloc.removeDeadStructural input7234 value3618 value1 value2 = (output7234, value5, value1) := by
  rw [input7234_def, output7234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7228_eq]
  dsimp only
  rw [node7233_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7234 input7227)).val
theorem input7235_def : input7235 = (.seq input7234 input7227) := by
  unfold input7235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7234 output7227)).val
theorem output7235_def : output7235 = (.seq output7234 output7227) := by
  unfold output7235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7235_skip : Flapjack.WordAlloc.isSkip output7235 = false := by
  rw [output7235_def]
  conv => lhs; cbv
  try rfl
theorem node7235_eq : Flapjack.WordAlloc.removeDeadStructural input7235 value3616 value1 value2 = (output7235, value5, value1) := by
  rw [input7235_def, output7235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7227_eq]
  dsimp only
  rw [node7234_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3622 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14937 (Flapjack.WordLangAddr.addr 14941 0#64)))).val
theorem input7236_def : input7236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14937 (Flapjack.WordLangAddr.addr 14941 0#64))) := by
  unfold input7236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14937 (Flapjack.WordLangAddr.addr 14941 0#64)))).val
theorem output7236_def : output7236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14937 (Flapjack.WordLangAddr.addr 14941 0#64))) := by
  unfold output7236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7236_skip : Flapjack.WordAlloc.isSkip output7236 = false := by
  rw [output7236_def]
  conv => lhs; cbv
  try rfl
theorem node7236_eq : Flapjack.WordAlloc.removeDeadStructural input7236 value5 value1 value2 = (output7236, value3622, value1) := by
  rw [input7236_def, output7236_def]
  try (conv => lhs; cbv)
  try rfl

def value3623 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14941, 14929)])).val
theorem input7237_def : input7237 = (Flapjack.WordLangProgHOL.move 0 [(14941, 14929)]) := by
  unfold input7237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14941, 14929)])).val
theorem output7237_def : output7237 = (Flapjack.WordLangProgHOL.move 0 [(14941, 14929)]) := by
  unfold output7237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7237_skip : Flapjack.WordAlloc.isSkip output7237 = false := by
  rw [output7237_def]
  conv => lhs; cbv
  try rfl
theorem node7237_eq : Flapjack.WordAlloc.removeDeadStructural input7237 value3622 value1 value2 = (output7237, value3623, value1) := by
  rw [input7237_def, output7237_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7237 input7236)).val
theorem input7238_def : input7238 = (.seq input7237 input7236) := by
  unfold input7238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7237 output7236)).val
theorem output7238_def : output7238 = (.seq output7237 output7236) := by
  unfold output7238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7238_skip : Flapjack.WordAlloc.isSkip output7238 = false := by
  rw [output7238_def]
  conv => lhs; cbv
  try rfl
theorem node7238_eq : Flapjack.WordAlloc.removeDeadStructural input7238 value5 value1 value2 = (output7238, value3623, value1) := by
  rw [input7238_def, output7238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7236_eq]
  dsimp only
  rw [node7237_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3624 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14937 14785260176242854207#64))).val
theorem input7239_def : input7239 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14937 14785260176242854207#64)) := by
  unfold input7239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14937 14785260176242854207#64))).val
theorem output7239_def : output7239 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14937 14785260176242854207#64)) := by
  unfold output7239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7239_skip : Flapjack.WordAlloc.isSkip output7239 = false := by
  rw [output7239_def]
  conv => lhs; cbv
  try rfl
theorem node7239_eq : Flapjack.WordAlloc.removeDeadStructural input7239 value3623 value1 value2 = (output7239, value3624, value1) := by
  rw [input7239_def, output7239_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14933 14785260176242854207#64))).val
theorem input7240_def : input7240 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14933 14785260176242854207#64)) := by
  unfold input7240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7240_def : output7240 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7240_skip : Flapjack.WordAlloc.isSkip output7240 = true := by
  rw [output7240_def]
  conv => lhs; cbv
  try rfl
theorem node7240_eq : Flapjack.WordAlloc.removeDeadStructural input7240 value3624 value1 value2 = (output7240, value3624, value1) := by
  rw [input7240_def, output7240_def]
  try (conv => lhs; cbv)
  try rfl

def value3625 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14929 14921 (Flapjack.WordRegImm.reg 14925))))).val
theorem input7241_def : input7241 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14929 14921 (Flapjack.WordRegImm.reg 14925)))) := by
  unfold input7241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14929 14921 (Flapjack.WordRegImm.reg 14925))))).val
theorem output7241_def : output7241 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14929 14921 (Flapjack.WordRegImm.reg 14925)))) := by
  unfold output7241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7241_skip : Flapjack.WordAlloc.isSkip output7241 = false := by
  rw [output7241_def]
  conv => lhs; cbv
  try rfl
theorem node7241_eq : Flapjack.WordAlloc.removeDeadStructural input7241 value3624 value1 value2 = (output7241, value3625, value1) := by
  rw [input7241_def, output7241_def]
  try (conv => lhs; cbv)
  try rfl

def value3626 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14925 3512#64))).val
theorem input7242_def : input7242 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14925 3512#64)) := by
  unfold input7242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14925 3512#64))).val
theorem output7242_def : output7242 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14925 3512#64)) := by
  unfold output7242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7242_skip : Flapjack.WordAlloc.isSkip output7242 = false := by
  rw [output7242_def]
  conv => lhs; cbv
  try rfl
theorem node7242_eq : Flapjack.WordAlloc.removeDeadStructural input7242 value3625 value1 value2 = (output7242, value3626, value1) := by
  rw [input7242_def, output7242_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7242 input7241)).val
theorem input7243_def : input7243 = (.seq input7242 input7241) := by
  unfold input7243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7242 output7241)).val
theorem output7243_def : output7243 = (.seq output7242 output7241) := by
  unfold output7243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7243_skip : Flapjack.WordAlloc.isSkip output7243 = false := by
  rw [output7243_def]
  conv => lhs; cbv
  try rfl
theorem node7243_eq : Flapjack.WordAlloc.removeDeadStructural input7243 value3624 value1 value2 = (output7243, value3626, value1) := by
  rw [input7243_def, output7243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7241_eq]
  dsimp only
  rw [node7242_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3627 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14921 (Flapjack.WordLangAddr.addr 14917 18446744073709551104#64)))).val
theorem input7244_def : input7244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14921 (Flapjack.WordLangAddr.addr 14917 18446744073709551104#64))) := by
  unfold input7244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14921 (Flapjack.WordLangAddr.addr 14917 18446744073709551104#64)))).val
theorem output7244_def : output7244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14921 (Flapjack.WordLangAddr.addr 14917 18446744073709551104#64))) := by
  unfold output7244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7244_skip : Flapjack.WordAlloc.isSkip output7244 = false := by
  rw [output7244_def]
  conv => lhs; cbv
  try rfl
theorem node7244_eq : Flapjack.WordAlloc.removeDeadStructural input7244 value3626 value1 value2 = (output7244, value3627, value1) := by
  rw [input7244_def, output7244_def]
  try (conv => lhs; cbv)
  try rfl

def value3628 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14917 14913)).val
theorem input7245_def : input7245 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14917 14913) := by
  unfold input7245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14917 14913)).val
theorem output7245_def : output7245 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14917 14913) := by
  unfold output7245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7245_skip : Flapjack.WordAlloc.isSkip output7245 = false := by
  rw [output7245_def]
  conv => lhs; cbv
  try rfl
theorem node7245_eq : Flapjack.WordAlloc.removeDeadStructural input7245 value3627 value1 value2 = (output7245, value3628, value1) := by
  rw [input7245_def, output7245_def]
  try (conv => lhs; cbv)
  try rfl

def value3629 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14913 14909 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7246_def : input7246 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14913 14909 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14913 14909 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7246_def : output7246 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14913 14909 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7246_skip : Flapjack.WordAlloc.isSkip output7246 = false := by
  rw [output7246_def]
  conv => lhs; cbv
  try rfl
theorem node7246_eq : Flapjack.WordAlloc.removeDeadStructural input7246 value3628 value1 value2 = (output7246, value3629, value1) := by
  rw [input7246_def, output7246_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14909 Flapjack.WordStore.heapLength)).val
theorem input7247_def : input7247 = (Flapjack.WordLangProgHOL.get 14909 Flapjack.WordStore.heapLength) := by
  unfold input7247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14909 Flapjack.WordStore.heapLength)).val
theorem output7247_def : output7247 = (Flapjack.WordLangProgHOL.get 14909 Flapjack.WordStore.heapLength) := by
  unfold output7247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7247_skip : Flapjack.WordAlloc.isSkip output7247 = false := by
  rw [output7247_def]
  conv => lhs; cbv
  try rfl
theorem node7247_eq : Flapjack.WordAlloc.removeDeadStructural input7247 value3629 value1 value2 = (output7247, value5, value1) := by
  rw [input7247_def, output7247_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7247 input7246)).val
theorem input7248_def : input7248 = (.seq input7247 input7246) := by
  unfold input7248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7247 output7246)).val
theorem output7248_def : output7248 = (.seq output7247 output7246) := by
  unfold output7248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7248_skip : Flapjack.WordAlloc.isSkip output7248 = false := by
  rw [output7248_def]
  conv => lhs; cbv
  try rfl
theorem node7248_eq : Flapjack.WordAlloc.removeDeadStructural input7248 value3628 value1 value2 = (output7248, value5, value1) := by
  rw [input7248_def, output7248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7246_eq]
  dsimp only
  rw [node7247_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7248 input7245)).val
theorem input7249_def : input7249 = (.seq input7248 input7245) := by
  unfold input7249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7248 output7245)).val
theorem output7249_def : output7249 = (.seq output7248 output7245) := by
  unfold output7249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7249_skip : Flapjack.WordAlloc.isSkip output7249 = false := by
  rw [output7249_def]
  conv => lhs; cbv
  try rfl
theorem node7249_eq : Flapjack.WordAlloc.removeDeadStructural input7249 value3627 value1 value2 = (output7249, value5, value1) := by
  rw [input7249_def, output7249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7245_eq]
  dsimp only
  rw [node7248_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7249 input7244)).val
theorem input7250_def : input7250 = (.seq input7249 input7244) := by
  unfold input7250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7249 output7244)).val
theorem output7250_def : output7250 = (.seq output7249 output7244) := by
  unfold output7250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7250_skip : Flapjack.WordAlloc.isSkip output7250 = false := by
  rw [output7250_def]
  conv => lhs; cbv
  try rfl
theorem node7250_eq : Flapjack.WordAlloc.removeDeadStructural input7250 value3626 value1 value2 = (output7250, value5, value1) := by
  rw [input7250_def, output7250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7244_eq]
  dsimp only
  rw [node7249_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7250 input7243)).val
theorem input7251_def : input7251 = (.seq input7250 input7243) := by
  unfold input7251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7250 output7243)).val
theorem output7251_def : output7251 = (.seq output7250 output7243) := by
  unfold output7251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7251_skip : Flapjack.WordAlloc.isSkip output7251 = false := by
  rw [output7251_def]
  conv => lhs; cbv
  try rfl
theorem node7251_eq : Flapjack.WordAlloc.removeDeadStructural input7251 value3624 value1 value2 = (output7251, value5, value1) := by
  rw [input7251_def, output7251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7243_eq]
  dsimp only
  rw [node7250_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3630 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14901 (Flapjack.WordLangAddr.addr 14905 0#64)))).val
theorem input7252_def : input7252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14901 (Flapjack.WordLangAddr.addr 14905 0#64))) := by
  unfold input7252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14901 (Flapjack.WordLangAddr.addr 14905 0#64)))).val
theorem output7252_def : output7252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14901 (Flapjack.WordLangAddr.addr 14905 0#64))) := by
  unfold output7252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7252_skip : Flapjack.WordAlloc.isSkip output7252 = false := by
  rw [output7252_def]
  conv => lhs; cbv
  try rfl
theorem node7252_eq : Flapjack.WordAlloc.removeDeadStructural input7252 value5 value1 value2 = (output7252, value3630, value1) := by
  rw [input7252_def, output7252_def]
  try (conv => lhs; cbv)
  try rfl

def value3631 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14905, 14893)])).val
theorem input7253_def : input7253 = (Flapjack.WordLangProgHOL.move 0 [(14905, 14893)]) := by
  unfold input7253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14905, 14893)])).val
theorem output7253_def : output7253 = (Flapjack.WordLangProgHOL.move 0 [(14905, 14893)]) := by
  unfold output7253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7253_skip : Flapjack.WordAlloc.isSkip output7253 = false := by
  rw [output7253_def]
  conv => lhs; cbv
  try rfl
theorem node7253_eq : Flapjack.WordAlloc.removeDeadStructural input7253 value3630 value1 value2 = (output7253, value3631, value1) := by
  rw [input7253_def, output7253_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7253 input7252)).val
theorem input7254_def : input7254 = (.seq input7253 input7252) := by
  unfold input7254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7253 output7252)).val
theorem output7254_def : output7254 = (.seq output7253 output7252) := by
  unfold output7254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7254_skip : Flapjack.WordAlloc.isSkip output7254 = false := by
  rw [output7254_def]
  conv => lhs; cbv
  try rfl
theorem node7254_eq : Flapjack.WordAlloc.removeDeadStructural input7254 value5 value1 value2 = (output7254, value3631, value1) := by
  rw [input7254_def, output7254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7252_eq]
  dsimp only
  rw [node7253_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3632 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14901 15066861003931772432#64))).val
theorem input7255_def : input7255 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14901 15066861003931772432#64)) := by
  unfold input7255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14901 15066861003931772432#64))).val
theorem output7255_def : output7255 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14901 15066861003931772432#64)) := by
  unfold output7255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7255_skip : Flapjack.WordAlloc.isSkip output7255 = false := by
  rw [output7255_def]
  conv => lhs; cbv
  try rfl
theorem node7255_eq : Flapjack.WordAlloc.removeDeadStructural input7255 value3631 value1 value2 = (output7255, value3632, value1) := by
  rw [input7255_def, output7255_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14897 15066861003931772432#64))).val
theorem input7256_def : input7256 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14897 15066861003931772432#64)) := by
  unfold input7256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7256_def : output7256 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7256_skip : Flapjack.WordAlloc.isSkip output7256 = true := by
  rw [output7256_def]
  conv => lhs; cbv
  try rfl
theorem node7256_eq : Flapjack.WordAlloc.removeDeadStructural input7256 value3632 value1 value2 = (output7256, value3632, value1) := by
  rw [input7256_def, output7256_def]
  try (conv => lhs; cbv)
  try rfl

def value3633 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14893 14885 (Flapjack.WordRegImm.reg 14889))))).val
theorem input7257_def : input7257 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14893 14885 (Flapjack.WordRegImm.reg 14889)))) := by
  unfold input7257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14893 14885 (Flapjack.WordRegImm.reg 14889))))).val
theorem output7257_def : output7257 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14893 14885 (Flapjack.WordRegImm.reg 14889)))) := by
  unfold output7257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7257_skip : Flapjack.WordAlloc.isSkip output7257 = false := by
  rw [output7257_def]
  conv => lhs; cbv
  try rfl
theorem node7257_eq : Flapjack.WordAlloc.removeDeadStructural input7257 value3632 value1 value2 = (output7257, value3633, value1) := by
  rw [input7257_def, output7257_def]
  try (conv => lhs; cbv)
  try rfl

def value3634 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14889 3504#64))).val
theorem input7258_def : input7258 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14889 3504#64)) := by
  unfold input7258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14889 3504#64))).val
theorem output7258_def : output7258 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14889 3504#64)) := by
  unfold output7258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7258_skip : Flapjack.WordAlloc.isSkip output7258 = false := by
  rw [output7258_def]
  conv => lhs; cbv
  try rfl
theorem node7258_eq : Flapjack.WordAlloc.removeDeadStructural input7258 value3633 value1 value2 = (output7258, value3634, value1) := by
  rw [input7258_def, output7258_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7258 input7257)).val
theorem input7259_def : input7259 = (.seq input7258 input7257) := by
  unfold input7259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7258 output7257)).val
theorem output7259_def : output7259 = (.seq output7258 output7257) := by
  unfold output7259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7259_skip : Flapjack.WordAlloc.isSkip output7259 = false := by
  rw [output7259_def]
  conv => lhs; cbv
  try rfl
theorem node7259_eq : Flapjack.WordAlloc.removeDeadStructural input7259 value3632 value1 value2 = (output7259, value3634, value1) := by
  rw [input7259_def, output7259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7257_eq]
  dsimp only
  rw [node7258_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3635 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14885 (Flapjack.WordLangAddr.addr 14881 18446744073709551104#64)))).val
theorem input7260_def : input7260 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14885 (Flapjack.WordLangAddr.addr 14881 18446744073709551104#64))) := by
  unfold input7260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14885 (Flapjack.WordLangAddr.addr 14881 18446744073709551104#64)))).val
theorem output7260_def : output7260 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14885 (Flapjack.WordLangAddr.addr 14881 18446744073709551104#64))) := by
  unfold output7260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7260_skip : Flapjack.WordAlloc.isSkip output7260 = false := by
  rw [output7260_def]
  conv => lhs; cbv
  try rfl
theorem node7260_eq : Flapjack.WordAlloc.removeDeadStructural input7260 value3634 value1 value2 = (output7260, value3635, value1) := by
  rw [input7260_def, output7260_def]
  try (conv => lhs; cbv)
  try rfl

def value3636 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14881 14877)).val
theorem input7261_def : input7261 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14881 14877) := by
  unfold input7261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14881 14877)).val
theorem output7261_def : output7261 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14881 14877) := by
  unfold output7261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7261_skip : Flapjack.WordAlloc.isSkip output7261 = false := by
  rw [output7261_def]
  conv => lhs; cbv
  try rfl
theorem node7261_eq : Flapjack.WordAlloc.removeDeadStructural input7261 value3635 value1 value2 = (output7261, value3636, value1) := by
  rw [input7261_def, output7261_def]
  try (conv => lhs; cbv)
  try rfl

def value3637 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14877 14873 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7262_def : input7262 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14877 14873 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14877 14873 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7262_def : output7262 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14877 14873 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7262_skip : Flapjack.WordAlloc.isSkip output7262 = false := by
  rw [output7262_def]
  conv => lhs; cbv
  try rfl
theorem node7262_eq : Flapjack.WordAlloc.removeDeadStructural input7262 value3636 value1 value2 = (output7262, value3637, value1) := by
  rw [input7262_def, output7262_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14873 Flapjack.WordStore.heapLength)).val
theorem input7263_def : input7263 = (Flapjack.WordLangProgHOL.get 14873 Flapjack.WordStore.heapLength) := by
  unfold input7263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14873 Flapjack.WordStore.heapLength)).val
theorem output7263_def : output7263 = (Flapjack.WordLangProgHOL.get 14873 Flapjack.WordStore.heapLength) := by
  unfold output7263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7263_skip : Flapjack.WordAlloc.isSkip output7263 = false := by
  rw [output7263_def]
  conv => lhs; cbv
  try rfl
theorem node7263_eq : Flapjack.WordAlloc.removeDeadStructural input7263 value3637 value1 value2 = (output7263, value5, value1) := by
  rw [input7263_def, output7263_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7263 input7262)).val
theorem input7264_def : input7264 = (.seq input7263 input7262) := by
  unfold input7264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7263 output7262)).val
theorem output7264_def : output7264 = (.seq output7263 output7262) := by
  unfold output7264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7264_skip : Flapjack.WordAlloc.isSkip output7264 = false := by
  rw [output7264_def]
  conv => lhs; cbv
  try rfl
theorem node7264_eq : Flapjack.WordAlloc.removeDeadStructural input7264 value3636 value1 value2 = (output7264, value5, value1) := by
  rw [input7264_def, output7264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7262_eq]
  dsimp only
  rw [node7263_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7264 input7261)).val
theorem input7265_def : input7265 = (.seq input7264 input7261) := by
  unfold input7265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7264 output7261)).val
theorem output7265_def : output7265 = (.seq output7264 output7261) := by
  unfold output7265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7265_skip : Flapjack.WordAlloc.isSkip output7265 = false := by
  rw [output7265_def]
  conv => lhs; cbv
  try rfl
theorem node7265_eq : Flapjack.WordAlloc.removeDeadStructural input7265 value3635 value1 value2 = (output7265, value5, value1) := by
  rw [input7265_def, output7265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7261_eq]
  dsimp only
  rw [node7264_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7265 input7260)).val
theorem input7266_def : input7266 = (.seq input7265 input7260) := by
  unfold input7266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7265 output7260)).val
theorem output7266_def : output7266 = (.seq output7265 output7260) := by
  unfold output7266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7266_skip : Flapjack.WordAlloc.isSkip output7266 = false := by
  rw [output7266_def]
  conv => lhs; cbv
  try rfl
theorem node7266_eq : Flapjack.WordAlloc.removeDeadStructural input7266 value3634 value1 value2 = (output7266, value5, value1) := by
  rw [input7266_def, output7266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7260_eq]
  dsimp only
  rw [node7265_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7266 input7259)).val
theorem input7267_def : input7267 = (.seq input7266 input7259) := by
  unfold input7267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7266 output7259)).val
theorem output7267_def : output7267 = (.seq output7266 output7259) := by
  unfold output7267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7267_skip : Flapjack.WordAlloc.isSkip output7267 = false := by
  rw [output7267_def]
  conv => lhs; cbv
  try rfl
theorem node7267_eq : Flapjack.WordAlloc.removeDeadStructural input7267 value3632 value1 value2 = (output7267, value5, value1) := by
  rw [input7267_def, output7267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7259_eq]
  dsimp only
  rw [node7266_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3638 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14865 (Flapjack.WordLangAddr.addr 14869 0#64)))).val
theorem input7268_def : input7268 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14865 (Flapjack.WordLangAddr.addr 14869 0#64))) := by
  unfold input7268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14865 (Flapjack.WordLangAddr.addr 14869 0#64)))).val
theorem output7268_def : output7268 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14865 (Flapjack.WordLangAddr.addr 14869 0#64))) := by
  unfold output7268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7268_skip : Flapjack.WordAlloc.isSkip output7268 = false := by
  rw [output7268_def]
  conv => lhs; cbv
  try rfl
theorem node7268_eq : Flapjack.WordAlloc.removeDeadStructural input7268 value5 value1 value2 = (output7268, value3638, value1) := by
  rw [input7268_def, output7268_def]
  try (conv => lhs; cbv)
  try rfl

def value3639 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14869, 14857)])).val
theorem input7269_def : input7269 = (Flapjack.WordLangProgHOL.move 0 [(14869, 14857)]) := by
  unfold input7269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14869, 14857)])).val
theorem output7269_def : output7269 = (Flapjack.WordLangProgHOL.move 0 [(14869, 14857)]) := by
  unfold output7269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7269_skip : Flapjack.WordAlloc.isSkip output7269 = false := by
  rw [output7269_def]
  conv => lhs; cbv
  try rfl
theorem node7269_eq : Flapjack.WordAlloc.removeDeadStructural input7269 value3638 value1 value2 = (output7269, value3639, value1) := by
  rw [input7269_def, output7269_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7269 input7268)).val
theorem input7270_def : input7270 = (.seq input7269 input7268) := by
  unfold input7270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7269 output7268)).val
theorem output7270_def : output7270 = (.seq output7269 output7268) := by
  unfold output7270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7270_skip : Flapjack.WordAlloc.isSkip output7270 = false := by
  rw [output7270_def]
  conv => lhs; cbv
  try rfl
theorem node7270_eq : Flapjack.WordAlloc.removeDeadStructural input7270 value5 value1 value2 = (output7270, value3639, value1) := by
  rw [input7270_def, output7270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7268_eq]
  dsimp only
  rw [node7269_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3640 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14865 3584647998681889532#64))).val
theorem input7271_def : input7271 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14865 3584647998681889532#64)) := by
  unfold input7271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14865 3584647998681889532#64))).val
theorem output7271_def : output7271 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14865 3584647998681889532#64)) := by
  unfold output7271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7271_skip : Flapjack.WordAlloc.isSkip output7271 = false := by
  rw [output7271_def]
  conv => lhs; cbv
  try rfl
theorem node7271_eq : Flapjack.WordAlloc.removeDeadStructural input7271 value3639 value1 value2 = (output7271, value3640, value1) := by
  rw [input7271_def, output7271_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14861 3584647998681889532#64))).val
theorem input7272_def : input7272 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14861 3584647998681889532#64)) := by
  unfold input7272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7272_def : output7272 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7272_skip : Flapjack.WordAlloc.isSkip output7272 = true := by
  rw [output7272_def]
  conv => lhs; cbv
  try rfl
theorem node7272_eq : Flapjack.WordAlloc.removeDeadStructural input7272 value3640 value1 value2 = (output7272, value3640, value1) := by
  rw [input7272_def, output7272_def]
  try (conv => lhs; cbv)
  try rfl

def value3641 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14857 14849 (Flapjack.WordRegImm.reg 14853))))).val
theorem input7273_def : input7273 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14857 14849 (Flapjack.WordRegImm.reg 14853)))) := by
  unfold input7273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14857 14849 (Flapjack.WordRegImm.reg 14853))))).val
theorem output7273_def : output7273 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14857 14849 (Flapjack.WordRegImm.reg 14853)))) := by
  unfold output7273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7273_skip : Flapjack.WordAlloc.isSkip output7273 = false := by
  rw [output7273_def]
  conv => lhs; cbv
  try rfl
theorem node7273_eq : Flapjack.WordAlloc.removeDeadStructural input7273 value3640 value1 value2 = (output7273, value3641, value1) := by
  rw [input7273_def, output7273_def]
  try (conv => lhs; cbv)
  try rfl

def value3642 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14853 3496#64))).val
theorem input7274_def : input7274 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14853 3496#64)) := by
  unfold input7274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14853 3496#64))).val
theorem output7274_def : output7274 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14853 3496#64)) := by
  unfold output7274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7274_skip : Flapjack.WordAlloc.isSkip output7274 = false := by
  rw [output7274_def]
  conv => lhs; cbv
  try rfl
theorem node7274_eq : Flapjack.WordAlloc.removeDeadStructural input7274 value3641 value1 value2 = (output7274, value3642, value1) := by
  rw [input7274_def, output7274_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7274 input7273)).val
theorem input7275_def : input7275 = (.seq input7274 input7273) := by
  unfold input7275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7274 output7273)).val
theorem output7275_def : output7275 = (.seq output7274 output7273) := by
  unfold output7275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7275_skip : Flapjack.WordAlloc.isSkip output7275 = false := by
  rw [output7275_def]
  conv => lhs; cbv
  try rfl
theorem node7275_eq : Flapjack.WordAlloc.removeDeadStructural input7275 value3640 value1 value2 = (output7275, value3642, value1) := by
  rw [input7275_def, output7275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7273_eq]
  dsimp only
  rw [node7274_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3643 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14849 (Flapjack.WordLangAddr.addr 14845 18446744073709551104#64)))).val
theorem input7276_def : input7276 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14849 (Flapjack.WordLangAddr.addr 14845 18446744073709551104#64))) := by
  unfold input7276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14849 (Flapjack.WordLangAddr.addr 14845 18446744073709551104#64)))).val
theorem output7276_def : output7276 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14849 (Flapjack.WordLangAddr.addr 14845 18446744073709551104#64))) := by
  unfold output7276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7276_skip : Flapjack.WordAlloc.isSkip output7276 = false := by
  rw [output7276_def]
  conv => lhs; cbv
  try rfl
theorem node7276_eq : Flapjack.WordAlloc.removeDeadStructural input7276 value3642 value1 value2 = (output7276, value3643, value1) := by
  rw [input7276_def, output7276_def]
  try (conv => lhs; cbv)
  try rfl

def value3644 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14845 14841)).val
theorem input7277_def : input7277 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14845 14841) := by
  unfold input7277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14845 14841)).val
theorem output7277_def : output7277 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14845 14841) := by
  unfold output7277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7277_skip : Flapjack.WordAlloc.isSkip output7277 = false := by
  rw [output7277_def]
  conv => lhs; cbv
  try rfl
theorem node7277_eq : Flapjack.WordAlloc.removeDeadStructural input7277 value3643 value1 value2 = (output7277, value3644, value1) := by
  rw [input7277_def, output7277_def]
  try (conv => lhs; cbv)
  try rfl

def value3645 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14841 14837 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7278_def : input7278 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14841 14837 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14841 14837 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7278_def : output7278 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14841 14837 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7278_skip : Flapjack.WordAlloc.isSkip output7278 = false := by
  rw [output7278_def]
  conv => lhs; cbv
  try rfl
theorem node7278_eq : Flapjack.WordAlloc.removeDeadStructural input7278 value3644 value1 value2 = (output7278, value3645, value1) := by
  rw [input7278_def, output7278_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14837 Flapjack.WordStore.heapLength)).val
theorem input7279_def : input7279 = (Flapjack.WordLangProgHOL.get 14837 Flapjack.WordStore.heapLength) := by
  unfold input7279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14837 Flapjack.WordStore.heapLength)).val
theorem output7279_def : output7279 = (Flapjack.WordLangProgHOL.get 14837 Flapjack.WordStore.heapLength) := by
  unfold output7279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7279_skip : Flapjack.WordAlloc.isSkip output7279 = false := by
  rw [output7279_def]
  conv => lhs; cbv
  try rfl
theorem node7279_eq : Flapjack.WordAlloc.removeDeadStructural input7279 value3645 value1 value2 = (output7279, value5, value1) := by
  rw [input7279_def, output7279_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7279 input7278)).val
theorem input7280_def : input7280 = (.seq input7279 input7278) := by
  unfold input7280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7279 output7278)).val
theorem output7280_def : output7280 = (.seq output7279 output7278) := by
  unfold output7280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7280_skip : Flapjack.WordAlloc.isSkip output7280 = false := by
  rw [output7280_def]
  conv => lhs; cbv
  try rfl
theorem node7280_eq : Flapjack.WordAlloc.removeDeadStructural input7280 value3644 value1 value2 = (output7280, value5, value1) := by
  rw [input7280_def, output7280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7278_eq]
  dsimp only
  rw [node7279_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7280 input7277)).val
theorem input7281_def : input7281 = (.seq input7280 input7277) := by
  unfold input7281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7280 output7277)).val
theorem output7281_def : output7281 = (.seq output7280 output7277) := by
  unfold output7281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7281_skip : Flapjack.WordAlloc.isSkip output7281 = false := by
  rw [output7281_def]
  conv => lhs; cbv
  try rfl
theorem node7281_eq : Flapjack.WordAlloc.removeDeadStructural input7281 value3643 value1 value2 = (output7281, value5, value1) := by
  rw [input7281_def, output7281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7277_eq]
  dsimp only
  rw [node7280_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7281 input7276)).val
theorem input7282_def : input7282 = (.seq input7281 input7276) := by
  unfold input7282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7281 output7276)).val
theorem output7282_def : output7282 = (.seq output7281 output7276) := by
  unfold output7282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7282_skip : Flapjack.WordAlloc.isSkip output7282 = false := by
  rw [output7282_def]
  conv => lhs; cbv
  try rfl
theorem node7282_eq : Flapjack.WordAlloc.removeDeadStructural input7282 value3642 value1 value2 = (output7282, value5, value1) := by
  rw [input7282_def, output7282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7276_eq]
  dsimp only
  rw [node7281_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7282 input7275)).val
theorem input7283_def : input7283 = (.seq input7282 input7275) := by
  unfold input7283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7282 output7275)).val
theorem output7283_def : output7283 = (.seq output7282 output7275) := by
  unfold output7283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7283_skip : Flapjack.WordAlloc.isSkip output7283 = false := by
  rw [output7283_def]
  conv => lhs; cbv
  try rfl
theorem node7283_eq : Flapjack.WordAlloc.removeDeadStructural input7283 value3640 value1 value2 = (output7283, value5, value1) := by
  rw [input7283_def, output7283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7275_eq]
  dsimp only
  rw [node7282_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3646 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14829 (Flapjack.WordLangAddr.addr 14833 0#64)))).val
theorem input7284_def : input7284 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14829 (Flapjack.WordLangAddr.addr 14833 0#64))) := by
  unfold input7284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14829 (Flapjack.WordLangAddr.addr 14833 0#64)))).val
theorem output7284_def : output7284 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14829 (Flapjack.WordLangAddr.addr 14833 0#64))) := by
  unfold output7284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7284_skip : Flapjack.WordAlloc.isSkip output7284 = false := by
  rw [output7284_def]
  conv => lhs; cbv
  try rfl
theorem node7284_eq : Flapjack.WordAlloc.removeDeadStructural input7284 value5 value1 value2 = (output7284, value3646, value1) := by
  rw [input7284_def, output7284_def]
  try (conv => lhs; cbv)
  try rfl

def value3647 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14833, 14821)])).val
theorem input7285_def : input7285 = (Flapjack.WordLangProgHOL.move 0 [(14833, 14821)]) := by
  unfold input7285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14833, 14821)])).val
theorem output7285_def : output7285 = (Flapjack.WordLangProgHOL.move 0 [(14833, 14821)]) := by
  unfold output7285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7285_skip : Flapjack.WordAlloc.isSkip output7285 = false := by
  rw [output7285_def]
  conv => lhs; cbv
  try rfl
theorem node7285_eq : Flapjack.WordAlloc.removeDeadStructural input7285 value3646 value1 value2 = (output7285, value3647, value1) := by
  rw [input7285_def, output7285_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7285 input7284)).val
theorem input7286_def : input7286 = (.seq input7285 input7284) := by
  unfold input7286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7285 output7284)).val
theorem output7286_def : output7286 = (.seq output7285 output7284) := by
  unfold output7286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7286_skip : Flapjack.WordAlloc.isSkip output7286 = false := by
  rw [output7286_def]
  conv => lhs; cbv
  try rfl
theorem node7286_eq : Flapjack.WordAlloc.removeDeadStructural input7286 value5 value1 value2 = (output7286, value3647, value1) := by
  rw [input7286_def, output7286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7284_eq]
  dsimp only
  rw [node7285_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3648 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14829 16722834201330696498#64))).val
theorem input7287_def : input7287 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14829 16722834201330696498#64)) := by
  unfold input7287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14829 16722834201330696498#64))).val
theorem output7287_def : output7287 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14829 16722834201330696498#64)) := by
  unfold output7287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7287_skip : Flapjack.WordAlloc.isSkip output7287 = false := by
  rw [output7287_def]
  conv => lhs; cbv
  try rfl
theorem node7287_eq : Flapjack.WordAlloc.removeDeadStructural input7287 value3647 value1 value2 = (output7287, value3648, value1) := by
  rw [input7287_def, output7287_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14825 16722834201330696498#64))).val
theorem input7288_def : input7288 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14825 16722834201330696498#64)) := by
  unfold input7288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7288_def : output7288 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7288_skip : Flapjack.WordAlloc.isSkip output7288 = true := by
  rw [output7288_def]
  conv => lhs; cbv
  try rfl
theorem node7288_eq : Flapjack.WordAlloc.removeDeadStructural input7288 value3648 value1 value2 = (output7288, value3648, value1) := by
  rw [input7288_def, output7288_def]
  try (conv => lhs; cbv)
  try rfl

def value3649 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14821 14813 (Flapjack.WordRegImm.reg 14817))))).val
theorem input7289_def : input7289 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14821 14813 (Flapjack.WordRegImm.reg 14817)))) := by
  unfold input7289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14821 14813 (Flapjack.WordRegImm.reg 14817))))).val
theorem output7289_def : output7289 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14821 14813 (Flapjack.WordRegImm.reg 14817)))) := by
  unfold output7289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7289_skip : Flapjack.WordAlloc.isSkip output7289 = false := by
  rw [output7289_def]
  conv => lhs; cbv
  try rfl
theorem node7289_eq : Flapjack.WordAlloc.removeDeadStructural input7289 value3648 value1 value2 = (output7289, value3649, value1) := by
  rw [input7289_def, output7289_def]
  try (conv => lhs; cbv)
  try rfl

def value3650 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14817 3488#64))).val
theorem input7290_def : input7290 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14817 3488#64)) := by
  unfold input7290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14817 3488#64))).val
theorem output7290_def : output7290 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14817 3488#64)) := by
  unfold output7290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7290_skip : Flapjack.WordAlloc.isSkip output7290 = false := by
  rw [output7290_def]
  conv => lhs; cbv
  try rfl
theorem node7290_eq : Flapjack.WordAlloc.removeDeadStructural input7290 value3649 value1 value2 = (output7290, value3650, value1) := by
  rw [input7290_def, output7290_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7290 input7289)).val
theorem input7291_def : input7291 = (.seq input7290 input7289) := by
  unfold input7291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7290 output7289)).val
theorem output7291_def : output7291 = (.seq output7290 output7289) := by
  unfold output7291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7291_skip : Flapjack.WordAlloc.isSkip output7291 = false := by
  rw [output7291_def]
  conv => lhs; cbv
  try rfl
theorem node7291_eq : Flapjack.WordAlloc.removeDeadStructural input7291 value3648 value1 value2 = (output7291, value3650, value1) := by
  rw [input7291_def, output7291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7289_eq]
  dsimp only
  rw [node7290_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3651 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14813 (Flapjack.WordLangAddr.addr 14809 18446744073709551104#64)))).val
theorem input7292_def : input7292 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14813 (Flapjack.WordLangAddr.addr 14809 18446744073709551104#64))) := by
  unfold input7292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14813 (Flapjack.WordLangAddr.addr 14809 18446744073709551104#64)))).val
theorem output7292_def : output7292 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14813 (Flapjack.WordLangAddr.addr 14809 18446744073709551104#64))) := by
  unfold output7292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7292_skip : Flapjack.WordAlloc.isSkip output7292 = false := by
  rw [output7292_def]
  conv => lhs; cbv
  try rfl
theorem node7292_eq : Flapjack.WordAlloc.removeDeadStructural input7292 value3650 value1 value2 = (output7292, value3651, value1) := by
  rw [input7292_def, output7292_def]
  try (conv => lhs; cbv)
  try rfl

def value3652 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14809 14805)).val
theorem input7293_def : input7293 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14809 14805) := by
  unfold input7293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14809 14805)).val
theorem output7293_def : output7293 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14809 14805) := by
  unfold output7293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7293_skip : Flapjack.WordAlloc.isSkip output7293 = false := by
  rw [output7293_def]
  conv => lhs; cbv
  try rfl
theorem node7293_eq : Flapjack.WordAlloc.removeDeadStructural input7293 value3651 value1 value2 = (output7293, value3652, value1) := by
  rw [input7293_def, output7293_def]
  try (conv => lhs; cbv)
  try rfl

def value3653 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14805 14801 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7294_def : input7294 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14805 14801 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14805 14801 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7294_def : output7294 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14805 14801 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7294_skip : Flapjack.WordAlloc.isSkip output7294 = false := by
  rw [output7294_def]
  conv => lhs; cbv
  try rfl
theorem node7294_eq : Flapjack.WordAlloc.removeDeadStructural input7294 value3652 value1 value2 = (output7294, value3653, value1) := by
  rw [input7294_def, output7294_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14801 Flapjack.WordStore.heapLength)).val
theorem input7295_def : input7295 = (Flapjack.WordLangProgHOL.get 14801 Flapjack.WordStore.heapLength) := by
  unfold input7295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14801 Flapjack.WordStore.heapLength)).val
theorem output7295_def : output7295 = (Flapjack.WordLangProgHOL.get 14801 Flapjack.WordStore.heapLength) := by
  unfold output7295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7295_skip : Flapjack.WordAlloc.isSkip output7295 = false := by
  rw [output7295_def]
  conv => lhs; cbv
  try rfl
theorem node7295_eq : Flapjack.WordAlloc.removeDeadStructural input7295 value3653 value1 value2 = (output7295, value5, value1) := by
  rw [input7295_def, output7295_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7295 input7294)).val
theorem input7296_def : input7296 = (.seq input7295 input7294) := by
  unfold input7296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7295 output7294)).val
theorem output7296_def : output7296 = (.seq output7295 output7294) := by
  unfold output7296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7296_skip : Flapjack.WordAlloc.isSkip output7296 = false := by
  rw [output7296_def]
  conv => lhs; cbv
  try rfl
theorem node7296_eq : Flapjack.WordAlloc.removeDeadStructural input7296 value3652 value1 value2 = (output7296, value5, value1) := by
  rw [input7296_def, output7296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7294_eq]
  dsimp only
  rw [node7295_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7296 input7293)).val
theorem input7297_def : input7297 = (.seq input7296 input7293) := by
  unfold input7297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7296 output7293)).val
theorem output7297_def : output7297 = (.seq output7296 output7293) := by
  unfold output7297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7297_skip : Flapjack.WordAlloc.isSkip output7297 = false := by
  rw [output7297_def]
  conv => lhs; cbv
  try rfl
theorem node7297_eq : Flapjack.WordAlloc.removeDeadStructural input7297 value3651 value1 value2 = (output7297, value5, value1) := by
  rw [input7297_def, output7297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7293_eq]
  dsimp only
  rw [node7296_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7297 input7292)).val
theorem input7298_def : input7298 = (.seq input7297 input7292) := by
  unfold input7298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7297 output7292)).val
theorem output7298_def : output7298 = (.seq output7297 output7292) := by
  unfold output7298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7298_skip : Flapjack.WordAlloc.isSkip output7298 = false := by
  rw [output7298_def]
  conv => lhs; cbv
  try rfl
theorem node7298_eq : Flapjack.WordAlloc.removeDeadStructural input7298 value3650 value1 value2 = (output7298, value5, value1) := by
  rw [input7298_def, output7298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7292_eq]
  dsimp only
  rw [node7297_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7298 input7291)).val
theorem input7299_def : input7299 = (.seq input7298 input7291) := by
  unfold input7299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7298 output7291)).val
theorem output7299_def : output7299 = (.seq output7298 output7291) := by
  unfold output7299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7299_skip : Flapjack.WordAlloc.isSkip output7299 = false := by
  rw [output7299_def]
  conv => lhs; cbv
  try rfl
theorem node7299_eq : Flapjack.WordAlloc.removeDeadStructural input7299 value3648 value1 value2 = (output7299, value5, value1) := by
  rw [input7299_def, output7299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7291_eq]
  dsimp only
  rw [node7298_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3654 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14793 (Flapjack.WordLangAddr.addr 14797 0#64)))).val
theorem input7300_def : input7300 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14793 (Flapjack.WordLangAddr.addr 14797 0#64))) := by
  unfold input7300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14793 (Flapjack.WordLangAddr.addr 14797 0#64)))).val
theorem output7300_def : output7300 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14793 (Flapjack.WordLangAddr.addr 14797 0#64))) := by
  unfold output7300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7300_skip : Flapjack.WordAlloc.isSkip output7300 = false := by
  rw [output7300_def]
  conv => lhs; cbv
  try rfl
theorem node7300_eq : Flapjack.WordAlloc.removeDeadStructural input7300 value5 value1 value2 = (output7300, value3654, value1) := by
  rw [input7300_def, output7300_def]
  try (conv => lhs; cbv)
  try rfl

def value3655 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14797, 14785)])).val
theorem input7301_def : input7301 = (Flapjack.WordLangProgHOL.move 0 [(14797, 14785)]) := by
  unfold input7301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14797, 14785)])).val
theorem output7301_def : output7301 = (Flapjack.WordLangProgHOL.move 0 [(14797, 14785)]) := by
  unfold output7301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7301_skip : Flapjack.WordAlloc.isSkip output7301 = false := by
  rw [output7301_def]
  conv => lhs; cbv
  try rfl
theorem node7301_eq : Flapjack.WordAlloc.removeDeadStructural input7301 value3654 value1 value2 = (output7301, value3655, value1) := by
  rw [input7301_def, output7301_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7301 input7300)).val
theorem input7302_def : input7302 = (.seq input7301 input7300) := by
  unfold input7302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7301 output7300)).val
theorem output7302_def : output7302 = (.seq output7301 output7300) := by
  unfold output7302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7302_skip : Flapjack.WordAlloc.isSkip output7302 = false := by
  rw [output7302_def]
  conv => lhs; cbv
  try rfl
theorem node7302_eq : Flapjack.WordAlloc.removeDeadStructural input7302 value5 value1 value2 = (output7302, value3655, value1) := by
  rw [input7302_def, output7302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7300_eq]
  dsimp only
  rw [node7301_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3656 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14793 1016611174344998325#64))).val
theorem input7303_def : input7303 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14793 1016611174344998325#64)) := by
  unfold input7303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14793 1016611174344998325#64))).val
theorem output7303_def : output7303 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14793 1016611174344998325#64)) := by
  unfold output7303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7303_skip : Flapjack.WordAlloc.isSkip output7303 = false := by
  rw [output7303_def]
  conv => lhs; cbv
  try rfl
theorem node7303_eq : Flapjack.WordAlloc.removeDeadStructural input7303 value3655 value1 value2 = (output7303, value3656, value1) := by
  rw [input7303_def, output7303_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14789 1016611174344998325#64))).val
theorem input7304_def : input7304 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14789 1016611174344998325#64)) := by
  unfold input7304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7304_def : output7304 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7304_skip : Flapjack.WordAlloc.isSkip output7304 = true := by
  rw [output7304_def]
  conv => lhs; cbv
  try rfl
theorem node7304_eq : Flapjack.WordAlloc.removeDeadStructural input7304 value3656 value1 value2 = (output7304, value3656, value1) := by
  rw [input7304_def, output7304_def]
  try (conv => lhs; cbv)
  try rfl

def value3657 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14785 14777 (Flapjack.WordRegImm.reg 14781))))).val
theorem input7305_def : input7305 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14785 14777 (Flapjack.WordRegImm.reg 14781)))) := by
  unfold input7305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14785 14777 (Flapjack.WordRegImm.reg 14781))))).val
theorem output7305_def : output7305 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14785 14777 (Flapjack.WordRegImm.reg 14781)))) := by
  unfold output7305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7305_skip : Flapjack.WordAlloc.isSkip output7305 = false := by
  rw [output7305_def]
  conv => lhs; cbv
  try rfl
theorem node7305_eq : Flapjack.WordAlloc.removeDeadStructural input7305 value3656 value1 value2 = (output7305, value3657, value1) := by
  rw [input7305_def, output7305_def]
  try (conv => lhs; cbv)
  try rfl

def value3658 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14781 3480#64))).val
theorem input7306_def : input7306 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14781 3480#64)) := by
  unfold input7306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14781 3480#64))).val
theorem output7306_def : output7306 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14781 3480#64)) := by
  unfold output7306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7306_skip : Flapjack.WordAlloc.isSkip output7306 = false := by
  rw [output7306_def]
  conv => lhs; cbv
  try rfl
theorem node7306_eq : Flapjack.WordAlloc.removeDeadStructural input7306 value3657 value1 value2 = (output7306, value3658, value1) := by
  rw [input7306_def, output7306_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7306 input7305)).val
theorem input7307_def : input7307 = (.seq input7306 input7305) := by
  unfold input7307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7306 output7305)).val
theorem output7307_def : output7307 = (.seq output7306 output7305) := by
  unfold output7307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7307_skip : Flapjack.WordAlloc.isSkip output7307 = false := by
  rw [output7307_def]
  conv => lhs; cbv
  try rfl
theorem node7307_eq : Flapjack.WordAlloc.removeDeadStructural input7307 value3656 value1 value2 = (output7307, value3658, value1) := by
  rw [input7307_def, output7307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7305_eq]
  dsimp only
  rw [node7306_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3659 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14777 (Flapjack.WordLangAddr.addr 14773 18446744073709551104#64)))).val
theorem input7308_def : input7308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14777 (Flapjack.WordLangAddr.addr 14773 18446744073709551104#64))) := by
  unfold input7308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14777 (Flapjack.WordLangAddr.addr 14773 18446744073709551104#64)))).val
theorem output7308_def : output7308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14777 (Flapjack.WordLangAddr.addr 14773 18446744073709551104#64))) := by
  unfold output7308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7308_skip : Flapjack.WordAlloc.isSkip output7308 = false := by
  rw [output7308_def]
  conv => lhs; cbv
  try rfl
theorem node7308_eq : Flapjack.WordAlloc.removeDeadStructural input7308 value3658 value1 value2 = (output7308, value3659, value1) := by
  rw [input7308_def, output7308_def]
  try (conv => lhs; cbv)
  try rfl

def value3660 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14773 14769)).val
theorem input7309_def : input7309 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14773 14769) := by
  unfold input7309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14773 14769)).val
theorem output7309_def : output7309 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14773 14769) := by
  unfold output7309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7309_skip : Flapjack.WordAlloc.isSkip output7309 = false := by
  rw [output7309_def]
  conv => lhs; cbv
  try rfl
theorem node7309_eq : Flapjack.WordAlloc.removeDeadStructural input7309 value3659 value1 value2 = (output7309, value3660, value1) := by
  rw [input7309_def, output7309_def]
  try (conv => lhs; cbv)
  try rfl

def value3661 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14769 14765 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7310_def : input7310 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14769 14765 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14769 14765 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7310_def : output7310 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14769 14765 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7310_skip : Flapjack.WordAlloc.isSkip output7310 = false := by
  rw [output7310_def]
  conv => lhs; cbv
  try rfl
theorem node7310_eq : Flapjack.WordAlloc.removeDeadStructural input7310 value3660 value1 value2 = (output7310, value3661, value1) := by
  rw [input7310_def, output7310_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14765 Flapjack.WordStore.heapLength)).val
theorem input7311_def : input7311 = (Flapjack.WordLangProgHOL.get 14765 Flapjack.WordStore.heapLength) := by
  unfold input7311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14765 Flapjack.WordStore.heapLength)).val
theorem output7311_def : output7311 = (Flapjack.WordLangProgHOL.get 14765 Flapjack.WordStore.heapLength) := by
  unfold output7311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7311_skip : Flapjack.WordAlloc.isSkip output7311 = false := by
  rw [output7311_def]
  conv => lhs; cbv
  try rfl
theorem node7311_eq : Flapjack.WordAlloc.removeDeadStructural input7311 value3661 value1 value2 = (output7311, value5, value1) := by
  rw [input7311_def, output7311_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7311 input7310)).val
theorem input7312_def : input7312 = (.seq input7311 input7310) := by
  unfold input7312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7311 output7310)).val
theorem output7312_def : output7312 = (.seq output7311 output7310) := by
  unfold output7312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7312_skip : Flapjack.WordAlloc.isSkip output7312 = false := by
  rw [output7312_def]
  conv => lhs; cbv
  try rfl
theorem node7312_eq : Flapjack.WordAlloc.removeDeadStructural input7312 value3660 value1 value2 = (output7312, value5, value1) := by
  rw [input7312_def, output7312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7310_eq]
  dsimp only
  rw [node7311_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7312 input7309)).val
theorem input7313_def : input7313 = (.seq input7312 input7309) := by
  unfold input7313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7312 output7309)).val
theorem output7313_def : output7313 = (.seq output7312 output7309) := by
  unfold output7313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7313_skip : Flapjack.WordAlloc.isSkip output7313 = false := by
  rw [output7313_def]
  conv => lhs; cbv
  try rfl
theorem node7313_eq : Flapjack.WordAlloc.removeDeadStructural input7313 value3659 value1 value2 = (output7313, value5, value1) := by
  rw [input7313_def, output7313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7309_eq]
  dsimp only
  rw [node7312_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7313 input7308)).val
theorem input7314_def : input7314 = (.seq input7313 input7308) := by
  unfold input7314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7313 output7308)).val
theorem output7314_def : output7314 = (.seq output7313 output7308) := by
  unfold output7314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7314_skip : Flapjack.WordAlloc.isSkip output7314 = false := by
  rw [output7314_def]
  conv => lhs; cbv
  try rfl
theorem node7314_eq : Flapjack.WordAlloc.removeDeadStructural input7314 value3658 value1 value2 = (output7314, value5, value1) := by
  rw [input7314_def, output7314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7308_eq]
  dsimp only
  rw [node7313_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7314 input7307)).val
theorem input7315_def : input7315 = (.seq input7314 input7307) := by
  unfold input7315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7314 output7307)).val
theorem output7315_def : output7315 = (.seq output7314 output7307) := by
  unfold output7315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7315_skip : Flapjack.WordAlloc.isSkip output7315 = false := by
  rw [output7315_def]
  conv => lhs; cbv
  try rfl
theorem node7315_eq : Flapjack.WordAlloc.removeDeadStructural input7315 value3656 value1 value2 = (output7315, value5, value1) := by
  rw [input7315_def, output7315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7307_eq]
  dsimp only
  rw [node7314_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3662 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14757 (Flapjack.WordLangAddr.addr 14761 0#64)))).val
theorem input7316_def : input7316 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14757 (Flapjack.WordLangAddr.addr 14761 0#64))) := by
  unfold input7316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14757 (Flapjack.WordLangAddr.addr 14761 0#64)))).val
theorem output7316_def : output7316 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14757 (Flapjack.WordLangAddr.addr 14761 0#64))) := by
  unfold output7316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7316_skip : Flapjack.WordAlloc.isSkip output7316 = false := by
  rw [output7316_def]
  conv => lhs; cbv
  try rfl
theorem node7316_eq : Flapjack.WordAlloc.removeDeadStructural input7316 value5 value1 value2 = (output7316, value3662, value1) := by
  rw [input7316_def, output7316_def]
  try (conv => lhs; cbv)
  try rfl

def value3663 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14761, 14749)])).val
theorem input7317_def : input7317 = (Flapjack.WordLangProgHOL.move 0 [(14761, 14749)]) := by
  unfold input7317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14761, 14749)])).val
theorem output7317_def : output7317 = (Flapjack.WordLangProgHOL.move 0 [(14761, 14749)]) := by
  unfold output7317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7317_skip : Flapjack.WordAlloc.isSkip output7317 = false := by
  rw [output7317_def]
  conv => lhs; cbv
  try rfl
theorem node7317_eq : Flapjack.WordAlloc.removeDeadStructural input7317 value3662 value1 value2 = (output7317, value3663, value1) := by
  rw [input7317_def, output7317_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7317 input7316)).val
theorem input7318_def : input7318 = (.seq input7317 input7316) := by
  unfold input7318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7317 output7316)).val
theorem output7318_def : output7318 = (.seq output7317 output7316) := by
  unfold output7318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7318_skip : Flapjack.WordAlloc.isSkip output7318 = false := by
  rw [output7318_def]
  conv => lhs; cbv
  try rfl
theorem node7318_eq : Flapjack.WordAlloc.removeDeadStructural input7318 value5 value1 value2 = (output7318, value3663, value1) := by
  rw [input7318_def, output7318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7316_eq]
  dsimp only
  rw [node7317_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3664 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14757 2466492548686891555#64))).val
theorem input7319_def : input7319 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14757 2466492548686891555#64)) := by
  unfold input7319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14757 2466492548686891555#64))).val
theorem output7319_def : output7319 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14757 2466492548686891555#64)) := by
  unfold output7319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7319_skip : Flapjack.WordAlloc.isSkip output7319 = false := by
  rw [output7319_def]
  conv => lhs; cbv
  try rfl
theorem node7319_eq : Flapjack.WordAlloc.removeDeadStructural input7319 value3663 value1 value2 = (output7319, value3664, value1) := by
  rw [input7319_def, output7319_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14753 2466492548686891555#64))).val
theorem input7320_def : input7320 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14753 2466492548686891555#64)) := by
  unfold input7320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7320_def : output7320 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7320_skip : Flapjack.WordAlloc.isSkip output7320 = true := by
  rw [output7320_def]
  conv => lhs; cbv
  try rfl
theorem node7320_eq : Flapjack.WordAlloc.removeDeadStructural input7320 value3664 value1 value2 = (output7320, value3664, value1) := by
  rw [input7320_def, output7320_def]
  try (conv => lhs; cbv)
  try rfl

def value3665 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14749 14741 (Flapjack.WordRegImm.reg 14745))))).val
theorem input7321_def : input7321 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14749 14741 (Flapjack.WordRegImm.reg 14745)))) := by
  unfold input7321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14749 14741 (Flapjack.WordRegImm.reg 14745))))).val
theorem output7321_def : output7321 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14749 14741 (Flapjack.WordRegImm.reg 14745)))) := by
  unfold output7321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7321_skip : Flapjack.WordAlloc.isSkip output7321 = false := by
  rw [output7321_def]
  conv => lhs; cbv
  try rfl
theorem node7321_eq : Flapjack.WordAlloc.removeDeadStructural input7321 value3664 value1 value2 = (output7321, value3665, value1) := by
  rw [input7321_def, output7321_def]
  try (conv => lhs; cbv)
  try rfl

def value3666 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14745 3472#64))).val
theorem input7322_def : input7322 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14745 3472#64)) := by
  unfold input7322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14745 3472#64))).val
theorem output7322_def : output7322 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14745 3472#64)) := by
  unfold output7322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7322_skip : Flapjack.WordAlloc.isSkip output7322 = false := by
  rw [output7322_def]
  conv => lhs; cbv
  try rfl
theorem node7322_eq : Flapjack.WordAlloc.removeDeadStructural input7322 value3665 value1 value2 = (output7322, value3666, value1) := by
  rw [input7322_def, output7322_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7322 input7321)).val
theorem input7323_def : input7323 = (.seq input7322 input7321) := by
  unfold input7323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7322 output7321)).val
theorem output7323_def : output7323 = (.seq output7322 output7321) := by
  unfold output7323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7323_skip : Flapjack.WordAlloc.isSkip output7323 = false := by
  rw [output7323_def]
  conv => lhs; cbv
  try rfl
theorem node7323_eq : Flapjack.WordAlloc.removeDeadStructural input7323 value3664 value1 value2 = (output7323, value3666, value1) := by
  rw [input7323_def, output7323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7321_eq]
  dsimp only
  rw [node7322_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3667 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14741 (Flapjack.WordLangAddr.addr 14737 18446744073709551104#64)))).val
theorem input7324_def : input7324 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14741 (Flapjack.WordLangAddr.addr 14737 18446744073709551104#64))) := by
  unfold input7324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14741 (Flapjack.WordLangAddr.addr 14737 18446744073709551104#64)))).val
theorem output7324_def : output7324 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14741 (Flapjack.WordLangAddr.addr 14737 18446744073709551104#64))) := by
  unfold output7324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7324_skip : Flapjack.WordAlloc.isSkip output7324 = false := by
  rw [output7324_def]
  conv => lhs; cbv
  try rfl
theorem node7324_eq : Flapjack.WordAlloc.removeDeadStructural input7324 value3666 value1 value2 = (output7324, value3667, value1) := by
  rw [input7324_def, output7324_def]
  try (conv => lhs; cbv)
  try rfl

def value3668 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14737 14733)).val
theorem input7325_def : input7325 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14737 14733) := by
  unfold input7325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14737 14733)).val
theorem output7325_def : output7325 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14737 14733) := by
  unfold output7325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7325_skip : Flapjack.WordAlloc.isSkip output7325 = false := by
  rw [output7325_def]
  conv => lhs; cbv
  try rfl
theorem node7325_eq : Flapjack.WordAlloc.removeDeadStructural input7325 value3667 value1 value2 = (output7325, value3668, value1) := by
  rw [input7325_def, output7325_def]
  try (conv => lhs; cbv)
  try rfl

def value3669 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14733 14729 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7326_def : input7326 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14733 14729 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14733 14729 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7326_def : output7326 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14733 14729 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7326_skip : Flapjack.WordAlloc.isSkip output7326 = false := by
  rw [output7326_def]
  conv => lhs; cbv
  try rfl
theorem node7326_eq : Flapjack.WordAlloc.removeDeadStructural input7326 value3668 value1 value2 = (output7326, value3669, value1) := by
  rw [input7326_def, output7326_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14729 Flapjack.WordStore.heapLength)).val
theorem input7327_def : input7327 = (Flapjack.WordLangProgHOL.get 14729 Flapjack.WordStore.heapLength) := by
  unfold input7327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14729 Flapjack.WordStore.heapLength)).val
theorem output7327_def : output7327 = (Flapjack.WordLangProgHOL.get 14729 Flapjack.WordStore.heapLength) := by
  unfold output7327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7327_skip : Flapjack.WordAlloc.isSkip output7327 = false := by
  rw [output7327_def]
  conv => lhs; cbv
  try rfl
theorem node7327_eq : Flapjack.WordAlloc.removeDeadStructural input7327 value3669 value1 value2 = (output7327, value5, value1) := by
  rw [input7327_def, output7327_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7327 input7326)).val
theorem input7328_def : input7328 = (.seq input7327 input7326) := by
  unfold input7328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7327 output7326)).val
theorem output7328_def : output7328 = (.seq output7327 output7326) := by
  unfold output7328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7328_skip : Flapjack.WordAlloc.isSkip output7328 = false := by
  rw [output7328_def]
  conv => lhs; cbv
  try rfl
theorem node7328_eq : Flapjack.WordAlloc.removeDeadStructural input7328 value3668 value1 value2 = (output7328, value5, value1) := by
  rw [input7328_def, output7328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7326_eq]
  dsimp only
  rw [node7327_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7328 input7325)).val
theorem input7329_def : input7329 = (.seq input7328 input7325) := by
  unfold input7329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7328 output7325)).val
theorem output7329_def : output7329 = (.seq output7328 output7325) := by
  unfold output7329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7329_skip : Flapjack.WordAlloc.isSkip output7329 = false := by
  rw [output7329_def]
  conv => lhs; cbv
  try rfl
theorem node7329_eq : Flapjack.WordAlloc.removeDeadStructural input7329 value3667 value1 value2 = (output7329, value5, value1) := by
  rw [input7329_def, output7329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7325_eq]
  dsimp only
  rw [node7328_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7329 input7324)).val
theorem input7330_def : input7330 = (.seq input7329 input7324) := by
  unfold input7330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7329 output7324)).val
theorem output7330_def : output7330 = (.seq output7329 output7324) := by
  unfold output7330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7330_skip : Flapjack.WordAlloc.isSkip output7330 = false := by
  rw [output7330_def]
  conv => lhs; cbv
  try rfl
theorem node7330_eq : Flapjack.WordAlloc.removeDeadStructural input7330 value3666 value1 value2 = (output7330, value5, value1) := by
  rw [input7330_def, output7330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7324_eq]
  dsimp only
  rw [node7329_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7330 input7323)).val
theorem input7331_def : input7331 = (.seq input7330 input7323) := by
  unfold input7331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7330 output7323)).val
theorem output7331_def : output7331 = (.seq output7330 output7323) := by
  unfold output7331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7331_skip : Flapjack.WordAlloc.isSkip output7331 = false := by
  rw [output7331_def]
  conv => lhs; cbv
  try rfl
theorem node7331_eq : Flapjack.WordAlloc.removeDeadStructural input7331 value3664 value1 value2 = (output7331, value5, value1) := by
  rw [input7331_def, output7331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7323_eq]
  dsimp only
  rw [node7330_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3670 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14721 (Flapjack.WordLangAddr.addr 14725 0#64)))).val
theorem input7332_def : input7332 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14721 (Flapjack.WordLangAddr.addr 14725 0#64))) := by
  unfold input7332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14721 (Flapjack.WordLangAddr.addr 14725 0#64)))).val
theorem output7332_def : output7332 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14721 (Flapjack.WordLangAddr.addr 14725 0#64))) := by
  unfold output7332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7332_skip : Flapjack.WordAlloc.isSkip output7332 = false := by
  rw [output7332_def]
  conv => lhs; cbv
  try rfl
theorem node7332_eq : Flapjack.WordAlloc.removeDeadStructural input7332 value5 value1 value2 = (output7332, value3670, value1) := by
  rw [input7332_def, output7332_def]
  try (conv => lhs; cbv)
  try rfl

def value3671 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14725, 14713)])).val
theorem input7333_def : input7333 = (Flapjack.WordLangProgHOL.move 0 [(14725, 14713)]) := by
  unfold input7333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14725, 14713)])).val
theorem output7333_def : output7333 = (Flapjack.WordLangProgHOL.move 0 [(14725, 14713)]) := by
  unfold output7333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7333_skip : Flapjack.WordAlloc.isSkip output7333 = false := by
  rw [output7333_def]
  conv => lhs; cbv
  try rfl
theorem node7333_eq : Flapjack.WordAlloc.removeDeadStructural input7333 value3670 value1 value2 = (output7333, value3671, value1) := by
  rw [input7333_def, output7333_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7333 input7332)).val
theorem input7334_def : input7334 = (.seq input7333 input7332) := by
  unfold input7334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7333 output7332)).val
theorem output7334_def : output7334 = (.seq output7333 output7332) := by
  unfold output7334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7334_skip : Flapjack.WordAlloc.isSkip output7334 = false := by
  rw [output7334_def]
  conv => lhs; cbv
  try rfl
theorem node7334_eq : Flapjack.WordAlloc.removeDeadStructural input7334 value5 value1 value2 = (output7334, value3671, value1) := by
  rw [input7334_def, output7334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7332_eq]
  dsimp only
  rw [node7333_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3672 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14721 14135124294293452542#64))).val
theorem input7335_def : input7335 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14721 14135124294293452542#64)) := by
  unfold input7335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14721 14135124294293452542#64))).val
theorem output7335_def : output7335 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14721 14135124294293452542#64)) := by
  unfold output7335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7335_skip : Flapjack.WordAlloc.isSkip output7335 = false := by
  rw [output7335_def]
  conv => lhs; cbv
  try rfl
theorem node7335_eq : Flapjack.WordAlloc.removeDeadStructural input7335 value3671 value1 value2 = (output7335, value3672, value1) := by
  rw [input7335_def, output7335_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14717 14135124294293452542#64))).val
theorem input7336_def : input7336 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14717 14135124294293452542#64)) := by
  unfold input7336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7336_def : output7336 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7336_skip : Flapjack.WordAlloc.isSkip output7336 = true := by
  rw [output7336_def]
  conv => lhs; cbv
  try rfl
theorem node7336_eq : Flapjack.WordAlloc.removeDeadStructural input7336 value3672 value1 value2 = (output7336, value3672, value1) := by
  rw [input7336_def, output7336_def]
  try (conv => lhs; cbv)
  try rfl

def value3673 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14713 14705 (Flapjack.WordRegImm.reg 14709))))).val
theorem input7337_def : input7337 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14713 14705 (Flapjack.WordRegImm.reg 14709)))) := by
  unfold input7337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14713 14705 (Flapjack.WordRegImm.reg 14709))))).val
theorem output7337_def : output7337 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14713 14705 (Flapjack.WordRegImm.reg 14709)))) := by
  unfold output7337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7337_skip : Flapjack.WordAlloc.isSkip output7337 = false := by
  rw [output7337_def]
  conv => lhs; cbv
  try rfl
theorem node7337_eq : Flapjack.WordAlloc.removeDeadStructural input7337 value3672 value1 value2 = (output7337, value3673, value1) := by
  rw [input7337_def, output7337_def]
  try (conv => lhs; cbv)
  try rfl

def value3674 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14709 3464#64))).val
theorem input7338_def : input7338 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14709 3464#64)) := by
  unfold input7338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14709 3464#64))).val
theorem output7338_def : output7338 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14709 3464#64)) := by
  unfold output7338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7338_skip : Flapjack.WordAlloc.isSkip output7338 = false := by
  rw [output7338_def]
  conv => lhs; cbv
  try rfl
theorem node7338_eq : Flapjack.WordAlloc.removeDeadStructural input7338 value3673 value1 value2 = (output7338, value3674, value1) := by
  rw [input7338_def, output7338_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7338 input7337)).val
theorem input7339_def : input7339 = (.seq input7338 input7337) := by
  unfold input7339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7338 output7337)).val
theorem output7339_def : output7339 = (.seq output7338 output7337) := by
  unfold output7339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7339_skip : Flapjack.WordAlloc.isSkip output7339 = false := by
  rw [output7339_def]
  conv => lhs; cbv
  try rfl
theorem node7339_eq : Flapjack.WordAlloc.removeDeadStructural input7339 value3672 value1 value2 = (output7339, value3674, value1) := by
  rw [input7339_def, output7339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7337_eq]
  dsimp only
  rw [node7338_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3675 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14705 (Flapjack.WordLangAddr.addr 14701 18446744073709551104#64)))).val
theorem input7340_def : input7340 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14705 (Flapjack.WordLangAddr.addr 14701 18446744073709551104#64))) := by
  unfold input7340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14705 (Flapjack.WordLangAddr.addr 14701 18446744073709551104#64)))).val
theorem output7340_def : output7340 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14705 (Flapjack.WordLangAddr.addr 14701 18446744073709551104#64))) := by
  unfold output7340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7340_skip : Flapjack.WordAlloc.isSkip output7340 = false := by
  rw [output7340_def]
  conv => lhs; cbv
  try rfl
theorem node7340_eq : Flapjack.WordAlloc.removeDeadStructural input7340 value3674 value1 value2 = (output7340, value3675, value1) := by
  rw [input7340_def, output7340_def]
  try (conv => lhs; cbv)
  try rfl

def value3676 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14701 14697)).val
theorem input7341_def : input7341 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14701 14697) := by
  unfold input7341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14701 14697)).val
theorem output7341_def : output7341 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14701 14697) := by
  unfold output7341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7341_skip : Flapjack.WordAlloc.isSkip output7341 = false := by
  rw [output7341_def]
  conv => lhs; cbv
  try rfl
theorem node7341_eq : Flapjack.WordAlloc.removeDeadStructural input7341 value3675 value1 value2 = (output7341, value3676, value1) := by
  rw [input7341_def, output7341_def]
  try (conv => lhs; cbv)
  try rfl

def value3677 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14697 14693 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7342_def : input7342 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14697 14693 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14697 14693 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7342_def : output7342 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14697 14693 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7342_skip : Flapjack.WordAlloc.isSkip output7342 = false := by
  rw [output7342_def]
  conv => lhs; cbv
  try rfl
theorem node7342_eq : Flapjack.WordAlloc.removeDeadStructural input7342 value3676 value1 value2 = (output7342, value3677, value1) := by
  rw [input7342_def, output7342_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14693 Flapjack.WordStore.heapLength)).val
theorem input7343_def : input7343 = (Flapjack.WordLangProgHOL.get 14693 Flapjack.WordStore.heapLength) := by
  unfold input7343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14693 Flapjack.WordStore.heapLength)).val
theorem output7343_def : output7343 = (Flapjack.WordLangProgHOL.get 14693 Flapjack.WordStore.heapLength) := by
  unfold output7343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7343_skip : Flapjack.WordAlloc.isSkip output7343 = false := by
  rw [output7343_def]
  conv => lhs; cbv
  try rfl
theorem node7343_eq : Flapjack.WordAlloc.removeDeadStructural input7343 value3677 value1 value2 = (output7343, value5, value1) := by
  rw [input7343_def, output7343_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7343 input7342)).val
theorem input7344_def : input7344 = (.seq input7343 input7342) := by
  unfold input7344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7343 output7342)).val
theorem output7344_def : output7344 = (.seq output7343 output7342) := by
  unfold output7344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7344_skip : Flapjack.WordAlloc.isSkip output7344 = false := by
  rw [output7344_def]
  conv => lhs; cbv
  try rfl
theorem node7344_eq : Flapjack.WordAlloc.removeDeadStructural input7344 value3676 value1 value2 = (output7344, value5, value1) := by
  rw [input7344_def, output7344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7342_eq]
  dsimp only
  rw [node7343_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7344 input7341)).val
theorem input7345_def : input7345 = (.seq input7344 input7341) := by
  unfold input7345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7344 output7341)).val
theorem output7345_def : output7345 = (.seq output7344 output7341) := by
  unfold output7345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7345_skip : Flapjack.WordAlloc.isSkip output7345 = false := by
  rw [output7345_def]
  conv => lhs; cbv
  try rfl
theorem node7345_eq : Flapjack.WordAlloc.removeDeadStructural input7345 value3675 value1 value2 = (output7345, value5, value1) := by
  rw [input7345_def, output7345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7341_eq]
  dsimp only
  rw [node7344_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7345 input7340)).val
theorem input7346_def : input7346 = (.seq input7345 input7340) := by
  unfold input7346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7345 output7340)).val
theorem output7346_def : output7346 = (.seq output7345 output7340) := by
  unfold output7346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7346_skip : Flapjack.WordAlloc.isSkip output7346 = false := by
  rw [output7346_def]
  conv => lhs; cbv
  try rfl
theorem node7346_eq : Flapjack.WordAlloc.removeDeadStructural input7346 value3674 value1 value2 = (output7346, value5, value1) := by
  rw [input7346_def, output7346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7340_eq]
  dsimp only
  rw [node7345_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7346 input7339)).val
theorem input7347_def : input7347 = (.seq input7346 input7339) := by
  unfold input7347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7346 output7339)).val
theorem output7347_def : output7347 = (.seq output7346 output7339) := by
  unfold output7347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7347_skip : Flapjack.WordAlloc.isSkip output7347 = false := by
  rw [output7347_def]
  conv => lhs; cbv
  try rfl
theorem node7347_eq : Flapjack.WordAlloc.removeDeadStructural input7347 value3672 value1 value2 = (output7347, value5, value1) := by
  rw [input7347_def, output7347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7339_eq]
  dsimp only
  rw [node7346_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3678 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14685 (Flapjack.WordLangAddr.addr 14689 0#64)))).val
theorem input7348_def : input7348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14685 (Flapjack.WordLangAddr.addr 14689 0#64))) := by
  unfold input7348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14685 (Flapjack.WordLangAddr.addr 14689 0#64)))).val
theorem output7348_def : output7348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14685 (Flapjack.WordLangAddr.addr 14689 0#64))) := by
  unfold output7348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7348_skip : Flapjack.WordAlloc.isSkip output7348 = false := by
  rw [output7348_def]
  conv => lhs; cbv
  try rfl
theorem node7348_eq : Flapjack.WordAlloc.removeDeadStructural input7348 value5 value1 value2 = (output7348, value3678, value1) := by
  rw [input7348_def, output7348_def]
  try (conv => lhs; cbv)
  try rfl

def value3679 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14689, 14677)])).val
theorem input7349_def : input7349 = (Flapjack.WordLangProgHOL.move 0 [(14689, 14677)]) := by
  unfold input7349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14689, 14677)])).val
theorem output7349_def : output7349 = (Flapjack.WordLangProgHOL.move 0 [(14689, 14677)]) := by
  unfold output7349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7349_skip : Flapjack.WordAlloc.isSkip output7349 = false := by
  rw [output7349_def]
  conv => lhs; cbv
  try rfl
theorem node7349_eq : Flapjack.WordAlloc.removeDeadStructural input7349 value3678 value1 value2 = (output7349, value3679, value1) := by
  rw [input7349_def, output7349_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7349 input7348)).val
theorem input7350_def : input7350 = (.seq input7349 input7348) := by
  unfold input7350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7349 output7348)).val
theorem output7350_def : output7350 = (.seq output7349 output7348) := by
  unfold output7350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7350_skip : Flapjack.WordAlloc.isSkip output7350 = false := by
  rw [output7350_def]
  conv => lhs; cbv
  try rfl
theorem node7350_eq : Flapjack.WordAlloc.removeDeadStructural input7350 value5 value1 value2 = (output7350, value3679, value1) := by
  rw [input7350_def, output7350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7348_eq]
  dsimp only
  rw [node7349_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3680 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14685 475233659467912251#64))).val
theorem input7351_def : input7351 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14685 475233659467912251#64)) := by
  unfold input7351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14685 475233659467912251#64))).val
theorem output7351_def : output7351 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14685 475233659467912251#64)) := by
  unfold output7351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7351_skip : Flapjack.WordAlloc.isSkip output7351 = false := by
  rw [output7351_def]
  conv => lhs; cbv
  try rfl
theorem node7351_eq : Flapjack.WordAlloc.removeDeadStructural input7351 value3679 value1 value2 = (output7351, value3680, value1) := by
  rw [input7351_def, output7351_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14681 475233659467912251#64))).val
theorem input7352_def : input7352 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14681 475233659467912251#64)) := by
  unfold input7352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7352_def : output7352 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7352_skip : Flapjack.WordAlloc.isSkip output7352 = true := by
  rw [output7352_def]
  conv => lhs; cbv
  try rfl
theorem node7352_eq : Flapjack.WordAlloc.removeDeadStructural input7352 value3680 value1 value2 = (output7352, value3680, value1) := by
  rw [input7352_def, output7352_def]
  try (conv => lhs; cbv)
  try rfl

def value3681 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14677 14669 (Flapjack.WordRegImm.reg 14673))))).val
theorem input7353_def : input7353 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14677 14669 (Flapjack.WordRegImm.reg 14673)))) := by
  unfold input7353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14677 14669 (Flapjack.WordRegImm.reg 14673))))).val
theorem output7353_def : output7353 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14677 14669 (Flapjack.WordRegImm.reg 14673)))) := by
  unfold output7353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7353_skip : Flapjack.WordAlloc.isSkip output7353 = false := by
  rw [output7353_def]
  conv => lhs; cbv
  try rfl
theorem node7353_eq : Flapjack.WordAlloc.removeDeadStructural input7353 value3680 value1 value2 = (output7353, value3681, value1) := by
  rw [input7353_def, output7353_def]
  try (conv => lhs; cbv)
  try rfl

def value3682 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14673 3456#64))).val
theorem input7354_def : input7354 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14673 3456#64)) := by
  unfold input7354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14673 3456#64))).val
theorem output7354_def : output7354 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14673 3456#64)) := by
  unfold output7354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7354_skip : Flapjack.WordAlloc.isSkip output7354 = false := by
  rw [output7354_def]
  conv => lhs; cbv
  try rfl
theorem node7354_eq : Flapjack.WordAlloc.removeDeadStructural input7354 value3681 value1 value2 = (output7354, value3682, value1) := by
  rw [input7354_def, output7354_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7354 input7353)).val
theorem input7355_def : input7355 = (.seq input7354 input7353) := by
  unfold input7355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7354 output7353)).val
theorem output7355_def : output7355 = (.seq output7354 output7353) := by
  unfold output7355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7355_skip : Flapjack.WordAlloc.isSkip output7355 = false := by
  rw [output7355_def]
  conv => lhs; cbv
  try rfl
theorem node7355_eq : Flapjack.WordAlloc.removeDeadStructural input7355 value3680 value1 value2 = (output7355, value3682, value1) := by
  rw [input7355_def, output7355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7353_eq]
  dsimp only
  rw [node7354_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3683 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14669 (Flapjack.WordLangAddr.addr 14665 18446744073709551104#64)))).val
theorem input7356_def : input7356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14669 (Flapjack.WordLangAddr.addr 14665 18446744073709551104#64))) := by
  unfold input7356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14669 (Flapjack.WordLangAddr.addr 14665 18446744073709551104#64)))).val
theorem output7356_def : output7356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14669 (Flapjack.WordLangAddr.addr 14665 18446744073709551104#64))) := by
  unfold output7356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7356_skip : Flapjack.WordAlloc.isSkip output7356 = false := by
  rw [output7356_def]
  conv => lhs; cbv
  try rfl
theorem node7356_eq : Flapjack.WordAlloc.removeDeadStructural input7356 value3682 value1 value2 = (output7356, value3683, value1) := by
  rw [input7356_def, output7356_def]
  try (conv => lhs; cbv)
  try rfl

def value3684 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14665 14661)).val
theorem input7357_def : input7357 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14665 14661) := by
  unfold input7357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14665 14661)).val
theorem output7357_def : output7357 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14665 14661) := by
  unfold output7357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7357_skip : Flapjack.WordAlloc.isSkip output7357 = false := by
  rw [output7357_def]
  conv => lhs; cbv
  try rfl
theorem node7357_eq : Flapjack.WordAlloc.removeDeadStructural input7357 value3683 value1 value2 = (output7357, value3684, value1) := by
  rw [input7357_def, output7357_def]
  try (conv => lhs; cbv)
  try rfl

def value3685 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14661 14657 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7358_def : input7358 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14661 14657 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14661 14657 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7358_def : output7358 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14661 14657 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7358_skip : Flapjack.WordAlloc.isSkip output7358 = false := by
  rw [output7358_def]
  conv => lhs; cbv
  try rfl
theorem node7358_eq : Flapjack.WordAlloc.removeDeadStructural input7358 value3684 value1 value2 = (output7358, value3685, value1) := by
  rw [input7358_def, output7358_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14657 Flapjack.WordStore.heapLength)).val
theorem input7359_def : input7359 = (Flapjack.WordLangProgHOL.get 14657 Flapjack.WordStore.heapLength) := by
  unfold input7359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14657 Flapjack.WordStore.heapLength)).val
theorem output7359_def : output7359 = (Flapjack.WordLangProgHOL.get 14657 Flapjack.WordStore.heapLength) := by
  unfold output7359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7359_skip : Flapjack.WordAlloc.isSkip output7359 = false := by
  rw [output7359_def]
  conv => lhs; cbv
  try rfl
theorem node7359_eq : Flapjack.WordAlloc.removeDeadStructural input7359 value3685 value1 value2 = (output7359, value5, value1) := by
  rw [input7359_def, output7359_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7359 input7358)).val
theorem input7360_def : input7360 = (.seq input7359 input7358) := by
  unfold input7360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7359 output7358)).val
theorem output7360_def : output7360 = (.seq output7359 output7358) := by
  unfold output7360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7360_skip : Flapjack.WordAlloc.isSkip output7360 = false := by
  rw [output7360_def]
  conv => lhs; cbv
  try rfl
theorem node7360_eq : Flapjack.WordAlloc.removeDeadStructural input7360 value3684 value1 value2 = (output7360, value5, value1) := by
  rw [input7360_def, output7360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7358_eq]
  dsimp only
  rw [node7359_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7360 input7357)).val
theorem input7361_def : input7361 = (.seq input7360 input7357) := by
  unfold input7361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7360 output7357)).val
theorem output7361_def : output7361 = (.seq output7360 output7357) := by
  unfold output7361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7361_skip : Flapjack.WordAlloc.isSkip output7361 = false := by
  rw [output7361_def]
  conv => lhs; cbv
  try rfl
theorem node7361_eq : Flapjack.WordAlloc.removeDeadStructural input7361 value3683 value1 value2 = (output7361, value5, value1) := by
  rw [input7361_def, output7361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7357_eq]
  dsimp only
  rw [node7360_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7361 input7356)).val
theorem input7362_def : input7362 = (.seq input7361 input7356) := by
  unfold input7362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7361 output7356)).val
theorem output7362_def : output7362 = (.seq output7361 output7356) := by
  unfold output7362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7362_skip : Flapjack.WordAlloc.isSkip output7362 = false := by
  rw [output7362_def]
  conv => lhs; cbv
  try rfl
theorem node7362_eq : Flapjack.WordAlloc.removeDeadStructural input7362 value3682 value1 value2 = (output7362, value5, value1) := by
  rw [input7362_def, output7362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7356_eq]
  dsimp only
  rw [node7361_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7362 input7355)).val
theorem input7363_def : input7363 = (.seq input7362 input7355) := by
  unfold input7363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7362 output7355)).val
theorem output7363_def : output7363 = (.seq output7362 output7355) := by
  unfold output7363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7363_skip : Flapjack.WordAlloc.isSkip output7363 = false := by
  rw [output7363_def]
  conv => lhs; cbv
  try rfl
theorem node7363_eq : Flapjack.WordAlloc.removeDeadStructural input7363 value3680 value1 value2 = (output7363, value5, value1) := by
  rw [input7363_def, output7363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7355_eq]
  dsimp only
  rw [node7362_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3686 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14649 (Flapjack.WordLangAddr.addr 14653 0#64)))).val
theorem input7364_def : input7364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14649 (Flapjack.WordLangAddr.addr 14653 0#64))) := by
  unfold input7364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14649 (Flapjack.WordLangAddr.addr 14653 0#64)))).val
theorem output7364_def : output7364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14649 (Flapjack.WordLangAddr.addr 14653 0#64))) := by
  unfold output7364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7364_skip : Flapjack.WordAlloc.isSkip output7364 = false := by
  rw [output7364_def]
  conv => lhs; cbv
  try rfl
theorem node7364_eq : Flapjack.WordAlloc.removeDeadStructural input7364 value5 value1 value2 = (output7364, value3686, value1) := by
  rw [input7364_def, output7364_def]
  try (conv => lhs; cbv)
  try rfl

def value3687 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14653, 14641)])).val
theorem input7365_def : input7365 = (Flapjack.WordLangProgHOL.move 0 [(14653, 14641)]) := by
  unfold input7365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14653, 14641)])).val
theorem output7365_def : output7365 = (Flapjack.WordLangProgHOL.move 0 [(14653, 14641)]) := by
  unfold output7365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7365_skip : Flapjack.WordAlloc.isSkip output7365 = false := by
  rw [output7365_def]
  conv => lhs; cbv
  try rfl
theorem node7365_eq : Flapjack.WordAlloc.removeDeadStructural input7365 value3686 value1 value2 = (output7365, value3687, value1) := by
  rw [input7365_def, output7365_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7365 input7364)).val
theorem input7366_def : input7366 = (.seq input7365 input7364) := by
  unfold input7366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7365 output7364)).val
theorem output7366_def : output7366 = (.seq output7365 output7364) := by
  unfold output7366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7366_skip : Flapjack.WordAlloc.isSkip output7366 = false := by
  rw [output7366_def]
  conv => lhs; cbv
  try rfl
theorem node7366_eq : Flapjack.WordAlloc.removeDeadStructural input7366 value5 value1 value2 = (output7366, value3687, value1) := by
  rw [input7366_def, output7366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7364_eq]
  dsimp only
  rw [node7365_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3688 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14649 11186783513499056751#64))).val
theorem input7367_def : input7367 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14649 11186783513499056751#64)) := by
  unfold input7367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14649 11186783513499056751#64))).val
theorem output7367_def : output7367 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14649 11186783513499056751#64)) := by
  unfold output7367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7367_skip : Flapjack.WordAlloc.isSkip output7367 = false := by
  rw [output7367_def]
  conv => lhs; cbv
  try rfl
theorem node7367_eq : Flapjack.WordAlloc.removeDeadStructural input7367 value3687 value1 value2 = (output7367, value3688, value1) := by
  rw [input7367_def, output7367_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14645 11186783513499056751#64))).val
theorem input7368_def : input7368 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14645 11186783513499056751#64)) := by
  unfold input7368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7368_def : output7368 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7368_skip : Flapjack.WordAlloc.isSkip output7368 = true := by
  rw [output7368_def]
  conv => lhs; cbv
  try rfl
theorem node7368_eq : Flapjack.WordAlloc.removeDeadStructural input7368 value3688 value1 value2 = (output7368, value3688, value1) := by
  rw [input7368_def, output7368_def]
  try (conv => lhs; cbv)
  try rfl

def value3689 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14641 14633 (Flapjack.WordRegImm.reg 14637))))).val
theorem input7369_def : input7369 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14641 14633 (Flapjack.WordRegImm.reg 14637)))) := by
  unfold input7369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14641 14633 (Flapjack.WordRegImm.reg 14637))))).val
theorem output7369_def : output7369 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14641 14633 (Flapjack.WordRegImm.reg 14637)))) := by
  unfold output7369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7369_skip : Flapjack.WordAlloc.isSkip output7369 = false := by
  rw [output7369_def]
  conv => lhs; cbv
  try rfl
theorem node7369_eq : Flapjack.WordAlloc.removeDeadStructural input7369 value3688 value1 value2 = (output7369, value3689, value1) := by
  rw [input7369_def, output7369_def]
  try (conv => lhs; cbv)
  try rfl

def value3690 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14637 3448#64))).val
theorem input7370_def : input7370 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14637 3448#64)) := by
  unfold input7370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14637 3448#64))).val
theorem output7370_def : output7370 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14637 3448#64)) := by
  unfold output7370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7370_skip : Flapjack.WordAlloc.isSkip output7370 = false := by
  rw [output7370_def]
  conv => lhs; cbv
  try rfl
theorem node7370_eq : Flapjack.WordAlloc.removeDeadStructural input7370 value3689 value1 value2 = (output7370, value3690, value1) := by
  rw [input7370_def, output7370_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7370 input7369)).val
theorem input7371_def : input7371 = (.seq input7370 input7369) := by
  unfold input7371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7370 output7369)).val
theorem output7371_def : output7371 = (.seq output7370 output7369) := by
  unfold output7371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7371_skip : Flapjack.WordAlloc.isSkip output7371 = false := by
  rw [output7371_def]
  conv => lhs; cbv
  try rfl
theorem node7371_eq : Flapjack.WordAlloc.removeDeadStructural input7371 value3688 value1 value2 = (output7371, value3690, value1) := by
  rw [input7371_def, output7371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7369_eq]
  dsimp only
  rw [node7370_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3691 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14633 (Flapjack.WordLangAddr.addr 14629 18446744073709551104#64)))).val
theorem input7372_def : input7372 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14633 (Flapjack.WordLangAddr.addr 14629 18446744073709551104#64))) := by
  unfold input7372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14633 (Flapjack.WordLangAddr.addr 14629 18446744073709551104#64)))).val
theorem output7372_def : output7372 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14633 (Flapjack.WordLangAddr.addr 14629 18446744073709551104#64))) := by
  unfold output7372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7372_skip : Flapjack.WordAlloc.isSkip output7372 = false := by
  rw [output7372_def]
  conv => lhs; cbv
  try rfl
theorem node7372_eq : Flapjack.WordAlloc.removeDeadStructural input7372 value3690 value1 value2 = (output7372, value3691, value1) := by
  rw [input7372_def, output7372_def]
  try (conv => lhs; cbv)
  try rfl

def value3692 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14629 14625)).val
theorem input7373_def : input7373 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14629 14625) := by
  unfold input7373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14629 14625)).val
theorem output7373_def : output7373 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14629 14625) := by
  unfold output7373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7373_skip : Flapjack.WordAlloc.isSkip output7373 = false := by
  rw [output7373_def]
  conv => lhs; cbv
  try rfl
theorem node7373_eq : Flapjack.WordAlloc.removeDeadStructural input7373 value3691 value1 value2 = (output7373, value3692, value1) := by
  rw [input7373_def, output7373_def]
  try (conv => lhs; cbv)
  try rfl

def value3693 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14625 14621 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7374_def : input7374 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14625 14621 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14625 14621 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7374_def : output7374 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14625 14621 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7374_skip : Flapjack.WordAlloc.isSkip output7374 = false := by
  rw [output7374_def]
  conv => lhs; cbv
  try rfl
theorem node7374_eq : Flapjack.WordAlloc.removeDeadStructural input7374 value3692 value1 value2 = (output7374, value3693, value1) := by
  rw [input7374_def, output7374_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14621 Flapjack.WordStore.heapLength)).val
theorem input7375_def : input7375 = (Flapjack.WordLangProgHOL.get 14621 Flapjack.WordStore.heapLength) := by
  unfold input7375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14621 Flapjack.WordStore.heapLength)).val
theorem output7375_def : output7375 = (Flapjack.WordLangProgHOL.get 14621 Flapjack.WordStore.heapLength) := by
  unfold output7375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7375_skip : Flapjack.WordAlloc.isSkip output7375 = false := by
  rw [output7375_def]
  conv => lhs; cbv
  try rfl
theorem node7375_eq : Flapjack.WordAlloc.removeDeadStructural input7375 value3693 value1 value2 = (output7375, value5, value1) := by
  rw [input7375_def, output7375_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7375 input7374)).val
theorem input7376_def : input7376 = (.seq input7375 input7374) := by
  unfold input7376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7375 output7374)).val
theorem output7376_def : output7376 = (.seq output7375 output7374) := by
  unfold output7376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7376_skip : Flapjack.WordAlloc.isSkip output7376 = false := by
  rw [output7376_def]
  conv => lhs; cbv
  try rfl
theorem node7376_eq : Flapjack.WordAlloc.removeDeadStructural input7376 value3692 value1 value2 = (output7376, value5, value1) := by
  rw [input7376_def, output7376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7374_eq]
  dsimp only
  rw [node7375_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7376 input7373)).val
theorem input7377_def : input7377 = (.seq input7376 input7373) := by
  unfold input7377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7376 output7373)).val
theorem output7377_def : output7377 = (.seq output7376 output7373) := by
  unfold output7377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7377_skip : Flapjack.WordAlloc.isSkip output7377 = false := by
  rw [output7377_def]
  conv => lhs; cbv
  try rfl
theorem node7377_eq : Flapjack.WordAlloc.removeDeadStructural input7377 value3691 value1 value2 = (output7377, value5, value1) := by
  rw [input7377_def, output7377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7373_eq]
  dsimp only
  rw [node7376_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7377 input7372)).val
theorem input7378_def : input7378 = (.seq input7377 input7372) := by
  unfold input7378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7377 output7372)).val
theorem output7378_def : output7378 = (.seq output7377 output7372) := by
  unfold output7378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7378_skip : Flapjack.WordAlloc.isSkip output7378 = false := by
  rw [output7378_def]
  conv => lhs; cbv
  try rfl
theorem node7378_eq : Flapjack.WordAlloc.removeDeadStructural input7378 value3690 value1 value2 = (output7378, value5, value1) := by
  rw [input7378_def, output7378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7372_eq]
  dsimp only
  rw [node7377_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7378 input7371)).val
theorem input7379_def : input7379 = (.seq input7378 input7371) := by
  unfold input7379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7378 output7371)).val
theorem output7379_def : output7379 = (.seq output7378 output7371) := by
  unfold output7379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7379_skip : Flapjack.WordAlloc.isSkip output7379 = false := by
  rw [output7379_def]
  conv => lhs; cbv
  try rfl
theorem node7379_eq : Flapjack.WordAlloc.removeDeadStructural input7379 value3688 value1 value2 = (output7379, value5, value1) := by
  rw [input7379_def, output7379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7371_eq]
  dsimp only
  rw [node7378_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3694 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14613 (Flapjack.WordLangAddr.addr 14617 0#64)))).val
theorem input7380_def : input7380 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14613 (Flapjack.WordLangAddr.addr 14617 0#64))) := by
  unfold input7380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14613 (Flapjack.WordLangAddr.addr 14617 0#64)))).val
theorem output7380_def : output7380 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14613 (Flapjack.WordLangAddr.addr 14617 0#64))) := by
  unfold output7380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7380_skip : Flapjack.WordAlloc.isSkip output7380 = false := by
  rw [output7380_def]
  conv => lhs; cbv
  try rfl
theorem node7380_eq : Flapjack.WordAlloc.removeDeadStructural input7380 value5 value1 value2 = (output7380, value3694, value1) := by
  rw [input7380_def, output7380_def]
  try (conv => lhs; cbv)
  try rfl

def value3695 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14617, 14605)])).val
theorem input7381_def : input7381 = (Flapjack.WordLangProgHOL.move 0 [(14617, 14605)]) := by
  unfold input7381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14617, 14605)])).val
theorem output7381_def : output7381 = (Flapjack.WordLangProgHOL.move 0 [(14617, 14605)]) := by
  unfold output7381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7381_skip : Flapjack.WordAlloc.isSkip output7381 = false := by
  rw [output7381_def]
  conv => lhs; cbv
  try rfl
theorem node7381_eq : Flapjack.WordAlloc.removeDeadStructural input7381 value3694 value1 value2 = (output7381, value3695, value1) := by
  rw [input7381_def, output7381_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7381 input7380)).val
theorem input7382_def : input7382 = (.seq input7381 input7380) := by
  unfold input7382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7381 output7380)).val
theorem output7382_def : output7382 = (.seq output7381 output7380) := by
  unfold output7382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7382_skip : Flapjack.WordAlloc.isSkip output7382 = false := by
  rw [output7382_def]
  conv => lhs; cbv
  try rfl
theorem node7382_eq : Flapjack.WordAlloc.removeDeadStructural input7382 value5 value1 value2 = (output7382, value3695, value1) := by
  rw [input7382_def, output7382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7380_eq]
  dsimp only
  rw [node7381_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3696 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14613 3147922594245844016#64))).val
theorem input7383_def : input7383 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14613 3147922594245844016#64)) := by
  unfold input7383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14613 3147922594245844016#64))).val
theorem output7383_def : output7383 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14613 3147922594245844016#64)) := by
  unfold output7383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7383_skip : Flapjack.WordAlloc.isSkip output7383 = false := by
  rw [output7383_def]
  conv => lhs; cbv
  try rfl
theorem node7383_eq : Flapjack.WordAlloc.removeDeadStructural input7383 value3695 value1 value2 = (output7383, value3696, value1) := by
  rw [input7383_def, output7383_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14609 3147922594245844016#64))).val
theorem input7384_def : input7384 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14609 3147922594245844016#64)) := by
  unfold input7384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7384_def : output7384 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7384_skip : Flapjack.WordAlloc.isSkip output7384 = true := by
  rw [output7384_def]
  conv => lhs; cbv
  try rfl
theorem node7384_eq : Flapjack.WordAlloc.removeDeadStructural input7384 value3696 value1 value2 = (output7384, value3696, value1) := by
  rw [input7384_def, output7384_def]
  try (conv => lhs; cbv)
  try rfl

def value3697 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14605 14597 (Flapjack.WordRegImm.reg 14601))))).val
theorem input7385_def : input7385 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14605 14597 (Flapjack.WordRegImm.reg 14601)))) := by
  unfold input7385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14605 14597 (Flapjack.WordRegImm.reg 14601))))).val
theorem output7385_def : output7385 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14605 14597 (Flapjack.WordRegImm.reg 14601)))) := by
  unfold output7385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7385_skip : Flapjack.WordAlloc.isSkip output7385 = false := by
  rw [output7385_def]
  conv => lhs; cbv
  try rfl
theorem node7385_eq : Flapjack.WordAlloc.removeDeadStructural input7385 value3696 value1 value2 = (output7385, value3697, value1) := by
  rw [input7385_def, output7385_def]
  try (conv => lhs; cbv)
  try rfl

def value3698 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14601 3440#64))).val
theorem input7386_def : input7386 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14601 3440#64)) := by
  unfold input7386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14601 3440#64))).val
theorem output7386_def : output7386 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14601 3440#64)) := by
  unfold output7386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7386_skip : Flapjack.WordAlloc.isSkip output7386 = false := by
  rw [output7386_def]
  conv => lhs; cbv
  try rfl
theorem node7386_eq : Flapjack.WordAlloc.removeDeadStructural input7386 value3697 value1 value2 = (output7386, value3698, value1) := by
  rw [input7386_def, output7386_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7386 input7385)).val
theorem input7387_def : input7387 = (.seq input7386 input7385) := by
  unfold input7387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7386 output7385)).val
theorem output7387_def : output7387 = (.seq output7386 output7385) := by
  unfold output7387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7387_skip : Flapjack.WordAlloc.isSkip output7387 = false := by
  rw [output7387_def]
  conv => lhs; cbv
  try rfl
theorem node7387_eq : Flapjack.WordAlloc.removeDeadStructural input7387 value3696 value1 value2 = (output7387, value3698, value1) := by
  rw [input7387_def, output7387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7385_eq]
  dsimp only
  rw [node7386_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3699 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14597 (Flapjack.WordLangAddr.addr 14593 18446744073709551104#64)))).val
theorem input7388_def : input7388 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14597 (Flapjack.WordLangAddr.addr 14593 18446744073709551104#64))) := by
  unfold input7388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14597 (Flapjack.WordLangAddr.addr 14593 18446744073709551104#64)))).val
theorem output7388_def : output7388 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14597 (Flapjack.WordLangAddr.addr 14593 18446744073709551104#64))) := by
  unfold output7388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7388_skip : Flapjack.WordAlloc.isSkip output7388 = false := by
  rw [output7388_def]
  conv => lhs; cbv
  try rfl
theorem node7388_eq : Flapjack.WordAlloc.removeDeadStructural input7388 value3698 value1 value2 = (output7388, value3699, value1) := by
  rw [input7388_def, output7388_def]
  try (conv => lhs; cbv)
  try rfl

def value3700 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14593 14589)).val
theorem input7389_def : input7389 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14593 14589) := by
  unfold input7389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14593 14589)).val
theorem output7389_def : output7389 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14593 14589) := by
  unfold output7389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7389_skip : Flapjack.WordAlloc.isSkip output7389 = false := by
  rw [output7389_def]
  conv => lhs; cbv
  try rfl
theorem node7389_eq : Flapjack.WordAlloc.removeDeadStructural input7389 value3699 value1 value2 = (output7389, value3700, value1) := by
  rw [input7389_def, output7389_def]
  try (conv => lhs; cbv)
  try rfl

def value3701 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14589 14585 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7390_def : input7390 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14589 14585 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14589 14585 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7390_def : output7390 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14589 14585 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7390_skip : Flapjack.WordAlloc.isSkip output7390 = false := by
  rw [output7390_def]
  conv => lhs; cbv
  try rfl
theorem node7390_eq : Flapjack.WordAlloc.removeDeadStructural input7390 value3700 value1 value2 = (output7390, value3701, value1) := by
  rw [input7390_def, output7390_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14585 Flapjack.WordStore.heapLength)).val
theorem input7391_def : input7391 = (Flapjack.WordLangProgHOL.get 14585 Flapjack.WordStore.heapLength) := by
  unfold input7391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14585 Flapjack.WordStore.heapLength)).val
theorem output7391_def : output7391 = (Flapjack.WordLangProgHOL.get 14585 Flapjack.WordStore.heapLength) := by
  unfold output7391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7391_skip : Flapjack.WordAlloc.isSkip output7391 = false := by
  rw [output7391_def]
  conv => lhs; cbv
  try rfl
theorem node7391_eq : Flapjack.WordAlloc.removeDeadStructural input7391 value3701 value1 value2 = (output7391, value5, value1) := by
  rw [input7391_def, output7391_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7391 input7390)).val
theorem input7392_def : input7392 = (.seq input7391 input7390) := by
  unfold input7392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7391 output7390)).val
theorem output7392_def : output7392 = (.seq output7391 output7390) := by
  unfold output7392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7392_skip : Flapjack.WordAlloc.isSkip output7392 = false := by
  rw [output7392_def]
  conv => lhs; cbv
  try rfl
theorem node7392_eq : Flapjack.WordAlloc.removeDeadStructural input7392 value3700 value1 value2 = (output7392, value5, value1) := by
  rw [input7392_def, output7392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7390_eq]
  dsimp only
  rw [node7391_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7392 input7389)).val
theorem input7393_def : input7393 = (.seq input7392 input7389) := by
  unfold input7393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7392 output7389)).val
theorem output7393_def : output7393 = (.seq output7392 output7389) := by
  unfold output7393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7393_skip : Flapjack.WordAlloc.isSkip output7393 = false := by
  rw [output7393_def]
  conv => lhs; cbv
  try rfl
theorem node7393_eq : Flapjack.WordAlloc.removeDeadStructural input7393 value3699 value1 value2 = (output7393, value5, value1) := by
  rw [input7393_def, output7393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7389_eq]
  dsimp only
  rw [node7392_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7393 input7388)).val
theorem input7394_def : input7394 = (.seq input7393 input7388) := by
  unfold input7394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7393 output7388)).val
theorem output7394_def : output7394 = (.seq output7393 output7388) := by
  unfold output7394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7394_skip : Flapjack.WordAlloc.isSkip output7394 = false := by
  rw [output7394_def]
  conv => lhs; cbv
  try rfl
theorem node7394_eq : Flapjack.WordAlloc.removeDeadStructural input7394 value3698 value1 value2 = (output7394, value5, value1) := by
  rw [input7394_def, output7394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7388_eq]
  dsimp only
  rw [node7393_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7394 input7387)).val
theorem input7395_def : input7395 = (.seq input7394 input7387) := by
  unfold input7395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7394 output7387)).val
theorem output7395_def : output7395 = (.seq output7394 output7387) := by
  unfold output7395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7395_skip : Flapjack.WordAlloc.isSkip output7395 = false := by
  rw [output7395_def]
  conv => lhs; cbv
  try rfl
theorem node7395_eq : Flapjack.WordAlloc.removeDeadStructural input7395 value3696 value1 value2 = (output7395, value5, value1) := by
  rw [input7395_def, output7395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7387_eq]
  dsimp only
  rw [node7394_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3702 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14577 (Flapjack.WordLangAddr.addr 14581 0#64)))).val
theorem input7396_def : input7396 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14577 (Flapjack.WordLangAddr.addr 14581 0#64))) := by
  unfold input7396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14577 (Flapjack.WordLangAddr.addr 14581 0#64)))).val
theorem output7396_def : output7396 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14577 (Flapjack.WordLangAddr.addr 14581 0#64))) := by
  unfold output7396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7396_skip : Flapjack.WordAlloc.isSkip output7396 = false := by
  rw [output7396_def]
  conv => lhs; cbv
  try rfl
theorem node7396_eq : Flapjack.WordAlloc.removeDeadStructural input7396 value5 value1 value2 = (output7396, value3702, value1) := by
  rw [input7396_def, output7396_def]
  try (conv => lhs; cbv)
  try rfl

def value3703 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14581, 14569)])).val
theorem input7397_def : input7397 = (Flapjack.WordLangProgHOL.move 0 [(14581, 14569)]) := by
  unfold input7397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14581, 14569)])).val
theorem output7397_def : output7397 = (Flapjack.WordLangProgHOL.move 0 [(14581, 14569)]) := by
  unfold output7397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7397_skip : Flapjack.WordAlloc.isSkip output7397 = false := by
  rw [output7397_def]
  conv => lhs; cbv
  try rfl
theorem node7397_eq : Flapjack.WordAlloc.removeDeadStructural input7397 value3702 value1 value2 = (output7397, value3703, value1) := by
  rw [input7397_def, output7397_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7397 input7396)).val
theorem input7398_def : input7398 = (.seq input7397 input7396) := by
  unfold input7398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7397 output7396)).val
theorem output7398_def : output7398 = (.seq output7397 output7396) := by
  unfold output7398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7398_skip : Flapjack.WordAlloc.isSkip output7398 = false := by
  rw [output7398_def]
  conv => lhs; cbv
  try rfl
theorem node7398_eq : Flapjack.WordAlloc.removeDeadStructural input7398 value5 value1 value2 = (output7398, value3703, value1) := by
  rw [input7398_def, output7398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7396_eq]
  dsimp only
  rw [node7397_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3704 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14577 719520515476580427#64))).val
theorem input7399_def : input7399 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14577 719520515476580427#64)) := by
  unfold input7399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14577 719520515476580427#64))).val
theorem output7399_def : output7399 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14577 719520515476580427#64)) := by
  unfold output7399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7399_skip : Flapjack.WordAlloc.isSkip output7399 = false := by
  rw [output7399_def]
  conv => lhs; cbv
  try rfl
theorem node7399_eq : Flapjack.WordAlloc.removeDeadStructural input7399 value3703 value1 value2 = (output7399, value3704, value1) := by
  rw [input7399_def, output7399_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14573 719520515476580427#64))).val
theorem input7400_def : input7400 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14573 719520515476580427#64)) := by
  unfold input7400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7400_def : output7400 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7400_skip : Flapjack.WordAlloc.isSkip output7400 = true := by
  rw [output7400_def]
  conv => lhs; cbv
  try rfl
theorem node7400_eq : Flapjack.WordAlloc.removeDeadStructural input7400 value3704 value1 value2 = (output7400, value3704, value1) := by
  rw [input7400_def, output7400_def]
  try (conv => lhs; cbv)
  try rfl

def value3705 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14569 14561 (Flapjack.WordRegImm.reg 14565))))).val
theorem input7401_def : input7401 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14569 14561 (Flapjack.WordRegImm.reg 14565)))) := by
  unfold input7401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14569 14561 (Flapjack.WordRegImm.reg 14565))))).val
theorem output7401_def : output7401 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14569 14561 (Flapjack.WordRegImm.reg 14565)))) := by
  unfold output7401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7401_skip : Flapjack.WordAlloc.isSkip output7401 = false := by
  rw [output7401_def]
  conv => lhs; cbv
  try rfl
theorem node7401_eq : Flapjack.WordAlloc.removeDeadStructural input7401 value3704 value1 value2 = (output7401, value3705, value1) := by
  rw [input7401_def, output7401_def]
  try (conv => lhs; cbv)
  try rfl

def value3706 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14565 3432#64))).val
theorem input7402_def : input7402 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14565 3432#64)) := by
  unfold input7402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14565 3432#64))).val
theorem output7402_def : output7402 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14565 3432#64)) := by
  unfold output7402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7402_skip : Flapjack.WordAlloc.isSkip output7402 = false := by
  rw [output7402_def]
  conv => lhs; cbv
  try rfl
theorem node7402_eq : Flapjack.WordAlloc.removeDeadStructural input7402 value3705 value1 value2 = (output7402, value3706, value1) := by
  rw [input7402_def, output7402_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7402 input7401)).val
theorem input7403_def : input7403 = (.seq input7402 input7401) := by
  unfold input7403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7402 output7401)).val
theorem output7403_def : output7403 = (.seq output7402 output7401) := by
  unfold output7403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7403_skip : Flapjack.WordAlloc.isSkip output7403 = false := by
  rw [output7403_def]
  conv => lhs; cbv
  try rfl
theorem node7403_eq : Flapjack.WordAlloc.removeDeadStructural input7403 value3704 value1 value2 = (output7403, value3706, value1) := by
  rw [input7403_def, output7403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7401_eq]
  dsimp only
  rw [node7402_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3707 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14561 (Flapjack.WordLangAddr.addr 14557 18446744073709551104#64)))).val
theorem input7404_def : input7404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14561 (Flapjack.WordLangAddr.addr 14557 18446744073709551104#64))) := by
  unfold input7404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14561 (Flapjack.WordLangAddr.addr 14557 18446744073709551104#64)))).val
theorem output7404_def : output7404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14561 (Flapjack.WordLangAddr.addr 14557 18446744073709551104#64))) := by
  unfold output7404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7404_skip : Flapjack.WordAlloc.isSkip output7404 = false := by
  rw [output7404_def]
  conv => lhs; cbv
  try rfl
theorem node7404_eq : Flapjack.WordAlloc.removeDeadStructural input7404 value3706 value1 value2 = (output7404, value3707, value1) := by
  rw [input7404_def, output7404_def]
  try (conv => lhs; cbv)
  try rfl

def value3708 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14557 14553)).val
theorem input7405_def : input7405 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14557 14553) := by
  unfold input7405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14557 14553)).val
theorem output7405_def : output7405 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14557 14553) := by
  unfold output7405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7405_skip : Flapjack.WordAlloc.isSkip output7405 = false := by
  rw [output7405_def]
  conv => lhs; cbv
  try rfl
theorem node7405_eq : Flapjack.WordAlloc.removeDeadStructural input7405 value3707 value1 value2 = (output7405, value3708, value1) := by
  rw [input7405_def, output7405_def]
  try (conv => lhs; cbv)
  try rfl

def value3709 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14553 14549 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7406_def : input7406 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14553 14549 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14553 14549 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7406_def : output7406 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14553 14549 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7406_skip : Flapjack.WordAlloc.isSkip output7406 = false := by
  rw [output7406_def]
  conv => lhs; cbv
  try rfl
theorem node7406_eq : Flapjack.WordAlloc.removeDeadStructural input7406 value3708 value1 value2 = (output7406, value3709, value1) := by
  rw [input7406_def, output7406_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14549 Flapjack.WordStore.heapLength)).val
theorem input7407_def : input7407 = (Flapjack.WordLangProgHOL.get 14549 Flapjack.WordStore.heapLength) := by
  unfold input7407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14549 Flapjack.WordStore.heapLength)).val
theorem output7407_def : output7407 = (Flapjack.WordLangProgHOL.get 14549 Flapjack.WordStore.heapLength) := by
  unfold output7407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7407_skip : Flapjack.WordAlloc.isSkip output7407 = false := by
  rw [output7407_def]
  conv => lhs; cbv
  try rfl
theorem node7407_eq : Flapjack.WordAlloc.removeDeadStructural input7407 value3709 value1 value2 = (output7407, value5, value1) := by
  rw [input7407_def, output7407_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7407 input7406)).val
theorem input7408_def : input7408 = (.seq input7407 input7406) := by
  unfold input7408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7407 output7406)).val
theorem output7408_def : output7408 = (.seq output7407 output7406) := by
  unfold output7408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7408_skip : Flapjack.WordAlloc.isSkip output7408 = false := by
  rw [output7408_def]
  conv => lhs; cbv
  try rfl
theorem node7408_eq : Flapjack.WordAlloc.removeDeadStructural input7408 value3708 value1 value2 = (output7408, value5, value1) := by
  rw [input7408_def, output7408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7406_eq]
  dsimp only
  rw [node7407_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7408 input7405)).val
theorem input7409_def : input7409 = (.seq input7408 input7405) := by
  unfold input7409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7408 output7405)).val
theorem output7409_def : output7409 = (.seq output7408 output7405) := by
  unfold output7409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7409_skip : Flapjack.WordAlloc.isSkip output7409 = false := by
  rw [output7409_def]
  conv => lhs; cbv
  try rfl
theorem node7409_eq : Flapjack.WordAlloc.removeDeadStructural input7409 value3707 value1 value2 = (output7409, value5, value1) := by
  rw [input7409_def, output7409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7405_eq]
  dsimp only
  rw [node7408_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7409 input7404)).val
theorem input7410_def : input7410 = (.seq input7409 input7404) := by
  unfold input7410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7409 output7404)).val
theorem output7410_def : output7410 = (.seq output7409 output7404) := by
  unfold output7410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7410_skip : Flapjack.WordAlloc.isSkip output7410 = false := by
  rw [output7410_def]
  conv => lhs; cbv
  try rfl
theorem node7410_eq : Flapjack.WordAlloc.removeDeadStructural input7410 value3706 value1 value2 = (output7410, value5, value1) := by
  rw [input7410_def, output7410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7404_eq]
  dsimp only
  rw [node7409_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7410 input7403)).val
theorem input7411_def : input7411 = (.seq input7410 input7403) := by
  unfold input7411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7410 output7403)).val
theorem output7411_def : output7411 = (.seq output7410 output7403) := by
  unfold output7411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7411_skip : Flapjack.WordAlloc.isSkip output7411 = false := by
  rw [output7411_def]
  conv => lhs; cbv
  try rfl
theorem node7411_eq : Flapjack.WordAlloc.removeDeadStructural input7411 value3704 value1 value2 = (output7411, value5, value1) := by
  rw [input7411_def, output7411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7403_eq]
  dsimp only
  rw [node7410_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3710 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14541 (Flapjack.WordLangAddr.addr 14545 0#64)))).val
theorem input7412_def : input7412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14541 (Flapjack.WordLangAddr.addr 14545 0#64))) := by
  unfold input7412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14541 (Flapjack.WordLangAddr.addr 14545 0#64)))).val
theorem output7412_def : output7412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14541 (Flapjack.WordLangAddr.addr 14545 0#64))) := by
  unfold output7412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7412_skip : Flapjack.WordAlloc.isSkip output7412 = false := by
  rw [output7412_def]
  conv => lhs; cbv
  try rfl
theorem node7412_eq : Flapjack.WordAlloc.removeDeadStructural input7412 value5 value1 value2 = (output7412, value3710, value1) := by
  rw [input7412_def, output7412_def]
  try (conv => lhs; cbv)
  try rfl

def value3711 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14545, 14533)])).val
theorem input7413_def : input7413 = (Flapjack.WordLangProgHOL.move 0 [(14545, 14533)]) := by
  unfold input7413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(14545, 14533)])).val
theorem output7413_def : output7413 = (Flapjack.WordLangProgHOL.move 0 [(14545, 14533)]) := by
  unfold output7413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7413_skip : Flapjack.WordAlloc.isSkip output7413 = false := by
  rw [output7413_def]
  conv => lhs; cbv
  try rfl
theorem node7413_eq : Flapjack.WordAlloc.removeDeadStructural input7413 value3710 value1 value2 = (output7413, value3711, value1) := by
  rw [input7413_def, output7413_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7413 input7412)).val
theorem input7414_def : input7414 = (.seq input7413 input7412) := by
  unfold input7414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7413 output7412)).val
theorem output7414_def : output7414 = (.seq output7413 output7412) := by
  unfold output7414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7414_skip : Flapjack.WordAlloc.isSkip output7414 = false := by
  rw [output7414_def]
  conv => lhs; cbv
  try rfl
theorem node7414_eq : Flapjack.WordAlloc.removeDeadStructural input7414 value5 value1 value2 = (output7414, value3711, value1) := by
  rw [input7414_def, output7414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7412_eq]
  dsimp only
  rw [node7413_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3712 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14541 16756942182913253819#64))).val
theorem input7415_def : input7415 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14541 16756942182913253819#64)) := by
  unfold input7415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14541 16756942182913253819#64))).val
theorem output7415_def : output7415 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14541 16756942182913253819#64)) := by
  unfold output7415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7415_skip : Flapjack.WordAlloc.isSkip output7415 = false := by
  rw [output7415_def]
  conv => lhs; cbv
  try rfl
theorem node7415_eq : Flapjack.WordAlloc.removeDeadStructural input7415 value3711 value1 value2 = (output7415, value3712, value1) := by
  rw [input7415_def, output7415_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14537 16756942182913253819#64))).val
theorem input7416_def : input7416 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14537 16756942182913253819#64)) := by
  unfold input7416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7416_def : output7416 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7416_skip : Flapjack.WordAlloc.isSkip output7416 = true := by
  rw [output7416_def]
  conv => lhs; cbv
  try rfl
theorem node7416_eq : Flapjack.WordAlloc.removeDeadStructural input7416 value3712 value1 value2 = (output7416, value3712, value1) := by
  rw [input7416_def, output7416_def]
  try (conv => lhs; cbv)
  try rfl

def value3713 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14533 14525 (Flapjack.WordRegImm.reg 14529))))).val
theorem input7417_def : input7417 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14533 14525 (Flapjack.WordRegImm.reg 14529)))) := by
  unfold input7417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14533 14525 (Flapjack.WordRegImm.reg 14529))))).val
theorem output7417_def : output7417 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14533 14525 (Flapjack.WordRegImm.reg 14529)))) := by
  unfold output7417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7417_skip : Flapjack.WordAlloc.isSkip output7417 = false := by
  rw [output7417_def]
  conv => lhs; cbv
  try rfl
theorem node7417_eq : Flapjack.WordAlloc.removeDeadStructural input7417 value3712 value1 value2 = (output7417, value3713, value1) := by
  rw [input7417_def, output7417_def]
  try (conv => lhs; cbv)
  try rfl

def value3714 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14529 3424#64))).val
theorem input7418_def : input7418 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14529 3424#64)) := by
  unfold input7418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14529 3424#64))).val
theorem output7418_def : output7418 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14529 3424#64)) := by
  unfold output7418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7418_skip : Flapjack.WordAlloc.isSkip output7418 = false := by
  rw [output7418_def]
  conv => lhs; cbv
  try rfl
theorem node7418_eq : Flapjack.WordAlloc.removeDeadStructural input7418 value3713 value1 value2 = (output7418, value3714, value1) := by
  rw [input7418_def, output7418_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7418 input7417)).val
theorem input7419_def : input7419 = (.seq input7418 input7417) := by
  unfold input7419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7418 output7417)).val
theorem output7419_def : output7419 = (.seq output7418 output7417) := by
  unfold output7419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7419_skip : Flapjack.WordAlloc.isSkip output7419 = false := by
  rw [output7419_def]
  conv => lhs; cbv
  try rfl
theorem node7419_eq : Flapjack.WordAlloc.removeDeadStructural input7419 value3712 value1 value2 = (output7419, value3714, value1) := by
  rw [input7419_def, output7419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7417_eq]
  dsimp only
  rw [node7418_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3715 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14525 (Flapjack.WordLangAddr.addr 14521 18446744073709551104#64)))).val
theorem input7420_def : input7420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14525 (Flapjack.WordLangAddr.addr 14521 18446744073709551104#64))) := by
  unfold input7420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14525 (Flapjack.WordLangAddr.addr 14521 18446744073709551104#64)))).val
theorem output7420_def : output7420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14525 (Flapjack.WordLangAddr.addr 14521 18446744073709551104#64))) := by
  unfold output7420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7420_skip : Flapjack.WordAlloc.isSkip output7420 = false := by
  rw [output7420_def]
  conv => lhs; cbv
  try rfl
theorem node7420_eq : Flapjack.WordAlloc.removeDeadStructural input7420 value3714 value1 value2 = (output7420, value3715, value1) := by
  rw [input7420_def, output7420_def]
  try (conv => lhs; cbv)
  try rfl

def value3716 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14521 14517)).val
theorem input7421_def : input7421 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14521 14517) := by
  unfold input7421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14521 14517)).val
theorem output7421_def : output7421 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 14521 14517) := by
  unfold output7421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7421_skip : Flapjack.WordAlloc.isSkip output7421 = false := by
  rw [output7421_def]
  conv => lhs; cbv
  try rfl
theorem node7421_eq : Flapjack.WordAlloc.removeDeadStructural input7421 value3715 value1 value2 = (output7421, value3716, value1) := by
  rw [input7421_def, output7421_def]
  try (conv => lhs; cbv)
  try rfl

def value3717 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14517 14513 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7422_def : input7422 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14517 14513 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14517 14513 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7422_def : output7422 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14517 14513 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7422_skip : Flapjack.WordAlloc.isSkip output7422 = false := by
  rw [output7422_def]
  conv => lhs; cbv
  try rfl
theorem node7422_eq : Flapjack.WordAlloc.removeDeadStructural input7422 value3716 value1 value2 = (output7422, value3717, value1) := by
  rw [input7422_def, output7422_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14513 Flapjack.WordStore.heapLength)).val
theorem input7423_def : input7423 = (Flapjack.WordLangProgHOL.get 14513 Flapjack.WordStore.heapLength) := by
  unfold input7423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 14513 Flapjack.WordStore.heapLength)).val
theorem output7423_def : output7423 = (Flapjack.WordLangProgHOL.get 14513 Flapjack.WordStore.heapLength) := by
  unfold output7423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7423_skip : Flapjack.WordAlloc.isSkip output7423 = false := by
  rw [output7423_def]
  conv => lhs; cbv
  try rfl
theorem node7423_eq : Flapjack.WordAlloc.removeDeadStructural input7423 value3717 value1 value2 = (output7423, value5, value1) := by
  rw [input7423_def, output7423_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node7423_eq
end InitECandidate.Proofs.DeadStages713
