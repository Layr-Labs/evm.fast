import InitECandidate.Proofs.DeadStages713.Chunk030
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input7936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7935 input7934)).val
theorem input7936_def : input7936 = (.seq input7935 input7934) := by
  unfold input7936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7935 output7934)).val
theorem output7936_def : output7936 = (.seq output7935 output7934) := by
  unfold output7936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7936_skip : Flapjack.WordAlloc.isSkip output7936 = false := by
  rw [output7936_def]
  conv => lhs; cbv
  try rfl
theorem node7936_eq : Flapjack.WordAlloc.removeDeadStructural input7936 value3972 value1 value2 = (output7936, value5, value1) := by
  rw [input7936_def, output7936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7934_eq]
  dsimp only
  rw [node7935_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7936 input7933)).val
theorem input7937_def : input7937 = (.seq input7936 input7933) := by
  unfold input7937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7936 output7933)).val
theorem output7937_def : output7937 = (.seq output7936 output7933) := by
  unfold output7937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7937_skip : Flapjack.WordAlloc.isSkip output7937 = false := by
  rw [output7937_def]
  conv => lhs; cbv
  try rfl
theorem node7937_eq : Flapjack.WordAlloc.removeDeadStructural input7937 value3971 value1 value2 = (output7937, value5, value1) := by
  rw [input7937_def, output7937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7933_eq]
  dsimp only
  rw [node7936_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7937 input7932)).val
theorem input7938_def : input7938 = (.seq input7937 input7932) := by
  unfold input7938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7937 output7932)).val
theorem output7938_def : output7938 = (.seq output7937 output7932) := by
  unfold output7938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7938_skip : Flapjack.WordAlloc.isSkip output7938 = false := by
  rw [output7938_def]
  conv => lhs; cbv
  try rfl
theorem node7938_eq : Flapjack.WordAlloc.removeDeadStructural input7938 value3970 value1 value2 = (output7938, value5, value1) := by
  rw [input7938_def, output7938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7932_eq]
  dsimp only
  rw [node7937_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7938 input7931)).val
theorem input7939_def : input7939 = (.seq input7938 input7931) := by
  unfold input7939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7938 output7931)).val
theorem output7939_def : output7939 = (.seq output7938 output7931) := by
  unfold output7939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7939_skip : Flapjack.WordAlloc.isSkip output7939 = false := by
  rw [output7939_def]
  conv => lhs; cbv
  try rfl
theorem node7939_eq : Flapjack.WordAlloc.removeDeadStructural input7939 value3968 value1 value2 = (output7939, value5, value1) := by
  rw [input7939_def, output7939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7931_eq]
  dsimp only
  rw [node7938_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3974 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13353 (Flapjack.WordLangAddr.addr 13357 0#64)))).val
theorem input7940_def : input7940 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13353 (Flapjack.WordLangAddr.addr 13357 0#64))) := by
  unfold input7940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13353 (Flapjack.WordLangAddr.addr 13357 0#64)))).val
theorem output7940_def : output7940 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13353 (Flapjack.WordLangAddr.addr 13357 0#64))) := by
  unfold output7940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7940_skip : Flapjack.WordAlloc.isSkip output7940 = false := by
  rw [output7940_def]
  conv => lhs; cbv
  try rfl
theorem node7940_eq : Flapjack.WordAlloc.removeDeadStructural input7940 value5 value1 value2 = (output7940, value3974, value1) := by
  rw [input7940_def, output7940_def]
  try (conv => lhs; cbv)
  try rfl

def value3975 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13357, 13345)])).val
theorem input7941_def : input7941 = (Flapjack.WordLangProgHOL.move 0 [(13357, 13345)]) := by
  unfold input7941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13357, 13345)])).val
theorem output7941_def : output7941 = (Flapjack.WordLangProgHOL.move 0 [(13357, 13345)]) := by
  unfold output7941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7941_skip : Flapjack.WordAlloc.isSkip output7941 = false := by
  rw [output7941_def]
  conv => lhs; cbv
  try rfl
theorem node7941_eq : Flapjack.WordAlloc.removeDeadStructural input7941 value3974 value1 value2 = (output7941, value3975, value1) := by
  rw [input7941_def, output7941_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7941 input7940)).val
theorem input7942_def : input7942 = (.seq input7941 input7940) := by
  unfold input7942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7941 output7940)).val
theorem output7942_def : output7942 = (.seq output7941 output7940) := by
  unfold output7942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7942_skip : Flapjack.WordAlloc.isSkip output7942 = false := by
  rw [output7942_def]
  conv => lhs; cbv
  try rfl
theorem node7942_eq : Flapjack.WordAlloc.removeDeadStructural input7942 value5 value1 value2 = (output7942, value3975, value1) := by
  rw [input7942_def, output7942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7940_eq]
  dsimp only
  rw [node7941_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3976 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13353 16014900032503684588#64))).val
theorem input7943_def : input7943 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13353 16014900032503684588#64)) := by
  unfold input7943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13353 16014900032503684588#64))).val
theorem output7943_def : output7943 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13353 16014900032503684588#64)) := by
  unfold output7943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7943_skip : Flapjack.WordAlloc.isSkip output7943 = false := by
  rw [output7943_def]
  conv => lhs; cbv
  try rfl
theorem node7943_eq : Flapjack.WordAlloc.removeDeadStructural input7943 value3975 value1 value2 = (output7943, value3976, value1) := by
  rw [input7943_def, output7943_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13349 16014900032503684588#64))).val
theorem input7944_def : input7944 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13349 16014900032503684588#64)) := by
  unfold input7944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7944_def : output7944 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7944_skip : Flapjack.WordAlloc.isSkip output7944 = true := by
  rw [output7944_def]
  conv => lhs; cbv
  try rfl
theorem node7944_eq : Flapjack.WordAlloc.removeDeadStructural input7944 value3976 value1 value2 = (output7944, value3976, value1) := by
  rw [input7944_def, output7944_def]
  try (conv => lhs; cbv)
  try rfl

def value3977 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13345 13337 (Flapjack.WordRegImm.reg 13341))))).val
theorem input7945_def : input7945 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13345 13337 (Flapjack.WordRegImm.reg 13341)))) := by
  unfold input7945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13345 13337 (Flapjack.WordRegImm.reg 13341))))).val
theorem output7945_def : output7945 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13345 13337 (Flapjack.WordRegImm.reg 13341)))) := by
  unfold output7945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7945_skip : Flapjack.WordAlloc.isSkip output7945 = false := by
  rw [output7945_def]
  conv => lhs; cbv
  try rfl
theorem node7945_eq : Flapjack.WordAlloc.removeDeadStructural input7945 value3976 value1 value2 = (output7945, value3977, value1) := by
  rw [input7945_def, output7945_def]
  try (conv => lhs; cbv)
  try rfl

def value3978 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13341 3160#64))).val
theorem input7946_def : input7946 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13341 3160#64)) := by
  unfold input7946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13341 3160#64))).val
theorem output7946_def : output7946 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13341 3160#64)) := by
  unfold output7946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7946_skip : Flapjack.WordAlloc.isSkip output7946 = false := by
  rw [output7946_def]
  conv => lhs; cbv
  try rfl
theorem node7946_eq : Flapjack.WordAlloc.removeDeadStructural input7946 value3977 value1 value2 = (output7946, value3978, value1) := by
  rw [input7946_def, output7946_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7946 input7945)).val
theorem input7947_def : input7947 = (.seq input7946 input7945) := by
  unfold input7947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7946 output7945)).val
theorem output7947_def : output7947 = (.seq output7946 output7945) := by
  unfold output7947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7947_skip : Flapjack.WordAlloc.isSkip output7947 = false := by
  rw [output7947_def]
  conv => lhs; cbv
  try rfl
theorem node7947_eq : Flapjack.WordAlloc.removeDeadStructural input7947 value3976 value1 value2 = (output7947, value3978, value1) := by
  rw [input7947_def, output7947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7945_eq]
  dsimp only
  rw [node7946_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3979 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13337 (Flapjack.WordLangAddr.addr 13333 18446744073709551104#64)))).val
theorem input7948_def : input7948 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13337 (Flapjack.WordLangAddr.addr 13333 18446744073709551104#64))) := by
  unfold input7948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13337 (Flapjack.WordLangAddr.addr 13333 18446744073709551104#64)))).val
theorem output7948_def : output7948 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13337 (Flapjack.WordLangAddr.addr 13333 18446744073709551104#64))) := by
  unfold output7948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7948_skip : Flapjack.WordAlloc.isSkip output7948 = false := by
  rw [output7948_def]
  conv => lhs; cbv
  try rfl
theorem node7948_eq : Flapjack.WordAlloc.removeDeadStructural input7948 value3978 value1 value2 = (output7948, value3979, value1) := by
  rw [input7948_def, output7948_def]
  try (conv => lhs; cbv)
  try rfl

def value3980 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13333 13329)).val
theorem input7949_def : input7949 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13333 13329) := by
  unfold input7949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13333 13329)).val
theorem output7949_def : output7949 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13333 13329) := by
  unfold output7949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7949_skip : Flapjack.WordAlloc.isSkip output7949 = false := by
  rw [output7949_def]
  conv => lhs; cbv
  try rfl
theorem node7949_eq : Flapjack.WordAlloc.removeDeadStructural input7949 value3979 value1 value2 = (output7949, value3980, value1) := by
  rw [input7949_def, output7949_def]
  try (conv => lhs; cbv)
  try rfl

def value3981 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13329 13325 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7950_def : input7950 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13329 13325 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13329 13325 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7950_def : output7950 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13329 13325 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7950_skip : Flapjack.WordAlloc.isSkip output7950 = false := by
  rw [output7950_def]
  conv => lhs; cbv
  try rfl
theorem node7950_eq : Flapjack.WordAlloc.removeDeadStructural input7950 value3980 value1 value2 = (output7950, value3981, value1) := by
  rw [input7950_def, output7950_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13325 Flapjack.WordStore.heapLength)).val
theorem input7951_def : input7951 = (Flapjack.WordLangProgHOL.get 13325 Flapjack.WordStore.heapLength) := by
  unfold input7951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13325 Flapjack.WordStore.heapLength)).val
theorem output7951_def : output7951 = (Flapjack.WordLangProgHOL.get 13325 Flapjack.WordStore.heapLength) := by
  unfold output7951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7951_skip : Flapjack.WordAlloc.isSkip output7951 = false := by
  rw [output7951_def]
  conv => lhs; cbv
  try rfl
theorem node7951_eq : Flapjack.WordAlloc.removeDeadStructural input7951 value3981 value1 value2 = (output7951, value5, value1) := by
  rw [input7951_def, output7951_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7951 input7950)).val
theorem input7952_def : input7952 = (.seq input7951 input7950) := by
  unfold input7952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7951 output7950)).val
theorem output7952_def : output7952 = (.seq output7951 output7950) := by
  unfold output7952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7952_skip : Flapjack.WordAlloc.isSkip output7952 = false := by
  rw [output7952_def]
  conv => lhs; cbv
  try rfl
theorem node7952_eq : Flapjack.WordAlloc.removeDeadStructural input7952 value3980 value1 value2 = (output7952, value5, value1) := by
  rw [input7952_def, output7952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7950_eq]
  dsimp only
  rw [node7951_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7952 input7949)).val
theorem input7953_def : input7953 = (.seq input7952 input7949) := by
  unfold input7953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7952 output7949)).val
theorem output7953_def : output7953 = (.seq output7952 output7949) := by
  unfold output7953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7953_skip : Flapjack.WordAlloc.isSkip output7953 = false := by
  rw [output7953_def]
  conv => lhs; cbv
  try rfl
theorem node7953_eq : Flapjack.WordAlloc.removeDeadStructural input7953 value3979 value1 value2 = (output7953, value5, value1) := by
  rw [input7953_def, output7953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7949_eq]
  dsimp only
  rw [node7952_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7953 input7948)).val
theorem input7954_def : input7954 = (.seq input7953 input7948) := by
  unfold input7954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7953 output7948)).val
theorem output7954_def : output7954 = (.seq output7953 output7948) := by
  unfold output7954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7954_skip : Flapjack.WordAlloc.isSkip output7954 = false := by
  rw [output7954_def]
  conv => lhs; cbv
  try rfl
theorem node7954_eq : Flapjack.WordAlloc.removeDeadStructural input7954 value3978 value1 value2 = (output7954, value5, value1) := by
  rw [input7954_def, output7954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7948_eq]
  dsimp only
  rw [node7953_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7954 input7947)).val
theorem input7955_def : input7955 = (.seq input7954 input7947) := by
  unfold input7955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7954 output7947)).val
theorem output7955_def : output7955 = (.seq output7954 output7947) := by
  unfold output7955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7955_skip : Flapjack.WordAlloc.isSkip output7955 = false := by
  rw [output7955_def]
  conv => lhs; cbv
  try rfl
theorem node7955_eq : Flapjack.WordAlloc.removeDeadStructural input7955 value3976 value1 value2 = (output7955, value5, value1) := by
  rw [input7955_def, output7955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7947_eq]
  dsimp only
  rw [node7954_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3982 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln)))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13317 (Flapjack.WordLangAddr.addr 13321 0#64)))).val
theorem input7956_def : input7956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13317 (Flapjack.WordLangAddr.addr 13321 0#64))) := by
  unfold input7956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13317 (Flapjack.WordLangAddr.addr 13321 0#64)))).val
theorem output7956_def : output7956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13317 (Flapjack.WordLangAddr.addr 13321 0#64))) := by
  unfold output7956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7956_skip : Flapjack.WordAlloc.isSkip output7956 = false := by
  rw [output7956_def]
  conv => lhs; cbv
  try rfl
theorem node7956_eq : Flapjack.WordAlloc.removeDeadStructural input7956 value5 value1 value2 = (output7956, value3982, value1) := by
  rw [input7956_def, output7956_def]
  try (conv => lhs; cbv)
  try rfl

def value3983 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                      Flapjack.Spt.ln))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13321, 13309)])).val
theorem input7957_def : input7957 = (Flapjack.WordLangProgHOL.move 0 [(13321, 13309)]) := by
  unfold input7957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13321, 13309)])).val
theorem output7957_def : output7957 = (Flapjack.WordLangProgHOL.move 0 [(13321, 13309)]) := by
  unfold output7957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7957_skip : Flapjack.WordAlloc.isSkip output7957 = false := by
  rw [output7957_def]
  conv => lhs; cbv
  try rfl
theorem node7957_eq : Flapjack.WordAlloc.removeDeadStructural input7957 value3982 value1 value2 = (output7957, value3983, value1) := by
  rw [input7957_def, output7957_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7957 input7956)).val
theorem input7958_def : input7958 = (.seq input7957 input7956) := by
  unfold input7958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7957 output7956)).val
theorem output7958_def : output7958 = (.seq output7957 output7956) := by
  unfold output7958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7958_skip : Flapjack.WordAlloc.isSkip output7958 = false := by
  rw [output7958_def]
  conv => lhs; cbv
  try rfl
theorem node7958_eq : Flapjack.WordAlloc.removeDeadStructural input7958 value5 value1 value2 = (output7958, value3983, value1) := by
  rw [input7958_def, output7958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7956_eq]
  dsimp only
  rw [node7957_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3984 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13317 11976580453200426187#64))).val
theorem input7959_def : input7959 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13317 11976580453200426187#64)) := by
  unfold input7959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13317 11976580453200426187#64))).val
theorem output7959_def : output7959 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13317 11976580453200426187#64)) := by
  unfold output7959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7959_skip : Flapjack.WordAlloc.isSkip output7959 = false := by
  rw [output7959_def]
  conv => lhs; cbv
  try rfl
theorem node7959_eq : Flapjack.WordAlloc.removeDeadStructural input7959 value3983 value1 value2 = (output7959, value3984, value1) := by
  rw [input7959_def, output7959_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13313 11976580453200426187#64))).val
theorem input7960_def : input7960 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13313 11976580453200426187#64)) := by
  unfold input7960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7960_def : output7960 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7960_skip : Flapjack.WordAlloc.isSkip output7960 = true := by
  rw [output7960_def]
  conv => lhs; cbv
  try rfl
theorem node7960_eq : Flapjack.WordAlloc.removeDeadStructural input7960 value3984 value1 value2 = (output7960, value3984, value1) := by
  rw [input7960_def, output7960_def]
  try (conv => lhs; cbv)
  try rfl

def value3985 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13309 13301 (Flapjack.WordRegImm.reg 13305))))).val
theorem input7961_def : input7961 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13309 13301 (Flapjack.WordRegImm.reg 13305)))) := by
  unfold input7961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13309 13301 (Flapjack.WordRegImm.reg 13305))))).val
theorem output7961_def : output7961 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13309 13301 (Flapjack.WordRegImm.reg 13305)))) := by
  unfold output7961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7961_skip : Flapjack.WordAlloc.isSkip output7961 = false := by
  rw [output7961_def]
  conv => lhs; cbv
  try rfl
theorem node7961_eq : Flapjack.WordAlloc.removeDeadStructural input7961 value3984 value1 value2 = (output7961, value3985, value1) := by
  rw [input7961_def, output7961_def]
  try (conv => lhs; cbv)
  try rfl

def value3986 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13305 3152#64))).val
theorem input7962_def : input7962 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13305 3152#64)) := by
  unfold input7962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13305 3152#64))).val
theorem output7962_def : output7962 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13305 3152#64)) := by
  unfold output7962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7962_skip : Flapjack.WordAlloc.isSkip output7962 = false := by
  rw [output7962_def]
  conv => lhs; cbv
  try rfl
theorem node7962_eq : Flapjack.WordAlloc.removeDeadStructural input7962 value3985 value1 value2 = (output7962, value3986, value1) := by
  rw [input7962_def, output7962_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7962 input7961)).val
theorem input7963_def : input7963 = (.seq input7962 input7961) := by
  unfold input7963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7962 output7961)).val
theorem output7963_def : output7963 = (.seq output7962 output7961) := by
  unfold output7963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7963_skip : Flapjack.WordAlloc.isSkip output7963 = false := by
  rw [output7963_def]
  conv => lhs; cbv
  try rfl
theorem node7963_eq : Flapjack.WordAlloc.removeDeadStructural input7963 value3984 value1 value2 = (output7963, value3986, value1) := by
  rw [input7963_def, output7963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7961_eq]
  dsimp only
  rw [node7962_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3987 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13301 (Flapjack.WordLangAddr.addr 13297 18446744073709551104#64)))).val
theorem input7964_def : input7964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13301 (Flapjack.WordLangAddr.addr 13297 18446744073709551104#64))) := by
  unfold input7964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13301 (Flapjack.WordLangAddr.addr 13297 18446744073709551104#64)))).val
theorem output7964_def : output7964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13301 (Flapjack.WordLangAddr.addr 13297 18446744073709551104#64))) := by
  unfold output7964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7964_skip : Flapjack.WordAlloc.isSkip output7964 = false := by
  rw [output7964_def]
  conv => lhs; cbv
  try rfl
theorem node7964_eq : Flapjack.WordAlloc.removeDeadStructural input7964 value3986 value1 value2 = (output7964, value3987, value1) := by
  rw [input7964_def, output7964_def]
  try (conv => lhs; cbv)
  try rfl

def value3988 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13297 13293)).val
theorem input7965_def : input7965 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13297 13293) := by
  unfold input7965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13297 13293)).val
theorem output7965_def : output7965 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13297 13293) := by
  unfold output7965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7965_skip : Flapjack.WordAlloc.isSkip output7965 = false := by
  rw [output7965_def]
  conv => lhs; cbv
  try rfl
theorem node7965_eq : Flapjack.WordAlloc.removeDeadStructural input7965 value3987 value1 value2 = (output7965, value3988, value1) := by
  rw [input7965_def, output7965_def]
  try (conv => lhs; cbv)
  try rfl

def value3989 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13293 13289 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7966_def : input7966 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13293 13289 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13293 13289 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7966_def : output7966 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13293 13289 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7966_skip : Flapjack.WordAlloc.isSkip output7966 = false := by
  rw [output7966_def]
  conv => lhs; cbv
  try rfl
theorem node7966_eq : Flapjack.WordAlloc.removeDeadStructural input7966 value3988 value1 value2 = (output7966, value3989, value1) := by
  rw [input7966_def, output7966_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13289 Flapjack.WordStore.heapLength)).val
theorem input7967_def : input7967 = (Flapjack.WordLangProgHOL.get 13289 Flapjack.WordStore.heapLength) := by
  unfold input7967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13289 Flapjack.WordStore.heapLength)).val
theorem output7967_def : output7967 = (Flapjack.WordLangProgHOL.get 13289 Flapjack.WordStore.heapLength) := by
  unfold output7967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7967_skip : Flapjack.WordAlloc.isSkip output7967 = false := by
  rw [output7967_def]
  conv => lhs; cbv
  try rfl
theorem node7967_eq : Flapjack.WordAlloc.removeDeadStructural input7967 value3989 value1 value2 = (output7967, value5, value1) := by
  rw [input7967_def, output7967_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7967 input7966)).val
theorem input7968_def : input7968 = (.seq input7967 input7966) := by
  unfold input7968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7967 output7966)).val
theorem output7968_def : output7968 = (.seq output7967 output7966) := by
  unfold output7968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7968_skip : Flapjack.WordAlloc.isSkip output7968 = false := by
  rw [output7968_def]
  conv => lhs; cbv
  try rfl
theorem node7968_eq : Flapjack.WordAlloc.removeDeadStructural input7968 value3988 value1 value2 = (output7968, value5, value1) := by
  rw [input7968_def, output7968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7966_eq]
  dsimp only
  rw [node7967_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7968 input7965)).val
theorem input7969_def : input7969 = (.seq input7968 input7965) := by
  unfold input7969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7968 output7965)).val
theorem output7969_def : output7969 = (.seq output7968 output7965) := by
  unfold output7969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7969_skip : Flapjack.WordAlloc.isSkip output7969 = false := by
  rw [output7969_def]
  conv => lhs; cbv
  try rfl
theorem node7969_eq : Flapjack.WordAlloc.removeDeadStructural input7969 value3987 value1 value2 = (output7969, value5, value1) := by
  rw [input7969_def, output7969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7965_eq]
  dsimp only
  rw [node7968_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7969 input7964)).val
theorem input7970_def : input7970 = (.seq input7969 input7964) := by
  unfold input7970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7969 output7964)).val
theorem output7970_def : output7970 = (.seq output7969 output7964) := by
  unfold output7970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7970_skip : Flapjack.WordAlloc.isSkip output7970 = false := by
  rw [output7970_def]
  conv => lhs; cbv
  try rfl
theorem node7970_eq : Flapjack.WordAlloc.removeDeadStructural input7970 value3986 value1 value2 = (output7970, value5, value1) := by
  rw [input7970_def, output7970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7964_eq]
  dsimp only
  rw [node7969_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7970 input7963)).val
theorem input7971_def : input7971 = (.seq input7970 input7963) := by
  unfold input7971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7970 output7963)).val
theorem output7971_def : output7971 = (.seq output7970 output7963) := by
  unfold output7971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7971_skip : Flapjack.WordAlloc.isSkip output7971 = false := by
  rw [output7971_def]
  conv => lhs; cbv
  try rfl
theorem node7971_eq : Flapjack.WordAlloc.removeDeadStructural input7971 value3984 value1 value2 = (output7971, value5, value1) := by
  rw [input7971_def, output7971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7963_eq]
  dsimp only
  rw [node7970_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3990 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13281 (Flapjack.WordLangAddr.addr 13285 0#64)))).val
theorem input7972_def : input7972 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13281 (Flapjack.WordLangAddr.addr 13285 0#64))) := by
  unfold input7972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13281 (Flapjack.WordLangAddr.addr 13285 0#64)))).val
theorem output7972_def : output7972 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13281 (Flapjack.WordLangAddr.addr 13285 0#64))) := by
  unfold output7972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7972_skip : Flapjack.WordAlloc.isSkip output7972 = false := by
  rw [output7972_def]
  conv => lhs; cbv
  try rfl
theorem node7972_eq : Flapjack.WordAlloc.removeDeadStructural input7972 value5 value1 value2 = (output7972, value3990, value1) := by
  rw [input7972_def, output7972_def]
  try (conv => lhs; cbv)
  try rfl

def value3991 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13285, 13273)])).val
theorem input7973_def : input7973 = (Flapjack.WordLangProgHOL.move 0 [(13285, 13273)]) := by
  unfold input7973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13285, 13273)])).val
theorem output7973_def : output7973 = (Flapjack.WordLangProgHOL.move 0 [(13285, 13273)]) := by
  unfold output7973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7973_skip : Flapjack.WordAlloc.isSkip output7973 = false := by
  rw [output7973_def]
  conv => lhs; cbv
  try rfl
theorem node7973_eq : Flapjack.WordAlloc.removeDeadStructural input7973 value3990 value1 value2 = (output7973, value3991, value1) := by
  rw [input7973_def, output7973_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7973 input7972)).val
theorem input7974_def : input7974 = (.seq input7973 input7972) := by
  unfold input7974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7973 output7972)).val
theorem output7974_def : output7974 = (.seq output7973 output7972) := by
  unfold output7974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7974_skip : Flapjack.WordAlloc.isSkip output7974 = false := by
  rw [output7974_def]
  conv => lhs; cbv
  try rfl
theorem node7974_eq : Flapjack.WordAlloc.removeDeadStructural input7974 value5 value1 value2 = (output7974, value3991, value1) := by
  rw [input7974_def, output7974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7972_eq]
  dsimp only
  rw [node7973_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3992 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13281 57553299067792998#64))).val
theorem input7975_def : input7975 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13281 57553299067792998#64)) := by
  unfold input7975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13281 57553299067792998#64))).val
theorem output7975_def : output7975 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13281 57553299067792998#64)) := by
  unfold output7975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7975_skip : Flapjack.WordAlloc.isSkip output7975 = false := by
  rw [output7975_def]
  conv => lhs; cbv
  try rfl
theorem node7975_eq : Flapjack.WordAlloc.removeDeadStructural input7975 value3991 value1 value2 = (output7975, value3992, value1) := by
  rw [input7975_def, output7975_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13277 57553299067792998#64))).val
theorem input7976_def : input7976 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13277 57553299067792998#64)) := by
  unfold input7976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7976_def : output7976 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7976_skip : Flapjack.WordAlloc.isSkip output7976 = true := by
  rw [output7976_def]
  conv => lhs; cbv
  try rfl
theorem node7976_eq : Flapjack.WordAlloc.removeDeadStructural input7976 value3992 value1 value2 = (output7976, value3992, value1) := by
  rw [input7976_def, output7976_def]
  try (conv => lhs; cbv)
  try rfl

def value3993 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13273 13265 (Flapjack.WordRegImm.reg 13269))))).val
theorem input7977_def : input7977 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13273 13265 (Flapjack.WordRegImm.reg 13269)))) := by
  unfold input7977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13273 13265 (Flapjack.WordRegImm.reg 13269))))).val
theorem output7977_def : output7977 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13273 13265 (Flapjack.WordRegImm.reg 13269)))) := by
  unfold output7977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7977_skip : Flapjack.WordAlloc.isSkip output7977 = false := by
  rw [output7977_def]
  conv => lhs; cbv
  try rfl
theorem node7977_eq : Flapjack.WordAlloc.removeDeadStructural input7977 value3992 value1 value2 = (output7977, value3993, value1) := by
  rw [input7977_def, output7977_def]
  try (conv => lhs; cbv)
  try rfl

def value3994 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13269 3144#64))).val
theorem input7978_def : input7978 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13269 3144#64)) := by
  unfold input7978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13269 3144#64))).val
theorem output7978_def : output7978 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13269 3144#64)) := by
  unfold output7978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7978_skip : Flapjack.WordAlloc.isSkip output7978 = false := by
  rw [output7978_def]
  conv => lhs; cbv
  try rfl
theorem node7978_eq : Flapjack.WordAlloc.removeDeadStructural input7978 value3993 value1 value2 = (output7978, value3994, value1) := by
  rw [input7978_def, output7978_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7978 input7977)).val
theorem input7979_def : input7979 = (.seq input7978 input7977) := by
  unfold input7979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7978 output7977)).val
theorem output7979_def : output7979 = (.seq output7978 output7977) := by
  unfold output7979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7979_skip : Flapjack.WordAlloc.isSkip output7979 = false := by
  rw [output7979_def]
  conv => lhs; cbv
  try rfl
theorem node7979_eq : Flapjack.WordAlloc.removeDeadStructural input7979 value3992 value1 value2 = (output7979, value3994, value1) := by
  rw [input7979_def, output7979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7977_eq]
  dsimp only
  rw [node7978_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3995 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13265 (Flapjack.WordLangAddr.addr 13261 18446744073709551104#64)))).val
theorem input7980_def : input7980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13265 (Flapjack.WordLangAddr.addr 13261 18446744073709551104#64))) := by
  unfold input7980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13265 (Flapjack.WordLangAddr.addr 13261 18446744073709551104#64)))).val
theorem output7980_def : output7980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13265 (Flapjack.WordLangAddr.addr 13261 18446744073709551104#64))) := by
  unfold output7980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7980_skip : Flapjack.WordAlloc.isSkip output7980 = false := by
  rw [output7980_def]
  conv => lhs; cbv
  try rfl
theorem node7980_eq : Flapjack.WordAlloc.removeDeadStructural input7980 value3994 value1 value2 = (output7980, value3995, value1) := by
  rw [input7980_def, output7980_def]
  try (conv => lhs; cbv)
  try rfl

def value3996 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13261 13257)).val
theorem input7981_def : input7981 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13261 13257) := by
  unfold input7981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13261 13257)).val
theorem output7981_def : output7981 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13261 13257) := by
  unfold output7981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7981_skip : Flapjack.WordAlloc.isSkip output7981 = false := by
  rw [output7981_def]
  conv => lhs; cbv
  try rfl
theorem node7981_eq : Flapjack.WordAlloc.removeDeadStructural input7981 value3995 value1 value2 = (output7981, value3996, value1) := by
  rw [input7981_def, output7981_def]
  try (conv => lhs; cbv)
  try rfl

def value3997 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13257 13253 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7982_def : input7982 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13257 13253 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13257 13253 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7982_def : output7982 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13257 13253 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7982_skip : Flapjack.WordAlloc.isSkip output7982 = false := by
  rw [output7982_def]
  conv => lhs; cbv
  try rfl
theorem node7982_eq : Flapjack.WordAlloc.removeDeadStructural input7982 value3996 value1 value2 = (output7982, value3997, value1) := by
  rw [input7982_def, output7982_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13253 Flapjack.WordStore.heapLength)).val
theorem input7983_def : input7983 = (Flapjack.WordLangProgHOL.get 13253 Flapjack.WordStore.heapLength) := by
  unfold input7983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13253 Flapjack.WordStore.heapLength)).val
theorem output7983_def : output7983 = (Flapjack.WordLangProgHOL.get 13253 Flapjack.WordStore.heapLength) := by
  unfold output7983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7983_skip : Flapjack.WordAlloc.isSkip output7983 = false := by
  rw [output7983_def]
  conv => lhs; cbv
  try rfl
theorem node7983_eq : Flapjack.WordAlloc.removeDeadStructural input7983 value3997 value1 value2 = (output7983, value5, value1) := by
  rw [input7983_def, output7983_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7983 input7982)).val
theorem input7984_def : input7984 = (.seq input7983 input7982) := by
  unfold input7984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7983 output7982)).val
theorem output7984_def : output7984 = (.seq output7983 output7982) := by
  unfold output7984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7984_skip : Flapjack.WordAlloc.isSkip output7984 = false := by
  rw [output7984_def]
  conv => lhs; cbv
  try rfl
theorem node7984_eq : Flapjack.WordAlloc.removeDeadStructural input7984 value3996 value1 value2 = (output7984, value5, value1) := by
  rw [input7984_def, output7984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7982_eq]
  dsimp only
  rw [node7983_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7984 input7981)).val
theorem input7985_def : input7985 = (.seq input7984 input7981) := by
  unfold input7985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7984 output7981)).val
theorem output7985_def : output7985 = (.seq output7984 output7981) := by
  unfold output7985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7985_skip : Flapjack.WordAlloc.isSkip output7985 = false := by
  rw [output7985_def]
  conv => lhs; cbv
  try rfl
theorem node7985_eq : Flapjack.WordAlloc.removeDeadStructural input7985 value3995 value1 value2 = (output7985, value5, value1) := by
  rw [input7985_def, output7985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7981_eq]
  dsimp only
  rw [node7984_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7985 input7980)).val
theorem input7986_def : input7986 = (.seq input7985 input7980) := by
  unfold input7986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7985 output7980)).val
theorem output7986_def : output7986 = (.seq output7985 output7980) := by
  unfold output7986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7986_skip : Flapjack.WordAlloc.isSkip output7986 = false := by
  rw [output7986_def]
  conv => lhs; cbv
  try rfl
theorem node7986_eq : Flapjack.WordAlloc.removeDeadStructural input7986 value3994 value1 value2 = (output7986, value5, value1) := by
  rw [input7986_def, output7986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7980_eq]
  dsimp only
  rw [node7985_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7986 input7979)).val
theorem input7987_def : input7987 = (.seq input7986 input7979) := by
  unfold input7987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7986 output7979)).val
theorem output7987_def : output7987 = (.seq output7986 output7979) := by
  unfold output7987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7987_skip : Flapjack.WordAlloc.isSkip output7987 = false := by
  rw [output7987_def]
  conv => lhs; cbv
  try rfl
theorem node7987_eq : Flapjack.WordAlloc.removeDeadStructural input7987 value3992 value1 value2 = (output7987, value5, value1) := by
  rw [input7987_def, output7987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7979_eq]
  dsimp only
  rw [node7986_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3998 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13245 (Flapjack.WordLangAddr.addr 13249 0#64)))).val
theorem input7988_def : input7988 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13245 (Flapjack.WordLangAddr.addr 13249 0#64))) := by
  unfold input7988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13245 (Flapjack.WordLangAddr.addr 13249 0#64)))).val
theorem output7988_def : output7988 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13245 (Flapjack.WordLangAddr.addr 13249 0#64))) := by
  unfold output7988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7988_skip : Flapjack.WordAlloc.isSkip output7988 = false := by
  rw [output7988_def]
  conv => lhs; cbv
  try rfl
theorem node7988_eq : Flapjack.WordAlloc.removeDeadStructural input7988 value5 value1 value2 = (output7988, value3998, value1) := by
  rw [input7988_def, output7988_def]
  try (conv => lhs; cbv)
  try rfl

def value3999 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13249, 13237)])).val
theorem input7989_def : input7989 = (Flapjack.WordLangProgHOL.move 0 [(13249, 13237)]) := by
  unfold input7989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13249, 13237)])).val
theorem output7989_def : output7989 = (Flapjack.WordLangProgHOL.move 0 [(13249, 13237)]) := by
  unfold output7989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7989_skip : Flapjack.WordAlloc.isSkip output7989 = false := by
  rw [output7989_def]
  conv => lhs; cbv
  try rfl
theorem node7989_eq : Flapjack.WordAlloc.removeDeadStructural input7989 value3998 value1 value2 = (output7989, value3999, value1) := by
  rw [input7989_def, output7989_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7989 input7988)).val
theorem input7990_def : input7990 = (.seq input7989 input7988) := by
  unfold input7990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7989 output7988)).val
theorem output7990_def : output7990 = (.seq output7989 output7988) := by
  unfold output7990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7990_skip : Flapjack.WordAlloc.isSkip output7990 = false := by
  rw [output7990_def]
  conv => lhs; cbv
  try rfl
theorem node7990_eq : Flapjack.WordAlloc.removeDeadStructural input7990 value5 value1 value2 = (output7990, value3999, value1) := by
  rw [input7990_def, output7990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7988_eq]
  dsimp only
  rw [node7989_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4000 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13245 17628079362768849300#64))).val
theorem input7991_def : input7991 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13245 17628079362768849300#64)) := by
  unfold input7991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13245 17628079362768849300#64))).val
theorem output7991_def : output7991 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13245 17628079362768849300#64)) := by
  unfold output7991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7991_skip : Flapjack.WordAlloc.isSkip output7991 = false := by
  rw [output7991_def]
  conv => lhs; cbv
  try rfl
theorem node7991_eq : Flapjack.WordAlloc.removeDeadStructural input7991 value3999 value1 value2 = (output7991, value4000, value1) := by
  rw [input7991_def, output7991_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13241 17628079362768849300#64))).val
theorem input7992_def : input7992 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13241 17628079362768849300#64)) := by
  unfold input7992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output7992_def : output7992 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output7992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7992_skip : Flapjack.WordAlloc.isSkip output7992 = true := by
  rw [output7992_def]
  conv => lhs; cbv
  try rfl
theorem node7992_eq : Flapjack.WordAlloc.removeDeadStructural input7992 value4000 value1 value2 = (output7992, value4000, value1) := by
  rw [input7992_def, output7992_def]
  try (conv => lhs; cbv)
  try rfl

def value4001 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13237 13229 (Flapjack.WordRegImm.reg 13233))))).val
theorem input7993_def : input7993 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13237 13229 (Flapjack.WordRegImm.reg 13233)))) := by
  unfold input7993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13237 13229 (Flapjack.WordRegImm.reg 13233))))).val
theorem output7993_def : output7993 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13237 13229 (Flapjack.WordRegImm.reg 13233)))) := by
  unfold output7993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7993_skip : Flapjack.WordAlloc.isSkip output7993 = false := by
  rw [output7993_def]
  conv => lhs; cbv
  try rfl
theorem node7993_eq : Flapjack.WordAlloc.removeDeadStructural input7993 value4000 value1 value2 = (output7993, value4001, value1) := by
  rw [input7993_def, output7993_def]
  try (conv => lhs; cbv)
  try rfl

def value4002 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13233 3136#64))).val
theorem input7994_def : input7994 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13233 3136#64)) := by
  unfold input7994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13233 3136#64))).val
theorem output7994_def : output7994 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13233 3136#64)) := by
  unfold output7994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7994_skip : Flapjack.WordAlloc.isSkip output7994 = false := by
  rw [output7994_def]
  conv => lhs; cbv
  try rfl
theorem node7994_eq : Flapjack.WordAlloc.removeDeadStructural input7994 value4001 value1 value2 = (output7994, value4002, value1) := by
  rw [input7994_def, output7994_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7994 input7993)).val
theorem input7995_def : input7995 = (.seq input7994 input7993) := by
  unfold input7995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7994 output7993)).val
theorem output7995_def : output7995 = (.seq output7994 output7993) := by
  unfold output7995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7995_skip : Flapjack.WordAlloc.isSkip output7995 = false := by
  rw [output7995_def]
  conv => lhs; cbv
  try rfl
theorem node7995_eq : Flapjack.WordAlloc.removeDeadStructural input7995 value4000 value1 value2 = (output7995, value4002, value1) := by
  rw [input7995_def, output7995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7993_eq]
  dsimp only
  rw [node7994_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4003 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13229 (Flapjack.WordLangAddr.addr 13225 18446744073709551104#64)))).val
theorem input7996_def : input7996 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13229 (Flapjack.WordLangAddr.addr 13225 18446744073709551104#64))) := by
  unfold input7996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13229 (Flapjack.WordLangAddr.addr 13225 18446744073709551104#64)))).val
theorem output7996_def : output7996 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13229 (Flapjack.WordLangAddr.addr 13225 18446744073709551104#64))) := by
  unfold output7996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7996_skip : Flapjack.WordAlloc.isSkip output7996 = false := by
  rw [output7996_def]
  conv => lhs; cbv
  try rfl
theorem node7996_eq : Flapjack.WordAlloc.removeDeadStructural input7996 value4002 value1 value2 = (output7996, value4003, value1) := by
  rw [input7996_def, output7996_def]
  try (conv => lhs; cbv)
  try rfl

def value4004 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13225 13221)).val
theorem input7997_def : input7997 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13225 13221) := by
  unfold input7997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13225 13221)).val
theorem output7997_def : output7997 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13225 13221) := by
  unfold output7997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7997_skip : Flapjack.WordAlloc.isSkip output7997 = false := by
  rw [output7997_def]
  conv => lhs; cbv
  try rfl
theorem node7997_eq : Flapjack.WordAlloc.removeDeadStructural input7997 value4003 value1 value2 = (output7997, value4004, value1) := by
  rw [input7997_def, output7997_def]
  try (conv => lhs; cbv)
  try rfl

def value4005 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input7998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13221 13217 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input7998_def : input7998 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13221 13217 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input7998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13221 13217 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output7998_def : output7998 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13221 13217 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output7998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7998_skip : Flapjack.WordAlloc.isSkip output7998 = false := by
  rw [output7998_def]
  conv => lhs; cbv
  try rfl
theorem node7998_eq : Flapjack.WordAlloc.removeDeadStructural input7998 value4004 value1 value2 = (output7998, value4005, value1) := by
  rw [input7998_def, output7998_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input7999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13217 Flapjack.WordStore.heapLength)).val
theorem input7999_def : input7999 = (Flapjack.WordLangProgHOL.get 13217 Flapjack.WordStore.heapLength) := by
  unfold input7999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output7999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13217 Flapjack.WordStore.heapLength)).val
theorem output7999_def : output7999 = (Flapjack.WordLangProgHOL.get 13217 Flapjack.WordStore.heapLength) := by
  unfold output7999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output7999_skip : Flapjack.WordAlloc.isSkip output7999 = false := by
  rw [output7999_def]
  conv => lhs; cbv
  try rfl
theorem node7999_eq : Flapjack.WordAlloc.removeDeadStructural input7999 value4005 value1 value2 = (output7999, value5, value1) := by
  rw [input7999_def, output7999_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input7999 input7998)).val
theorem input8000_def : input8000 = (.seq input7999 input7998) := by
  unfold input8000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output7999 output7998)).val
theorem output8000_def : output8000 = (.seq output7999 output7998) := by
  unfold output8000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8000_skip : Flapjack.WordAlloc.isSkip output8000 = false := by
  rw [output8000_def]
  conv => lhs; cbv
  try rfl
theorem node8000_eq : Flapjack.WordAlloc.removeDeadStructural input8000 value4004 value1 value2 = (output8000, value5, value1) := by
  rw [input8000_def, output8000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7998_eq]
  dsimp only
  rw [node7999_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8000 input7997)).val
theorem input8001_def : input8001 = (.seq input8000 input7997) := by
  unfold input8001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8000 output7997)).val
theorem output8001_def : output8001 = (.seq output8000 output7997) := by
  unfold output8001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8001_skip : Flapjack.WordAlloc.isSkip output8001 = false := by
  rw [output8001_def]
  conv => lhs; cbv
  try rfl
theorem node8001_eq : Flapjack.WordAlloc.removeDeadStructural input8001 value4003 value1 value2 = (output8001, value5, value1) := by
  rw [input8001_def, output8001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7997_eq]
  dsimp only
  rw [node8000_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8001 input7996)).val
theorem input8002_def : input8002 = (.seq input8001 input7996) := by
  unfold input8002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8001 output7996)).val
theorem output8002_def : output8002 = (.seq output8001 output7996) := by
  unfold output8002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8002_skip : Flapjack.WordAlloc.isSkip output8002 = false := by
  rw [output8002_def]
  conv => lhs; cbv
  try rfl
theorem node8002_eq : Flapjack.WordAlloc.removeDeadStructural input8002 value4002 value1 value2 = (output8002, value5, value1) := by
  rw [input8002_def, output8002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7996_eq]
  dsimp only
  rw [node8001_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8002 input7995)).val
theorem input8003_def : input8003 = (.seq input8002 input7995) := by
  unfold input8003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8002 output7995)).val
theorem output8003_def : output8003 = (.seq output8002 output7995) := by
  unfold output8003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8003_skip : Flapjack.WordAlloc.isSkip output8003 = false := by
  rw [output8003_def]
  conv => lhs; cbv
  try rfl
theorem node8003_eq : Flapjack.WordAlloc.removeDeadStructural input8003 value4000 value1 value2 = (output8003, value5, value1) := by
  rw [input8003_def, output8003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7995_eq]
  dsimp only
  rw [node8002_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4006 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13209 (Flapjack.WordLangAddr.addr 13213 0#64)))).val
theorem input8004_def : input8004 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13209 (Flapjack.WordLangAddr.addr 13213 0#64))) := by
  unfold input8004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13209 (Flapjack.WordLangAddr.addr 13213 0#64)))).val
theorem output8004_def : output8004 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13209 (Flapjack.WordLangAddr.addr 13213 0#64))) := by
  unfold output8004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8004_skip : Flapjack.WordAlloc.isSkip output8004 = false := by
  rw [output8004_def]
  conv => lhs; cbv
  try rfl
theorem node8004_eq : Flapjack.WordAlloc.removeDeadStructural input8004 value5 value1 value2 = (output8004, value4006, value1) := by
  rw [input8004_def, output8004_def]
  try (conv => lhs; cbv)
  try rfl

def value4007 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13213, 13201)])).val
theorem input8005_def : input8005 = (Flapjack.WordLangProgHOL.move 0 [(13213, 13201)]) := by
  unfold input8005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13213, 13201)])).val
theorem output8005_def : output8005 = (Flapjack.WordLangProgHOL.move 0 [(13213, 13201)]) := by
  unfold output8005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8005_skip : Flapjack.WordAlloc.isSkip output8005 = false := by
  rw [output8005_def]
  conv => lhs; cbv
  try rfl
theorem node8005_eq : Flapjack.WordAlloc.removeDeadStructural input8005 value4006 value1 value2 = (output8005, value4007, value1) := by
  rw [input8005_def, output8005_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8005 input8004)).val
theorem input8006_def : input8006 = (.seq input8005 input8004) := by
  unfold input8006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8005 output8004)).val
theorem output8006_def : output8006 = (.seq output8005 output8004) := by
  unfold output8006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8006_skip : Flapjack.WordAlloc.isSkip output8006 = false := by
  rw [output8006_def]
  conv => lhs; cbv
  try rfl
theorem node8006_eq : Flapjack.WordAlloc.removeDeadStructural input8006 value5 value1 value2 = (output8006, value4007, value1) := by
  rw [input8006_def, output8006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8004_eq]
  dsimp only
  rw [node8005_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4008 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13209 2689461337731570914#64))).val
theorem input8007_def : input8007 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13209 2689461337731570914#64)) := by
  unfold input8007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13209 2689461337731570914#64))).val
theorem output8007_def : output8007 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13209 2689461337731570914#64)) := by
  unfold output8007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8007_skip : Flapjack.WordAlloc.isSkip output8007 = false := by
  rw [output8007_def]
  conv => lhs; cbv
  try rfl
theorem node8007_eq : Flapjack.WordAlloc.removeDeadStructural input8007 value4007 value1 value2 = (output8007, value4008, value1) := by
  rw [input8007_def, output8007_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13205 2689461337731570914#64))).val
theorem input8008_def : input8008 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13205 2689461337731570914#64)) := by
  unfold input8008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8008_def : output8008 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8008_skip : Flapjack.WordAlloc.isSkip output8008 = true := by
  rw [output8008_def]
  conv => lhs; cbv
  try rfl
theorem node8008_eq : Flapjack.WordAlloc.removeDeadStructural input8008 value4008 value1 value2 = (output8008, value4008, value1) := by
  rw [input8008_def, output8008_def]
  try (conv => lhs; cbv)
  try rfl

def value4009 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13201 13193 (Flapjack.WordRegImm.reg 13197))))).val
theorem input8009_def : input8009 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13201 13193 (Flapjack.WordRegImm.reg 13197)))) := by
  unfold input8009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13201 13193 (Flapjack.WordRegImm.reg 13197))))).val
theorem output8009_def : output8009 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13201 13193 (Flapjack.WordRegImm.reg 13197)))) := by
  unfold output8009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8009_skip : Flapjack.WordAlloc.isSkip output8009 = false := by
  rw [output8009_def]
  conv => lhs; cbv
  try rfl
theorem node8009_eq : Flapjack.WordAlloc.removeDeadStructural input8009 value4008 value1 value2 = (output8009, value4009, value1) := by
  rw [input8009_def, output8009_def]
  try (conv => lhs; cbv)
  try rfl

def value4010 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13197 3128#64))).val
theorem input8010_def : input8010 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13197 3128#64)) := by
  unfold input8010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13197 3128#64))).val
theorem output8010_def : output8010 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13197 3128#64)) := by
  unfold output8010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8010_skip : Flapjack.WordAlloc.isSkip output8010 = false := by
  rw [output8010_def]
  conv => lhs; cbv
  try rfl
theorem node8010_eq : Flapjack.WordAlloc.removeDeadStructural input8010 value4009 value1 value2 = (output8010, value4010, value1) := by
  rw [input8010_def, output8010_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8010 input8009)).val
theorem input8011_def : input8011 = (.seq input8010 input8009) := by
  unfold input8011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8010 output8009)).val
theorem output8011_def : output8011 = (.seq output8010 output8009) := by
  unfold output8011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8011_skip : Flapjack.WordAlloc.isSkip output8011 = false := by
  rw [output8011_def]
  conv => lhs; cbv
  try rfl
theorem node8011_eq : Flapjack.WordAlloc.removeDeadStructural input8011 value4008 value1 value2 = (output8011, value4010, value1) := by
  rw [input8011_def, output8011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8009_eq]
  dsimp only
  rw [node8010_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4011 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13193 (Flapjack.WordLangAddr.addr 13189 18446744073709551104#64)))).val
theorem input8012_def : input8012 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13193 (Flapjack.WordLangAddr.addr 13189 18446744073709551104#64))) := by
  unfold input8012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13193 (Flapjack.WordLangAddr.addr 13189 18446744073709551104#64)))).val
theorem output8012_def : output8012 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13193 (Flapjack.WordLangAddr.addr 13189 18446744073709551104#64))) := by
  unfold output8012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8012_skip : Flapjack.WordAlloc.isSkip output8012 = false := by
  rw [output8012_def]
  conv => lhs; cbv
  try rfl
theorem node8012_eq : Flapjack.WordAlloc.removeDeadStructural input8012 value4010 value1 value2 = (output8012, value4011, value1) := by
  rw [input8012_def, output8012_def]
  try (conv => lhs; cbv)
  try rfl

def value4012 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13189 13185)).val
theorem input8013_def : input8013 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13189 13185) := by
  unfold input8013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13189 13185)).val
theorem output8013_def : output8013 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13189 13185) := by
  unfold output8013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8013_skip : Flapjack.WordAlloc.isSkip output8013 = false := by
  rw [output8013_def]
  conv => lhs; cbv
  try rfl
theorem node8013_eq : Flapjack.WordAlloc.removeDeadStructural input8013 value4011 value1 value2 = (output8013, value4012, value1) := by
  rw [input8013_def, output8013_def]
  try (conv => lhs; cbv)
  try rfl

def value4013 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13185 13181 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8014_def : input8014 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13185 13181 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13185 13181 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8014_def : output8014 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13185 13181 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8014_skip : Flapjack.WordAlloc.isSkip output8014 = false := by
  rw [output8014_def]
  conv => lhs; cbv
  try rfl
theorem node8014_eq : Flapjack.WordAlloc.removeDeadStructural input8014 value4012 value1 value2 = (output8014, value4013, value1) := by
  rw [input8014_def, output8014_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13181 Flapjack.WordStore.heapLength)).val
theorem input8015_def : input8015 = (Flapjack.WordLangProgHOL.get 13181 Flapjack.WordStore.heapLength) := by
  unfold input8015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13181 Flapjack.WordStore.heapLength)).val
theorem output8015_def : output8015 = (Flapjack.WordLangProgHOL.get 13181 Flapjack.WordStore.heapLength) := by
  unfold output8015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8015_skip : Flapjack.WordAlloc.isSkip output8015 = false := by
  rw [output8015_def]
  conv => lhs; cbv
  try rfl
theorem node8015_eq : Flapjack.WordAlloc.removeDeadStructural input8015 value4013 value1 value2 = (output8015, value5, value1) := by
  rw [input8015_def, output8015_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8015 input8014)).val
theorem input8016_def : input8016 = (.seq input8015 input8014) := by
  unfold input8016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8015 output8014)).val
theorem output8016_def : output8016 = (.seq output8015 output8014) := by
  unfold output8016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8016_skip : Flapjack.WordAlloc.isSkip output8016 = false := by
  rw [output8016_def]
  conv => lhs; cbv
  try rfl
theorem node8016_eq : Flapjack.WordAlloc.removeDeadStructural input8016 value4012 value1 value2 = (output8016, value5, value1) := by
  rw [input8016_def, output8016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8014_eq]
  dsimp only
  rw [node8015_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8016 input8013)).val
theorem input8017_def : input8017 = (.seq input8016 input8013) := by
  unfold input8017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8016 output8013)).val
theorem output8017_def : output8017 = (.seq output8016 output8013) := by
  unfold output8017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8017_skip : Flapjack.WordAlloc.isSkip output8017 = false := by
  rw [output8017_def]
  conv => lhs; cbv
  try rfl
theorem node8017_eq : Flapjack.WordAlloc.removeDeadStructural input8017 value4011 value1 value2 = (output8017, value5, value1) := by
  rw [input8017_def, output8017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8013_eq]
  dsimp only
  rw [node8016_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8017 input8012)).val
theorem input8018_def : input8018 = (.seq input8017 input8012) := by
  unfold input8018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8017 output8012)).val
theorem output8018_def : output8018 = (.seq output8017 output8012) := by
  unfold output8018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8018_skip : Flapjack.WordAlloc.isSkip output8018 = false := by
  rw [output8018_def]
  conv => lhs; cbv
  try rfl
theorem node8018_eq : Flapjack.WordAlloc.removeDeadStructural input8018 value4010 value1 value2 = (output8018, value5, value1) := by
  rw [input8018_def, output8018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8012_eq]
  dsimp only
  rw [node8017_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8018 input8011)).val
theorem input8019_def : input8019 = (.seq input8018 input8011) := by
  unfold input8019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8018 output8011)).val
theorem output8019_def : output8019 = (.seq output8018 output8011) := by
  unfold output8019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8019_skip : Flapjack.WordAlloc.isSkip output8019 = false := by
  rw [output8019_def]
  conv => lhs; cbv
  try rfl
theorem node8019_eq : Flapjack.WordAlloc.removeDeadStructural input8019 value4008 value1 value2 = (output8019, value5, value1) := by
  rw [input8019_def, output8019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8011_eq]
  dsimp only
  rw [node8018_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4014 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13173 (Flapjack.WordLangAddr.addr 13177 0#64)))).val
theorem input8020_def : input8020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13173 (Flapjack.WordLangAddr.addr 13177 0#64))) := by
  unfold input8020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13173 (Flapjack.WordLangAddr.addr 13177 0#64)))).val
theorem output8020_def : output8020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13173 (Flapjack.WordLangAddr.addr 13177 0#64))) := by
  unfold output8020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8020_skip : Flapjack.WordAlloc.isSkip output8020 = false := by
  rw [output8020_def]
  conv => lhs; cbv
  try rfl
theorem node8020_eq : Flapjack.WordAlloc.removeDeadStructural input8020 value5 value1 value2 = (output8020, value4014, value1) := by
  rw [input8020_def, output8020_def]
  try (conv => lhs; cbv)
  try rfl

def value4015 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13177, 13165)])).val
theorem input8021_def : input8021 = (Flapjack.WordLangProgHOL.move 0 [(13177, 13165)]) := by
  unfold input8021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13177, 13165)])).val
theorem output8021_def : output8021 = (Flapjack.WordLangProgHOL.move 0 [(13177, 13165)]) := by
  unfold output8021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8021_skip : Flapjack.WordAlloc.isSkip output8021 = false := by
  rw [output8021_def]
  conv => lhs; cbv
  try rfl
theorem node8021_eq : Flapjack.WordAlloc.removeDeadStructural input8021 value4014 value1 value2 = (output8021, value4015, value1) := by
  rw [input8021_def, output8021_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8021 input8020)).val
theorem input8022_def : input8022 = (.seq input8021 input8020) := by
  unfold input8022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8021 output8020)).val
theorem output8022_def : output8022 = (.seq output8021 output8020) := by
  unfold output8022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8022_skip : Flapjack.WordAlloc.isSkip output8022 = false := by
  rw [output8022_def]
  conv => lhs; cbv
  try rfl
theorem node8022_eq : Flapjack.WordAlloc.removeDeadStructural input8022 value5 value1 value2 = (output8022, value4015, value1) := by
  rw [input8022_def, output8022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8020_eq]
  dsimp only
  rw [node8021_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4016 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13173 14070580367580990887#64))).val
theorem input8023_def : input8023 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13173 14070580367580990887#64)) := by
  unfold input8023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13173 14070580367580990887#64))).val
theorem output8023_def : output8023 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13173 14070580367580990887#64)) := by
  unfold output8023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8023_skip : Flapjack.WordAlloc.isSkip output8023 = false := by
  rw [output8023_def]
  conv => lhs; cbv
  try rfl
theorem node8023_eq : Flapjack.WordAlloc.removeDeadStructural input8023 value4015 value1 value2 = (output8023, value4016, value1) := by
  rw [input8023_def, output8023_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13169 14070580367580990887#64))).val
theorem input8024_def : input8024 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13169 14070580367580990887#64)) := by
  unfold input8024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8024_def : output8024 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8024_skip : Flapjack.WordAlloc.isSkip output8024 = true := by
  rw [output8024_def]
  conv => lhs; cbv
  try rfl
theorem node8024_eq : Flapjack.WordAlloc.removeDeadStructural input8024 value4016 value1 value2 = (output8024, value4016, value1) := by
  rw [input8024_def, output8024_def]
  try (conv => lhs; cbv)
  try rfl

def value4017 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13165 13157 (Flapjack.WordRegImm.reg 13161))))).val
theorem input8025_def : input8025 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13165 13157 (Flapjack.WordRegImm.reg 13161)))) := by
  unfold input8025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13165 13157 (Flapjack.WordRegImm.reg 13161))))).val
theorem output8025_def : output8025 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13165 13157 (Flapjack.WordRegImm.reg 13161)))) := by
  unfold output8025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8025_skip : Flapjack.WordAlloc.isSkip output8025 = false := by
  rw [output8025_def]
  conv => lhs; cbv
  try rfl
theorem node8025_eq : Flapjack.WordAlloc.removeDeadStructural input8025 value4016 value1 value2 = (output8025, value4017, value1) := by
  rw [input8025_def, output8025_def]
  try (conv => lhs; cbv)
  try rfl

def value4018 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13161 3120#64))).val
theorem input8026_def : input8026 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13161 3120#64)) := by
  unfold input8026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13161 3120#64))).val
theorem output8026_def : output8026 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13161 3120#64)) := by
  unfold output8026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8026_skip : Flapjack.WordAlloc.isSkip output8026 = false := by
  rw [output8026_def]
  conv => lhs; cbv
  try rfl
theorem node8026_eq : Flapjack.WordAlloc.removeDeadStructural input8026 value4017 value1 value2 = (output8026, value4018, value1) := by
  rw [input8026_def, output8026_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8026 input8025)).val
theorem input8027_def : input8027 = (.seq input8026 input8025) := by
  unfold input8027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8026 output8025)).val
theorem output8027_def : output8027 = (.seq output8026 output8025) := by
  unfold output8027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8027_skip : Flapjack.WordAlloc.isSkip output8027 = false := by
  rw [output8027_def]
  conv => lhs; cbv
  try rfl
theorem node8027_eq : Flapjack.WordAlloc.removeDeadStructural input8027 value4016 value1 value2 = (output8027, value4018, value1) := by
  rw [input8027_def, output8027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8025_eq]
  dsimp only
  rw [node8026_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4019 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13157 (Flapjack.WordLangAddr.addr 13153 18446744073709551104#64)))).val
theorem input8028_def : input8028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13157 (Flapjack.WordLangAddr.addr 13153 18446744073709551104#64))) := by
  unfold input8028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13157 (Flapjack.WordLangAddr.addr 13153 18446744073709551104#64)))).val
theorem output8028_def : output8028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13157 (Flapjack.WordLangAddr.addr 13153 18446744073709551104#64))) := by
  unfold output8028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8028_skip : Flapjack.WordAlloc.isSkip output8028 = false := by
  rw [output8028_def]
  conv => lhs; cbv
  try rfl
theorem node8028_eq : Flapjack.WordAlloc.removeDeadStructural input8028 value4018 value1 value2 = (output8028, value4019, value1) := by
  rw [input8028_def, output8028_def]
  try (conv => lhs; cbv)
  try rfl

def value4020 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13153 13149)).val
theorem input8029_def : input8029 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13153 13149) := by
  unfold input8029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13153 13149)).val
theorem output8029_def : output8029 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13153 13149) := by
  unfold output8029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8029_skip : Flapjack.WordAlloc.isSkip output8029 = false := by
  rw [output8029_def]
  conv => lhs; cbv
  try rfl
theorem node8029_eq : Flapjack.WordAlloc.removeDeadStructural input8029 value4019 value1 value2 = (output8029, value4020, value1) := by
  rw [input8029_def, output8029_def]
  try (conv => lhs; cbv)
  try rfl

def value4021 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13149 13145 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8030_def : input8030 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13149 13145 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13149 13145 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8030_def : output8030 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13149 13145 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8030_skip : Flapjack.WordAlloc.isSkip output8030 = false := by
  rw [output8030_def]
  conv => lhs; cbv
  try rfl
theorem node8030_eq : Flapjack.WordAlloc.removeDeadStructural input8030 value4020 value1 value2 = (output8030, value4021, value1) := by
  rw [input8030_def, output8030_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13145 Flapjack.WordStore.heapLength)).val
theorem input8031_def : input8031 = (Flapjack.WordLangProgHOL.get 13145 Flapjack.WordStore.heapLength) := by
  unfold input8031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13145 Flapjack.WordStore.heapLength)).val
theorem output8031_def : output8031 = (Flapjack.WordLangProgHOL.get 13145 Flapjack.WordStore.heapLength) := by
  unfold output8031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8031_skip : Flapjack.WordAlloc.isSkip output8031 = false := by
  rw [output8031_def]
  conv => lhs; cbv
  try rfl
theorem node8031_eq : Flapjack.WordAlloc.removeDeadStructural input8031 value4021 value1 value2 = (output8031, value5, value1) := by
  rw [input8031_def, output8031_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8031 input8030)).val
theorem input8032_def : input8032 = (.seq input8031 input8030) := by
  unfold input8032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8031 output8030)).val
theorem output8032_def : output8032 = (.seq output8031 output8030) := by
  unfold output8032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8032_skip : Flapjack.WordAlloc.isSkip output8032 = false := by
  rw [output8032_def]
  conv => lhs; cbv
  try rfl
theorem node8032_eq : Flapjack.WordAlloc.removeDeadStructural input8032 value4020 value1 value2 = (output8032, value5, value1) := by
  rw [input8032_def, output8032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8030_eq]
  dsimp only
  rw [node8031_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8032 input8029)).val
theorem input8033_def : input8033 = (.seq input8032 input8029) := by
  unfold input8033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8032 output8029)).val
theorem output8033_def : output8033 = (.seq output8032 output8029) := by
  unfold output8033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8033_skip : Flapjack.WordAlloc.isSkip output8033 = false := by
  rw [output8033_def]
  conv => lhs; cbv
  try rfl
theorem node8033_eq : Flapjack.WordAlloc.removeDeadStructural input8033 value4019 value1 value2 = (output8033, value5, value1) := by
  rw [input8033_def, output8033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8029_eq]
  dsimp only
  rw [node8032_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8033 input8028)).val
theorem input8034_def : input8034 = (.seq input8033 input8028) := by
  unfold input8034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8033 output8028)).val
theorem output8034_def : output8034 = (.seq output8033 output8028) := by
  unfold output8034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8034_skip : Flapjack.WordAlloc.isSkip output8034 = false := by
  rw [output8034_def]
  conv => lhs; cbv
  try rfl
theorem node8034_eq : Flapjack.WordAlloc.removeDeadStructural input8034 value4018 value1 value2 = (output8034, value5, value1) := by
  rw [input8034_def, output8034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8028_eq]
  dsimp only
  rw [node8033_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8034 input8027)).val
theorem input8035_def : input8035 = (.seq input8034 input8027) := by
  unfold input8035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8034 output8027)).val
theorem output8035_def : output8035 = (.seq output8034 output8027) := by
  unfold output8035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8035_skip : Flapjack.WordAlloc.isSkip output8035 = false := by
  rw [output8035_def]
  conv => lhs; cbv
  try rfl
theorem node8035_eq : Flapjack.WordAlloc.removeDeadStructural input8035 value4016 value1 value2 = (output8035, value5, value1) := by
  rw [input8035_def, output8035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8027_eq]
  dsimp only
  rw [node8034_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4022 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13137 (Flapjack.WordLangAddr.addr 13141 0#64)))).val
theorem input8036_def : input8036 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13137 (Flapjack.WordLangAddr.addr 13141 0#64))) := by
  unfold input8036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13137 (Flapjack.WordLangAddr.addr 13141 0#64)))).val
theorem output8036_def : output8036 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13137 (Flapjack.WordLangAddr.addr 13141 0#64))) := by
  unfold output8036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8036_skip : Flapjack.WordAlloc.isSkip output8036 = false := by
  rw [output8036_def]
  conv => lhs; cbv
  try rfl
theorem node8036_eq : Flapjack.WordAlloc.removeDeadStructural input8036 value5 value1 value2 = (output8036, value4022, value1) := by
  rw [input8036_def, output8036_def]
  try (conv => lhs; cbv)
  try rfl

def value4023 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13141, 13129)])).val
theorem input8037_def : input8037 = (Flapjack.WordLangProgHOL.move 0 [(13141, 13129)]) := by
  unfold input8037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13141, 13129)])).val
theorem output8037_def : output8037 = (Flapjack.WordLangProgHOL.move 0 [(13141, 13129)]) := by
  unfold output8037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8037_skip : Flapjack.WordAlloc.isSkip output8037 = false := by
  rw [output8037_def]
  conv => lhs; cbv
  try rfl
theorem node8037_eq : Flapjack.WordAlloc.removeDeadStructural input8037 value4022 value1 value2 = (output8037, value4023, value1) := by
  rw [input8037_def, output8037_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8037 input8036)).val
theorem input8038_def : input8038 = (.seq input8037 input8036) := by
  unfold input8038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8037 output8036)).val
theorem output8038_def : output8038 = (.seq output8037 output8036) := by
  unfold output8038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8038_skip : Flapjack.WordAlloc.isSkip output8038 = false := by
  rw [output8038_def]
  conv => lhs; cbv
  try rfl
theorem node8038_eq : Flapjack.WordAlloc.removeDeadStructural input8038 value5 value1 value2 = (output8038, value4023, value1) := by
  rw [input8038_def, output8038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8036_eq]
  dsimp only
  rw [node8037_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4024 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13137 15162865775551710499#64))).val
theorem input8039_def : input8039 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13137 15162865775551710499#64)) := by
  unfold input8039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13137 15162865775551710499#64))).val
theorem output8039_def : output8039 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13137 15162865775551710499#64)) := by
  unfold output8039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8039_skip : Flapjack.WordAlloc.isSkip output8039 = false := by
  rw [output8039_def]
  conv => lhs; cbv
  try rfl
theorem node8039_eq : Flapjack.WordAlloc.removeDeadStructural input8039 value4023 value1 value2 = (output8039, value4024, value1) := by
  rw [input8039_def, output8039_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13133 15162865775551710499#64))).val
theorem input8040_def : input8040 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13133 15162865775551710499#64)) := by
  unfold input8040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8040_def : output8040 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8040_skip : Flapjack.WordAlloc.isSkip output8040 = true := by
  rw [output8040_def]
  conv => lhs; cbv
  try rfl
theorem node8040_eq : Flapjack.WordAlloc.removeDeadStructural input8040 value4024 value1 value2 = (output8040, value4024, value1) := by
  rw [input8040_def, output8040_def]
  try (conv => lhs; cbv)
  try rfl

def value4025 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13129 13121 (Flapjack.WordRegImm.reg 13125))))).val
theorem input8041_def : input8041 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13129 13121 (Flapjack.WordRegImm.reg 13125)))) := by
  unfold input8041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13129 13121 (Flapjack.WordRegImm.reg 13125))))).val
theorem output8041_def : output8041 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13129 13121 (Flapjack.WordRegImm.reg 13125)))) := by
  unfold output8041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8041_skip : Flapjack.WordAlloc.isSkip output8041 = false := by
  rw [output8041_def]
  conv => lhs; cbv
  try rfl
theorem node8041_eq : Flapjack.WordAlloc.removeDeadStructural input8041 value4024 value1 value2 = (output8041, value4025, value1) := by
  rw [input8041_def, output8041_def]
  try (conv => lhs; cbv)
  try rfl

def value4026 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13125 3112#64))).val
theorem input8042_def : input8042 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13125 3112#64)) := by
  unfold input8042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13125 3112#64))).val
theorem output8042_def : output8042 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13125 3112#64)) := by
  unfold output8042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8042_skip : Flapjack.WordAlloc.isSkip output8042 = false := by
  rw [output8042_def]
  conv => lhs; cbv
  try rfl
theorem node8042_eq : Flapjack.WordAlloc.removeDeadStructural input8042 value4025 value1 value2 = (output8042, value4026, value1) := by
  rw [input8042_def, output8042_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8042 input8041)).val
theorem input8043_def : input8043 = (.seq input8042 input8041) := by
  unfold input8043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8042 output8041)).val
theorem output8043_def : output8043 = (.seq output8042 output8041) := by
  unfold output8043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8043_skip : Flapjack.WordAlloc.isSkip output8043 = false := by
  rw [output8043_def]
  conv => lhs; cbv
  try rfl
theorem node8043_eq : Flapjack.WordAlloc.removeDeadStructural input8043 value4024 value1 value2 = (output8043, value4026, value1) := by
  rw [input8043_def, output8043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8041_eq]
  dsimp only
  rw [node8042_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4027 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13121 (Flapjack.WordLangAddr.addr 13117 18446744073709551104#64)))).val
theorem input8044_def : input8044 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13121 (Flapjack.WordLangAddr.addr 13117 18446744073709551104#64))) := by
  unfold input8044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13121 (Flapjack.WordLangAddr.addr 13117 18446744073709551104#64)))).val
theorem output8044_def : output8044 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13121 (Flapjack.WordLangAddr.addr 13117 18446744073709551104#64))) := by
  unfold output8044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8044_skip : Flapjack.WordAlloc.isSkip output8044 = false := by
  rw [output8044_def]
  conv => lhs; cbv
  try rfl
theorem node8044_eq : Flapjack.WordAlloc.removeDeadStructural input8044 value4026 value1 value2 = (output8044, value4027, value1) := by
  rw [input8044_def, output8044_def]
  try (conv => lhs; cbv)
  try rfl

def value4028 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13117 13113)).val
theorem input8045_def : input8045 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13117 13113) := by
  unfold input8045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13117 13113)).val
theorem output8045_def : output8045 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13117 13113) := by
  unfold output8045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8045_skip : Flapjack.WordAlloc.isSkip output8045 = false := by
  rw [output8045_def]
  conv => lhs; cbv
  try rfl
theorem node8045_eq : Flapjack.WordAlloc.removeDeadStructural input8045 value4027 value1 value2 = (output8045, value4028, value1) := by
  rw [input8045_def, output8045_def]
  try (conv => lhs; cbv)
  try rfl

def value4029 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13113 13109 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8046_def : input8046 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13113 13109 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13113 13109 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8046_def : output8046 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13113 13109 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8046_skip : Flapjack.WordAlloc.isSkip output8046 = false := by
  rw [output8046_def]
  conv => lhs; cbv
  try rfl
theorem node8046_eq : Flapjack.WordAlloc.removeDeadStructural input8046 value4028 value1 value2 = (output8046, value4029, value1) := by
  rw [input8046_def, output8046_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13109 Flapjack.WordStore.heapLength)).val
theorem input8047_def : input8047 = (Flapjack.WordLangProgHOL.get 13109 Flapjack.WordStore.heapLength) := by
  unfold input8047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13109 Flapjack.WordStore.heapLength)).val
theorem output8047_def : output8047 = (Flapjack.WordLangProgHOL.get 13109 Flapjack.WordStore.heapLength) := by
  unfold output8047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8047_skip : Flapjack.WordAlloc.isSkip output8047 = false := by
  rw [output8047_def]
  conv => lhs; cbv
  try rfl
theorem node8047_eq : Flapjack.WordAlloc.removeDeadStructural input8047 value4029 value1 value2 = (output8047, value5, value1) := by
  rw [input8047_def, output8047_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8047 input8046)).val
theorem input8048_def : input8048 = (.seq input8047 input8046) := by
  unfold input8048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8047 output8046)).val
theorem output8048_def : output8048 = (.seq output8047 output8046) := by
  unfold output8048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8048_skip : Flapjack.WordAlloc.isSkip output8048 = false := by
  rw [output8048_def]
  conv => lhs; cbv
  try rfl
theorem node8048_eq : Flapjack.WordAlloc.removeDeadStructural input8048 value4028 value1 value2 = (output8048, value5, value1) := by
  rw [input8048_def, output8048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8046_eq]
  dsimp only
  rw [node8047_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8048 input8045)).val
theorem input8049_def : input8049 = (.seq input8048 input8045) := by
  unfold input8049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8048 output8045)).val
theorem output8049_def : output8049 = (.seq output8048 output8045) := by
  unfold output8049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8049_skip : Flapjack.WordAlloc.isSkip output8049 = false := by
  rw [output8049_def]
  conv => lhs; cbv
  try rfl
theorem node8049_eq : Flapjack.WordAlloc.removeDeadStructural input8049 value4027 value1 value2 = (output8049, value5, value1) := by
  rw [input8049_def, output8049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8045_eq]
  dsimp only
  rw [node8048_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8049 input8044)).val
theorem input8050_def : input8050 = (.seq input8049 input8044) := by
  unfold input8050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8049 output8044)).val
theorem output8050_def : output8050 = (.seq output8049 output8044) := by
  unfold output8050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8050_skip : Flapjack.WordAlloc.isSkip output8050 = false := by
  rw [output8050_def]
  conv => lhs; cbv
  try rfl
theorem node8050_eq : Flapjack.WordAlloc.removeDeadStructural input8050 value4026 value1 value2 = (output8050, value5, value1) := by
  rw [input8050_def, output8050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8044_eq]
  dsimp only
  rw [node8049_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8050 input8043)).val
theorem input8051_def : input8051 = (.seq input8050 input8043) := by
  unfold input8051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8050 output8043)).val
theorem output8051_def : output8051 = (.seq output8050 output8043) := by
  unfold output8051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8051_skip : Flapjack.WordAlloc.isSkip output8051 = false := by
  rw [output8051_def]
  conv => lhs; cbv
  try rfl
theorem node8051_eq : Flapjack.WordAlloc.removeDeadStructural input8051 value4024 value1 value2 = (output8051, value5, value1) := by
  rw [input8051_def, output8051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8043_eq]
  dsimp only
  rw [node8050_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4030 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13101 (Flapjack.WordLangAddr.addr 13105 0#64)))).val
theorem input8052_def : input8052 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13101 (Flapjack.WordLangAddr.addr 13105 0#64))) := by
  unfold input8052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13101 (Flapjack.WordLangAddr.addr 13105 0#64)))).val
theorem output8052_def : output8052 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13101 (Flapjack.WordLangAddr.addr 13105 0#64))) := by
  unfold output8052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8052_skip : Flapjack.WordAlloc.isSkip output8052 = false := by
  rw [output8052_def]
  conv => lhs; cbv
  try rfl
theorem node8052_eq : Flapjack.WordAlloc.removeDeadStructural input8052 value5 value1 value2 = (output8052, value4030, value1) := by
  rw [input8052_def, output8052_def]
  try (conv => lhs; cbv)
  try rfl

def value4031 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13105, 13093)])).val
theorem input8053_def : input8053 = (Flapjack.WordLangProgHOL.move 0 [(13105, 13093)]) := by
  unfold input8053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13105, 13093)])).val
theorem output8053_def : output8053 = (Flapjack.WordLangProgHOL.move 0 [(13105, 13093)]) := by
  unfold output8053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8053_skip : Flapjack.WordAlloc.isSkip output8053 = false := by
  rw [output8053_def]
  conv => lhs; cbv
  try rfl
theorem node8053_eq : Flapjack.WordAlloc.removeDeadStructural input8053 value4030 value1 value2 = (output8053, value4031, value1) := by
  rw [input8053_def, output8053_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8053 input8052)).val
theorem input8054_def : input8054 = (.seq input8053 input8052) := by
  unfold input8054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8053 output8052)).val
theorem output8054_def : output8054 = (.seq output8053 output8052) := by
  unfold output8054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8054_skip : Flapjack.WordAlloc.isSkip output8054 = false := by
  rw [output8054_def]
  conv => lhs; cbv
  try rfl
theorem node8054_eq : Flapjack.WordAlloc.removeDeadStructural input8054 value5 value1 value2 = (output8054, value4031, value1) := by
  rw [input8054_def, output8054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8052_eq]
  dsimp only
  rw [node8053_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4032 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13101 13321614990632673782#64))).val
theorem input8055_def : input8055 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13101 13321614990632673782#64)) := by
  unfold input8055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13101 13321614990632673782#64))).val
theorem output8055_def : output8055 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13101 13321614990632673782#64)) := by
  unfold output8055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8055_skip : Flapjack.WordAlloc.isSkip output8055 = false := by
  rw [output8055_def]
  conv => lhs; cbv
  try rfl
theorem node8055_eq : Flapjack.WordAlloc.removeDeadStructural input8055 value4031 value1 value2 = (output8055, value4032, value1) := by
  rw [input8055_def, output8055_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13097 13321614990632673782#64))).val
theorem input8056_def : input8056 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13097 13321614990632673782#64)) := by
  unfold input8056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8056_def : output8056 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8056_skip : Flapjack.WordAlloc.isSkip output8056 = true := by
  rw [output8056_def]
  conv => lhs; cbv
  try rfl
theorem node8056_eq : Flapjack.WordAlloc.removeDeadStructural input8056 value4032 value1 value2 = (output8056, value4032, value1) := by
  rw [input8056_def, output8056_def]
  try (conv => lhs; cbv)
  try rfl

def value4033 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13093 13085 (Flapjack.WordRegImm.reg 13089))))).val
theorem input8057_def : input8057 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13093 13085 (Flapjack.WordRegImm.reg 13089)))) := by
  unfold input8057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13093 13085 (Flapjack.WordRegImm.reg 13089))))).val
theorem output8057_def : output8057 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13093 13085 (Flapjack.WordRegImm.reg 13089)))) := by
  unfold output8057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8057_skip : Flapjack.WordAlloc.isSkip output8057 = false := by
  rw [output8057_def]
  conv => lhs; cbv
  try rfl
theorem node8057_eq : Flapjack.WordAlloc.removeDeadStructural input8057 value4032 value1 value2 = (output8057, value4033, value1) := by
  rw [input8057_def, output8057_def]
  try (conv => lhs; cbv)
  try rfl

def value4034 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13089 3104#64))).val
theorem input8058_def : input8058 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13089 3104#64)) := by
  unfold input8058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13089 3104#64))).val
theorem output8058_def : output8058 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13089 3104#64)) := by
  unfold output8058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8058_skip : Flapjack.WordAlloc.isSkip output8058 = false := by
  rw [output8058_def]
  conv => lhs; cbv
  try rfl
theorem node8058_eq : Flapjack.WordAlloc.removeDeadStructural input8058 value4033 value1 value2 = (output8058, value4034, value1) := by
  rw [input8058_def, output8058_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8058 input8057)).val
theorem input8059_def : input8059 = (.seq input8058 input8057) := by
  unfold input8059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8058 output8057)).val
theorem output8059_def : output8059 = (.seq output8058 output8057) := by
  unfold output8059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8059_skip : Flapjack.WordAlloc.isSkip output8059 = false := by
  rw [output8059_def]
  conv => lhs; cbv
  try rfl
theorem node8059_eq : Flapjack.WordAlloc.removeDeadStructural input8059 value4032 value1 value2 = (output8059, value4034, value1) := by
  rw [input8059_def, output8059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8057_eq]
  dsimp only
  rw [node8058_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4035 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13085 (Flapjack.WordLangAddr.addr 13081 18446744073709551104#64)))).val
theorem input8060_def : input8060 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13085 (Flapjack.WordLangAddr.addr 13081 18446744073709551104#64))) := by
  unfold input8060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13085 (Flapjack.WordLangAddr.addr 13081 18446744073709551104#64)))).val
theorem output8060_def : output8060 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13085 (Flapjack.WordLangAddr.addr 13081 18446744073709551104#64))) := by
  unfold output8060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8060_skip : Flapjack.WordAlloc.isSkip output8060 = false := by
  rw [output8060_def]
  conv => lhs; cbv
  try rfl
theorem node8060_eq : Flapjack.WordAlloc.removeDeadStructural input8060 value4034 value1 value2 = (output8060, value4035, value1) := by
  rw [input8060_def, output8060_def]
  try (conv => lhs; cbv)
  try rfl

def value4036 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13081 13077)).val
theorem input8061_def : input8061 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13081 13077) := by
  unfold input8061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13081 13077)).val
theorem output8061_def : output8061 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13081 13077) := by
  unfold output8061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8061_skip : Flapjack.WordAlloc.isSkip output8061 = false := by
  rw [output8061_def]
  conv => lhs; cbv
  try rfl
theorem node8061_eq : Flapjack.WordAlloc.removeDeadStructural input8061 value4035 value1 value2 = (output8061, value4036, value1) := by
  rw [input8061_def, output8061_def]
  try (conv => lhs; cbv)
  try rfl

def value4037 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13077 13073 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8062_def : input8062 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13077 13073 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13077 13073 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8062_def : output8062 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13077 13073 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8062_skip : Flapjack.WordAlloc.isSkip output8062 = false := by
  rw [output8062_def]
  conv => lhs; cbv
  try rfl
theorem node8062_eq : Flapjack.WordAlloc.removeDeadStructural input8062 value4036 value1 value2 = (output8062, value4037, value1) := by
  rw [input8062_def, output8062_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13073 Flapjack.WordStore.heapLength)).val
theorem input8063_def : input8063 = (Flapjack.WordLangProgHOL.get 13073 Flapjack.WordStore.heapLength) := by
  unfold input8063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13073 Flapjack.WordStore.heapLength)).val
theorem output8063_def : output8063 = (Flapjack.WordLangProgHOL.get 13073 Flapjack.WordStore.heapLength) := by
  unfold output8063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8063_skip : Flapjack.WordAlloc.isSkip output8063 = false := by
  rw [output8063_def]
  conv => lhs; cbv
  try rfl
theorem node8063_eq : Flapjack.WordAlloc.removeDeadStructural input8063 value4037 value1 value2 = (output8063, value5, value1) := by
  rw [input8063_def, output8063_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8063 input8062)).val
theorem input8064_def : input8064 = (.seq input8063 input8062) := by
  unfold input8064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8063 output8062)).val
theorem output8064_def : output8064 = (.seq output8063 output8062) := by
  unfold output8064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8064_skip : Flapjack.WordAlloc.isSkip output8064 = false := by
  rw [output8064_def]
  conv => lhs; cbv
  try rfl
theorem node8064_eq : Flapjack.WordAlloc.removeDeadStructural input8064 value4036 value1 value2 = (output8064, value5, value1) := by
  rw [input8064_def, output8064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8062_eq]
  dsimp only
  rw [node8063_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8064 input8061)).val
theorem input8065_def : input8065 = (.seq input8064 input8061) := by
  unfold input8065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8064 output8061)).val
theorem output8065_def : output8065 = (.seq output8064 output8061) := by
  unfold output8065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8065_skip : Flapjack.WordAlloc.isSkip output8065 = false := by
  rw [output8065_def]
  conv => lhs; cbv
  try rfl
theorem node8065_eq : Flapjack.WordAlloc.removeDeadStructural input8065 value4035 value1 value2 = (output8065, value5, value1) := by
  rw [input8065_def, output8065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8061_eq]
  dsimp only
  rw [node8064_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8065 input8060)).val
theorem input8066_def : input8066 = (.seq input8065 input8060) := by
  unfold input8066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8065 output8060)).val
theorem output8066_def : output8066 = (.seq output8065 output8060) := by
  unfold output8066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8066_skip : Flapjack.WordAlloc.isSkip output8066 = false := by
  rw [output8066_def]
  conv => lhs; cbv
  try rfl
theorem node8066_eq : Flapjack.WordAlloc.removeDeadStructural input8066 value4034 value1 value2 = (output8066, value5, value1) := by
  rw [input8066_def, output8066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8060_eq]
  dsimp only
  rw [node8065_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8066 input8059)).val
theorem input8067_def : input8067 = (.seq input8066 input8059) := by
  unfold input8067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8066 output8059)).val
theorem output8067_def : output8067 = (.seq output8066 output8059) := by
  unfold output8067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8067_skip : Flapjack.WordAlloc.isSkip output8067 = false := by
  rw [output8067_def]
  conv => lhs; cbv
  try rfl
theorem node8067_eq : Flapjack.WordAlloc.removeDeadStructural input8067 value4032 value1 value2 = (output8067, value5, value1) := by
  rw [input8067_def, output8067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8059_eq]
  dsimp only
  rw [node8066_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4038 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13065 (Flapjack.WordLangAddr.addr 13069 0#64)))).val
theorem input8068_def : input8068 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13065 (Flapjack.WordLangAddr.addr 13069 0#64))) := by
  unfold input8068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13065 (Flapjack.WordLangAddr.addr 13069 0#64)))).val
theorem output8068_def : output8068 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13065 (Flapjack.WordLangAddr.addr 13069 0#64))) := by
  unfold output8068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8068_skip : Flapjack.WordAlloc.isSkip output8068 = false := by
  rw [output8068_def]
  conv => lhs; cbv
  try rfl
theorem node8068_eq : Flapjack.WordAlloc.removeDeadStructural input8068 value5 value1 value2 = (output8068, value4038, value1) := by
  rw [input8068_def, output8068_def]
  try (conv => lhs; cbv)
  try rfl

def value4039 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13069, 13057)])).val
theorem input8069_def : input8069 = (Flapjack.WordLangProgHOL.move 0 [(13069, 13057)]) := by
  unfold input8069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13069, 13057)])).val
theorem output8069_def : output8069 = (Flapjack.WordLangProgHOL.move 0 [(13069, 13057)]) := by
  unfold output8069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8069_skip : Flapjack.WordAlloc.isSkip output8069 = false := by
  rw [output8069_def]
  conv => lhs; cbv
  try rfl
theorem node8069_eq : Flapjack.WordAlloc.removeDeadStructural input8069 value4038 value1 value2 = (output8069, value4039, value1) := by
  rw [input8069_def, output8069_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8069 input8068)).val
theorem input8070_def : input8070 = (.seq input8069 input8068) := by
  unfold input8070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8069 output8068)).val
theorem output8070_def : output8070 = (.seq output8069 output8068) := by
  unfold output8070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8070_skip : Flapjack.WordAlloc.isSkip output8070 = false := by
  rw [output8070_def]
  conv => lhs; cbv
  try rfl
theorem node8070_eq : Flapjack.WordAlloc.removeDeadStructural input8070 value5 value1 value2 = (output8070, value4039, value1) := by
  rw [input8070_def, output8070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8068_eq]
  dsimp only
  rw [node8069_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4040 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13065 1389807578337138705#64))).val
theorem input8071_def : input8071 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13065 1389807578337138705#64)) := by
  unfold input8071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13065 1389807578337138705#64))).val
theorem output8071_def : output8071 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13065 1389807578337138705#64)) := by
  unfold output8071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8071_skip : Flapjack.WordAlloc.isSkip output8071 = false := by
  rw [output8071_def]
  conv => lhs; cbv
  try rfl
theorem node8071_eq : Flapjack.WordAlloc.removeDeadStructural input8071 value4039 value1 value2 = (output8071, value4040, value1) := by
  rw [input8071_def, output8071_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13061 1389807578337138705#64))).val
theorem input8072_def : input8072 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13061 1389807578337138705#64)) := by
  unfold input8072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8072_def : output8072 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8072_skip : Flapjack.WordAlloc.isSkip output8072 = true := by
  rw [output8072_def]
  conv => lhs; cbv
  try rfl
theorem node8072_eq : Flapjack.WordAlloc.removeDeadStructural input8072 value4040 value1 value2 = (output8072, value4040, value1) := by
  rw [input8072_def, output8072_def]
  try (conv => lhs; cbv)
  try rfl

def value4041 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13057 13049 (Flapjack.WordRegImm.reg 13053))))).val
theorem input8073_def : input8073 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13057 13049 (Flapjack.WordRegImm.reg 13053)))) := by
  unfold input8073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13057 13049 (Flapjack.WordRegImm.reg 13053))))).val
theorem output8073_def : output8073 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13057 13049 (Flapjack.WordRegImm.reg 13053)))) := by
  unfold output8073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8073_skip : Flapjack.WordAlloc.isSkip output8073 = false := by
  rw [output8073_def]
  conv => lhs; cbv
  try rfl
theorem node8073_eq : Flapjack.WordAlloc.removeDeadStructural input8073 value4040 value1 value2 = (output8073, value4041, value1) := by
  rw [input8073_def, output8073_def]
  try (conv => lhs; cbv)
  try rfl

def value4042 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13053 3096#64))).val
theorem input8074_def : input8074 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13053 3096#64)) := by
  unfold input8074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13053 3096#64))).val
theorem output8074_def : output8074 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13053 3096#64)) := by
  unfold output8074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8074_skip : Flapjack.WordAlloc.isSkip output8074 = false := by
  rw [output8074_def]
  conv => lhs; cbv
  try rfl
theorem node8074_eq : Flapjack.WordAlloc.removeDeadStructural input8074 value4041 value1 value2 = (output8074, value4042, value1) := by
  rw [input8074_def, output8074_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8074 input8073)).val
theorem input8075_def : input8075 = (.seq input8074 input8073) := by
  unfold input8075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8074 output8073)).val
theorem output8075_def : output8075 = (.seq output8074 output8073) := by
  unfold output8075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8075_skip : Flapjack.WordAlloc.isSkip output8075 = false := by
  rw [output8075_def]
  conv => lhs; cbv
  try rfl
theorem node8075_eq : Flapjack.WordAlloc.removeDeadStructural input8075 value4040 value1 value2 = (output8075, value4042, value1) := by
  rw [input8075_def, output8075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8073_eq]
  dsimp only
  rw [node8074_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4043 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13049 (Flapjack.WordLangAddr.addr 13045 18446744073709551104#64)))).val
theorem input8076_def : input8076 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13049 (Flapjack.WordLangAddr.addr 13045 18446744073709551104#64))) := by
  unfold input8076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13049 (Flapjack.WordLangAddr.addr 13045 18446744073709551104#64)))).val
theorem output8076_def : output8076 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13049 (Flapjack.WordLangAddr.addr 13045 18446744073709551104#64))) := by
  unfold output8076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8076_skip : Flapjack.WordAlloc.isSkip output8076 = false := by
  rw [output8076_def]
  conv => lhs; cbv
  try rfl
theorem node8076_eq : Flapjack.WordAlloc.removeDeadStructural input8076 value4042 value1 value2 = (output8076, value4043, value1) := by
  rw [input8076_def, output8076_def]
  try (conv => lhs; cbv)
  try rfl

def value4044 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13045 13041)).val
theorem input8077_def : input8077 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13045 13041) := by
  unfold input8077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13045 13041)).val
theorem output8077_def : output8077 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13045 13041) := by
  unfold output8077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8077_skip : Flapjack.WordAlloc.isSkip output8077 = false := by
  rw [output8077_def]
  conv => lhs; cbv
  try rfl
theorem node8077_eq : Flapjack.WordAlloc.removeDeadStructural input8077 value4043 value1 value2 = (output8077, value4044, value1) := by
  rw [input8077_def, output8077_def]
  try (conv => lhs; cbv)
  try rfl

def value4045 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13041 13037 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8078_def : input8078 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13041 13037 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13041 13037 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8078_def : output8078 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13041 13037 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8078_skip : Flapjack.WordAlloc.isSkip output8078 = false := by
  rw [output8078_def]
  conv => lhs; cbv
  try rfl
theorem node8078_eq : Flapjack.WordAlloc.removeDeadStructural input8078 value4044 value1 value2 = (output8078, value4045, value1) := by
  rw [input8078_def, output8078_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13037 Flapjack.WordStore.heapLength)).val
theorem input8079_def : input8079 = (Flapjack.WordLangProgHOL.get 13037 Flapjack.WordStore.heapLength) := by
  unfold input8079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13037 Flapjack.WordStore.heapLength)).val
theorem output8079_def : output8079 = (Flapjack.WordLangProgHOL.get 13037 Flapjack.WordStore.heapLength) := by
  unfold output8079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8079_skip : Flapjack.WordAlloc.isSkip output8079 = false := by
  rw [output8079_def]
  conv => lhs; cbv
  try rfl
theorem node8079_eq : Flapjack.WordAlloc.removeDeadStructural input8079 value4045 value1 value2 = (output8079, value5, value1) := by
  rw [input8079_def, output8079_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8079 input8078)).val
theorem input8080_def : input8080 = (.seq input8079 input8078) := by
  unfold input8080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8079 output8078)).val
theorem output8080_def : output8080 = (.seq output8079 output8078) := by
  unfold output8080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8080_skip : Flapjack.WordAlloc.isSkip output8080 = false := by
  rw [output8080_def]
  conv => lhs; cbv
  try rfl
theorem node8080_eq : Flapjack.WordAlloc.removeDeadStructural input8080 value4044 value1 value2 = (output8080, value5, value1) := by
  rw [input8080_def, output8080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8078_eq]
  dsimp only
  rw [node8079_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8080 input8077)).val
theorem input8081_def : input8081 = (.seq input8080 input8077) := by
  unfold input8081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8080 output8077)).val
theorem output8081_def : output8081 = (.seq output8080 output8077) := by
  unfold output8081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8081_skip : Flapjack.WordAlloc.isSkip output8081 = false := by
  rw [output8081_def]
  conv => lhs; cbv
  try rfl
theorem node8081_eq : Flapjack.WordAlloc.removeDeadStructural input8081 value4043 value1 value2 = (output8081, value5, value1) := by
  rw [input8081_def, output8081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8077_eq]
  dsimp only
  rw [node8080_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8081 input8076)).val
theorem input8082_def : input8082 = (.seq input8081 input8076) := by
  unfold input8082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8081 output8076)).val
theorem output8082_def : output8082 = (.seq output8081 output8076) := by
  unfold output8082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8082_skip : Flapjack.WordAlloc.isSkip output8082 = false := by
  rw [output8082_def]
  conv => lhs; cbv
  try rfl
theorem node8082_eq : Flapjack.WordAlloc.removeDeadStructural input8082 value4042 value1 value2 = (output8082, value5, value1) := by
  rw [input8082_def, output8082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8076_eq]
  dsimp only
  rw [node8081_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8082 input8075)).val
theorem input8083_def : input8083 = (.seq input8082 input8075) := by
  unfold input8083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8082 output8075)).val
theorem output8083_def : output8083 = (.seq output8082 output8075) := by
  unfold output8083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8083_skip : Flapjack.WordAlloc.isSkip output8083 = false := by
  rw [output8083_def]
  conv => lhs; cbv
  try rfl
theorem node8083_eq : Flapjack.WordAlloc.removeDeadStructural input8083 value4040 value1 value2 = (output8083, value5, value1) := by
  rw [input8083_def, output8083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8075_eq]
  dsimp only
  rw [node8082_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4046 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13029 (Flapjack.WordLangAddr.addr 13033 0#64)))).val
theorem input8084_def : input8084 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13029 (Flapjack.WordLangAddr.addr 13033 0#64))) := by
  unfold input8084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13029 (Flapjack.WordLangAddr.addr 13033 0#64)))).val
theorem output8084_def : output8084 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 13029 (Flapjack.WordLangAddr.addr 13033 0#64))) := by
  unfold output8084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8084_skip : Flapjack.WordAlloc.isSkip output8084 = false := by
  rw [output8084_def]
  conv => lhs; cbv
  try rfl
theorem node8084_eq : Flapjack.WordAlloc.removeDeadStructural input8084 value5 value1 value2 = (output8084, value4046, value1) := by
  rw [input8084_def, output8084_def]
  try (conv => lhs; cbv)
  try rfl

def value4047 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13033, 13021)])).val
theorem input8085_def : input8085 = (Flapjack.WordLangProgHOL.move 0 [(13033, 13021)]) := by
  unfold input8085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(13033, 13021)])).val
theorem output8085_def : output8085 = (Flapjack.WordLangProgHOL.move 0 [(13033, 13021)]) := by
  unfold output8085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8085_skip : Flapjack.WordAlloc.isSkip output8085 = false := by
  rw [output8085_def]
  conv => lhs; cbv
  try rfl
theorem node8085_eq : Flapjack.WordAlloc.removeDeadStructural input8085 value4046 value1 value2 = (output8085, value4047, value1) := by
  rw [input8085_def, output8085_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8085 input8084)).val
theorem input8086_def : input8086 = (.seq input8085 input8084) := by
  unfold input8086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8085 output8084)).val
theorem output8086_def : output8086 = (.seq output8085 output8084) := by
  unfold output8086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8086_skip : Flapjack.WordAlloc.isSkip output8086 = false := by
  rw [output8086_def]
  conv => lhs; cbv
  try rfl
theorem node8086_eq : Flapjack.WordAlloc.removeDeadStructural input8086 value5 value1 value2 = (output8086, value4047, value1) := by
  rw [input8086_def, output8086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8084_eq]
  dsimp only
  rw [node8085_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4048 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13029 15352831428748068483#64))).val
theorem input8087_def : input8087 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13029 15352831428748068483#64)) := by
  unfold input8087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13029 15352831428748068483#64))).val
theorem output8087_def : output8087 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13029 15352831428748068483#64)) := by
  unfold output8087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8087_skip : Flapjack.WordAlloc.isSkip output8087 = false := by
  rw [output8087_def]
  conv => lhs; cbv
  try rfl
theorem node8087_eq : Flapjack.WordAlloc.removeDeadStructural input8087 value4047 value1 value2 = (output8087, value4048, value1) := by
  rw [input8087_def, output8087_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13025 15352831428748068483#64))).val
theorem input8088_def : input8088 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13025 15352831428748068483#64)) := by
  unfold input8088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8088_def : output8088 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8088_skip : Flapjack.WordAlloc.isSkip output8088 = true := by
  rw [output8088_def]
  conv => lhs; cbv
  try rfl
theorem node8088_eq : Flapjack.WordAlloc.removeDeadStructural input8088 value4048 value1 value2 = (output8088, value4048, value1) := by
  rw [input8088_def, output8088_def]
  try (conv => lhs; cbv)
  try rfl

def value4049 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13021 13013 (Flapjack.WordRegImm.reg 13017))))).val
theorem input8089_def : input8089 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13021 13013 (Flapjack.WordRegImm.reg 13017)))) := by
  unfold input8089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13021 13013 (Flapjack.WordRegImm.reg 13017))))).val
theorem output8089_def : output8089 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 13021 13013 (Flapjack.WordRegImm.reg 13017)))) := by
  unfold output8089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8089_skip : Flapjack.WordAlloc.isSkip output8089 = false := by
  rw [output8089_def]
  conv => lhs; cbv
  try rfl
theorem node8089_eq : Flapjack.WordAlloc.removeDeadStructural input8089 value4048 value1 value2 = (output8089, value4049, value1) := by
  rw [input8089_def, output8089_def]
  try (conv => lhs; cbv)
  try rfl

def value4050 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13017 3088#64))).val
theorem input8090_def : input8090 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13017 3088#64)) := by
  unfold input8090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13017 3088#64))).val
theorem output8090_def : output8090 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 13017 3088#64)) := by
  unfold output8090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8090_skip : Flapjack.WordAlloc.isSkip output8090 = false := by
  rw [output8090_def]
  conv => lhs; cbv
  try rfl
theorem node8090_eq : Flapjack.WordAlloc.removeDeadStructural input8090 value4049 value1 value2 = (output8090, value4050, value1) := by
  rw [input8090_def, output8090_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8090 input8089)).val
theorem input8091_def : input8091 = (.seq input8090 input8089) := by
  unfold input8091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8090 output8089)).val
theorem output8091_def : output8091 = (.seq output8090 output8089) := by
  unfold output8091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8091_skip : Flapjack.WordAlloc.isSkip output8091 = false := by
  rw [output8091_def]
  conv => lhs; cbv
  try rfl
theorem node8091_eq : Flapjack.WordAlloc.removeDeadStructural input8091 value4048 value1 value2 = (output8091, value4050, value1) := by
  rw [input8091_def, output8091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8089_eq]
  dsimp only
  rw [node8090_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4051 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13013 (Flapjack.WordLangAddr.addr 13009 18446744073709551104#64)))).val
theorem input8092_def : input8092 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13013 (Flapjack.WordLangAddr.addr 13009 18446744073709551104#64))) := by
  unfold input8092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13013 (Flapjack.WordLangAddr.addr 13009 18446744073709551104#64)))).val
theorem output8092_def : output8092 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 13013 (Flapjack.WordLangAddr.addr 13009 18446744073709551104#64))) := by
  unfold output8092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8092_skip : Flapjack.WordAlloc.isSkip output8092 = false := by
  rw [output8092_def]
  conv => lhs; cbv
  try rfl
theorem node8092_eq : Flapjack.WordAlloc.removeDeadStructural input8092 value4050 value1 value2 = (output8092, value4051, value1) := by
  rw [input8092_def, output8092_def]
  try (conv => lhs; cbv)
  try rfl

def value4052 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13009 13005)).val
theorem input8093_def : input8093 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13009 13005) := by
  unfold input8093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13009 13005)).val
theorem output8093_def : output8093 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 13009 13005) := by
  unfold output8093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8093_skip : Flapjack.WordAlloc.isSkip output8093 = false := by
  rw [output8093_def]
  conv => lhs; cbv
  try rfl
theorem node8093_eq : Flapjack.WordAlloc.removeDeadStructural input8093 value4051 value1 value2 = (output8093, value4052, value1) := by
  rw [input8093_def, output8093_def]
  try (conv => lhs; cbv)
  try rfl

def value4053 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13005 13001 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8094_def : input8094 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13005 13001 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13005 13001 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8094_def : output8094 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 13005 13001 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8094_skip : Flapjack.WordAlloc.isSkip output8094 = false := by
  rw [output8094_def]
  conv => lhs; cbv
  try rfl
theorem node8094_eq : Flapjack.WordAlloc.removeDeadStructural input8094 value4052 value1 value2 = (output8094, value4053, value1) := by
  rw [input8094_def, output8094_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13001 Flapjack.WordStore.heapLength)).val
theorem input8095_def : input8095 = (Flapjack.WordLangProgHOL.get 13001 Flapjack.WordStore.heapLength) := by
  unfold input8095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 13001 Flapjack.WordStore.heapLength)).val
theorem output8095_def : output8095 = (Flapjack.WordLangProgHOL.get 13001 Flapjack.WordStore.heapLength) := by
  unfold output8095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8095_skip : Flapjack.WordAlloc.isSkip output8095 = false := by
  rw [output8095_def]
  conv => lhs; cbv
  try rfl
theorem node8095_eq : Flapjack.WordAlloc.removeDeadStructural input8095 value4053 value1 value2 = (output8095, value5, value1) := by
  rw [input8095_def, output8095_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8095 input8094)).val
theorem input8096_def : input8096 = (.seq input8095 input8094) := by
  unfold input8096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8095 output8094)).val
theorem output8096_def : output8096 = (.seq output8095 output8094) := by
  unfold output8096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8096_skip : Flapjack.WordAlloc.isSkip output8096 = false := by
  rw [output8096_def]
  conv => lhs; cbv
  try rfl
theorem node8096_eq : Flapjack.WordAlloc.removeDeadStructural input8096 value4052 value1 value2 = (output8096, value5, value1) := by
  rw [input8096_def, output8096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8094_eq]
  dsimp only
  rw [node8095_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8096 input8093)).val
theorem input8097_def : input8097 = (.seq input8096 input8093) := by
  unfold input8097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8096 output8093)).val
theorem output8097_def : output8097 = (.seq output8096 output8093) := by
  unfold output8097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8097_skip : Flapjack.WordAlloc.isSkip output8097 = false := by
  rw [output8097_def]
  conv => lhs; cbv
  try rfl
theorem node8097_eq : Flapjack.WordAlloc.removeDeadStructural input8097 value4051 value1 value2 = (output8097, value5, value1) := by
  rw [input8097_def, output8097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8093_eq]
  dsimp only
  rw [node8096_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8097 input8092)).val
theorem input8098_def : input8098 = (.seq input8097 input8092) := by
  unfold input8098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8097 output8092)).val
theorem output8098_def : output8098 = (.seq output8097 output8092) := by
  unfold output8098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8098_skip : Flapjack.WordAlloc.isSkip output8098 = false := by
  rw [output8098_def]
  conv => lhs; cbv
  try rfl
theorem node8098_eq : Flapjack.WordAlloc.removeDeadStructural input8098 value4050 value1 value2 = (output8098, value5, value1) := by
  rw [input8098_def, output8098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8092_eq]
  dsimp only
  rw [node8097_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8098 input8091)).val
theorem input8099_def : input8099 = (.seq input8098 input8091) := by
  unfold input8099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8098 output8091)).val
theorem output8099_def : output8099 = (.seq output8098 output8091) := by
  unfold output8099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8099_skip : Flapjack.WordAlloc.isSkip output8099 = false := by
  rw [output8099_def]
  conv => lhs; cbv
  try rfl
theorem node8099_eq : Flapjack.WordAlloc.removeDeadStructural input8099 value4048 value1 value2 = (output8099, value5, value1) := by
  rw [input8099_def, output8099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8091_eq]
  dsimp only
  rw [node8098_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4054 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12993 (Flapjack.WordLangAddr.addr 12997 0#64)))).val
theorem input8100_def : input8100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12993 (Flapjack.WordLangAddr.addr 12997 0#64))) := by
  unfold input8100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12993 (Flapjack.WordLangAddr.addr 12997 0#64)))).val
theorem output8100_def : output8100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12993 (Flapjack.WordLangAddr.addr 12997 0#64))) := by
  unfold output8100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8100_skip : Flapjack.WordAlloc.isSkip output8100 = false := by
  rw [output8100_def]
  conv => lhs; cbv
  try rfl
theorem node8100_eq : Flapjack.WordAlloc.removeDeadStructural input8100 value5 value1 value2 = (output8100, value4054, value1) := by
  rw [input8100_def, output8100_def]
  try (conv => lhs; cbv)
  try rfl

def value4055 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12997, 12985)])).val
theorem input8101_def : input8101 = (Flapjack.WordLangProgHOL.move 0 [(12997, 12985)]) := by
  unfold input8101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12997, 12985)])).val
theorem output8101_def : output8101 = (Flapjack.WordLangProgHOL.move 0 [(12997, 12985)]) := by
  unfold output8101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8101_skip : Flapjack.WordAlloc.isSkip output8101 = false := by
  rw [output8101_def]
  conv => lhs; cbv
  try rfl
theorem node8101_eq : Flapjack.WordAlloc.removeDeadStructural input8101 value4054 value1 value2 = (output8101, value4055, value1) := by
  rw [input8101_def, output8101_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8101 input8100)).val
theorem input8102_def : input8102 = (.seq input8101 input8100) := by
  unfold input8102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8101 output8100)).val
theorem output8102_def : output8102 = (.seq output8101 output8100) := by
  unfold output8102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8102_skip : Flapjack.WordAlloc.isSkip output8102 = false := by
  rw [output8102_def]
  conv => lhs; cbv
  try rfl
theorem node8102_eq : Flapjack.WordAlloc.removeDeadStructural input8102 value5 value1 value2 = (output8102, value4055, value1) := by
  rw [input8102_def, output8102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8100_eq]
  dsimp only
  rw [node8101_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4056 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12993 1307144967559264317#64))).val
theorem input8103_def : input8103 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12993 1307144967559264317#64)) := by
  unfold input8103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12993 1307144967559264317#64))).val
theorem output8103_def : output8103 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12993 1307144967559264317#64)) := by
  unfold output8103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8103_skip : Flapjack.WordAlloc.isSkip output8103 = false := by
  rw [output8103_def]
  conv => lhs; cbv
  try rfl
theorem node8103_eq : Flapjack.WordAlloc.removeDeadStructural input8103 value4055 value1 value2 = (output8103, value4056, value1) := by
  rw [input8103_def, output8103_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12989 1307144967559264317#64))).val
theorem input8104_def : input8104 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12989 1307144967559264317#64)) := by
  unfold input8104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8104_def : output8104 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8104_skip : Flapjack.WordAlloc.isSkip output8104 = true := by
  rw [output8104_def]
  conv => lhs; cbv
  try rfl
theorem node8104_eq : Flapjack.WordAlloc.removeDeadStructural input8104 value4056 value1 value2 = (output8104, value4056, value1) := by
  rw [input8104_def, output8104_def]
  try (conv => lhs; cbv)
  try rfl

def value4057 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12985 12977 (Flapjack.WordRegImm.reg 12981))))).val
theorem input8105_def : input8105 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12985 12977 (Flapjack.WordRegImm.reg 12981)))) := by
  unfold input8105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12985 12977 (Flapjack.WordRegImm.reg 12981))))).val
theorem output8105_def : output8105 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12985 12977 (Flapjack.WordRegImm.reg 12981)))) := by
  unfold output8105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8105_skip : Flapjack.WordAlloc.isSkip output8105 = false := by
  rw [output8105_def]
  conv => lhs; cbv
  try rfl
theorem node8105_eq : Flapjack.WordAlloc.removeDeadStructural input8105 value4056 value1 value2 = (output8105, value4057, value1) := by
  rw [input8105_def, output8105_def]
  try (conv => lhs; cbv)
  try rfl

def value4058 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12981 3080#64))).val
theorem input8106_def : input8106 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12981 3080#64)) := by
  unfold input8106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12981 3080#64))).val
theorem output8106_def : output8106 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12981 3080#64)) := by
  unfold output8106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8106_skip : Flapjack.WordAlloc.isSkip output8106 = false := by
  rw [output8106_def]
  conv => lhs; cbv
  try rfl
theorem node8106_eq : Flapjack.WordAlloc.removeDeadStructural input8106 value4057 value1 value2 = (output8106, value4058, value1) := by
  rw [input8106_def, output8106_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8106 input8105)).val
theorem input8107_def : input8107 = (.seq input8106 input8105) := by
  unfold input8107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8106 output8105)).val
theorem output8107_def : output8107 = (.seq output8106 output8105) := by
  unfold output8107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8107_skip : Flapjack.WordAlloc.isSkip output8107 = false := by
  rw [output8107_def]
  conv => lhs; cbv
  try rfl
theorem node8107_eq : Flapjack.WordAlloc.removeDeadStructural input8107 value4056 value1 value2 = (output8107, value4058, value1) := by
  rw [input8107_def, output8107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8105_eq]
  dsimp only
  rw [node8106_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4059 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12977 (Flapjack.WordLangAddr.addr 12973 18446744073709551104#64)))).val
theorem input8108_def : input8108 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12977 (Flapjack.WordLangAddr.addr 12973 18446744073709551104#64))) := by
  unfold input8108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12977 (Flapjack.WordLangAddr.addr 12973 18446744073709551104#64)))).val
theorem output8108_def : output8108 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12977 (Flapjack.WordLangAddr.addr 12973 18446744073709551104#64))) := by
  unfold output8108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8108_skip : Flapjack.WordAlloc.isSkip output8108 = false := by
  rw [output8108_def]
  conv => lhs; cbv
  try rfl
theorem node8108_eq : Flapjack.WordAlloc.removeDeadStructural input8108 value4058 value1 value2 = (output8108, value4059, value1) := by
  rw [input8108_def, output8108_def]
  try (conv => lhs; cbv)
  try rfl

def value4060 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12973 12969)).val
theorem input8109_def : input8109 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12973 12969) := by
  unfold input8109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12973 12969)).val
theorem output8109_def : output8109 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12973 12969) := by
  unfold output8109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8109_skip : Flapjack.WordAlloc.isSkip output8109 = false := by
  rw [output8109_def]
  conv => lhs; cbv
  try rfl
theorem node8109_eq : Flapjack.WordAlloc.removeDeadStructural input8109 value4059 value1 value2 = (output8109, value4060, value1) := by
  rw [input8109_def, output8109_def]
  try (conv => lhs; cbv)
  try rfl

def value4061 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12969 12965 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8110_def : input8110 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12969 12965 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12969 12965 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8110_def : output8110 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12969 12965 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8110_skip : Flapjack.WordAlloc.isSkip output8110 = false := by
  rw [output8110_def]
  conv => lhs; cbv
  try rfl
theorem node8110_eq : Flapjack.WordAlloc.removeDeadStructural input8110 value4060 value1 value2 = (output8110, value4061, value1) := by
  rw [input8110_def, output8110_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12965 Flapjack.WordStore.heapLength)).val
theorem input8111_def : input8111 = (Flapjack.WordLangProgHOL.get 12965 Flapjack.WordStore.heapLength) := by
  unfold input8111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12965 Flapjack.WordStore.heapLength)).val
theorem output8111_def : output8111 = (Flapjack.WordLangProgHOL.get 12965 Flapjack.WordStore.heapLength) := by
  unfold output8111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8111_skip : Flapjack.WordAlloc.isSkip output8111 = false := by
  rw [output8111_def]
  conv => lhs; cbv
  try rfl
theorem node8111_eq : Flapjack.WordAlloc.removeDeadStructural input8111 value4061 value1 value2 = (output8111, value5, value1) := by
  rw [input8111_def, output8111_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8111 input8110)).val
theorem input8112_def : input8112 = (.seq input8111 input8110) := by
  unfold input8112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8111 output8110)).val
theorem output8112_def : output8112 = (.seq output8111 output8110) := by
  unfold output8112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8112_skip : Flapjack.WordAlloc.isSkip output8112 = false := by
  rw [output8112_def]
  conv => lhs; cbv
  try rfl
theorem node8112_eq : Flapjack.WordAlloc.removeDeadStructural input8112 value4060 value1 value2 = (output8112, value5, value1) := by
  rw [input8112_def, output8112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8110_eq]
  dsimp only
  rw [node8111_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8112 input8109)).val
theorem input8113_def : input8113 = (.seq input8112 input8109) := by
  unfold input8113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8112 output8109)).val
theorem output8113_def : output8113 = (.seq output8112 output8109) := by
  unfold output8113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8113_skip : Flapjack.WordAlloc.isSkip output8113 = false := by
  rw [output8113_def]
  conv => lhs; cbv
  try rfl
theorem node8113_eq : Flapjack.WordAlloc.removeDeadStructural input8113 value4059 value1 value2 = (output8113, value5, value1) := by
  rw [input8113_def, output8113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8109_eq]
  dsimp only
  rw [node8112_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8113 input8108)).val
theorem input8114_def : input8114 = (.seq input8113 input8108) := by
  unfold input8114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8113 output8108)).val
theorem output8114_def : output8114 = (.seq output8113 output8108) := by
  unfold output8114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8114_skip : Flapjack.WordAlloc.isSkip output8114 = false := by
  rw [output8114_def]
  conv => lhs; cbv
  try rfl
theorem node8114_eq : Flapjack.WordAlloc.removeDeadStructural input8114 value4058 value1 value2 = (output8114, value5, value1) := by
  rw [input8114_def, output8114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8108_eq]
  dsimp only
  rw [node8113_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8114 input8107)).val
theorem input8115_def : input8115 = (.seq input8114 input8107) := by
  unfold input8115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8114 output8107)).val
theorem output8115_def : output8115 = (.seq output8114 output8107) := by
  unfold output8115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8115_skip : Flapjack.WordAlloc.isSkip output8115 = false := by
  rw [output8115_def]
  conv => lhs; cbv
  try rfl
theorem node8115_eq : Flapjack.WordAlloc.removeDeadStructural input8115 value4056 value1 value2 = (output8115, value5, value1) := by
  rw [input8115_def, output8115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8107_eq]
  dsimp only
  rw [node8114_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4062 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12957 (Flapjack.WordLangAddr.addr 12961 0#64)))).val
theorem input8116_def : input8116 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12957 (Flapjack.WordLangAddr.addr 12961 0#64))) := by
  unfold input8116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12957 (Flapjack.WordLangAddr.addr 12961 0#64)))).val
theorem output8116_def : output8116 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12957 (Flapjack.WordLangAddr.addr 12961 0#64))) := by
  unfold output8116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8116_skip : Flapjack.WordAlloc.isSkip output8116 = false := by
  rw [output8116_def]
  conv => lhs; cbv
  try rfl
theorem node8116_eq : Flapjack.WordAlloc.removeDeadStructural input8116 value5 value1 value2 = (output8116, value4062, value1) := by
  rw [input8116_def, output8116_def]
  try (conv => lhs; cbv)
  try rfl

def value4063 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12961, 12949)])).val
theorem input8117_def : input8117 = (Flapjack.WordLangProgHOL.move 0 [(12961, 12949)]) := by
  unfold input8117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12961, 12949)])).val
theorem output8117_def : output8117 = (Flapjack.WordLangProgHOL.move 0 [(12961, 12949)]) := by
  unfold output8117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8117_skip : Flapjack.WordAlloc.isSkip output8117 = false := by
  rw [output8117_def]
  conv => lhs; cbv
  try rfl
theorem node8117_eq : Flapjack.WordAlloc.removeDeadStructural input8117 value4062 value1 value2 = (output8117, value4063, value1) := by
  rw [input8117_def, output8117_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8117 input8116)).val
theorem input8118_def : input8118 = (.seq input8117 input8116) := by
  unfold input8118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8117 output8116)).val
theorem output8118_def : output8118 = (.seq output8117 output8116) := by
  unfold output8118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8118_skip : Flapjack.WordAlloc.isSkip output8118 = false := by
  rw [output8118_def]
  conv => lhs; cbv
  try rfl
theorem node8118_eq : Flapjack.WordAlloc.removeDeadStructural input8118 value5 value1 value2 = (output8118, value4063, value1) := by
  rw [input8118_def, output8118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8116_eq]
  dsimp only
  rw [node8117_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4064 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12957 1121505450578652468#64))).val
theorem input8119_def : input8119 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12957 1121505450578652468#64)) := by
  unfold input8119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12957 1121505450578652468#64))).val
theorem output8119_def : output8119 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12957 1121505450578652468#64)) := by
  unfold output8119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8119_skip : Flapjack.WordAlloc.isSkip output8119 = false := by
  rw [output8119_def]
  conv => lhs; cbv
  try rfl
theorem node8119_eq : Flapjack.WordAlloc.removeDeadStructural input8119 value4063 value1 value2 = (output8119, value4064, value1) := by
  rw [input8119_def, output8119_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12953 1121505450578652468#64))).val
theorem input8120_def : input8120 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12953 1121505450578652468#64)) := by
  unfold input8120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8120_def : output8120 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8120_skip : Flapjack.WordAlloc.isSkip output8120 = true := by
  rw [output8120_def]
  conv => lhs; cbv
  try rfl
theorem node8120_eq : Flapjack.WordAlloc.removeDeadStructural input8120 value4064 value1 value2 = (output8120, value4064, value1) := by
  rw [input8120_def, output8120_def]
  try (conv => lhs; cbv)
  try rfl

def value4065 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12949 12941 (Flapjack.WordRegImm.reg 12945))))).val
theorem input8121_def : input8121 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12949 12941 (Flapjack.WordRegImm.reg 12945)))) := by
  unfold input8121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12949 12941 (Flapjack.WordRegImm.reg 12945))))).val
theorem output8121_def : output8121 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12949 12941 (Flapjack.WordRegImm.reg 12945)))) := by
  unfold output8121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8121_skip : Flapjack.WordAlloc.isSkip output8121 = false := by
  rw [output8121_def]
  conv => lhs; cbv
  try rfl
theorem node8121_eq : Flapjack.WordAlloc.removeDeadStructural input8121 value4064 value1 value2 = (output8121, value4065, value1) := by
  rw [input8121_def, output8121_def]
  try (conv => lhs; cbv)
  try rfl

def value4066 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12945 3072#64))).val
theorem input8122_def : input8122 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12945 3072#64)) := by
  unfold input8122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12945 3072#64))).val
theorem output8122_def : output8122 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12945 3072#64)) := by
  unfold output8122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8122_skip : Flapjack.WordAlloc.isSkip output8122 = false := by
  rw [output8122_def]
  conv => lhs; cbv
  try rfl
theorem node8122_eq : Flapjack.WordAlloc.removeDeadStructural input8122 value4065 value1 value2 = (output8122, value4066, value1) := by
  rw [input8122_def, output8122_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8122 input8121)).val
theorem input8123_def : input8123 = (.seq input8122 input8121) := by
  unfold input8123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8122 output8121)).val
theorem output8123_def : output8123 = (.seq output8122 output8121) := by
  unfold output8123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8123_skip : Flapjack.WordAlloc.isSkip output8123 = false := by
  rw [output8123_def]
  conv => lhs; cbv
  try rfl
theorem node8123_eq : Flapjack.WordAlloc.removeDeadStructural input8123 value4064 value1 value2 = (output8123, value4066, value1) := by
  rw [input8123_def, output8123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8121_eq]
  dsimp only
  rw [node8122_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4067 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12941 (Flapjack.WordLangAddr.addr 12937 18446744073709551104#64)))).val
theorem input8124_def : input8124 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12941 (Flapjack.WordLangAddr.addr 12937 18446744073709551104#64))) := by
  unfold input8124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12941 (Flapjack.WordLangAddr.addr 12937 18446744073709551104#64)))).val
theorem output8124_def : output8124 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12941 (Flapjack.WordLangAddr.addr 12937 18446744073709551104#64))) := by
  unfold output8124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8124_skip : Flapjack.WordAlloc.isSkip output8124 = false := by
  rw [output8124_def]
  conv => lhs; cbv
  try rfl
theorem node8124_eq : Flapjack.WordAlloc.removeDeadStructural input8124 value4066 value1 value2 = (output8124, value4067, value1) := by
  rw [input8124_def, output8124_def]
  try (conv => lhs; cbv)
  try rfl

def value4068 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12937 12933)).val
theorem input8125_def : input8125 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12937 12933) := by
  unfold input8125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12937 12933)).val
theorem output8125_def : output8125 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12937 12933) := by
  unfold output8125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8125_skip : Flapjack.WordAlloc.isSkip output8125 = false := by
  rw [output8125_def]
  conv => lhs; cbv
  try rfl
theorem node8125_eq : Flapjack.WordAlloc.removeDeadStructural input8125 value4067 value1 value2 = (output8125, value4068, value1) := by
  rw [input8125_def, output8125_def]
  try (conv => lhs; cbv)
  try rfl

def value4069 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12933 12929 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8126_def : input8126 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12933 12929 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12933 12929 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8126_def : output8126 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12933 12929 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8126_skip : Flapjack.WordAlloc.isSkip output8126 = false := by
  rw [output8126_def]
  conv => lhs; cbv
  try rfl
theorem node8126_eq : Flapjack.WordAlloc.removeDeadStructural input8126 value4068 value1 value2 = (output8126, value4069, value1) := by
  rw [input8126_def, output8126_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12929 Flapjack.WordStore.heapLength)).val
theorem input8127_def : input8127 = (Flapjack.WordLangProgHOL.get 12929 Flapjack.WordStore.heapLength) := by
  unfold input8127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12929 Flapjack.WordStore.heapLength)).val
theorem output8127_def : output8127 = (Flapjack.WordLangProgHOL.get 12929 Flapjack.WordStore.heapLength) := by
  unfold output8127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8127_skip : Flapjack.WordAlloc.isSkip output8127 = false := by
  rw [output8127_def]
  conv => lhs; cbv
  try rfl
theorem node8127_eq : Flapjack.WordAlloc.removeDeadStructural input8127 value4069 value1 value2 = (output8127, value5, value1) := by
  rw [input8127_def, output8127_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8127 input8126)).val
theorem input8128_def : input8128 = (.seq input8127 input8126) := by
  unfold input8128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8127 output8126)).val
theorem output8128_def : output8128 = (.seq output8127 output8126) := by
  unfold output8128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8128_skip : Flapjack.WordAlloc.isSkip output8128 = false := by
  rw [output8128_def]
  conv => lhs; cbv
  try rfl
theorem node8128_eq : Flapjack.WordAlloc.removeDeadStructural input8128 value4068 value1 value2 = (output8128, value5, value1) := by
  rw [input8128_def, output8128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8126_eq]
  dsimp only
  rw [node8127_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8128 input8125)).val
theorem input8129_def : input8129 = (.seq input8128 input8125) := by
  unfold input8129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8128 output8125)).val
theorem output8129_def : output8129 = (.seq output8128 output8125) := by
  unfold output8129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8129_skip : Flapjack.WordAlloc.isSkip output8129 = false := by
  rw [output8129_def]
  conv => lhs; cbv
  try rfl
theorem node8129_eq : Flapjack.WordAlloc.removeDeadStructural input8129 value4067 value1 value2 = (output8129, value5, value1) := by
  rw [input8129_def, output8129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8125_eq]
  dsimp only
  rw [node8128_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8129 input8124)).val
theorem input8130_def : input8130 = (.seq input8129 input8124) := by
  unfold input8130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8129 output8124)).val
theorem output8130_def : output8130 = (.seq output8129 output8124) := by
  unfold output8130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8130_skip : Flapjack.WordAlloc.isSkip output8130 = false := by
  rw [output8130_def]
  conv => lhs; cbv
  try rfl
theorem node8130_eq : Flapjack.WordAlloc.removeDeadStructural input8130 value4066 value1 value2 = (output8130, value5, value1) := by
  rw [input8130_def, output8130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8124_eq]
  dsimp only
  rw [node8129_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8130 input8123)).val
theorem input8131_def : input8131 = (.seq input8130 input8123) := by
  unfold input8131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8130 output8123)).val
theorem output8131_def : output8131 = (.seq output8130 output8123) := by
  unfold output8131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8131_skip : Flapjack.WordAlloc.isSkip output8131 = false := by
  rw [output8131_def]
  conv => lhs; cbv
  try rfl
theorem node8131_eq : Flapjack.WordAlloc.removeDeadStructural input8131 value4064 value1 value2 = (output8131, value5, value1) := by
  rw [input8131_def, output8131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8123_eq]
  dsimp only
  rw [node8130_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4070 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12921 (Flapjack.WordLangAddr.addr 12925 0#64)))).val
theorem input8132_def : input8132 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12921 (Flapjack.WordLangAddr.addr 12925 0#64))) := by
  unfold input8132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12921 (Flapjack.WordLangAddr.addr 12925 0#64)))).val
theorem output8132_def : output8132 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12921 (Flapjack.WordLangAddr.addr 12925 0#64))) := by
  unfold output8132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8132_skip : Flapjack.WordAlloc.isSkip output8132 = false := by
  rw [output8132_def]
  conv => lhs; cbv
  try rfl
theorem node8132_eq : Flapjack.WordAlloc.removeDeadStructural input8132 value5 value1 value2 = (output8132, value4070, value1) := by
  rw [input8132_def, output8132_def]
  try (conv => lhs; cbv)
  try rfl

def value4071 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12925, 12913)])).val
theorem input8133_def : input8133 = (Flapjack.WordLangProgHOL.move 0 [(12925, 12913)]) := by
  unfold input8133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12925, 12913)])).val
theorem output8133_def : output8133 = (Flapjack.WordLangProgHOL.move 0 [(12925, 12913)]) := by
  unfold output8133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8133_skip : Flapjack.WordAlloc.isSkip output8133 = false := by
  rw [output8133_def]
  conv => lhs; cbv
  try rfl
theorem node8133_eq : Flapjack.WordAlloc.removeDeadStructural input8133 value4070 value1 value2 = (output8133, value4071, value1) := by
  rw [input8133_def, output8133_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8133 input8132)).val
theorem input8134_def : input8134 = (.seq input8133 input8132) := by
  unfold input8134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8133 output8132)).val
theorem output8134_def : output8134 = (.seq output8133 output8132) := by
  unfold output8134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8134_skip : Flapjack.WordAlloc.isSkip output8134 = false := by
  rw [output8134_def]
  conv => lhs; cbv
  try rfl
theorem node8134_eq : Flapjack.WordAlloc.removeDeadStructural input8134 value5 value1 value2 = (output8134, value4071, value1) := by
  rw [input8134_def, output8134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8132_eq]
  dsimp only
  rw [node8133_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4072 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12921 15475889019760388287#64))).val
theorem input8135_def : input8135 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12921 15475889019760388287#64)) := by
  unfold input8135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12921 15475889019760388287#64))).val
theorem output8135_def : output8135 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12921 15475889019760388287#64)) := by
  unfold output8135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8135_skip : Flapjack.WordAlloc.isSkip output8135 = false := by
  rw [output8135_def]
  conv => lhs; cbv
  try rfl
theorem node8135_eq : Flapjack.WordAlloc.removeDeadStructural input8135 value4071 value1 value2 = (output8135, value4072, value1) := by
  rw [input8135_def, output8135_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12917 15475889019760388287#64))).val
theorem input8136_def : input8136 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12917 15475889019760388287#64)) := by
  unfold input8136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8136_def : output8136 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8136_skip : Flapjack.WordAlloc.isSkip output8136 = true := by
  rw [output8136_def]
  conv => lhs; cbv
  try rfl
theorem node8136_eq : Flapjack.WordAlloc.removeDeadStructural input8136 value4072 value1 value2 = (output8136, value4072, value1) := by
  rw [input8136_def, output8136_def]
  try (conv => lhs; cbv)
  try rfl

def value4073 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12913 12905 (Flapjack.WordRegImm.reg 12909))))).val
theorem input8137_def : input8137 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12913 12905 (Flapjack.WordRegImm.reg 12909)))) := by
  unfold input8137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12913 12905 (Flapjack.WordRegImm.reg 12909))))).val
theorem output8137_def : output8137 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12913 12905 (Flapjack.WordRegImm.reg 12909)))) := by
  unfold output8137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8137_skip : Flapjack.WordAlloc.isSkip output8137 = false := by
  rw [output8137_def]
  conv => lhs; cbv
  try rfl
theorem node8137_eq : Flapjack.WordAlloc.removeDeadStructural input8137 value4072 value1 value2 = (output8137, value4073, value1) := by
  rw [input8137_def, output8137_def]
  try (conv => lhs; cbv)
  try rfl

def value4074 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12909 3064#64))).val
theorem input8138_def : input8138 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12909 3064#64)) := by
  unfold input8138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12909 3064#64))).val
theorem output8138_def : output8138 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12909 3064#64)) := by
  unfold output8138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8138_skip : Flapjack.WordAlloc.isSkip output8138 = false := by
  rw [output8138_def]
  conv => lhs; cbv
  try rfl
theorem node8138_eq : Flapjack.WordAlloc.removeDeadStructural input8138 value4073 value1 value2 = (output8138, value4074, value1) := by
  rw [input8138_def, output8138_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8138 input8137)).val
theorem input8139_def : input8139 = (.seq input8138 input8137) := by
  unfold input8139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8138 output8137)).val
theorem output8139_def : output8139 = (.seq output8138 output8137) := by
  unfold output8139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8139_skip : Flapjack.WordAlloc.isSkip output8139 = false := by
  rw [output8139_def]
  conv => lhs; cbv
  try rfl
theorem node8139_eq : Flapjack.WordAlloc.removeDeadStructural input8139 value4072 value1 value2 = (output8139, value4074, value1) := by
  rw [input8139_def, output8139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8137_eq]
  dsimp only
  rw [node8138_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4075 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12905 (Flapjack.WordLangAddr.addr 12901 18446744073709551104#64)))).val
theorem input8140_def : input8140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12905 (Flapjack.WordLangAddr.addr 12901 18446744073709551104#64))) := by
  unfold input8140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12905 (Flapjack.WordLangAddr.addr 12901 18446744073709551104#64)))).val
theorem output8140_def : output8140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12905 (Flapjack.WordLangAddr.addr 12901 18446744073709551104#64))) := by
  unfold output8140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8140_skip : Flapjack.WordAlloc.isSkip output8140 = false := by
  rw [output8140_def]
  conv => lhs; cbv
  try rfl
theorem node8140_eq : Flapjack.WordAlloc.removeDeadStructural input8140 value4074 value1 value2 = (output8140, value4075, value1) := by
  rw [input8140_def, output8140_def]
  try (conv => lhs; cbv)
  try rfl

def value4076 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12901 12897)).val
theorem input8141_def : input8141 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12901 12897) := by
  unfold input8141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12901 12897)).val
theorem output8141_def : output8141 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12901 12897) := by
  unfold output8141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8141_skip : Flapjack.WordAlloc.isSkip output8141 = false := by
  rw [output8141_def]
  conv => lhs; cbv
  try rfl
theorem node8141_eq : Flapjack.WordAlloc.removeDeadStructural input8141 value4075 value1 value2 = (output8141, value4076, value1) := by
  rw [input8141_def, output8141_def]
  try (conv => lhs; cbv)
  try rfl

def value4077 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12897 12893 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8142_def : input8142 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12897 12893 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12897 12893 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8142_def : output8142 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12897 12893 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8142_skip : Flapjack.WordAlloc.isSkip output8142 = false := by
  rw [output8142_def]
  conv => lhs; cbv
  try rfl
theorem node8142_eq : Flapjack.WordAlloc.removeDeadStructural input8142 value4076 value1 value2 = (output8142, value4077, value1) := by
  rw [input8142_def, output8142_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12893 Flapjack.WordStore.heapLength)).val
theorem input8143_def : input8143 = (Flapjack.WordLangProgHOL.get 12893 Flapjack.WordStore.heapLength) := by
  unfold input8143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12893 Flapjack.WordStore.heapLength)).val
theorem output8143_def : output8143 = (Flapjack.WordLangProgHOL.get 12893 Flapjack.WordStore.heapLength) := by
  unfold output8143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8143_skip : Flapjack.WordAlloc.isSkip output8143 = false := by
  rw [output8143_def]
  conv => lhs; cbv
  try rfl
theorem node8143_eq : Flapjack.WordAlloc.removeDeadStructural input8143 value4077 value1 value2 = (output8143, value5, value1) := by
  rw [input8143_def, output8143_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8143 input8142)).val
theorem input8144_def : input8144 = (.seq input8143 input8142) := by
  unfold input8144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8143 output8142)).val
theorem output8144_def : output8144 = (.seq output8143 output8142) := by
  unfold output8144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8144_skip : Flapjack.WordAlloc.isSkip output8144 = false := by
  rw [output8144_def]
  conv => lhs; cbv
  try rfl
theorem node8144_eq : Flapjack.WordAlloc.removeDeadStructural input8144 value4076 value1 value2 = (output8144, value5, value1) := by
  rw [input8144_def, output8144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8142_eq]
  dsimp only
  rw [node8143_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8144 input8141)).val
theorem input8145_def : input8145 = (.seq input8144 input8141) := by
  unfold input8145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8144 output8141)).val
theorem output8145_def : output8145 = (.seq output8144 output8141) := by
  unfold output8145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8145_skip : Flapjack.WordAlloc.isSkip output8145 = false := by
  rw [output8145_def]
  conv => lhs; cbv
  try rfl
theorem node8145_eq : Flapjack.WordAlloc.removeDeadStructural input8145 value4075 value1 value2 = (output8145, value5, value1) := by
  rw [input8145_def, output8145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8141_eq]
  dsimp only
  rw [node8144_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8145 input8140)).val
theorem input8146_def : input8146 = (.seq input8145 input8140) := by
  unfold input8146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8145 output8140)).val
theorem output8146_def : output8146 = (.seq output8145 output8140) := by
  unfold output8146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8146_skip : Flapjack.WordAlloc.isSkip output8146 = false := by
  rw [output8146_def]
  conv => lhs; cbv
  try rfl
theorem node8146_eq : Flapjack.WordAlloc.removeDeadStructural input8146 value4074 value1 value2 = (output8146, value5, value1) := by
  rw [input8146_def, output8146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8140_eq]
  dsimp only
  rw [node8145_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8146 input8139)).val
theorem input8147_def : input8147 = (.seq input8146 input8139) := by
  unfold input8147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8146 output8139)).val
theorem output8147_def : output8147 = (.seq output8146 output8139) := by
  unfold output8147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8147_skip : Flapjack.WordAlloc.isSkip output8147 = false := by
  rw [output8147_def]
  conv => lhs; cbv
  try rfl
theorem node8147_eq : Flapjack.WordAlloc.removeDeadStructural input8147 value4072 value1 value2 = (output8147, value5, value1) := by
  rw [input8147_def, output8147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8139_eq]
  dsimp only
  rw [node8146_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4078 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12885 (Flapjack.WordLangAddr.addr 12889 0#64)))).val
theorem input8148_def : input8148 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12885 (Flapjack.WordLangAddr.addr 12889 0#64))) := by
  unfold input8148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12885 (Flapjack.WordLangAddr.addr 12889 0#64)))).val
theorem output8148_def : output8148 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12885 (Flapjack.WordLangAddr.addr 12889 0#64))) := by
  unfold output8148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8148_skip : Flapjack.WordAlloc.isSkip output8148 = false := by
  rw [output8148_def]
  conv => lhs; cbv
  try rfl
theorem node8148_eq : Flapjack.WordAlloc.removeDeadStructural input8148 value5 value1 value2 = (output8148, value4078, value1) := by
  rw [input8148_def, output8148_def]
  try (conv => lhs; cbv)
  try rfl

def value4079 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12889, 12877)])).val
theorem input8149_def : input8149 = (Flapjack.WordLangProgHOL.move 0 [(12889, 12877)]) := by
  unfold input8149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12889, 12877)])).val
theorem output8149_def : output8149 = (Flapjack.WordLangProgHOL.move 0 [(12889, 12877)]) := by
  unfold output8149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8149_skip : Flapjack.WordAlloc.isSkip output8149 = false := by
  rw [output8149_def]
  conv => lhs; cbv
  try rfl
theorem node8149_eq : Flapjack.WordAlloc.removeDeadStructural input8149 value4078 value1 value2 = (output8149, value4079, value1) := by
  rw [input8149_def, output8149_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8149 input8148)).val
theorem input8150_def : input8150 = (.seq input8149 input8148) := by
  unfold input8150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8149 output8148)).val
theorem output8150_def : output8150 = (.seq output8149 output8148) := by
  unfold output8150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8150_skip : Flapjack.WordAlloc.isSkip output8150 = false := by
  rw [output8150_def]
  conv => lhs; cbv
  try rfl
theorem node8150_eq : Flapjack.WordAlloc.removeDeadStructural input8150 value5 value1 value2 = (output8150, value4079, value1) := by
  rw [input8150_def, output8150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8148_eq]
  dsimp only
  rw [node8149_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4080 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12885 16183658160488302230#64))).val
theorem input8151_def : input8151 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12885 16183658160488302230#64)) := by
  unfold input8151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12885 16183658160488302230#64))).val
theorem output8151_def : output8151 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12885 16183658160488302230#64)) := by
  unfold output8151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8151_skip : Flapjack.WordAlloc.isSkip output8151 = false := by
  rw [output8151_def]
  conv => lhs; cbv
  try rfl
theorem node8151_eq : Flapjack.WordAlloc.removeDeadStructural input8151 value4079 value1 value2 = (output8151, value4080, value1) := by
  rw [input8151_def, output8151_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12881 16183658160488302230#64))).val
theorem input8152_def : input8152 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12881 16183658160488302230#64)) := by
  unfold input8152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8152_def : output8152 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8152_skip : Flapjack.WordAlloc.isSkip output8152 = true := by
  rw [output8152_def]
  conv => lhs; cbv
  try rfl
theorem node8152_eq : Flapjack.WordAlloc.removeDeadStructural input8152 value4080 value1 value2 = (output8152, value4080, value1) := by
  rw [input8152_def, output8152_def]
  try (conv => lhs; cbv)
  try rfl

def value4081 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12877 12869 (Flapjack.WordRegImm.reg 12873))))).val
theorem input8153_def : input8153 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12877 12869 (Flapjack.WordRegImm.reg 12873)))) := by
  unfold input8153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12877 12869 (Flapjack.WordRegImm.reg 12873))))).val
theorem output8153_def : output8153 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12877 12869 (Flapjack.WordRegImm.reg 12873)))) := by
  unfold output8153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8153_skip : Flapjack.WordAlloc.isSkip output8153 = false := by
  rw [output8153_def]
  conv => lhs; cbv
  try rfl
theorem node8153_eq : Flapjack.WordAlloc.removeDeadStructural input8153 value4080 value1 value2 = (output8153, value4081, value1) := by
  rw [input8153_def, output8153_def]
  try (conv => lhs; cbv)
  try rfl

def value4082 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12873 3056#64))).val
theorem input8154_def : input8154 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12873 3056#64)) := by
  unfold input8154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12873 3056#64))).val
theorem output8154_def : output8154 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12873 3056#64)) := by
  unfold output8154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8154_skip : Flapjack.WordAlloc.isSkip output8154 = false := by
  rw [output8154_def]
  conv => lhs; cbv
  try rfl
theorem node8154_eq : Flapjack.WordAlloc.removeDeadStructural input8154 value4081 value1 value2 = (output8154, value4082, value1) := by
  rw [input8154_def, output8154_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8154 input8153)).val
theorem input8155_def : input8155 = (.seq input8154 input8153) := by
  unfold input8155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8154 output8153)).val
theorem output8155_def : output8155 = (.seq output8154 output8153) := by
  unfold output8155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8155_skip : Flapjack.WordAlloc.isSkip output8155 = false := by
  rw [output8155_def]
  conv => lhs; cbv
  try rfl
theorem node8155_eq : Flapjack.WordAlloc.removeDeadStructural input8155 value4080 value1 value2 = (output8155, value4082, value1) := by
  rw [input8155_def, output8155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8153_eq]
  dsimp only
  rw [node8154_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4083 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12869 (Flapjack.WordLangAddr.addr 12865 18446744073709551104#64)))).val
theorem input8156_def : input8156 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12869 (Flapjack.WordLangAddr.addr 12865 18446744073709551104#64))) := by
  unfold input8156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12869 (Flapjack.WordLangAddr.addr 12865 18446744073709551104#64)))).val
theorem output8156_def : output8156 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12869 (Flapjack.WordLangAddr.addr 12865 18446744073709551104#64))) := by
  unfold output8156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8156_skip : Flapjack.WordAlloc.isSkip output8156 = false := by
  rw [output8156_def]
  conv => lhs; cbv
  try rfl
theorem node8156_eq : Flapjack.WordAlloc.removeDeadStructural input8156 value4082 value1 value2 = (output8156, value4083, value1) := by
  rw [input8156_def, output8156_def]
  try (conv => lhs; cbv)
  try rfl

def value4084 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12865 12861)).val
theorem input8157_def : input8157 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12865 12861) := by
  unfold input8157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12865 12861)).val
theorem output8157_def : output8157 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12865 12861) := by
  unfold output8157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8157_skip : Flapjack.WordAlloc.isSkip output8157 = false := by
  rw [output8157_def]
  conv => lhs; cbv
  try rfl
theorem node8157_eq : Flapjack.WordAlloc.removeDeadStructural input8157 value4083 value1 value2 = (output8157, value4084, value1) := by
  rw [input8157_def, output8157_def]
  try (conv => lhs; cbv)
  try rfl

def value4085 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12861 12857 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8158_def : input8158 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12861 12857 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12861 12857 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8158_def : output8158 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12861 12857 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8158_skip : Flapjack.WordAlloc.isSkip output8158 = false := by
  rw [output8158_def]
  conv => lhs; cbv
  try rfl
theorem node8158_eq : Flapjack.WordAlloc.removeDeadStructural input8158 value4084 value1 value2 = (output8158, value4085, value1) := by
  rw [input8158_def, output8158_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12857 Flapjack.WordStore.heapLength)).val
theorem input8159_def : input8159 = (Flapjack.WordLangProgHOL.get 12857 Flapjack.WordStore.heapLength) := by
  unfold input8159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12857 Flapjack.WordStore.heapLength)).val
theorem output8159_def : output8159 = (Flapjack.WordLangProgHOL.get 12857 Flapjack.WordStore.heapLength) := by
  unfold output8159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8159_skip : Flapjack.WordAlloc.isSkip output8159 = false := by
  rw [output8159_def]
  conv => lhs; cbv
  try rfl
theorem node8159_eq : Flapjack.WordAlloc.removeDeadStructural input8159 value4085 value1 value2 = (output8159, value5, value1) := by
  rw [input8159_def, output8159_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8159 input8158)).val
theorem input8160_def : input8160 = (.seq input8159 input8158) := by
  unfold input8160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8159 output8158)).val
theorem output8160_def : output8160 = (.seq output8159 output8158) := by
  unfold output8160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8160_skip : Flapjack.WordAlloc.isSkip output8160 = false := by
  rw [output8160_def]
  conv => lhs; cbv
  try rfl
theorem node8160_eq : Flapjack.WordAlloc.removeDeadStructural input8160 value4084 value1 value2 = (output8160, value5, value1) := by
  rw [input8160_def, output8160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8158_eq]
  dsimp only
  rw [node8159_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8160 input8157)).val
theorem input8161_def : input8161 = (.seq input8160 input8157) := by
  unfold input8161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8160 output8157)).val
theorem output8161_def : output8161 = (.seq output8160 output8157) := by
  unfold output8161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8161_skip : Flapjack.WordAlloc.isSkip output8161 = false := by
  rw [output8161_def]
  conv => lhs; cbv
  try rfl
theorem node8161_eq : Flapjack.WordAlloc.removeDeadStructural input8161 value4083 value1 value2 = (output8161, value5, value1) := by
  rw [input8161_def, output8161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8157_eq]
  dsimp only
  rw [node8160_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8161 input8156)).val
theorem input8162_def : input8162 = (.seq input8161 input8156) := by
  unfold input8162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8161 output8156)).val
theorem output8162_def : output8162 = (.seq output8161 output8156) := by
  unfold output8162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8162_skip : Flapjack.WordAlloc.isSkip output8162 = false := by
  rw [output8162_def]
  conv => lhs; cbv
  try rfl
theorem node8162_eq : Flapjack.WordAlloc.removeDeadStructural input8162 value4082 value1 value2 = (output8162, value5, value1) := by
  rw [input8162_def, output8162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8156_eq]
  dsimp only
  rw [node8161_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8162 input8155)).val
theorem input8163_def : input8163 = (.seq input8162 input8155) := by
  unfold input8163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8162 output8155)).val
theorem output8163_def : output8163 = (.seq output8162 output8155) := by
  unfold output8163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8163_skip : Flapjack.WordAlloc.isSkip output8163 = false := by
  rw [output8163_def]
  conv => lhs; cbv
  try rfl
theorem node8163_eq : Flapjack.WordAlloc.removeDeadStructural input8163 value4080 value1 value2 = (output8163, value5, value1) := by
  rw [input8163_def, output8163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8155_eq]
  dsimp only
  rw [node8162_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4086 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12849 (Flapjack.WordLangAddr.addr 12853 0#64)))).val
theorem input8164_def : input8164 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12849 (Flapjack.WordLangAddr.addr 12853 0#64))) := by
  unfold input8164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12849 (Flapjack.WordLangAddr.addr 12853 0#64)))).val
theorem output8164_def : output8164 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12849 (Flapjack.WordLangAddr.addr 12853 0#64))) := by
  unfold output8164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8164_skip : Flapjack.WordAlloc.isSkip output8164 = false := by
  rw [output8164_def]
  conv => lhs; cbv
  try rfl
theorem node8164_eq : Flapjack.WordAlloc.removeDeadStructural input8164 value5 value1 value2 = (output8164, value4086, value1) := by
  rw [input8164_def, output8164_def]
  try (conv => lhs; cbv)
  try rfl

def value4087 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12853, 12841)])).val
theorem input8165_def : input8165 = (Flapjack.WordLangProgHOL.move 0 [(12853, 12841)]) := by
  unfold input8165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12853, 12841)])).val
theorem output8165_def : output8165 = (Flapjack.WordLangProgHOL.move 0 [(12853, 12841)]) := by
  unfold output8165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8165_skip : Flapjack.WordAlloc.isSkip output8165 = false := by
  rw [output8165_def]
  conv => lhs; cbv
  try rfl
theorem node8165_eq : Flapjack.WordAlloc.removeDeadStructural input8165 value4086 value1 value2 = (output8165, value4087, value1) := by
  rw [input8165_def, output8165_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8165 input8164)).val
theorem input8166_def : input8166 = (.seq input8165 input8164) := by
  unfold input8166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8165 output8164)).val
theorem output8166_def : output8166 = (.seq output8165 output8164) := by
  unfold output8166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8166_skip : Flapjack.WordAlloc.isSkip output8166 = false := by
  rw [output8166_def]
  conv => lhs; cbv
  try rfl
theorem node8166_eq : Flapjack.WordAlloc.removeDeadStructural input8166 value5 value1 value2 = (output8166, value4087, value1) := by
  rw [input8166_def, output8166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8164_eq]
  dsimp only
  rw [node8165_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4088 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12849 652344406751465184#64))).val
theorem input8167_def : input8167 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12849 652344406751465184#64)) := by
  unfold input8167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12849 652344406751465184#64))).val
theorem output8167_def : output8167 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12849 652344406751465184#64)) := by
  unfold output8167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8167_skip : Flapjack.WordAlloc.isSkip output8167 = false := by
  rw [output8167_def]
  conv => lhs; cbv
  try rfl
theorem node8167_eq : Flapjack.WordAlloc.removeDeadStructural input8167 value4087 value1 value2 = (output8167, value4088, value1) := by
  rw [input8167_def, output8167_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12845 652344406751465184#64))).val
theorem input8168_def : input8168 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12845 652344406751465184#64)) := by
  unfold input8168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8168_def : output8168 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8168_skip : Flapjack.WordAlloc.isSkip output8168 = true := by
  rw [output8168_def]
  conv => lhs; cbv
  try rfl
theorem node8168_eq : Flapjack.WordAlloc.removeDeadStructural input8168 value4088 value1 value2 = (output8168, value4088, value1) := by
  rw [input8168_def, output8168_def]
  try (conv => lhs; cbv)
  try rfl

def value4089 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12841 12833 (Flapjack.WordRegImm.reg 12837))))).val
theorem input8169_def : input8169 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12841 12833 (Flapjack.WordRegImm.reg 12837)))) := by
  unfold input8169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12841 12833 (Flapjack.WordRegImm.reg 12837))))).val
theorem output8169_def : output8169 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12841 12833 (Flapjack.WordRegImm.reg 12837)))) := by
  unfold output8169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8169_skip : Flapjack.WordAlloc.isSkip output8169 = false := by
  rw [output8169_def]
  conv => lhs; cbv
  try rfl
theorem node8169_eq : Flapjack.WordAlloc.removeDeadStructural input8169 value4088 value1 value2 = (output8169, value4089, value1) := by
  rw [input8169_def, output8169_def]
  try (conv => lhs; cbv)
  try rfl

def value4090 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12837 3048#64))).val
theorem input8170_def : input8170 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12837 3048#64)) := by
  unfold input8170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12837 3048#64))).val
theorem output8170_def : output8170 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12837 3048#64)) := by
  unfold output8170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8170_skip : Flapjack.WordAlloc.isSkip output8170 = false := by
  rw [output8170_def]
  conv => lhs; cbv
  try rfl
theorem node8170_eq : Flapjack.WordAlloc.removeDeadStructural input8170 value4089 value1 value2 = (output8170, value4090, value1) := by
  rw [input8170_def, output8170_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8170 input8169)).val
theorem input8171_def : input8171 = (.seq input8170 input8169) := by
  unfold input8171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8170 output8169)).val
theorem output8171_def : output8171 = (.seq output8170 output8169) := by
  unfold output8171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8171_skip : Flapjack.WordAlloc.isSkip output8171 = false := by
  rw [output8171_def]
  conv => lhs; cbv
  try rfl
theorem node8171_eq : Flapjack.WordAlloc.removeDeadStructural input8171 value4088 value1 value2 = (output8171, value4090, value1) := by
  rw [input8171_def, output8171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8169_eq]
  dsimp only
  rw [node8170_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4091 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12833 (Flapjack.WordLangAddr.addr 12829 18446744073709551104#64)))).val
theorem input8172_def : input8172 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12833 (Flapjack.WordLangAddr.addr 12829 18446744073709551104#64))) := by
  unfold input8172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12833 (Flapjack.WordLangAddr.addr 12829 18446744073709551104#64)))).val
theorem output8172_def : output8172 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12833 (Flapjack.WordLangAddr.addr 12829 18446744073709551104#64))) := by
  unfold output8172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8172_skip : Flapjack.WordAlloc.isSkip output8172 = false := by
  rw [output8172_def]
  conv => lhs; cbv
  try rfl
theorem node8172_eq : Flapjack.WordAlloc.removeDeadStructural input8172 value4090 value1 value2 = (output8172, value4091, value1) := by
  rw [input8172_def, output8172_def]
  try (conv => lhs; cbv)
  try rfl

def value4092 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12829 12825)).val
theorem input8173_def : input8173 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12829 12825) := by
  unfold input8173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12829 12825)).val
theorem output8173_def : output8173 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12829 12825) := by
  unfold output8173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8173_skip : Flapjack.WordAlloc.isSkip output8173 = false := by
  rw [output8173_def]
  conv => lhs; cbv
  try rfl
theorem node8173_eq : Flapjack.WordAlloc.removeDeadStructural input8173 value4091 value1 value2 = (output8173, value4092, value1) := by
  rw [input8173_def, output8173_def]
  try (conv => lhs; cbv)
  try rfl

def value4093 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12825 12821 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8174_def : input8174 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12825 12821 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12825 12821 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8174_def : output8174 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12825 12821 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8174_skip : Flapjack.WordAlloc.isSkip output8174 = false := by
  rw [output8174_def]
  conv => lhs; cbv
  try rfl
theorem node8174_eq : Flapjack.WordAlloc.removeDeadStructural input8174 value4092 value1 value2 = (output8174, value4093, value1) := by
  rw [input8174_def, output8174_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12821 Flapjack.WordStore.heapLength)).val
theorem input8175_def : input8175 = (Flapjack.WordLangProgHOL.get 12821 Flapjack.WordStore.heapLength) := by
  unfold input8175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12821 Flapjack.WordStore.heapLength)).val
theorem output8175_def : output8175 = (Flapjack.WordLangProgHOL.get 12821 Flapjack.WordStore.heapLength) := by
  unfold output8175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8175_skip : Flapjack.WordAlloc.isSkip output8175 = false := by
  rw [output8175_def]
  conv => lhs; cbv
  try rfl
theorem node8175_eq : Flapjack.WordAlloc.removeDeadStructural input8175 value4093 value1 value2 = (output8175, value5, value1) := by
  rw [input8175_def, output8175_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8175 input8174)).val
theorem input8176_def : input8176 = (.seq input8175 input8174) := by
  unfold input8176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8175 output8174)).val
theorem output8176_def : output8176 = (.seq output8175 output8174) := by
  unfold output8176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8176_skip : Flapjack.WordAlloc.isSkip output8176 = false := by
  rw [output8176_def]
  conv => lhs; cbv
  try rfl
theorem node8176_eq : Flapjack.WordAlloc.removeDeadStructural input8176 value4092 value1 value2 = (output8176, value5, value1) := by
  rw [input8176_def, output8176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8174_eq]
  dsimp only
  rw [node8175_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8176 input8173)).val
theorem input8177_def : input8177 = (.seq input8176 input8173) := by
  unfold input8177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8176 output8173)).val
theorem output8177_def : output8177 = (.seq output8176 output8173) := by
  unfold output8177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8177_skip : Flapjack.WordAlloc.isSkip output8177 = false := by
  rw [output8177_def]
  conv => lhs; cbv
  try rfl
theorem node8177_eq : Flapjack.WordAlloc.removeDeadStructural input8177 value4091 value1 value2 = (output8177, value5, value1) := by
  rw [input8177_def, output8177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8173_eq]
  dsimp only
  rw [node8176_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8177 input8172)).val
theorem input8178_def : input8178 = (.seq input8177 input8172) := by
  unfold input8178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8177 output8172)).val
theorem output8178_def : output8178 = (.seq output8177 output8172) := by
  unfold output8178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8178_skip : Flapjack.WordAlloc.isSkip output8178 = false := by
  rw [output8178_def]
  conv => lhs; cbv
  try rfl
theorem node8178_eq : Flapjack.WordAlloc.removeDeadStructural input8178 value4090 value1 value2 = (output8178, value5, value1) := by
  rw [input8178_def, output8178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8172_eq]
  dsimp only
  rw [node8177_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8178 input8171)).val
theorem input8179_def : input8179 = (.seq input8178 input8171) := by
  unfold input8179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8178 output8171)).val
theorem output8179_def : output8179 = (.seq output8178 output8171) := by
  unfold output8179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8179_skip : Flapjack.WordAlloc.isSkip output8179 = false := by
  rw [output8179_def]
  conv => lhs; cbv
  try rfl
theorem node8179_eq : Flapjack.WordAlloc.removeDeadStructural input8179 value4088 value1 value2 = (output8179, value5, value1) := by
  rw [input8179_def, output8179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8171_eq]
  dsimp only
  rw [node8178_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4094 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12813 (Flapjack.WordLangAddr.addr 12817 0#64)))).val
theorem input8180_def : input8180 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12813 (Flapjack.WordLangAddr.addr 12817 0#64))) := by
  unfold input8180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12813 (Flapjack.WordLangAddr.addr 12817 0#64)))).val
theorem output8180_def : output8180 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12813 (Flapjack.WordLangAddr.addr 12817 0#64))) := by
  unfold output8180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8180_skip : Flapjack.WordAlloc.isSkip output8180 = false := by
  rw [output8180_def]
  conv => lhs; cbv
  try rfl
theorem node8180_eq : Flapjack.WordAlloc.removeDeadStructural input8180 value5 value1 value2 = (output8180, value4094, value1) := by
  rw [input8180_def, output8180_def]
  try (conv => lhs; cbv)
  try rfl

def value4095 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12817, 12805)])).val
theorem input8181_def : input8181 = (Flapjack.WordLangProgHOL.move 0 [(12817, 12805)]) := by
  unfold input8181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(12817, 12805)])).val
theorem output8181_def : output8181 = (Flapjack.WordLangProgHOL.move 0 [(12817, 12805)]) := by
  unfold output8181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8181_skip : Flapjack.WordAlloc.isSkip output8181 = false := by
  rw [output8181_def]
  conv => lhs; cbv
  try rfl
theorem node8181_eq : Flapjack.WordAlloc.removeDeadStructural input8181 value4094 value1 value2 = (output8181, value4095, value1) := by
  rw [input8181_def, output8181_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8181 input8180)).val
theorem input8182_def : input8182 = (.seq input8181 input8180) := by
  unfold input8182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8181 output8180)).val
theorem output8182_def : output8182 = (.seq output8181 output8180) := by
  unfold output8182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8182_skip : Flapjack.WordAlloc.isSkip output8182 = false := by
  rw [output8182_def]
  conv => lhs; cbv
  try rfl
theorem node8182_eq : Flapjack.WordAlloc.removeDeadStructural input8182 value5 value1 value2 = (output8182, value4095, value1) := by
  rw [input8182_def, output8182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8180_eq]
  dsimp only
  rw [node8181_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4096 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12813 2710356675495255290#64))).val
theorem input8183_def : input8183 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12813 2710356675495255290#64)) := by
  unfold input8183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12813 2710356675495255290#64))).val
theorem output8183_def : output8183 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12813 2710356675495255290#64)) := by
  unfold output8183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8183_skip : Flapjack.WordAlloc.isSkip output8183 = false := by
  rw [output8183_def]
  conv => lhs; cbv
  try rfl
theorem node8183_eq : Flapjack.WordAlloc.removeDeadStructural input8183 value4095 value1 value2 = (output8183, value4096, value1) := by
  rw [input8183_def, output8183_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12809 2710356675495255290#64))).val
theorem input8184_def : input8184 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12809 2710356675495255290#64)) := by
  unfold input8184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output8184_def : output8184 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output8184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8184_skip : Flapjack.WordAlloc.isSkip output8184 = true := by
  rw [output8184_def]
  conv => lhs; cbv
  try rfl
theorem node8184_eq : Flapjack.WordAlloc.removeDeadStructural input8184 value4096 value1 value2 = (output8184, value4096, value1) := by
  rw [input8184_def, output8184_def]
  try (conv => lhs; cbv)
  try rfl

def value4097 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12805 12797 (Flapjack.WordRegImm.reg 12801))))).val
theorem input8185_def : input8185 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12805 12797 (Flapjack.WordRegImm.reg 12801)))) := by
  unfold input8185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12805 12797 (Flapjack.WordRegImm.reg 12801))))).val
theorem output8185_def : output8185 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12805 12797 (Flapjack.WordRegImm.reg 12801)))) := by
  unfold output8185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8185_skip : Flapjack.WordAlloc.isSkip output8185 = false := by
  rw [output8185_def]
  conv => lhs; cbv
  try rfl
theorem node8185_eq : Flapjack.WordAlloc.removeDeadStructural input8185 value4096 value1 value2 = (output8185, value4097, value1) := by
  rw [input8185_def, output8185_def]
  try (conv => lhs; cbv)
  try rfl

def value4098 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12801 3040#64))).val
theorem input8186_def : input8186 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12801 3040#64)) := by
  unfold input8186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12801 3040#64))).val
theorem output8186_def : output8186 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12801 3040#64)) := by
  unfold output8186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8186_skip : Flapjack.WordAlloc.isSkip output8186 = false := by
  rw [output8186_def]
  conv => lhs; cbv
  try rfl
theorem node8186_eq : Flapjack.WordAlloc.removeDeadStructural input8186 value4097 value1 value2 = (output8186, value4098, value1) := by
  rw [input8186_def, output8186_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input8186 input8185)).val
theorem input8187_def : input8187 = (.seq input8186 input8185) := by
  unfold input8187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output8186 output8185)).val
theorem output8187_def : output8187 = (.seq output8186 output8185) := by
  unfold output8187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8187_skip : Flapjack.WordAlloc.isSkip output8187 = false := by
  rw [output8187_def]
  conv => lhs; cbv
  try rfl
theorem node8187_eq : Flapjack.WordAlloc.removeDeadStructural input8187 value4096 value1 value2 = (output8187, value4098, value1) := by
  rw [input8187_def, output8187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node8185_eq]
  dsimp only
  rw [node8186_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4099 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12797 (Flapjack.WordLangAddr.addr 12793 18446744073709551104#64)))).val
theorem input8188_def : input8188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12797 (Flapjack.WordLangAddr.addr 12793 18446744073709551104#64))) := by
  unfold input8188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12797 (Flapjack.WordLangAddr.addr 12793 18446744073709551104#64)))).val
theorem output8188_def : output8188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12797 (Flapjack.WordLangAddr.addr 12793 18446744073709551104#64))) := by
  unfold output8188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8188_skip : Flapjack.WordAlloc.isSkip output8188 = false := by
  rw [output8188_def]
  conv => lhs; cbv
  try rfl
theorem node8188_eq : Flapjack.WordAlloc.removeDeadStructural input8188 value4098 value1 value2 = (output8188, value4099, value1) := by
  rw [input8188_def, output8188_def]
  try (conv => lhs; cbv)
  try rfl

def value4100 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12793 12789)).val
theorem input8189_def : input8189 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12793 12789) := by
  unfold input8189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12793 12789)).val
theorem output8189_def : output8189 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 12793 12789) := by
  unfold output8189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8189_skip : Flapjack.WordAlloc.isSkip output8189 = false := by
  rw [output8189_def]
  conv => lhs; cbv
  try rfl
theorem node8189_eq : Flapjack.WordAlloc.removeDeadStructural input8189 value4099 value1 value2 = (output8189, value4100, value1) := by
  rw [input8189_def, output8189_def]
  try (conv => lhs; cbv)
  try rfl

def value4101 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input8190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12789 12785 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input8190_def : input8190 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12789 12785 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input8190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12789 12785 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output8190_def : output8190 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12789 12785 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output8190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8190_skip : Flapjack.WordAlloc.isSkip output8190 = false := by
  rw [output8190_def]
  conv => lhs; cbv
  try rfl
theorem node8190_eq : Flapjack.WordAlloc.removeDeadStructural input8190 value4100 value1 value2 = (output8190, value4101, value1) := by
  rw [input8190_def, output8190_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input8191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12785 Flapjack.WordStore.heapLength)).val
theorem input8191_def : input8191 = (Flapjack.WordLangProgHOL.get 12785 Flapjack.WordStore.heapLength) := by
  unfold input8191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output8191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 12785 Flapjack.WordStore.heapLength)).val
theorem output8191_def : output8191 = (Flapjack.WordLangProgHOL.get 12785 Flapjack.WordStore.heapLength) := by
  unfold output8191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output8191_skip : Flapjack.WordAlloc.isSkip output8191 = false := by
  rw [output8191_def]
  conv => lhs; cbv
  try rfl
theorem node8191_eq : Flapjack.WordAlloc.removeDeadStructural input8191 value4101 value1 value2 = (output8191, value5, value1) := by
  rw [input8191_def, output8191_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node8191_eq
end InitECandidate.Proofs.DeadStages713
