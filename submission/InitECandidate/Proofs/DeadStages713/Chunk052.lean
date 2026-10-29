import InitECandidate.Proofs.DeadStages713.Chunk051
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input13312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13311 input13310)).val
theorem input13312_def : input13312 = (.seq input13311 input13310) := by
  unfold input13312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13311 output13310)).val
theorem output13312_def : output13312 = (.seq output13311 output13310) := by
  unfold output13312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13312_skip : Flapjack.WordAlloc.isSkip output13312 = false := by
  rw [output13312_def]
  conv => lhs; cbv
  try rfl
theorem node13312_eq : Flapjack.WordAlloc.removeDeadStructural input13312 value6660 value1 value2 = (output13312, value5, value1) := by
  rw [input13312_def, output13312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13310_eq]
  dsimp only
  rw [node13311_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13312 input13309)).val
theorem input13313_def : input13313 = (.seq input13312 input13309) := by
  unfold input13313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13312 output13309)).val
theorem output13313_def : output13313 = (.seq output13312 output13309) := by
  unfold output13313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13313_skip : Flapjack.WordAlloc.isSkip output13313 = false := by
  rw [output13313_def]
  conv => lhs; cbv
  try rfl
theorem node13313_eq : Flapjack.WordAlloc.removeDeadStructural input13313 value6659 value1 value2 = (output13313, value5, value1) := by
  rw [input13313_def, output13313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13309_eq]
  dsimp only
  rw [node13312_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13313 input13308)).val
theorem input13314_def : input13314 = (.seq input13313 input13308) := by
  unfold input13314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13313 output13308)).val
theorem output13314_def : output13314 = (.seq output13313 output13308) := by
  unfold output13314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13314_skip : Flapjack.WordAlloc.isSkip output13314 = false := by
  rw [output13314_def]
  conv => lhs; cbv
  try rfl
theorem node13314_eq : Flapjack.WordAlloc.removeDeadStructural input13314 value6658 value1 value2 = (output13314, value5, value1) := by
  rw [input13314_def, output13314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13308_eq]
  dsimp only
  rw [node13313_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13314 input13307)).val
theorem input13315_def : input13315 = (.seq input13314 input13307) := by
  unfold input13315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13314 output13307)).val
theorem output13315_def : output13315 = (.seq output13314 output13307) := by
  unfold output13315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13315_skip : Flapjack.WordAlloc.isSkip output13315 = false := by
  rw [output13315_def]
  conv => lhs; cbv
  try rfl
theorem node13315_eq : Flapjack.WordAlloc.removeDeadStructural input13315 value6657 value1 value2 = (output13315, value5, value1) := by
  rw [input13315_def, output13315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13307_eq]
  dsimp only
  rw [node13314_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6662 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1145 (Flapjack.WordLangAddr.addr 1149 0#64)))).val
theorem input13316_def : input13316 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1145 (Flapjack.WordLangAddr.addr 1149 0#64))) := by
  unfold input13316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1145 (Flapjack.WordLangAddr.addr 1149 0#64)))).val
theorem output13316_def : output13316 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1145 (Flapjack.WordLangAddr.addr 1149 0#64))) := by
  unfold output13316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13316_skip : Flapjack.WordAlloc.isSkip output13316 = false := by
  rw [output13316_def]
  conv => lhs; cbv
  try rfl
theorem node13316_eq : Flapjack.WordAlloc.removeDeadStructural input13316 value5 value1 value2 = (output13316, value6662, value1) := by
  rw [input13316_def, output13316_def]
  try (conv => lhs; cbv)
  try rfl

def value6663 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1149, 1137)])).val
theorem input13317_def : input13317 = (Flapjack.WordLangProgHOL.move 0 [(1149, 1137)]) := by
  unfold input13317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1149, 1137)])).val
theorem output13317_def : output13317 = (Flapjack.WordLangProgHOL.move 0 [(1149, 1137)]) := by
  unfold output13317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13317_skip : Flapjack.WordAlloc.isSkip output13317 = false := by
  rw [output13317_def]
  conv => lhs; cbv
  try rfl
theorem node13317_eq : Flapjack.WordAlloc.removeDeadStructural input13317 value6662 value1 value2 = (output13317, value6663, value1) := by
  rw [input13317_def, output13317_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13317 input13316)).val
theorem input13318_def : input13318 = (.seq input13317 input13316) := by
  unfold input13318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13317 output13316)).val
theorem output13318_def : output13318 = (.seq output13317 output13316) := by
  unfold output13318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13318_skip : Flapjack.WordAlloc.isSkip output13318 = false := by
  rw [output13318_def]
  conv => lhs; cbv
  try rfl
theorem node13318_eq : Flapjack.WordAlloc.removeDeadStructural input13318 value5 value1 value2 = (output13318, value6663, value1) := by
  rw [input13318_def, output13318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13316_eq]
  dsimp only
  rw [node13317_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6664 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1145 0#64))).val
theorem input13319_def : input13319 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1145 0#64)) := by
  unfold input13319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1145 0#64))).val
theorem output13319_def : output13319 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1145 0#64)) := by
  unfold output13319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13319_skip : Flapjack.WordAlloc.isSkip output13319 = false := by
  rw [output13319_def]
  conv => lhs; cbv
  try rfl
theorem node13319_eq : Flapjack.WordAlloc.removeDeadStructural input13319 value6663 value1 value2 = (output13319, value6664, value1) := by
  rw [input13319_def, output13319_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1141 0#64))).val
theorem input13320_def : input13320 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1141 0#64)) := by
  unfold input13320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13320_def : output13320 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13320_skip : Flapjack.WordAlloc.isSkip output13320 = true := by
  rw [output13320_def]
  conv => lhs; cbv
  try rfl
theorem node13320_eq : Flapjack.WordAlloc.removeDeadStructural input13320 value6664 value1 value2 = (output13320, value6664, value1) := by
  rw [input13320_def, output13320_def]
  try (conv => lhs; cbv)
  try rfl

def value6665 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1137 1133 (Flapjack.WordRegImm.imm 248#64))))).val
theorem input13321_def : input13321 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1137 1133 (Flapjack.WordRegImm.imm 248#64)))) := by
  unfold input13321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1137 1133 (Flapjack.WordRegImm.imm 248#64))))).val
theorem output13321_def : output13321 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1137 1133 (Flapjack.WordRegImm.imm 248#64)))) := by
  unfold output13321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13321_skip : Flapjack.WordAlloc.isSkip output13321 = false := by
  rw [output13321_def]
  conv => lhs; cbv
  try rfl
theorem node13321_eq : Flapjack.WordAlloc.removeDeadStructural input13321 value6664 value1 value2 = (output13321, value6665, value1) := by
  rw [input13321_def, output13321_def]
  try (conv => lhs; cbv)
  try rfl

def value6666 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1133 (Flapjack.WordLangAddr.addr 1129 18446744073709551104#64)))).val
theorem input13322_def : input13322 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1133 (Flapjack.WordLangAddr.addr 1129 18446744073709551104#64))) := by
  unfold input13322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1133 (Flapjack.WordLangAddr.addr 1129 18446744073709551104#64)))).val
theorem output13322_def : output13322 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1133 (Flapjack.WordLangAddr.addr 1129 18446744073709551104#64))) := by
  unfold output13322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13322_skip : Flapjack.WordAlloc.isSkip output13322 = false := by
  rw [output13322_def]
  conv => lhs; cbv
  try rfl
theorem node13322_eq : Flapjack.WordAlloc.removeDeadStructural input13322 value6665 value1 value2 = (output13322, value6666, value1) := by
  rw [input13322_def, output13322_def]
  try (conv => lhs; cbv)
  try rfl

def value6667 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1129 1125)).val
theorem input13323_def : input13323 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1129 1125) := by
  unfold input13323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1129 1125)).val
theorem output13323_def : output13323 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1129 1125) := by
  unfold output13323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13323_skip : Flapjack.WordAlloc.isSkip output13323 = false := by
  rw [output13323_def]
  conv => lhs; cbv
  try rfl
theorem node13323_eq : Flapjack.WordAlloc.removeDeadStructural input13323 value6666 value1 value2 = (output13323, value6667, value1) := by
  rw [input13323_def, output13323_def]
  try (conv => lhs; cbv)
  try rfl

def value6668 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1125 1121 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13324_def : input13324 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1125 1121 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1125 1121 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13324_def : output13324 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1125 1121 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13324_skip : Flapjack.WordAlloc.isSkip output13324 = false := by
  rw [output13324_def]
  conv => lhs; cbv
  try rfl
theorem node13324_eq : Flapjack.WordAlloc.removeDeadStructural input13324 value6667 value1 value2 = (output13324, value6668, value1) := by
  rw [input13324_def, output13324_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1121 Flapjack.WordStore.heapLength)).val
theorem input13325_def : input13325 = (Flapjack.WordLangProgHOL.get 1121 Flapjack.WordStore.heapLength) := by
  unfold input13325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1121 Flapjack.WordStore.heapLength)).val
theorem output13325_def : output13325 = (Flapjack.WordLangProgHOL.get 1121 Flapjack.WordStore.heapLength) := by
  unfold output13325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13325_skip : Flapjack.WordAlloc.isSkip output13325 = false := by
  rw [output13325_def]
  conv => lhs; cbv
  try rfl
theorem node13325_eq : Flapjack.WordAlloc.removeDeadStructural input13325 value6668 value1 value2 = (output13325, value5, value1) := by
  rw [input13325_def, output13325_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13325 input13324)).val
theorem input13326_def : input13326 = (.seq input13325 input13324) := by
  unfold input13326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13325 output13324)).val
theorem output13326_def : output13326 = (.seq output13325 output13324) := by
  unfold output13326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13326_skip : Flapjack.WordAlloc.isSkip output13326 = false := by
  rw [output13326_def]
  conv => lhs; cbv
  try rfl
theorem node13326_eq : Flapjack.WordAlloc.removeDeadStructural input13326 value6667 value1 value2 = (output13326, value5, value1) := by
  rw [input13326_def, output13326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13324_eq]
  dsimp only
  rw [node13325_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13326 input13323)).val
theorem input13327_def : input13327 = (.seq input13326 input13323) := by
  unfold input13327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13326 output13323)).val
theorem output13327_def : output13327 = (.seq output13326 output13323) := by
  unfold output13327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13327_skip : Flapjack.WordAlloc.isSkip output13327 = false := by
  rw [output13327_def]
  conv => lhs; cbv
  try rfl
theorem node13327_eq : Flapjack.WordAlloc.removeDeadStructural input13327 value6666 value1 value2 = (output13327, value5, value1) := by
  rw [input13327_def, output13327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13323_eq]
  dsimp only
  rw [node13326_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13327 input13322)).val
theorem input13328_def : input13328 = (.seq input13327 input13322) := by
  unfold input13328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13327 output13322)).val
theorem output13328_def : output13328 = (.seq output13327 output13322) := by
  unfold output13328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13328_skip : Flapjack.WordAlloc.isSkip output13328 = false := by
  rw [output13328_def]
  conv => lhs; cbv
  try rfl
theorem node13328_eq : Flapjack.WordAlloc.removeDeadStructural input13328 value6665 value1 value2 = (output13328, value5, value1) := by
  rw [input13328_def, output13328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13322_eq]
  dsimp only
  rw [node13327_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13328 input13321)).val
theorem input13329_def : input13329 = (.seq input13328 input13321) := by
  unfold input13329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13328 output13321)).val
theorem output13329_def : output13329 = (.seq output13328 output13321) := by
  unfold output13329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13329_skip : Flapjack.WordAlloc.isSkip output13329 = false := by
  rw [output13329_def]
  conv => lhs; cbv
  try rfl
theorem node13329_eq : Flapjack.WordAlloc.removeDeadStructural input13329 value6664 value1 value2 = (output13329, value5, value1) := by
  rw [input13329_def, output13329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13321_eq]
  dsimp only
  rw [node13328_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6669 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1113 (Flapjack.WordLangAddr.addr 1117 0#64)))).val
theorem input13330_def : input13330 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1113 (Flapjack.WordLangAddr.addr 1117 0#64))) := by
  unfold input13330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1113 (Flapjack.WordLangAddr.addr 1117 0#64)))).val
theorem output13330_def : output13330 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1113 (Flapjack.WordLangAddr.addr 1117 0#64))) := by
  unfold output13330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13330_skip : Flapjack.WordAlloc.isSkip output13330 = false := by
  rw [output13330_def]
  conv => lhs; cbv
  try rfl
theorem node13330_eq : Flapjack.WordAlloc.removeDeadStructural input13330 value5 value1 value2 = (output13330, value6669, value1) := by
  rw [input13330_def, output13330_def]
  try (conv => lhs; cbv)
  try rfl

def value6670 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1117, 1105)])).val
theorem input13331_def : input13331 = (Flapjack.WordLangProgHOL.move 0 [(1117, 1105)]) := by
  unfold input13331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1117, 1105)])).val
theorem output13331_def : output13331 = (Flapjack.WordLangProgHOL.move 0 [(1117, 1105)]) := by
  unfold output13331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13331_skip : Flapjack.WordAlloc.isSkip output13331 = false := by
  rw [output13331_def]
  conv => lhs; cbv
  try rfl
theorem node13331_eq : Flapjack.WordAlloc.removeDeadStructural input13331 value6669 value1 value2 = (output13331, value6670, value1) := by
  rw [input13331_def, output13331_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13331 input13330)).val
theorem input13332_def : input13332 = (.seq input13331 input13330) := by
  unfold input13332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13331 output13330)).val
theorem output13332_def : output13332 = (.seq output13331 output13330) := by
  unfold output13332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13332_skip : Flapjack.WordAlloc.isSkip output13332 = false := by
  rw [output13332_def]
  conv => lhs; cbv
  try rfl
theorem node13332_eq : Flapjack.WordAlloc.removeDeadStructural input13332 value5 value1 value2 = (output13332, value6670, value1) := by
  rw [input13332_def, output13332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13330_eq]
  dsimp only
  rw [node13331_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6671 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1113 4#64))).val
theorem input13333_def : input13333 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1113 4#64)) := by
  unfold input13333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1113 4#64))).val
theorem output13333_def : output13333 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1113 4#64)) := by
  unfold output13333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13333_skip : Flapjack.WordAlloc.isSkip output13333 = false := by
  rw [output13333_def]
  conv => lhs; cbv
  try rfl
theorem node13333_eq : Flapjack.WordAlloc.removeDeadStructural input13333 value6670 value1 value2 = (output13333, value6671, value1) := by
  rw [input13333_def, output13333_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1109 4#64))).val
theorem input13334_def : input13334 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1109 4#64)) := by
  unfold input13334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13334_def : output13334 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13334_skip : Flapjack.WordAlloc.isSkip output13334 = true := by
  rw [output13334_def]
  conv => lhs; cbv
  try rfl
theorem node13334_eq : Flapjack.WordAlloc.removeDeadStructural input13334 value6671 value1 value2 = (output13334, value6671, value1) := by
  rw [input13334_def, output13334_def]
  try (conv => lhs; cbv)
  try rfl

def value6672 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1105 1101 (Flapjack.WordRegImm.imm 240#64))))).val
theorem input13335_def : input13335 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1105 1101 (Flapjack.WordRegImm.imm 240#64)))) := by
  unfold input13335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1105 1101 (Flapjack.WordRegImm.imm 240#64))))).val
theorem output13335_def : output13335 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1105 1101 (Flapjack.WordRegImm.imm 240#64)))) := by
  unfold output13335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13335_skip : Flapjack.WordAlloc.isSkip output13335 = false := by
  rw [output13335_def]
  conv => lhs; cbv
  try rfl
theorem node13335_eq : Flapjack.WordAlloc.removeDeadStructural input13335 value6671 value1 value2 = (output13335, value6672, value1) := by
  rw [input13335_def, output13335_def]
  try (conv => lhs; cbv)
  try rfl

def value6673 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1101 (Flapjack.WordLangAddr.addr 1097 18446744073709551104#64)))).val
theorem input13336_def : input13336 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1101 (Flapjack.WordLangAddr.addr 1097 18446744073709551104#64))) := by
  unfold input13336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1101 (Flapjack.WordLangAddr.addr 1097 18446744073709551104#64)))).val
theorem output13336_def : output13336 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1101 (Flapjack.WordLangAddr.addr 1097 18446744073709551104#64))) := by
  unfold output13336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13336_skip : Flapjack.WordAlloc.isSkip output13336 = false := by
  rw [output13336_def]
  conv => lhs; cbv
  try rfl
theorem node13336_eq : Flapjack.WordAlloc.removeDeadStructural input13336 value6672 value1 value2 = (output13336, value6673, value1) := by
  rw [input13336_def, output13336_def]
  try (conv => lhs; cbv)
  try rfl

def value6674 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1097 1093)).val
theorem input13337_def : input13337 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1097 1093) := by
  unfold input13337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1097 1093)).val
theorem output13337_def : output13337 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1097 1093) := by
  unfold output13337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13337_skip : Flapjack.WordAlloc.isSkip output13337 = false := by
  rw [output13337_def]
  conv => lhs; cbv
  try rfl
theorem node13337_eq : Flapjack.WordAlloc.removeDeadStructural input13337 value6673 value1 value2 = (output13337, value6674, value1) := by
  rw [input13337_def, output13337_def]
  try (conv => lhs; cbv)
  try rfl

def value6675 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1093 1089 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13338_def : input13338 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1093 1089 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1093 1089 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13338_def : output13338 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1093 1089 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13338_skip : Flapjack.WordAlloc.isSkip output13338 = false := by
  rw [output13338_def]
  conv => lhs; cbv
  try rfl
theorem node13338_eq : Flapjack.WordAlloc.removeDeadStructural input13338 value6674 value1 value2 = (output13338, value6675, value1) := by
  rw [input13338_def, output13338_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1089 Flapjack.WordStore.heapLength)).val
theorem input13339_def : input13339 = (Flapjack.WordLangProgHOL.get 1089 Flapjack.WordStore.heapLength) := by
  unfold input13339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1089 Flapjack.WordStore.heapLength)).val
theorem output13339_def : output13339 = (Flapjack.WordLangProgHOL.get 1089 Flapjack.WordStore.heapLength) := by
  unfold output13339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13339_skip : Flapjack.WordAlloc.isSkip output13339 = false := by
  rw [output13339_def]
  conv => lhs; cbv
  try rfl
theorem node13339_eq : Flapjack.WordAlloc.removeDeadStructural input13339 value6675 value1 value2 = (output13339, value5, value1) := by
  rw [input13339_def, output13339_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13339 input13338)).val
theorem input13340_def : input13340 = (.seq input13339 input13338) := by
  unfold input13340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13339 output13338)).val
theorem output13340_def : output13340 = (.seq output13339 output13338) := by
  unfold output13340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13340_skip : Flapjack.WordAlloc.isSkip output13340 = false := by
  rw [output13340_def]
  conv => lhs; cbv
  try rfl
theorem node13340_eq : Flapjack.WordAlloc.removeDeadStructural input13340 value6674 value1 value2 = (output13340, value5, value1) := by
  rw [input13340_def, output13340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13338_eq]
  dsimp only
  rw [node13339_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13340 input13337)).val
theorem input13341_def : input13341 = (.seq input13340 input13337) := by
  unfold input13341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13340 output13337)).val
theorem output13341_def : output13341 = (.seq output13340 output13337) := by
  unfold output13341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13341_skip : Flapjack.WordAlloc.isSkip output13341 = false := by
  rw [output13341_def]
  conv => lhs; cbv
  try rfl
theorem node13341_eq : Flapjack.WordAlloc.removeDeadStructural input13341 value6673 value1 value2 = (output13341, value5, value1) := by
  rw [input13341_def, output13341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13337_eq]
  dsimp only
  rw [node13340_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13341 input13336)).val
theorem input13342_def : input13342 = (.seq input13341 input13336) := by
  unfold input13342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13341 output13336)).val
theorem output13342_def : output13342 = (.seq output13341 output13336) := by
  unfold output13342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13342_skip : Flapjack.WordAlloc.isSkip output13342 = false := by
  rw [output13342_def]
  conv => lhs; cbv
  try rfl
theorem node13342_eq : Flapjack.WordAlloc.removeDeadStructural input13342 value6672 value1 value2 = (output13342, value5, value1) := by
  rw [input13342_def, output13342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13336_eq]
  dsimp only
  rw [node13341_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13342 input13335)).val
theorem input13343_def : input13343 = (.seq input13342 input13335) := by
  unfold input13343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13342 output13335)).val
theorem output13343_def : output13343 = (.seq output13342 output13335) := by
  unfold output13343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13343_skip : Flapjack.WordAlloc.isSkip output13343 = false := by
  rw [output13343_def]
  conv => lhs; cbv
  try rfl
theorem node13343_eq : Flapjack.WordAlloc.removeDeadStructural input13343 value6671 value1 value2 = (output13343, value5, value1) := by
  rw [input13343_def, output13343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13335_eq]
  dsimp only
  rw [node13342_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6676 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1081 (Flapjack.WordLangAddr.addr 1085 0#64)))).val
theorem input13344_def : input13344 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1081 (Flapjack.WordLangAddr.addr 1085 0#64))) := by
  unfold input13344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1081 (Flapjack.WordLangAddr.addr 1085 0#64)))).val
theorem output13344_def : output13344 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1081 (Flapjack.WordLangAddr.addr 1085 0#64))) := by
  unfold output13344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13344_skip : Flapjack.WordAlloc.isSkip output13344 = false := by
  rw [output13344_def]
  conv => lhs; cbv
  try rfl
theorem node13344_eq : Flapjack.WordAlloc.removeDeadStructural input13344 value5 value1 value2 = (output13344, value6676, value1) := by
  rw [input13344_def, output13344_def]
  try (conv => lhs; cbv)
  try rfl

def value6677 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1085, 1073)])).val
theorem input13345_def : input13345 = (Flapjack.WordLangProgHOL.move 0 [(1085, 1073)]) := by
  unfold input13345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1085, 1073)])).val
theorem output13345_def : output13345 = (Flapjack.WordLangProgHOL.move 0 [(1085, 1073)]) := by
  unfold output13345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13345_skip : Flapjack.WordAlloc.isSkip output13345 = false := by
  rw [output13345_def]
  conv => lhs; cbv
  try rfl
theorem node13345_eq : Flapjack.WordAlloc.removeDeadStructural input13345 value6676 value1 value2 = (output13345, value6677, value1) := by
  rw [input13345_def, output13345_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13345 input13344)).val
theorem input13346_def : input13346 = (.seq input13345 input13344) := by
  unfold input13346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13345 output13344)).val
theorem output13346_def : output13346 = (.seq output13345 output13344) := by
  unfold output13346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13346_skip : Flapjack.WordAlloc.isSkip output13346 = false := by
  rw [output13346_def]
  conv => lhs; cbv
  try rfl
theorem node13346_eq : Flapjack.WordAlloc.removeDeadStructural input13346 value5 value1 value2 = (output13346, value6677, value1) := by
  rw [input13346_def, output13346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13344_eq]
  dsimp only
  rw [node13345_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6678 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1081 936899308823769933#64))).val
theorem input13347_def : input13347 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1081 936899308823769933#64)) := by
  unfold input13347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1081 936899308823769933#64))).val
theorem output13347_def : output13347 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1081 936899308823769933#64)) := by
  unfold output13347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13347_skip : Flapjack.WordAlloc.isSkip output13347 = false := by
  rw [output13347_def]
  conv => lhs; cbv
  try rfl
theorem node13347_eq : Flapjack.WordAlloc.removeDeadStructural input13347 value6677 value1 value2 = (output13347, value6678, value1) := by
  rw [input13347_def, output13347_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1077 936899308823769933#64))).val
theorem input13348_def : input13348 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1077 936899308823769933#64)) := by
  unfold input13348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13348_def : output13348 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13348_skip : Flapjack.WordAlloc.isSkip output13348 = true := by
  rw [output13348_def]
  conv => lhs; cbv
  try rfl
theorem node13348_eq : Flapjack.WordAlloc.removeDeadStructural input13348 value6678 value1 value2 = (output13348, value6678, value1) := by
  rw [input13348_def, output13348_def]
  try (conv => lhs; cbv)
  try rfl

def value6679 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1073 1069 (Flapjack.WordRegImm.imm 232#64))))).val
theorem input13349_def : input13349 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1073 1069 (Flapjack.WordRegImm.imm 232#64)))) := by
  unfold input13349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1073 1069 (Flapjack.WordRegImm.imm 232#64))))).val
theorem output13349_def : output13349 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1073 1069 (Flapjack.WordRegImm.imm 232#64)))) := by
  unfold output13349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13349_skip : Flapjack.WordAlloc.isSkip output13349 = false := by
  rw [output13349_def]
  conv => lhs; cbv
  try rfl
theorem node13349_eq : Flapjack.WordAlloc.removeDeadStructural input13349 value6678 value1 value2 = (output13349, value6679, value1) := by
  rw [input13349_def, output13349_def]
  try (conv => lhs; cbv)
  try rfl

def value6680 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1069 (Flapjack.WordLangAddr.addr 1065 18446744073709551104#64)))).val
theorem input13350_def : input13350 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1069 (Flapjack.WordLangAddr.addr 1065 18446744073709551104#64))) := by
  unfold input13350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1069 (Flapjack.WordLangAddr.addr 1065 18446744073709551104#64)))).val
theorem output13350_def : output13350 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1069 (Flapjack.WordLangAddr.addr 1065 18446744073709551104#64))) := by
  unfold output13350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13350_skip : Flapjack.WordAlloc.isSkip output13350 = false := by
  rw [output13350_def]
  conv => lhs; cbv
  try rfl
theorem node13350_eq : Flapjack.WordAlloc.removeDeadStructural input13350 value6679 value1 value2 = (output13350, value6680, value1) := by
  rw [input13350_def, output13350_def]
  try (conv => lhs; cbv)
  try rfl

def value6681 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1065 1061)).val
theorem input13351_def : input13351 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1065 1061) := by
  unfold input13351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1065 1061)).val
theorem output13351_def : output13351 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1065 1061) := by
  unfold output13351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13351_skip : Flapjack.WordAlloc.isSkip output13351 = false := by
  rw [output13351_def]
  conv => lhs; cbv
  try rfl
theorem node13351_eq : Flapjack.WordAlloc.removeDeadStructural input13351 value6680 value1 value2 = (output13351, value6681, value1) := by
  rw [input13351_def, output13351_def]
  try (conv => lhs; cbv)
  try rfl

def value6682 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1061 1057 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13352_def : input13352 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1061 1057 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1061 1057 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13352_def : output13352 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1061 1057 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13352_skip : Flapjack.WordAlloc.isSkip output13352 = false := by
  rw [output13352_def]
  conv => lhs; cbv
  try rfl
theorem node13352_eq : Flapjack.WordAlloc.removeDeadStructural input13352 value6681 value1 value2 = (output13352, value6682, value1) := by
  rw [input13352_def, output13352_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1057 Flapjack.WordStore.heapLength)).val
theorem input13353_def : input13353 = (Flapjack.WordLangProgHOL.get 1057 Flapjack.WordStore.heapLength) := by
  unfold input13353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1057 Flapjack.WordStore.heapLength)).val
theorem output13353_def : output13353 = (Flapjack.WordLangProgHOL.get 1057 Flapjack.WordStore.heapLength) := by
  unfold output13353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13353_skip : Flapjack.WordAlloc.isSkip output13353 = false := by
  rw [output13353_def]
  conv => lhs; cbv
  try rfl
theorem node13353_eq : Flapjack.WordAlloc.removeDeadStructural input13353 value6682 value1 value2 = (output13353, value5, value1) := by
  rw [input13353_def, output13353_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13353 input13352)).val
theorem input13354_def : input13354 = (.seq input13353 input13352) := by
  unfold input13354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13353 output13352)).val
theorem output13354_def : output13354 = (.seq output13353 output13352) := by
  unfold output13354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13354_skip : Flapjack.WordAlloc.isSkip output13354 = false := by
  rw [output13354_def]
  conv => lhs; cbv
  try rfl
theorem node13354_eq : Flapjack.WordAlloc.removeDeadStructural input13354 value6681 value1 value2 = (output13354, value5, value1) := by
  rw [input13354_def, output13354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13352_eq]
  dsimp only
  rw [node13353_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13354 input13351)).val
theorem input13355_def : input13355 = (.seq input13354 input13351) := by
  unfold input13355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13354 output13351)).val
theorem output13355_def : output13355 = (.seq output13354 output13351) := by
  unfold output13355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13355_skip : Flapjack.WordAlloc.isSkip output13355 = false := by
  rw [output13355_def]
  conv => lhs; cbv
  try rfl
theorem node13355_eq : Flapjack.WordAlloc.removeDeadStructural input13355 value6680 value1 value2 = (output13355, value5, value1) := by
  rw [input13355_def, output13355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13351_eq]
  dsimp only
  rw [node13354_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13355 input13350)).val
theorem input13356_def : input13356 = (.seq input13355 input13350) := by
  unfold input13356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13355 output13350)).val
theorem output13356_def : output13356 = (.seq output13355 output13350) := by
  unfold output13356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13356_skip : Flapjack.WordAlloc.isSkip output13356 = false := by
  rw [output13356_def]
  conv => lhs; cbv
  try rfl
theorem node13356_eq : Flapjack.WordAlloc.removeDeadStructural input13356 value6679 value1 value2 = (output13356, value5, value1) := by
  rw [input13356_def, output13356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13350_eq]
  dsimp only
  rw [node13355_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13356 input13349)).val
theorem input13357_def : input13357 = (.seq input13356 input13349) := by
  unfold input13357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13356 output13349)).val
theorem output13357_def : output13357 = (.seq output13356 output13349) := by
  unfold output13357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13357_skip : Flapjack.WordAlloc.isSkip output13357 = false := by
  rw [output13357_def]
  conv => lhs; cbv
  try rfl
theorem node13357_eq : Flapjack.WordAlloc.removeDeadStructural input13357 value6678 value1 value2 = (output13357, value5, value1) := by
  rw [input13357_def, output13357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13349_eq]
  dsimp only
  rw [node13356_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6683 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1049 (Flapjack.WordLangAddr.addr 1053 0#64)))).val
theorem input13358_def : input13358 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1049 (Flapjack.WordLangAddr.addr 1053 0#64))) := by
  unfold input13358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1049 (Flapjack.WordLangAddr.addr 1053 0#64)))).val
theorem output13358_def : output13358 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1049 (Flapjack.WordLangAddr.addr 1053 0#64))) := by
  unfold output13358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13358_skip : Flapjack.WordAlloc.isSkip output13358 = false := by
  rw [output13358_def]
  conv => lhs; cbv
  try rfl
theorem node13358_eq : Flapjack.WordAlloc.removeDeadStructural input13358 value5 value1 value2 = (output13358, value6683, value1) := by
  rw [input13358_def, output13358_def]
  try (conv => lhs; cbv)
  try rfl

def value6684 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1053, 1041)])).val
theorem input13359_def : input13359 = (Flapjack.WordLangProgHOL.move 0 [(1053, 1041)]) := by
  unfold input13359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1053, 1041)])).val
theorem output13359_def : output13359 = (Flapjack.WordLangProgHOL.move 0 [(1053, 1041)]) := by
  unfold output13359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13359_skip : Flapjack.WordAlloc.isSkip output13359 = false := by
  rw [output13359_def]
  conv => lhs; cbv
  try rfl
theorem node13359_eq : Flapjack.WordAlloc.removeDeadStructural input13359 value6683 value1 value2 = (output13359, value6684, value1) := by
  rw [input13359_def, output13359_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13359 input13358)).val
theorem input13360_def : input13360 = (.seq input13359 input13358) := by
  unfold input13360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13359 output13358)).val
theorem output13360_def : output13360 = (.seq output13359 output13358) := by
  unfold output13360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13360_skip : Flapjack.WordAlloc.isSkip output13360 = false := by
  rw [output13360_def]
  conv => lhs; cbv
  try rfl
theorem node13360_eq : Flapjack.WordAlloc.removeDeadStructural input13360 value5 value1 value2 = (output13360, value6684, value1) := by
  rw [input13360_def, output13360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13358_eq]
  dsimp only
  rw [node13359_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6685 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1049 2706051889235351147#64))).val
theorem input13361_def : input13361 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1049 2706051889235351147#64)) := by
  unfold input13361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1049 2706051889235351147#64))).val
theorem output13361_def : output13361 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1049 2706051889235351147#64)) := by
  unfold output13361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13361_skip : Flapjack.WordAlloc.isSkip output13361 = false := by
  rw [output13361_def]
  conv => lhs; cbv
  try rfl
theorem node13361_eq : Flapjack.WordAlloc.removeDeadStructural input13361 value6684 value1 value2 = (output13361, value6685, value1) := by
  rw [input13361_def, output13361_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1045 2706051889235351147#64))).val
theorem input13362_def : input13362 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1045 2706051889235351147#64)) := by
  unfold input13362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13362_def : output13362 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13362_skip : Flapjack.WordAlloc.isSkip output13362 = true := by
  rw [output13362_def]
  conv => lhs; cbv
  try rfl
theorem node13362_eq : Flapjack.WordAlloc.removeDeadStructural input13362 value6685 value1 value2 = (output13362, value6685, value1) := by
  rw [input13362_def, output13362_def]
  try (conv => lhs; cbv)
  try rfl

def value6686 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1041 1037 (Flapjack.WordRegImm.imm 224#64))))).val
theorem input13363_def : input13363 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1041 1037 (Flapjack.WordRegImm.imm 224#64)))) := by
  unfold input13363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1041 1037 (Flapjack.WordRegImm.imm 224#64))))).val
theorem output13363_def : output13363 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1041 1037 (Flapjack.WordRegImm.imm 224#64)))) := by
  unfold output13363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13363_skip : Flapjack.WordAlloc.isSkip output13363 = false := by
  rw [output13363_def]
  conv => lhs; cbv
  try rfl
theorem node13363_eq : Flapjack.WordAlloc.removeDeadStructural input13363 value6685 value1 value2 = (output13363, value6686, value1) := by
  rw [input13363_def, output13363_def]
  try (conv => lhs; cbv)
  try rfl

def value6687 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1037 (Flapjack.WordLangAddr.addr 1033 18446744073709551104#64)))).val
theorem input13364_def : input13364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1037 (Flapjack.WordLangAddr.addr 1033 18446744073709551104#64))) := by
  unfold input13364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1037 (Flapjack.WordLangAddr.addr 1033 18446744073709551104#64)))).val
theorem output13364_def : output13364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1037 (Flapjack.WordLangAddr.addr 1033 18446744073709551104#64))) := by
  unfold output13364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13364_skip : Flapjack.WordAlloc.isSkip output13364 = false := by
  rw [output13364_def]
  conv => lhs; cbv
  try rfl
theorem node13364_eq : Flapjack.WordAlloc.removeDeadStructural input13364 value6686 value1 value2 = (output13364, value6687, value1) := by
  rw [input13364_def, output13364_def]
  try (conv => lhs; cbv)
  try rfl

def value6688 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1033 1029)).val
theorem input13365_def : input13365 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1033 1029) := by
  unfold input13365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1033 1029)).val
theorem output13365_def : output13365 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1033 1029) := by
  unfold output13365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13365_skip : Flapjack.WordAlloc.isSkip output13365 = false := by
  rw [output13365_def]
  conv => lhs; cbv
  try rfl
theorem node13365_eq : Flapjack.WordAlloc.removeDeadStructural input13365 value6687 value1 value2 = (output13365, value6688, value1) := by
  rw [input13365_def, output13365_def]
  try (conv => lhs; cbv)
  try rfl

def value6689 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1029 1025 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13366_def : input13366 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1029 1025 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1029 1025 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13366_def : output13366 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1029 1025 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13366_skip : Flapjack.WordAlloc.isSkip output13366 = false := by
  rw [output13366_def]
  conv => lhs; cbv
  try rfl
theorem node13366_eq : Flapjack.WordAlloc.removeDeadStructural input13366 value6688 value1 value2 = (output13366, value6689, value1) := by
  rw [input13366_def, output13366_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1025 Flapjack.WordStore.heapLength)).val
theorem input13367_def : input13367 = (Flapjack.WordLangProgHOL.get 1025 Flapjack.WordStore.heapLength) := by
  unfold input13367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1025 Flapjack.WordStore.heapLength)).val
theorem output13367_def : output13367 = (Flapjack.WordLangProgHOL.get 1025 Flapjack.WordStore.heapLength) := by
  unfold output13367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13367_skip : Flapjack.WordAlloc.isSkip output13367 = false := by
  rw [output13367_def]
  conv => lhs; cbv
  try rfl
theorem node13367_eq : Flapjack.WordAlloc.removeDeadStructural input13367 value6689 value1 value2 = (output13367, value5, value1) := by
  rw [input13367_def, output13367_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13367 input13366)).val
theorem input13368_def : input13368 = (.seq input13367 input13366) := by
  unfold input13368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13367 output13366)).val
theorem output13368_def : output13368 = (.seq output13367 output13366) := by
  unfold output13368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13368_skip : Flapjack.WordAlloc.isSkip output13368 = false := by
  rw [output13368_def]
  conv => lhs; cbv
  try rfl
theorem node13368_eq : Flapjack.WordAlloc.removeDeadStructural input13368 value6688 value1 value2 = (output13368, value5, value1) := by
  rw [input13368_def, output13368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13366_eq]
  dsimp only
  rw [node13367_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13368 input13365)).val
theorem input13369_def : input13369 = (.seq input13368 input13365) := by
  unfold input13369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13368 output13365)).val
theorem output13369_def : output13369 = (.seq output13368 output13365) := by
  unfold output13369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13369_skip : Flapjack.WordAlloc.isSkip output13369 = false := by
  rw [output13369_def]
  conv => lhs; cbv
  try rfl
theorem node13369_eq : Flapjack.WordAlloc.removeDeadStructural input13369 value6687 value1 value2 = (output13369, value5, value1) := by
  rw [input13369_def, output13369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13365_eq]
  dsimp only
  rw [node13368_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13369 input13364)).val
theorem input13370_def : input13370 = (.seq input13369 input13364) := by
  unfold input13370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13369 output13364)).val
theorem output13370_def : output13370 = (.seq output13369 output13364) := by
  unfold output13370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13370_skip : Flapjack.WordAlloc.isSkip output13370 = false := by
  rw [output13370_def]
  conv => lhs; cbv
  try rfl
theorem node13370_eq : Flapjack.WordAlloc.removeDeadStructural input13370 value6686 value1 value2 = (output13370, value5, value1) := by
  rw [input13370_def, output13370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13364_eq]
  dsimp only
  rw [node13369_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13370 input13363)).val
theorem input13371_def : input13371 = (.seq input13370 input13363) := by
  unfold input13371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13370 output13363)).val
theorem output13371_def : output13371 = (.seq output13370 output13363) := by
  unfold output13371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13371_skip : Flapjack.WordAlloc.isSkip output13371 = false := by
  rw [output13371_def]
  conv => lhs; cbv
  try rfl
theorem node13371_eq : Flapjack.WordAlloc.removeDeadStructural input13371 value6685 value1 value2 = (output13371, value5, value1) := by
  rw [input13371_def, output13371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13363_eq]
  dsimp only
  rw [node13370_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6690 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1017 (Flapjack.WordLangAddr.addr 1021 0#64)))).val
theorem input13372_def : input13372 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1017 (Flapjack.WordLangAddr.addr 1021 0#64))) := by
  unfold input13372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1017 (Flapjack.WordLangAddr.addr 1021 0#64)))).val
theorem output13372_def : output13372 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1017 (Flapjack.WordLangAddr.addr 1021 0#64))) := by
  unfold output13372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13372_skip : Flapjack.WordAlloc.isSkip output13372 = false := by
  rw [output13372_def]
  conv => lhs; cbv
  try rfl
theorem node13372_eq : Flapjack.WordAlloc.removeDeadStructural input13372 value5 value1 value2 = (output13372, value6690, value1) := by
  rw [input13372_def, output13372_def]
  try (conv => lhs; cbv)
  try rfl

def value6691 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1021, 1009)])).val
theorem input13373_def : input13373 = (Flapjack.WordLangProgHOL.move 0 [(1021, 1009)]) := by
  unfold input13373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1021, 1009)])).val
theorem output13373_def : output13373 = (Flapjack.WordLangProgHOL.move 0 [(1021, 1009)]) := by
  unfold output13373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13373_skip : Flapjack.WordAlloc.isSkip output13373 = false := by
  rw [output13373_def]
  conv => lhs; cbv
  try rfl
theorem node13373_eq : Flapjack.WordAlloc.removeDeadStructural input13373 value6690 value1 value2 = (output13373, value6691, value1) := by
  rw [input13373_def, output13373_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13373 input13372)).val
theorem input13374_def : input13374 = (.seq input13373 input13372) := by
  unfold input13374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13373 output13372)).val
theorem output13374_def : output13374 = (.seq output13373 output13372) := by
  unfold output13374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13374_skip : Flapjack.WordAlloc.isSkip output13374 = false := by
  rw [output13374_def]
  conv => lhs; cbv
  try rfl
theorem node13374_eq : Flapjack.WordAlloc.removeDeadStructural input13374 value5 value1 value2 = (output13374, value6691, value1) := by
  rw [input13374_def, output13374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13372_eq]
  dsimp only
  rw [node13373_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6692 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1017 12843041017062132063#64))).val
theorem input13375_def : input13375 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1017 12843041017062132063#64)) := by
  unfold input13375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1017 12843041017062132063#64))).val
theorem output13375_def : output13375 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1017 12843041017062132063#64)) := by
  unfold output13375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13375_skip : Flapjack.WordAlloc.isSkip output13375 = false := by
  rw [output13375_def]
  conv => lhs; cbv
  try rfl
theorem node13375_eq : Flapjack.WordAlloc.removeDeadStructural input13375 value6691 value1 value2 = (output13375, value6692, value1) := by
  rw [input13375_def, output13375_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1013 12843041017062132063#64))).val
theorem input13376_def : input13376 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1013 12843041017062132063#64)) := by
  unfold input13376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13376_def : output13376 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13376_skip : Flapjack.WordAlloc.isSkip output13376 = true := by
  rw [output13376_def]
  conv => lhs; cbv
  try rfl
theorem node13376_eq : Flapjack.WordAlloc.removeDeadStructural input13376 value6692 value1 value2 = (output13376, value6692, value1) := by
  rw [input13376_def, output13376_def]
  try (conv => lhs; cbv)
  try rfl

def value6693 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1009 1005 (Flapjack.WordRegImm.imm 216#64))))).val
theorem input13377_def : input13377 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1009 1005 (Flapjack.WordRegImm.imm 216#64)))) := by
  unfold input13377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1009 1005 (Flapjack.WordRegImm.imm 216#64))))).val
theorem output13377_def : output13377 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1009 1005 (Flapjack.WordRegImm.imm 216#64)))) := by
  unfold output13377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13377_skip : Flapjack.WordAlloc.isSkip output13377 = false := by
  rw [output13377_def]
  conv => lhs; cbv
  try rfl
theorem node13377_eq : Flapjack.WordAlloc.removeDeadStructural input13377 value6692 value1 value2 = (output13377, value6693, value1) := by
  rw [input13377_def, output13377_def]
  try (conv => lhs; cbv)
  try rfl

def value6694 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1005 (Flapjack.WordLangAddr.addr 1001 18446744073709551104#64)))).val
theorem input13378_def : input13378 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1005 (Flapjack.WordLangAddr.addr 1001 18446744073709551104#64))) := by
  unfold input13378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1005 (Flapjack.WordLangAddr.addr 1001 18446744073709551104#64)))).val
theorem output13378_def : output13378 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1005 (Flapjack.WordLangAddr.addr 1001 18446744073709551104#64))) := by
  unfold output13378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13378_skip : Flapjack.WordAlloc.isSkip output13378 = false := by
  rw [output13378_def]
  conv => lhs; cbv
  try rfl
theorem node13378_eq : Flapjack.WordAlloc.removeDeadStructural input13378 value6693 value1 value2 = (output13378, value6694, value1) := by
  rw [input13378_def, output13378_def]
  try (conv => lhs; cbv)
  try rfl

def value6695 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1001 997)).val
theorem input13379_def : input13379 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1001 997) := by
  unfold input13379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1001 997)).val
theorem output13379_def : output13379 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1001 997) := by
  unfold output13379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13379_skip : Flapjack.WordAlloc.isSkip output13379 = false := by
  rw [output13379_def]
  conv => lhs; cbv
  try rfl
theorem node13379_eq : Flapjack.WordAlloc.removeDeadStructural input13379 value6694 value1 value2 = (output13379, value6695, value1) := by
  rw [input13379_def, output13379_def]
  try (conv => lhs; cbv)
  try rfl

def value6696 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 997 993 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13380_def : input13380 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 997 993 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 997 993 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13380_def : output13380 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 997 993 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13380_skip : Flapjack.WordAlloc.isSkip output13380 = false := by
  rw [output13380_def]
  conv => lhs; cbv
  try rfl
theorem node13380_eq : Flapjack.WordAlloc.removeDeadStructural input13380 value6695 value1 value2 = (output13380, value6696, value1) := by
  rw [input13380_def, output13380_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 993 Flapjack.WordStore.heapLength)).val
theorem input13381_def : input13381 = (Flapjack.WordLangProgHOL.get 993 Flapjack.WordStore.heapLength) := by
  unfold input13381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 993 Flapjack.WordStore.heapLength)).val
theorem output13381_def : output13381 = (Flapjack.WordLangProgHOL.get 993 Flapjack.WordStore.heapLength) := by
  unfold output13381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13381_skip : Flapjack.WordAlloc.isSkip output13381 = false := by
  rw [output13381_def]
  conv => lhs; cbv
  try rfl
theorem node13381_eq : Flapjack.WordAlloc.removeDeadStructural input13381 value6696 value1 value2 = (output13381, value5, value1) := by
  rw [input13381_def, output13381_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13381 input13380)).val
theorem input13382_def : input13382 = (.seq input13381 input13380) := by
  unfold input13382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13381 output13380)).val
theorem output13382_def : output13382 = (.seq output13381 output13380) := by
  unfold output13382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13382_skip : Flapjack.WordAlloc.isSkip output13382 = false := by
  rw [output13382_def]
  conv => lhs; cbv
  try rfl
theorem node13382_eq : Flapjack.WordAlloc.removeDeadStructural input13382 value6695 value1 value2 = (output13382, value5, value1) := by
  rw [input13382_def, output13382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13380_eq]
  dsimp only
  rw [node13381_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13382 input13379)).val
theorem input13383_def : input13383 = (.seq input13382 input13379) := by
  unfold input13383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13382 output13379)).val
theorem output13383_def : output13383 = (.seq output13382 output13379) := by
  unfold output13383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13383_skip : Flapjack.WordAlloc.isSkip output13383 = false := by
  rw [output13383_def]
  conv => lhs; cbv
  try rfl
theorem node13383_eq : Flapjack.WordAlloc.removeDeadStructural input13383 value6694 value1 value2 = (output13383, value5, value1) := by
  rw [input13383_def, output13383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13379_eq]
  dsimp only
  rw [node13382_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13383 input13378)).val
theorem input13384_def : input13384 = (.seq input13383 input13378) := by
  unfold input13384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13383 output13378)).val
theorem output13384_def : output13384 = (.seq output13383 output13378) := by
  unfold output13384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13384_skip : Flapjack.WordAlloc.isSkip output13384 = false := by
  rw [output13384_def]
  conv => lhs; cbv
  try rfl
theorem node13384_eq : Flapjack.WordAlloc.removeDeadStructural input13384 value6693 value1 value2 = (output13384, value5, value1) := by
  rw [input13384_def, output13384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13378_eq]
  dsimp only
  rw [node13383_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13384 input13377)).val
theorem input13385_def : input13385 = (.seq input13384 input13377) := by
  unfold input13385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13384 output13377)).val
theorem output13385_def : output13385 = (.seq output13384 output13377) := by
  unfold output13385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13385_skip : Flapjack.WordAlloc.isSkip output13385 = false := by
  rw [output13385_def]
  conv => lhs; cbv
  try rfl
theorem node13385_eq : Flapjack.WordAlloc.removeDeadStructural input13385 value6692 value1 value2 = (output13385, value5, value1) := by
  rw [input13385_def, output13385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13377_eq]
  dsimp only
  rw [node13384_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6697 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 985 (Flapjack.WordLangAddr.addr 989 0#64)))).val
theorem input13386_def : input13386 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 985 (Flapjack.WordLangAddr.addr 989 0#64))) := by
  unfold input13386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 985 (Flapjack.WordLangAddr.addr 989 0#64)))).val
theorem output13386_def : output13386 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 985 (Flapjack.WordLangAddr.addr 989 0#64))) := by
  unfold output13386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13386_skip : Flapjack.WordAlloc.isSkip output13386 = false := by
  rw [output13386_def]
  conv => lhs; cbv
  try rfl
theorem node13386_eq : Flapjack.WordAlloc.removeDeadStructural input13386 value5 value1 value2 = (output13386, value6697, value1) := by
  rw [input13386_def, output13386_def]
  try (conv => lhs; cbv)
  try rfl

def value6698 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(989, 977)])).val
theorem input13387_def : input13387 = (Flapjack.WordLangProgHOL.move 0 [(989, 977)]) := by
  unfold input13387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(989, 977)])).val
theorem output13387_def : output13387 = (Flapjack.WordLangProgHOL.move 0 [(989, 977)]) := by
  unfold output13387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13387_skip : Flapjack.WordAlloc.isSkip output13387 = false := by
  rw [output13387_def]
  conv => lhs; cbv
  try rfl
theorem node13387_eq : Flapjack.WordAlloc.removeDeadStructural input13387 value6697 value1 value2 = (output13387, value6698, value1) := by
  rw [input13387_def, output13387_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13387 input13386)).val
theorem input13388_def : input13388 = (.seq input13387 input13386) := by
  unfold input13388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13387 output13386)).val
theorem output13388_def : output13388 = (.seq output13387 output13386) := by
  unfold output13388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13388_skip : Flapjack.WordAlloc.isSkip output13388 = false := by
  rw [output13388_def]
  conv => lhs; cbv
  try rfl
theorem node13388_eq : Flapjack.WordAlloc.removeDeadStructural input13388 value5 value1 value2 = (output13388, value6698, value1) := by
  rw [input13388_def, output13388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13386_eq]
  dsimp only
  rw [node13387_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6699 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 985 12941209323636816658#64))).val
theorem input13389_def : input13389 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 985 12941209323636816658#64)) := by
  unfold input13389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 985 12941209323636816658#64))).val
theorem output13389_def : output13389 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 985 12941209323636816658#64)) := by
  unfold output13389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13389_skip : Flapjack.WordAlloc.isSkip output13389 = false := by
  rw [output13389_def]
  conv => lhs; cbv
  try rfl
theorem node13389_eq : Flapjack.WordAlloc.removeDeadStructural input13389 value6698 value1 value2 = (output13389, value6699, value1) := by
  rw [input13389_def, output13389_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 981 12941209323636816658#64))).val
theorem input13390_def : input13390 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 981 12941209323636816658#64)) := by
  unfold input13390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13390_def : output13390 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13390_skip : Flapjack.WordAlloc.isSkip output13390 = true := by
  rw [output13390_def]
  conv => lhs; cbv
  try rfl
theorem node13390_eq : Flapjack.WordAlloc.removeDeadStructural input13390 value6699 value1 value2 = (output13390, value6699, value1) := by
  rw [input13390_def, output13390_def]
  try (conv => lhs; cbv)
  try rfl

def value6700 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 977 973 (Flapjack.WordRegImm.imm 208#64))))).val
theorem input13391_def : input13391 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 977 973 (Flapjack.WordRegImm.imm 208#64)))) := by
  unfold input13391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 977 973 (Flapjack.WordRegImm.imm 208#64))))).val
theorem output13391_def : output13391 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 977 973 (Flapjack.WordRegImm.imm 208#64)))) := by
  unfold output13391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13391_skip : Flapjack.WordAlloc.isSkip output13391 = false := by
  rw [output13391_def]
  conv => lhs; cbv
  try rfl
theorem node13391_eq : Flapjack.WordAlloc.removeDeadStructural input13391 value6699 value1 value2 = (output13391, value6700, value1) := by
  rw [input13391_def, output13391_def]
  try (conv => lhs; cbv)
  try rfl

def value6701 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 973 (Flapjack.WordLangAddr.addr 969 18446744073709551104#64)))).val
theorem input13392_def : input13392 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 973 (Flapjack.WordLangAddr.addr 969 18446744073709551104#64))) := by
  unfold input13392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 973 (Flapjack.WordLangAddr.addr 969 18446744073709551104#64)))).val
theorem output13392_def : output13392 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 973 (Flapjack.WordLangAddr.addr 969 18446744073709551104#64))) := by
  unfold output13392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13392_skip : Flapjack.WordAlloc.isSkip output13392 = false := by
  rw [output13392_def]
  conv => lhs; cbv
  try rfl
theorem node13392_eq : Flapjack.WordAlloc.removeDeadStructural input13392 value6700 value1 value2 = (output13392, value6701, value1) := by
  rw [input13392_def, output13392_def]
  try (conv => lhs; cbv)
  try rfl

def value6702 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 969 965)).val
theorem input13393_def : input13393 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 969 965) := by
  unfold input13393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 969 965)).val
theorem output13393_def : output13393 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 969 965) := by
  unfold output13393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13393_skip : Flapjack.WordAlloc.isSkip output13393 = false := by
  rw [output13393_def]
  conv => lhs; cbv
  try rfl
theorem node13393_eq : Flapjack.WordAlloc.removeDeadStructural input13393 value6701 value1 value2 = (output13393, value6702, value1) := by
  rw [input13393_def, output13393_def]
  try (conv => lhs; cbv)
  try rfl

def value6703 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 965 961 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13394_def : input13394 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 965 961 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 965 961 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13394_def : output13394 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 965 961 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13394_skip : Flapjack.WordAlloc.isSkip output13394 = false := by
  rw [output13394_def]
  conv => lhs; cbv
  try rfl
theorem node13394_eq : Flapjack.WordAlloc.removeDeadStructural input13394 value6702 value1 value2 = (output13394, value6703, value1) := by
  rw [input13394_def, output13394_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 961 Flapjack.WordStore.heapLength)).val
theorem input13395_def : input13395 = (Flapjack.WordLangProgHOL.get 961 Flapjack.WordStore.heapLength) := by
  unfold input13395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 961 Flapjack.WordStore.heapLength)).val
theorem output13395_def : output13395 = (Flapjack.WordLangProgHOL.get 961 Flapjack.WordStore.heapLength) := by
  unfold output13395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13395_skip : Flapjack.WordAlloc.isSkip output13395 = false := by
  rw [output13395_def]
  conv => lhs; cbv
  try rfl
theorem node13395_eq : Flapjack.WordAlloc.removeDeadStructural input13395 value6703 value1 value2 = (output13395, value5, value1) := by
  rw [input13395_def, output13395_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13395 input13394)).val
theorem input13396_def : input13396 = (.seq input13395 input13394) := by
  unfold input13396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13395 output13394)).val
theorem output13396_def : output13396 = (.seq output13395 output13394) := by
  unfold output13396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13396_skip : Flapjack.WordAlloc.isSkip output13396 = false := by
  rw [output13396_def]
  conv => lhs; cbv
  try rfl
theorem node13396_eq : Flapjack.WordAlloc.removeDeadStructural input13396 value6702 value1 value2 = (output13396, value5, value1) := by
  rw [input13396_def, output13396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13394_eq]
  dsimp only
  rw [node13395_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13396 input13393)).val
theorem input13397_def : input13397 = (.seq input13396 input13393) := by
  unfold input13397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13396 output13393)).val
theorem output13397_def : output13397 = (.seq output13396 output13393) := by
  unfold output13397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13397_skip : Flapjack.WordAlloc.isSkip output13397 = false := by
  rw [output13397_def]
  conv => lhs; cbv
  try rfl
theorem node13397_eq : Flapjack.WordAlloc.removeDeadStructural input13397 value6701 value1 value2 = (output13397, value5, value1) := by
  rw [input13397_def, output13397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13393_eq]
  dsimp only
  rw [node13396_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13397 input13392)).val
theorem input13398_def : input13398 = (.seq input13397 input13392) := by
  unfold input13398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13397 output13392)).val
theorem output13398_def : output13398 = (.seq output13397 output13392) := by
  unfold output13398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13398_skip : Flapjack.WordAlloc.isSkip output13398 = false := by
  rw [output13398_def]
  conv => lhs; cbv
  try rfl
theorem node13398_eq : Flapjack.WordAlloc.removeDeadStructural input13398 value6700 value1 value2 = (output13398, value5, value1) := by
  rw [input13398_def, output13398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13392_eq]
  dsimp only
  rw [node13397_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13398 input13391)).val
theorem input13399_def : input13399 = (.seq input13398 input13391) := by
  unfold input13399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13398 output13391)).val
theorem output13399_def : output13399 = (.seq output13398 output13391) := by
  unfold output13399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13399_skip : Flapjack.WordAlloc.isSkip output13399 = false := by
  rw [output13399_def]
  conv => lhs; cbv
  try rfl
theorem node13399_eq : Flapjack.WordAlloc.removeDeadStructural input13399 value6699 value1 value2 = (output13399, value5, value1) := by
  rw [input13399_def, output13399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13391_eq]
  dsimp only
  rw [node13398_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6704 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 953 (Flapjack.WordLangAddr.addr 957 0#64)))).val
theorem input13400_def : input13400 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 953 (Flapjack.WordLangAddr.addr 957 0#64))) := by
  unfold input13400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 953 (Flapjack.WordLangAddr.addr 957 0#64)))).val
theorem output13400_def : output13400 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 953 (Flapjack.WordLangAddr.addr 957 0#64))) := by
  unfold output13400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13400_skip : Flapjack.WordAlloc.isSkip output13400 = false := by
  rw [output13400_def]
  conv => lhs; cbv
  try rfl
theorem node13400_eq : Flapjack.WordAlloc.removeDeadStructural input13400 value5 value1 value2 = (output13400, value6704, value1) := by
  rw [input13400_def, output13400_def]
  try (conv => lhs; cbv)
  try rfl

def value6705 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(957, 945)])).val
theorem input13401_def : input13401 = (Flapjack.WordLangProgHOL.move 0 [(957, 945)]) := by
  unfold input13401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(957, 945)])).val
theorem output13401_def : output13401 = (Flapjack.WordLangProgHOL.move 0 [(957, 945)]) := by
  unfold output13401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13401_skip : Flapjack.WordAlloc.isSkip output13401 = false := by
  rw [output13401_def]
  conv => lhs; cbv
  try rfl
theorem node13401_eq : Flapjack.WordAlloc.removeDeadStructural input13401 value6704 value1 value2 = (output13401, value6705, value1) := by
  rw [input13401_def, output13401_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13401 input13400)).val
theorem input13402_def : input13402 = (.seq input13401 input13400) := by
  unfold input13402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13401 output13400)).val
theorem output13402_def : output13402 = (.seq output13401 output13400) := by
  unfold output13402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13402_skip : Flapjack.WordAlloc.isSkip output13402 = false := by
  rw [output13402_def]
  conv => lhs; cbv
  try rfl
theorem node13402_eq : Flapjack.WordAlloc.removeDeadStructural input13402 value5 value1 value2 = (output13402, value6705, value1) := by
  rw [input13402_def, output13402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13400_eq]
  dsimp only
  rw [node13401_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6706 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 953 1105070755758604287#64))).val
theorem input13403_def : input13403 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 953 1105070755758604287#64)) := by
  unfold input13403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 953 1105070755758604287#64))).val
theorem output13403_def : output13403 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 953 1105070755758604287#64)) := by
  unfold output13403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13403_skip : Flapjack.WordAlloc.isSkip output13403 = false := by
  rw [output13403_def]
  conv => lhs; cbv
  try rfl
theorem node13403_eq : Flapjack.WordAlloc.removeDeadStructural input13403 value6705 value1 value2 = (output13403, value6706, value1) := by
  rw [input13403_def, output13403_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 949 1105070755758604287#64))).val
theorem input13404_def : input13404 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 949 1105070755758604287#64)) := by
  unfold input13404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13404_def : output13404 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13404_skip : Flapjack.WordAlloc.isSkip output13404 = true := by
  rw [output13404_def]
  conv => lhs; cbv
  try rfl
theorem node13404_eq : Flapjack.WordAlloc.removeDeadStructural input13404 value6706 value1 value2 = (output13404, value6706, value1) := by
  rw [input13404_def, output13404_def]
  try (conv => lhs; cbv)
  try rfl

def value6707 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 945 941 (Flapjack.WordRegImm.imm 200#64))))).val
theorem input13405_def : input13405 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 945 941 (Flapjack.WordRegImm.imm 200#64)))) := by
  unfold input13405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 945 941 (Flapjack.WordRegImm.imm 200#64))))).val
theorem output13405_def : output13405 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 945 941 (Flapjack.WordRegImm.imm 200#64)))) := by
  unfold output13405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13405_skip : Flapjack.WordAlloc.isSkip output13405 = false := by
  rw [output13405_def]
  conv => lhs; cbv
  try rfl
theorem node13405_eq : Flapjack.WordAlloc.removeDeadStructural input13405 value6706 value1 value2 = (output13405, value6707, value1) := by
  rw [input13405_def, output13405_def]
  try (conv => lhs; cbv)
  try rfl

def value6708 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 941 (Flapjack.WordLangAddr.addr 937 18446744073709551104#64)))).val
theorem input13406_def : input13406 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 941 (Flapjack.WordLangAddr.addr 937 18446744073709551104#64))) := by
  unfold input13406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 941 (Flapjack.WordLangAddr.addr 937 18446744073709551104#64)))).val
theorem output13406_def : output13406 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 941 (Flapjack.WordLangAddr.addr 937 18446744073709551104#64))) := by
  unfold output13406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13406_skip : Flapjack.WordAlloc.isSkip output13406 = false := by
  rw [output13406_def]
  conv => lhs; cbv
  try rfl
theorem node13406_eq : Flapjack.WordAlloc.removeDeadStructural input13406 value6707 value1 value2 = (output13406, value6708, value1) := by
  rw [input13406_def, output13406_def]
  try (conv => lhs; cbv)
  try rfl

def value6709 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 937 933)).val
theorem input13407_def : input13407 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 937 933) := by
  unfold input13407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 937 933)).val
theorem output13407_def : output13407 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 937 933) := by
  unfold output13407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13407_skip : Flapjack.WordAlloc.isSkip output13407 = false := by
  rw [output13407_def]
  conv => lhs; cbv
  try rfl
theorem node13407_eq : Flapjack.WordAlloc.removeDeadStructural input13407 value6708 value1 value2 = (output13407, value6709, value1) := by
  rw [input13407_def, output13407_def]
  try (conv => lhs; cbv)
  try rfl

def value6710 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 933 929 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13408_def : input13408 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 933 929 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 933 929 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13408_def : output13408 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 933 929 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13408_skip : Flapjack.WordAlloc.isSkip output13408 = false := by
  rw [output13408_def]
  conv => lhs; cbv
  try rfl
theorem node13408_eq : Flapjack.WordAlloc.removeDeadStructural input13408 value6709 value1 value2 = (output13408, value6710, value1) := by
  rw [input13408_def, output13408_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 929 Flapjack.WordStore.heapLength)).val
theorem input13409_def : input13409 = (Flapjack.WordLangProgHOL.get 929 Flapjack.WordStore.heapLength) := by
  unfold input13409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 929 Flapjack.WordStore.heapLength)).val
theorem output13409_def : output13409 = (Flapjack.WordLangProgHOL.get 929 Flapjack.WordStore.heapLength) := by
  unfold output13409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13409_skip : Flapjack.WordAlloc.isSkip output13409 = false := by
  rw [output13409_def]
  conv => lhs; cbv
  try rfl
theorem node13409_eq : Flapjack.WordAlloc.removeDeadStructural input13409 value6710 value1 value2 = (output13409, value5, value1) := by
  rw [input13409_def, output13409_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13409 input13408)).val
theorem input13410_def : input13410 = (.seq input13409 input13408) := by
  unfold input13410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13409 output13408)).val
theorem output13410_def : output13410 = (.seq output13409 output13408) := by
  unfold output13410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13410_skip : Flapjack.WordAlloc.isSkip output13410 = false := by
  rw [output13410_def]
  conv => lhs; cbv
  try rfl
theorem node13410_eq : Flapjack.WordAlloc.removeDeadStructural input13410 value6709 value1 value2 = (output13410, value5, value1) := by
  rw [input13410_def, output13410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13408_eq]
  dsimp only
  rw [node13409_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13410 input13407)).val
theorem input13411_def : input13411 = (.seq input13410 input13407) := by
  unfold input13411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13410 output13407)).val
theorem output13411_def : output13411 = (.seq output13410 output13407) := by
  unfold output13411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13411_skip : Flapjack.WordAlloc.isSkip output13411 = false := by
  rw [output13411_def]
  conv => lhs; cbv
  try rfl
theorem node13411_eq : Flapjack.WordAlloc.removeDeadStructural input13411 value6708 value1 value2 = (output13411, value5, value1) := by
  rw [input13411_def, output13411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13407_eq]
  dsimp only
  rw [node13410_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13411 input13406)).val
theorem input13412_def : input13412 = (.seq input13411 input13406) := by
  unfold input13412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13411 output13406)).val
theorem output13412_def : output13412 = (.seq output13411 output13406) := by
  unfold output13412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13412_skip : Flapjack.WordAlloc.isSkip output13412 = false := by
  rw [output13412_def]
  conv => lhs; cbv
  try rfl
theorem node13412_eq : Flapjack.WordAlloc.removeDeadStructural input13412 value6707 value1 value2 = (output13412, value5, value1) := by
  rw [input13412_def, output13412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13406_eq]
  dsimp only
  rw [node13411_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13412 input13405)).val
theorem input13413_def : input13413 = (.seq input13412 input13405) := by
  unfold input13413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13412 output13405)).val
theorem output13413_def : output13413 = (.seq output13412 output13405) := by
  unfold output13413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13413_skip : Flapjack.WordAlloc.isSkip output13413 = false := by
  rw [output13413_def]
  conv => lhs; cbv
  try rfl
theorem node13413_eq : Flapjack.WordAlloc.removeDeadStructural input13413 value6706 value1 value2 = (output13413, value5, value1) := by
  rw [input13413_def, output13413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13405_eq]
  dsimp only
  rw [node13412_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6711 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 921 (Flapjack.WordLangAddr.addr 925 0#64)))).val
theorem input13414_def : input13414 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 921 (Flapjack.WordLangAddr.addr 925 0#64))) := by
  unfold input13414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 921 (Flapjack.WordLangAddr.addr 925 0#64)))).val
theorem output13414_def : output13414 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 921 (Flapjack.WordLangAddr.addr 925 0#64))) := by
  unfold output13414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13414_skip : Flapjack.WordAlloc.isSkip output13414 = false := by
  rw [output13414_def]
  conv => lhs; cbv
  try rfl
theorem node13414_eq : Flapjack.WordAlloc.removeDeadStructural input13414 value5 value1 value2 = (output13414, value6711, value1) := by
  rw [input13414_def, output13414_def]
  try (conv => lhs; cbv)
  try rfl

def value6712 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(925, 913)])).val
theorem input13415_def : input13415 = (Flapjack.WordLangProgHOL.move 0 [(925, 913)]) := by
  unfold input13415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(925, 913)])).val
theorem output13415_def : output13415 = (Flapjack.WordLangProgHOL.move 0 [(925, 913)]) := by
  unfold output13415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13415_skip : Flapjack.WordAlloc.isSkip output13415 = false := by
  rw [output13415_def]
  conv => lhs; cbv
  try rfl
theorem node13415_eq : Flapjack.WordAlloc.removeDeadStructural input13415 value6711 value1 value2 = (output13415, value6712, value1) := by
  rw [input13415_def, output13415_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13415 input13414)).val
theorem input13416_def : input13416 = (.seq input13415 input13414) := by
  unfold input13416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13415 output13414)).val
theorem output13416_def : output13416 = (.seq output13415 output13414) := by
  unfold output13416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13416_skip : Flapjack.WordAlloc.isSkip output13416 = false := by
  rw [output13416_def]
  conv => lhs; cbv
  try rfl
theorem node13416_eq : Flapjack.WordAlloc.removeDeadStructural input13416 value5 value1 value2 = (output13416, value6712, value1) := by
  rw [input13416_def, output13416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13414_eq]
  dsimp only
  rw [node13415_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6713 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 921 15924587544893707605#64))).val
theorem input13417_def : input13417 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 921 15924587544893707605#64)) := by
  unfold input13417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 921 15924587544893707605#64))).val
theorem output13417_def : output13417 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 921 15924587544893707605#64)) := by
  unfold output13417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13417_skip : Flapjack.WordAlloc.isSkip output13417 = false := by
  rw [output13417_def]
  conv => lhs; cbv
  try rfl
theorem node13417_eq : Flapjack.WordAlloc.removeDeadStructural input13417 value6712 value1 value2 = (output13417, value6713, value1) := by
  rw [input13417_def, output13417_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 917 15924587544893707605#64))).val
theorem input13418_def : input13418 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 917 15924587544893707605#64)) := by
  unfold input13418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13418_def : output13418 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13418_skip : Flapjack.WordAlloc.isSkip output13418 = true := by
  rw [output13418_def]
  conv => lhs; cbv
  try rfl
theorem node13418_eq : Flapjack.WordAlloc.removeDeadStructural input13418 value6713 value1 value2 = (output13418, value6713, value1) := by
  rw [input13418_def, output13418_def]
  try (conv => lhs; cbv)
  try rfl

def value6714 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 913 909 (Flapjack.WordRegImm.imm 192#64))))).val
theorem input13419_def : input13419 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 913 909 (Flapjack.WordRegImm.imm 192#64)))) := by
  unfold input13419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 913 909 (Flapjack.WordRegImm.imm 192#64))))).val
theorem output13419_def : output13419 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 913 909 (Flapjack.WordRegImm.imm 192#64)))) := by
  unfold output13419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13419_skip : Flapjack.WordAlloc.isSkip output13419 = false := by
  rw [output13419_def]
  conv => lhs; cbv
  try rfl
theorem node13419_eq : Flapjack.WordAlloc.removeDeadStructural input13419 value6713 value1 value2 = (output13419, value6714, value1) := by
  rw [input13419_def, output13419_def]
  try (conv => lhs; cbv)
  try rfl

def value6715 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 909 (Flapjack.WordLangAddr.addr 905 18446744073709551104#64)))).val
theorem input13420_def : input13420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 909 (Flapjack.WordLangAddr.addr 905 18446744073709551104#64))) := by
  unfold input13420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 909 (Flapjack.WordLangAddr.addr 905 18446744073709551104#64)))).val
theorem output13420_def : output13420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 909 (Flapjack.WordLangAddr.addr 905 18446744073709551104#64))) := by
  unfold output13420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13420_skip : Flapjack.WordAlloc.isSkip output13420 = false := by
  rw [output13420_def]
  conv => lhs; cbv
  try rfl
theorem node13420_eq : Flapjack.WordAlloc.removeDeadStructural input13420 value6714 value1 value2 = (output13420, value6715, value1) := by
  rw [input13420_def, output13420_def]
  try (conv => lhs; cbv)
  try rfl

def value6716 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 905 901)).val
theorem input13421_def : input13421 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 905 901) := by
  unfold input13421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 905 901)).val
theorem output13421_def : output13421 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 905 901) := by
  unfold output13421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13421_skip : Flapjack.WordAlloc.isSkip output13421 = false := by
  rw [output13421_def]
  conv => lhs; cbv
  try rfl
theorem node13421_eq : Flapjack.WordAlloc.removeDeadStructural input13421 value6715 value1 value2 = (output13421, value6716, value1) := by
  rw [input13421_def, output13421_def]
  try (conv => lhs; cbv)
  try rfl

def value6717 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 901 897 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13422_def : input13422 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 901 897 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 901 897 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13422_def : output13422 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 901 897 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13422_skip : Flapjack.WordAlloc.isSkip output13422 = false := by
  rw [output13422_def]
  conv => lhs; cbv
  try rfl
theorem node13422_eq : Flapjack.WordAlloc.removeDeadStructural input13422 value6716 value1 value2 = (output13422, value6717, value1) := by
  rw [input13422_def, output13422_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 897 Flapjack.WordStore.heapLength)).val
theorem input13423_def : input13423 = (Flapjack.WordLangProgHOL.get 897 Flapjack.WordStore.heapLength) := by
  unfold input13423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 897 Flapjack.WordStore.heapLength)).val
theorem output13423_def : output13423 = (Flapjack.WordLangProgHOL.get 897 Flapjack.WordStore.heapLength) := by
  unfold output13423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13423_skip : Flapjack.WordAlloc.isSkip output13423 = false := by
  rw [output13423_def]
  conv => lhs; cbv
  try rfl
theorem node13423_eq : Flapjack.WordAlloc.removeDeadStructural input13423 value6717 value1 value2 = (output13423, value5, value1) := by
  rw [input13423_def, output13423_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13423 input13422)).val
theorem input13424_def : input13424 = (.seq input13423 input13422) := by
  unfold input13424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13423 output13422)).val
theorem output13424_def : output13424 = (.seq output13423 output13422) := by
  unfold output13424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13424_skip : Flapjack.WordAlloc.isSkip output13424 = false := by
  rw [output13424_def]
  conv => lhs; cbv
  try rfl
theorem node13424_eq : Flapjack.WordAlloc.removeDeadStructural input13424 value6716 value1 value2 = (output13424, value5, value1) := by
  rw [input13424_def, output13424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13422_eq]
  dsimp only
  rw [node13423_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13424 input13421)).val
theorem input13425_def : input13425 = (.seq input13424 input13421) := by
  unfold input13425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13424 output13421)).val
theorem output13425_def : output13425 = (.seq output13424 output13421) := by
  unfold output13425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13425_skip : Flapjack.WordAlloc.isSkip output13425 = false := by
  rw [output13425_def]
  conv => lhs; cbv
  try rfl
theorem node13425_eq : Flapjack.WordAlloc.removeDeadStructural input13425 value6715 value1 value2 = (output13425, value5, value1) := by
  rw [input13425_def, output13425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13421_eq]
  dsimp only
  rw [node13424_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13425 input13420)).val
theorem input13426_def : input13426 = (.seq input13425 input13420) := by
  unfold input13426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13425 output13420)).val
theorem output13426_def : output13426 = (.seq output13425 output13420) := by
  unfold output13426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13426_skip : Flapjack.WordAlloc.isSkip output13426 = false := by
  rw [output13426_def]
  conv => lhs; cbv
  try rfl
theorem node13426_eq : Flapjack.WordAlloc.removeDeadStructural input13426 value6714 value1 value2 = (output13426, value5, value1) := by
  rw [input13426_def, output13426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13420_eq]
  dsimp only
  rw [node13425_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13426 input13419)).val
theorem input13427_def : input13427 = (.seq input13426 input13419) := by
  unfold input13427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13426 output13419)).val
theorem output13427_def : output13427 = (.seq output13426 output13419) := by
  unfold output13427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13427_skip : Flapjack.WordAlloc.isSkip output13427 = false := by
  rw [output13427_def]
  conv => lhs; cbv
  try rfl
theorem node13427_eq : Flapjack.WordAlloc.removeDeadStructural input13427 value6713 value1 value2 = (output13427, value5, value1) := by
  rw [input13427_def, output13427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13419_eq]
  dsimp only
  rw [node13426_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6718 : Flapjack.NumSet :=
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 889 (Flapjack.WordLangAddr.addr 893 0#64)))).val
theorem input13428_def : input13428 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 889 (Flapjack.WordLangAddr.addr 893 0#64))) := by
  unfold input13428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 889 (Flapjack.WordLangAddr.addr 893 0#64)))).val
theorem output13428_def : output13428 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 889 (Flapjack.WordLangAddr.addr 893 0#64))) := by
  unfold output13428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13428_skip : Flapjack.WordAlloc.isSkip output13428 = false := by
  rw [output13428_def]
  conv => lhs; cbv
  try rfl
theorem node13428_eq : Flapjack.WordAlloc.removeDeadStructural input13428 value5 value1 value2 = (output13428, value6718, value1) := by
  rw [input13428_def, output13428_def]
  try (conv => lhs; cbv)
  try rfl

def value6719 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(893, 881)])).val
theorem input13429_def : input13429 = (Flapjack.WordLangProgHOL.move 0 [(893, 881)]) := by
  unfold input13429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(893, 881)])).val
theorem output13429_def : output13429 = (Flapjack.WordLangProgHOL.move 0 [(893, 881)]) := by
  unfold output13429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13429_skip : Flapjack.WordAlloc.isSkip output13429 = false := by
  rw [output13429_def]
  conv => lhs; cbv
  try rfl
theorem node13429_eq : Flapjack.WordAlloc.removeDeadStructural input13429 value6718 value1 value2 = (output13429, value6719, value1) := by
  rw [input13429_def, output13429_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13429 input13428)).val
theorem input13430_def : input13430 = (.seq input13429 input13428) := by
  unfold input13430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13429 output13428)).val
theorem output13430_def : output13430 = (.seq output13429 output13428) := by
  unfold output13430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13430_skip : Flapjack.WordAlloc.isSkip output13430 = false := by
  rw [output13430_def]
  conv => lhs; cbv
  try rfl
theorem node13430_eq : Flapjack.WordAlloc.removeDeadStructural input13430 value5 value1 value2 = (output13430, value6719, value1) := by
  rw [input13430_def, output13430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13428_eq]
  dsimp only
  rw [node13429_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6720 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 889 767358375875140941#64))).val
theorem input13431_def : input13431 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 889 767358375875140941#64)) := by
  unfold input13431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 889 767358375875140941#64))).val
theorem output13431_def : output13431 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 889 767358375875140941#64)) := by
  unfold output13431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13431_skip : Flapjack.WordAlloc.isSkip output13431 = false := by
  rw [output13431_def]
  conv => lhs; cbv
  try rfl
theorem node13431_eq : Flapjack.WordAlloc.removeDeadStructural input13431 value6719 value1 value2 = (output13431, value6720, value1) := by
  rw [input13431_def, output13431_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 885 767358375875140941#64))).val
theorem input13432_def : input13432 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 885 767358375875140941#64)) := by
  unfold input13432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13432_def : output13432 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13432_skip : Flapjack.WordAlloc.isSkip output13432 = true := by
  rw [output13432_def]
  conv => lhs; cbv
  try rfl
theorem node13432_eq : Flapjack.WordAlloc.removeDeadStructural input13432 value6720 value1 value2 = (output13432, value6720, value1) := by
  rw [input13432_def, output13432_def]
  try (conv => lhs; cbv)
  try rfl

def value6721 : Flapjack.NumSet :=
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 881 877 (Flapjack.WordRegImm.imm 184#64))))).val
theorem input13433_def : input13433 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 881 877 (Flapjack.WordRegImm.imm 184#64)))) := by
  unfold input13433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 881 877 (Flapjack.WordRegImm.imm 184#64))))).val
theorem output13433_def : output13433 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 881 877 (Flapjack.WordRegImm.imm 184#64)))) := by
  unfold output13433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13433_skip : Flapjack.WordAlloc.isSkip output13433 = false := by
  rw [output13433_def]
  conv => lhs; cbv
  try rfl
theorem node13433_eq : Flapjack.WordAlloc.removeDeadStructural input13433 value6720 value1 value2 = (output13433, value6721, value1) := by
  rw [input13433_def, output13433_def]
  try (conv => lhs; cbv)
  try rfl

def value6722 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 877 (Flapjack.WordLangAddr.addr 873 18446744073709551104#64)))).val
theorem input13434_def : input13434 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 877 (Flapjack.WordLangAddr.addr 873 18446744073709551104#64))) := by
  unfold input13434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 877 (Flapjack.WordLangAddr.addr 873 18446744073709551104#64)))).val
theorem output13434_def : output13434 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 877 (Flapjack.WordLangAddr.addr 873 18446744073709551104#64))) := by
  unfold output13434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13434_skip : Flapjack.WordAlloc.isSkip output13434 = false := by
  rw [output13434_def]
  conv => lhs; cbv
  try rfl
theorem node13434_eq : Flapjack.WordAlloc.removeDeadStructural input13434 value6721 value1 value2 = (output13434, value6722, value1) := by
  rw [input13434_def, output13434_def]
  try (conv => lhs; cbv)
  try rfl

def value6723 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 873 869)).val
theorem input13435_def : input13435 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 873 869) := by
  unfold input13435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 873 869)).val
theorem output13435_def : output13435 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 873 869) := by
  unfold output13435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13435_skip : Flapjack.WordAlloc.isSkip output13435 = false := by
  rw [output13435_def]
  conv => lhs; cbv
  try rfl
theorem node13435_eq : Flapjack.WordAlloc.removeDeadStructural input13435 value6722 value1 value2 = (output13435, value6723, value1) := by
  rw [input13435_def, output13435_def]
  try (conv => lhs; cbv)
  try rfl

def value6724 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 869 865 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13436_def : input13436 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 869 865 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 869 865 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13436_def : output13436 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 869 865 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13436_skip : Flapjack.WordAlloc.isSkip output13436 = false := by
  rw [output13436_def]
  conv => lhs; cbv
  try rfl
theorem node13436_eq : Flapjack.WordAlloc.removeDeadStructural input13436 value6723 value1 value2 = (output13436, value6724, value1) := by
  rw [input13436_def, output13436_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 865 Flapjack.WordStore.heapLength)).val
theorem input13437_def : input13437 = (Flapjack.WordLangProgHOL.get 865 Flapjack.WordStore.heapLength) := by
  unfold input13437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 865 Flapjack.WordStore.heapLength)).val
theorem output13437_def : output13437 = (Flapjack.WordLangProgHOL.get 865 Flapjack.WordStore.heapLength) := by
  unfold output13437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13437_skip : Flapjack.WordAlloc.isSkip output13437 = false := by
  rw [output13437_def]
  conv => lhs; cbv
  try rfl
theorem node13437_eq : Flapjack.WordAlloc.removeDeadStructural input13437 value6724 value1 value2 = (output13437, value5, value1) := by
  rw [input13437_def, output13437_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13437 input13436)).val
theorem input13438_def : input13438 = (.seq input13437 input13436) := by
  unfold input13438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13437 output13436)).val
theorem output13438_def : output13438 = (.seq output13437 output13436) := by
  unfold output13438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13438_skip : Flapjack.WordAlloc.isSkip output13438 = false := by
  rw [output13438_def]
  conv => lhs; cbv
  try rfl
theorem node13438_eq : Flapjack.WordAlloc.removeDeadStructural input13438 value6723 value1 value2 = (output13438, value5, value1) := by
  rw [input13438_def, output13438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13436_eq]
  dsimp only
  rw [node13437_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13438 input13435)).val
theorem input13439_def : input13439 = (.seq input13438 input13435) := by
  unfold input13439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13438 output13435)).val
theorem output13439_def : output13439 = (.seq output13438 output13435) := by
  unfold output13439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13439_skip : Flapjack.WordAlloc.isSkip output13439 = false := by
  rw [output13439_def]
  conv => lhs; cbv
  try rfl
theorem node13439_eq : Flapjack.WordAlloc.removeDeadStructural input13439 value6722 value1 value2 = (output13439, value5, value1) := by
  rw [input13439_def, output13439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13435_eq]
  dsimp only
  rw [node13438_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13439 input13434)).val
theorem input13440_def : input13440 = (.seq input13439 input13434) := by
  unfold input13440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13439 output13434)).val
theorem output13440_def : output13440 = (.seq output13439 output13434) := by
  unfold output13440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13440_skip : Flapjack.WordAlloc.isSkip output13440 = false := by
  rw [output13440_def]
  conv => lhs; cbv
  try rfl
theorem node13440_eq : Flapjack.WordAlloc.removeDeadStructural input13440 value6721 value1 value2 = (output13440, value5, value1) := by
  rw [input13440_def, output13440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13434_eq]
  dsimp only
  rw [node13439_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13440 input13433)).val
theorem input13441_def : input13441 = (.seq input13440 input13433) := by
  unfold input13441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13440 output13433)).val
theorem output13441_def : output13441 = (.seq output13440 output13433) := by
  unfold output13441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13441_skip : Flapjack.WordAlloc.isSkip output13441 = false := by
  rw [output13441_def]
  conv => lhs; cbv
  try rfl
theorem node13441_eq : Flapjack.WordAlloc.removeDeadStructural input13441 value6720 value1 value2 = (output13441, value5, value1) := by
  rw [input13441_def, output13441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13433_eq]
  dsimp only
  rw [node13440_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6725 : Flapjack.NumSet :=
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 857 (Flapjack.WordLangAddr.addr 861 0#64)))).val
theorem input13442_def : input13442 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 857 (Flapjack.WordLangAddr.addr 861 0#64))) := by
  unfold input13442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 857 (Flapjack.WordLangAddr.addr 861 0#64)))).val
theorem output13442_def : output13442 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 857 (Flapjack.WordLangAddr.addr 861 0#64))) := by
  unfold output13442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13442_skip : Flapjack.WordAlloc.isSkip output13442 = false := by
  rw [output13442_def]
  conv => lhs; cbv
  try rfl
theorem node13442_eq : Flapjack.WordAlloc.removeDeadStructural input13442 value5 value1 value2 = (output13442, value6725, value1) := by
  rw [input13442_def, output13442_def]
  try (conv => lhs; cbv)
  try rfl

def value6726 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(861, 849)])).val
theorem input13443_def : input13443 = (Flapjack.WordLangProgHOL.move 0 [(861, 849)]) := by
  unfold input13443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(861, 849)])).val
theorem output13443_def : output13443 = (Flapjack.WordLangProgHOL.move 0 [(861, 849)]) := by
  unfold output13443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13443_skip : Flapjack.WordAlloc.isSkip output13443 = false := by
  rw [output13443_def]
  conv => lhs; cbv
  try rfl
theorem node13443_eq : Flapjack.WordAlloc.removeDeadStructural input13443 value6725 value1 value2 = (output13443, value6726, value1) := by
  rw [input13443_def, output13443_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13443 input13442)).val
theorem input13444_def : input13444 = (.seq input13443 input13442) := by
  unfold input13444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13443 output13442)).val
theorem output13444_def : output13444 = (.seq output13443 output13442) := by
  unfold output13444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13444_skip : Flapjack.WordAlloc.isSkip output13444 = false := by
  rw [output13444_def]
  conv => lhs; cbv
  try rfl
theorem node13444_eq : Flapjack.WordAlloc.removeDeadStructural input13444 value5 value1 value2 = (output13444, value6726, value1) := by
  rw [input13444_def, output13444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13442_eq]
  dsimp only
  rw [node13443_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6727 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 2671430854784468776#64))).val
theorem input13445_def : input13445 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 2671430854784468776#64)) := by
  unfold input13445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 2671430854784468776#64))).val
theorem output13445_def : output13445 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 2671430854784468776#64)) := by
  unfold output13445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13445_skip : Flapjack.WordAlloc.isSkip output13445 = false := by
  rw [output13445_def]
  conv => lhs; cbv
  try rfl
theorem node13445_eq : Flapjack.WordAlloc.removeDeadStructural input13445 value6726 value1 value2 = (output13445, value6727, value1) := by
  rw [input13445_def, output13445_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 853 2671430854784468776#64))).val
theorem input13446_def : input13446 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 853 2671430854784468776#64)) := by
  unfold input13446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13446_def : output13446 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13446_skip : Flapjack.WordAlloc.isSkip output13446 = true := by
  rw [output13446_def]
  conv => lhs; cbv
  try rfl
theorem node13446_eq : Flapjack.WordAlloc.removeDeadStructural input13446 value6727 value1 value2 = (output13446, value6727, value1) := by
  rw [input13446_def, output13446_def]
  try (conv => lhs; cbv)
  try rfl

def value6728 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 849 845 (Flapjack.WordRegImm.imm 176#64))))).val
theorem input13447_def : input13447 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 849 845 (Flapjack.WordRegImm.imm 176#64)))) := by
  unfold input13447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 849 845 (Flapjack.WordRegImm.imm 176#64))))).val
theorem output13447_def : output13447 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 849 845 (Flapjack.WordRegImm.imm 176#64)))) := by
  unfold output13447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13447_skip : Flapjack.WordAlloc.isSkip output13447 = false := by
  rw [output13447_def]
  conv => lhs; cbv
  try rfl
theorem node13447_eq : Flapjack.WordAlloc.removeDeadStructural input13447 value6727 value1 value2 = (output13447, value6728, value1) := by
  rw [input13447_def, output13447_def]
  try (conv => lhs; cbv)
  try rfl

def value6729 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 845 (Flapjack.WordLangAddr.addr 841 18446744073709551104#64)))).val
theorem input13448_def : input13448 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 845 (Flapjack.WordLangAddr.addr 841 18446744073709551104#64))) := by
  unfold input13448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 845 (Flapjack.WordLangAddr.addr 841 18446744073709551104#64)))).val
theorem output13448_def : output13448 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 845 (Flapjack.WordLangAddr.addr 841 18446744073709551104#64))) := by
  unfold output13448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13448_skip : Flapjack.WordAlloc.isSkip output13448 = false := by
  rw [output13448_def]
  conv => lhs; cbv
  try rfl
theorem node13448_eq : Flapjack.WordAlloc.removeDeadStructural input13448 value6728 value1 value2 = (output13448, value6729, value1) := by
  rw [input13448_def, output13448_def]
  try (conv => lhs; cbv)
  try rfl

def value6730 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 841 837)).val
theorem input13449_def : input13449 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 841 837) := by
  unfold input13449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 841 837)).val
theorem output13449_def : output13449 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 841 837) := by
  unfold output13449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13449_skip : Flapjack.WordAlloc.isSkip output13449 = false := by
  rw [output13449_def]
  conv => lhs; cbv
  try rfl
theorem node13449_eq : Flapjack.WordAlloc.removeDeadStructural input13449 value6729 value1 value2 = (output13449, value6730, value1) := by
  rw [input13449_def, output13449_def]
  try (conv => lhs; cbv)
  try rfl

def value6731 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 837 833 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13450_def : input13450 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 837 833 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 837 833 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13450_def : output13450 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 837 833 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13450_skip : Flapjack.WordAlloc.isSkip output13450 = false := by
  rw [output13450_def]
  conv => lhs; cbv
  try rfl
theorem node13450_eq : Flapjack.WordAlloc.removeDeadStructural input13450 value6730 value1 value2 = (output13450, value6731, value1) := by
  rw [input13450_def, output13450_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 833 Flapjack.WordStore.heapLength)).val
theorem input13451_def : input13451 = (Flapjack.WordLangProgHOL.get 833 Flapjack.WordStore.heapLength) := by
  unfold input13451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 833 Flapjack.WordStore.heapLength)).val
theorem output13451_def : output13451 = (Flapjack.WordLangProgHOL.get 833 Flapjack.WordStore.heapLength) := by
  unfold output13451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13451_skip : Flapjack.WordAlloc.isSkip output13451 = false := by
  rw [output13451_def]
  conv => lhs; cbv
  try rfl
theorem node13451_eq : Flapjack.WordAlloc.removeDeadStructural input13451 value6731 value1 value2 = (output13451, value5, value1) := by
  rw [input13451_def, output13451_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13451 input13450)).val
theorem input13452_def : input13452 = (.seq input13451 input13450) := by
  unfold input13452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13451 output13450)).val
theorem output13452_def : output13452 = (.seq output13451 output13450) := by
  unfold output13452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13452_skip : Flapjack.WordAlloc.isSkip output13452 = false := by
  rw [output13452_def]
  conv => lhs; cbv
  try rfl
theorem node13452_eq : Flapjack.WordAlloc.removeDeadStructural input13452 value6730 value1 value2 = (output13452, value5, value1) := by
  rw [input13452_def, output13452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13450_eq]
  dsimp only
  rw [node13451_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13452 input13449)).val
theorem input13453_def : input13453 = (.seq input13452 input13449) := by
  unfold input13453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13452 output13449)).val
theorem output13453_def : output13453 = (.seq output13452 output13449) := by
  unfold output13453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13453_skip : Flapjack.WordAlloc.isSkip output13453 = false := by
  rw [output13453_def]
  conv => lhs; cbv
  try rfl
theorem node13453_eq : Flapjack.WordAlloc.removeDeadStructural input13453 value6729 value1 value2 = (output13453, value5, value1) := by
  rw [input13453_def, output13453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13449_eq]
  dsimp only
  rw [node13452_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13453 input13448)).val
theorem input13454_def : input13454 = (.seq input13453 input13448) := by
  unfold input13454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13453 output13448)).val
theorem output13454_def : output13454 = (.seq output13453 output13448) := by
  unfold output13454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13454_skip : Flapjack.WordAlloc.isSkip output13454 = false := by
  rw [output13454_def]
  conv => lhs; cbv
  try rfl
theorem node13454_eq : Flapjack.WordAlloc.removeDeadStructural input13454 value6728 value1 value2 = (output13454, value5, value1) := by
  rw [input13454_def, output13454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13448_eq]
  dsimp only
  rw [node13453_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13454 input13447)).val
theorem input13455_def : input13455 = (.seq input13454 input13447) := by
  unfold input13455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13454 output13447)).val
theorem output13455_def : output13455 = (.seq output13454 output13447) := by
  unfold output13455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13455_skip : Flapjack.WordAlloc.isSkip output13455 = false := by
  rw [output13455_def]
  conv => lhs; cbv
  try rfl
theorem node13455_eq : Flapjack.WordAlloc.removeDeadStructural input13455 value6727 value1 value2 = (output13455, value5, value1) := by
  rw [input13455_def, output13455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13447_eq]
  dsimp only
  rw [node13454_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6732 : Flapjack.NumSet :=
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 825 (Flapjack.WordLangAddr.addr 829 0#64)))).val
theorem input13456_def : input13456 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 825 (Flapjack.WordLangAddr.addr 829 0#64))) := by
  unfold input13456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 825 (Flapjack.WordLangAddr.addr 829 0#64)))).val
theorem output13456_def : output13456 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 825 (Flapjack.WordLangAddr.addr 829 0#64))) := by
  unfold output13456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13456_skip : Flapjack.WordAlloc.isSkip output13456 = false := by
  rw [output13456_def]
  conv => lhs; cbv
  try rfl
theorem node13456_eq : Flapjack.WordAlloc.removeDeadStructural input13456 value5 value1 value2 = (output13456, value6732, value1) := by
  rw [input13456_def, output13456_def]
  try (conv => lhs; cbv)
  try rfl

def value6733 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(829, 817)])).val
theorem input13457_def : input13457 = (Flapjack.WordLangProgHOL.move 0 [(829, 817)]) := by
  unfold input13457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(829, 817)])).val
theorem output13457_def : output13457 = (Flapjack.WordLangProgHOL.move 0 [(829, 817)]) := by
  unfold output13457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13457_skip : Flapjack.WordAlloc.isSkip output13457 = false := by
  rw [output13457_def]
  conv => lhs; cbv
  try rfl
theorem node13457_eq : Flapjack.WordAlloc.removeDeadStructural input13457 value6732 value1 value2 = (output13457, value6733, value1) := by
  rw [input13457_def, output13457_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13457 input13456)).val
theorem input13458_def : input13458 = (.seq input13457 input13456) := by
  unfold input13458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13457 output13456)).val
theorem output13458_def : output13458 = (.seq output13457 output13456) := by
  unfold output13458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13458_skip : Flapjack.WordAlloc.isSkip output13458 = false := by
  rw [output13458_def]
  conv => lhs; cbv
  try rfl
theorem node13458_eq : Flapjack.WordAlloc.removeDeadStructural input13458 value5 value1 value2 = (output13458, value6733, value1) := by
  rw [input13458_def, output13458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13456_eq]
  dsimp only
  rw [node13457_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6734 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 825 3801124253586036577#64))).val
theorem input13459_def : input13459 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 825 3801124253586036577#64)) := by
  unfold input13459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 825 3801124253586036577#64))).val
theorem output13459_def : output13459 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 825 3801124253586036577#64)) := by
  unfold output13459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13459_skip : Flapjack.WordAlloc.isSkip output13459 = false := by
  rw [output13459_def]
  conv => lhs; cbv
  try rfl
theorem node13459_eq : Flapjack.WordAlloc.removeDeadStructural input13459 value6733 value1 value2 = (output13459, value6734, value1) := by
  rw [input13459_def, output13459_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 821 3801124253586036577#64))).val
theorem input13460_def : input13460 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 821 3801124253586036577#64)) := by
  unfold input13460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13460_def : output13460 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13460_skip : Flapjack.WordAlloc.isSkip output13460 = true := by
  rw [output13460_def]
  conv => lhs; cbv
  try rfl
theorem node13460_eq : Flapjack.WordAlloc.removeDeadStructural input13460 value6734 value1 value2 = (output13460, value6734, value1) := by
  rw [input13460_def, output13460_def]
  try (conv => lhs; cbv)
  try rfl

def value6735 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 817 813 (Flapjack.WordRegImm.imm 168#64))))).val
theorem input13461_def : input13461 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 817 813 (Flapjack.WordRegImm.imm 168#64)))) := by
  unfold input13461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 817 813 (Flapjack.WordRegImm.imm 168#64))))).val
theorem output13461_def : output13461 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 817 813 (Flapjack.WordRegImm.imm 168#64)))) := by
  unfold output13461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13461_skip : Flapjack.WordAlloc.isSkip output13461 = false := by
  rw [output13461_def]
  conv => lhs; cbv
  try rfl
theorem node13461_eq : Flapjack.WordAlloc.removeDeadStructural input13461 value6734 value1 value2 = (output13461, value6735, value1) := by
  rw [input13461_def, output13461_def]
  try (conv => lhs; cbv)
  try rfl

def value6736 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 813 (Flapjack.WordLangAddr.addr 809 18446744073709551104#64)))).val
theorem input13462_def : input13462 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 813 (Flapjack.WordLangAddr.addr 809 18446744073709551104#64))) := by
  unfold input13462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 813 (Flapjack.WordLangAddr.addr 809 18446744073709551104#64)))).val
theorem output13462_def : output13462 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 813 (Flapjack.WordLangAddr.addr 809 18446744073709551104#64))) := by
  unfold output13462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13462_skip : Flapjack.WordAlloc.isSkip output13462 = false := by
  rw [output13462_def]
  conv => lhs; cbv
  try rfl
theorem node13462_eq : Flapjack.WordAlloc.removeDeadStructural input13462 value6735 value1 value2 = (output13462, value6736, value1) := by
  rw [input13462_def, output13462_def]
  try (conv => lhs; cbv)
  try rfl

def value6737 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 809 805)).val
theorem input13463_def : input13463 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 809 805) := by
  unfold input13463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 809 805)).val
theorem output13463_def : output13463 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 809 805) := by
  unfold output13463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13463_skip : Flapjack.WordAlloc.isSkip output13463 = false := by
  rw [output13463_def]
  conv => lhs; cbv
  try rfl
theorem node13463_eq : Flapjack.WordAlloc.removeDeadStructural input13463 value6736 value1 value2 = (output13463, value6737, value1) := by
  rw [input13463_def, output13463_def]
  try (conv => lhs; cbv)
  try rfl

def value6738 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 805 801 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13464_def : input13464 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 805 801 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 805 801 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13464_def : output13464 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 805 801 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13464_skip : Flapjack.WordAlloc.isSkip output13464 = false := by
  rw [output13464_def]
  conv => lhs; cbv
  try rfl
theorem node13464_eq : Flapjack.WordAlloc.removeDeadStructural input13464 value6737 value1 value2 = (output13464, value6738, value1) := by
  rw [input13464_def, output13464_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 801 Flapjack.WordStore.heapLength)).val
theorem input13465_def : input13465 = (Flapjack.WordLangProgHOL.get 801 Flapjack.WordStore.heapLength) := by
  unfold input13465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 801 Flapjack.WordStore.heapLength)).val
theorem output13465_def : output13465 = (Flapjack.WordLangProgHOL.get 801 Flapjack.WordStore.heapLength) := by
  unfold output13465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13465_skip : Flapjack.WordAlloc.isSkip output13465 = false := by
  rw [output13465_def]
  conv => lhs; cbv
  try rfl
theorem node13465_eq : Flapjack.WordAlloc.removeDeadStructural input13465 value6738 value1 value2 = (output13465, value5, value1) := by
  rw [input13465_def, output13465_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13465 input13464)).val
theorem input13466_def : input13466 = (.seq input13465 input13464) := by
  unfold input13466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13465 output13464)).val
theorem output13466_def : output13466 = (.seq output13465 output13464) := by
  unfold output13466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13466_skip : Flapjack.WordAlloc.isSkip output13466 = false := by
  rw [output13466_def]
  conv => lhs; cbv
  try rfl
theorem node13466_eq : Flapjack.WordAlloc.removeDeadStructural input13466 value6737 value1 value2 = (output13466, value5, value1) := by
  rw [input13466_def, output13466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13464_eq]
  dsimp only
  rw [node13465_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13466 input13463)).val
theorem input13467_def : input13467 = (.seq input13466 input13463) := by
  unfold input13467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13466 output13463)).val
theorem output13467_def : output13467 = (.seq output13466 output13463) := by
  unfold output13467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13467_skip : Flapjack.WordAlloc.isSkip output13467 = false := by
  rw [output13467_def]
  conv => lhs; cbv
  try rfl
theorem node13467_eq : Flapjack.WordAlloc.removeDeadStructural input13467 value6736 value1 value2 = (output13467, value5, value1) := by
  rw [input13467_def, output13467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13463_eq]
  dsimp only
  rw [node13466_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13467 input13462)).val
theorem input13468_def : input13468 = (.seq input13467 input13462) := by
  unfold input13468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13467 output13462)).val
theorem output13468_def : output13468 = (.seq output13467 output13462) := by
  unfold output13468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13468_skip : Flapjack.WordAlloc.isSkip output13468 = false := by
  rw [output13468_def]
  conv => lhs; cbv
  try rfl
theorem node13468_eq : Flapjack.WordAlloc.removeDeadStructural input13468 value6735 value1 value2 = (output13468, value5, value1) := by
  rw [input13468_def, output13468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13462_eq]
  dsimp only
  rw [node13467_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13468 input13461)).val
theorem input13469_def : input13469 = (.seq input13468 input13461) := by
  unfold input13469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13468 output13461)).val
theorem output13469_def : output13469 = (.seq output13468 output13461) := by
  unfold output13469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13469_skip : Flapjack.WordAlloc.isSkip output13469 = false := by
  rw [output13469_def]
  conv => lhs; cbv
  try rfl
theorem node13469_eq : Flapjack.WordAlloc.removeDeadStructural input13469 value6734 value1 value2 = (output13469, value5, value1) := by
  rw [input13469_def, output13469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13461_eq]
  dsimp only
  rw [node13468_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6739 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 793 (Flapjack.WordLangAddr.addr 797 0#64)))).val
theorem input13470_def : input13470 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 793 (Flapjack.WordLangAddr.addr 797 0#64))) := by
  unfold input13470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 793 (Flapjack.WordLangAddr.addr 797 0#64)))).val
theorem output13470_def : output13470 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 793 (Flapjack.WordLangAddr.addr 797 0#64))) := by
  unfold output13470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13470_skip : Flapjack.WordAlloc.isSkip output13470 = false := by
  rw [output13470_def]
  conv => lhs; cbv
  try rfl
theorem node13470_eq : Flapjack.WordAlloc.removeDeadStructural input13470 value5 value1 value2 = (output13470, value6739, value1) := by
  rw [input13470_def, output13470_def]
  try (conv => lhs; cbv)
  try rfl

def value6740 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(797, 785)])).val
theorem input13471_def : input13471 = (Flapjack.WordLangProgHOL.move 0 [(797, 785)]) := by
  unfold input13471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(797, 785)])).val
theorem output13471_def : output13471 = (Flapjack.WordLangProgHOL.move 0 [(797, 785)]) := by
  unfold output13471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13471_skip : Flapjack.WordAlloc.isSkip output13471 = false := by
  rw [output13471_def]
  conv => lhs; cbv
  try rfl
theorem node13471_eq : Flapjack.WordAlloc.removeDeadStructural input13471 value6739 value1 value2 = (output13471, value6740, value1) := by
  rw [input13471_def, output13471_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13471 input13470)).val
theorem input13472_def : input13472 = (.seq input13471 input13470) := by
  unfold input13472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13471 output13470)).val
theorem output13472_def : output13472 = (.seq output13471 output13470) := by
  unfold output13472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13472_skip : Flapjack.WordAlloc.isSkip output13472 = false := by
  rw [output13472_def]
  conv => lhs; cbv
  try rfl
theorem node13472_eq : Flapjack.WordAlloc.removeDeadStructural input13472 value5 value1 value2 = (output13472, value6740, value1) := by
  rw [input13472_def, output13472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13470_eq]
  dsimp only
  rw [node13471_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6741 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 793 11120290361046346205#64))).val
theorem input13473_def : input13473 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 793 11120290361046346205#64)) := by
  unfold input13473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 793 11120290361046346205#64))).val
theorem output13473_def : output13473 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 793 11120290361046346205#64)) := by
  unfold output13473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13473_skip : Flapjack.WordAlloc.isSkip output13473 = false := by
  rw [output13473_def]
  conv => lhs; cbv
  try rfl
theorem node13473_eq : Flapjack.WordAlloc.removeDeadStructural input13473 value6740 value1 value2 = (output13473, value6741, value1) := by
  rw [input13473_def, output13473_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 789 11120290361046346205#64))).val
theorem input13474_def : input13474 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 789 11120290361046346205#64)) := by
  unfold input13474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13474_def : output13474 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13474_skip : Flapjack.WordAlloc.isSkip output13474 = true := by
  rw [output13474_def]
  conv => lhs; cbv
  try rfl
theorem node13474_eq : Flapjack.WordAlloc.removeDeadStructural input13474 value6741 value1 value2 = (output13474, value6741, value1) := by
  rw [input13474_def, output13474_def]
  try (conv => lhs; cbv)
  try rfl

def value6742 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 785 781 (Flapjack.WordRegImm.imm 160#64))))).val
theorem input13475_def : input13475 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 785 781 (Flapjack.WordRegImm.imm 160#64)))) := by
  unfold input13475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 785 781 (Flapjack.WordRegImm.imm 160#64))))).val
theorem output13475_def : output13475 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 785 781 (Flapjack.WordRegImm.imm 160#64)))) := by
  unfold output13475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13475_skip : Flapjack.WordAlloc.isSkip output13475 = false := by
  rw [output13475_def]
  conv => lhs; cbv
  try rfl
theorem node13475_eq : Flapjack.WordAlloc.removeDeadStructural input13475 value6741 value1 value2 = (output13475, value6742, value1) := by
  rw [input13475_def, output13475_def]
  try (conv => lhs; cbv)
  try rfl

def value6743 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 781 (Flapjack.WordLangAddr.addr 777 18446744073709551104#64)))).val
theorem input13476_def : input13476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 781 (Flapjack.WordLangAddr.addr 777 18446744073709551104#64))) := by
  unfold input13476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 781 (Flapjack.WordLangAddr.addr 777 18446744073709551104#64)))).val
theorem output13476_def : output13476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 781 (Flapjack.WordLangAddr.addr 777 18446744073709551104#64))) := by
  unfold output13476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13476_skip : Flapjack.WordAlloc.isSkip output13476 = false := by
  rw [output13476_def]
  conv => lhs; cbv
  try rfl
theorem node13476_eq : Flapjack.WordAlloc.removeDeadStructural input13476 value6742 value1 value2 = (output13476, value6743, value1) := by
  rw [input13476_def, output13476_def]
  try (conv => lhs; cbv)
  try rfl

def value6744 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 777 773)).val
theorem input13477_def : input13477 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 777 773) := by
  unfold input13477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 777 773)).val
theorem output13477_def : output13477 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 777 773) := by
  unfold output13477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13477_skip : Flapjack.WordAlloc.isSkip output13477 = false := by
  rw [output13477_def]
  conv => lhs; cbv
  try rfl
theorem node13477_eq : Flapjack.WordAlloc.removeDeadStructural input13477 value6743 value1 value2 = (output13477, value6744, value1) := by
  rw [input13477_def, output13477_def]
  try (conv => lhs; cbv)
  try rfl

def value6745 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 773 769 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13478_def : input13478 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 773 769 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 773 769 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13478_def : output13478 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 773 769 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13478_skip : Flapjack.WordAlloc.isSkip output13478 = false := by
  rw [output13478_def]
  conv => lhs; cbv
  try rfl
theorem node13478_eq : Flapjack.WordAlloc.removeDeadStructural input13478 value6744 value1 value2 = (output13478, value6745, value1) := by
  rw [input13478_def, output13478_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 769 Flapjack.WordStore.heapLength)).val
theorem input13479_def : input13479 = (Flapjack.WordLangProgHOL.get 769 Flapjack.WordStore.heapLength) := by
  unfold input13479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 769 Flapjack.WordStore.heapLength)).val
theorem output13479_def : output13479 = (Flapjack.WordLangProgHOL.get 769 Flapjack.WordStore.heapLength) := by
  unfold output13479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13479_skip : Flapjack.WordAlloc.isSkip output13479 = false := by
  rw [output13479_def]
  conv => lhs; cbv
  try rfl
theorem node13479_eq : Flapjack.WordAlloc.removeDeadStructural input13479 value6745 value1 value2 = (output13479, value5, value1) := by
  rw [input13479_def, output13479_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13479 input13478)).val
theorem input13480_def : input13480 = (.seq input13479 input13478) := by
  unfold input13480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13479 output13478)).val
theorem output13480_def : output13480 = (.seq output13479 output13478) := by
  unfold output13480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13480_skip : Flapjack.WordAlloc.isSkip output13480 = false := by
  rw [output13480_def]
  conv => lhs; cbv
  try rfl
theorem node13480_eq : Flapjack.WordAlloc.removeDeadStructural input13480 value6744 value1 value2 = (output13480, value5, value1) := by
  rw [input13480_def, output13480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13478_eq]
  dsimp only
  rw [node13479_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13480 input13477)).val
theorem input13481_def : input13481 = (.seq input13480 input13477) := by
  unfold input13481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13480 output13477)).val
theorem output13481_def : output13481 = (.seq output13480 output13477) := by
  unfold output13481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13481_skip : Flapjack.WordAlloc.isSkip output13481 = false := by
  rw [output13481_def]
  conv => lhs; cbv
  try rfl
theorem node13481_eq : Flapjack.WordAlloc.removeDeadStructural input13481 value6743 value1 value2 = (output13481, value5, value1) := by
  rw [input13481_def, output13481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13477_eq]
  dsimp only
  rw [node13480_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13481 input13476)).val
theorem input13482_def : input13482 = (.seq input13481 input13476) := by
  unfold input13482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13481 output13476)).val
theorem output13482_def : output13482 = (.seq output13481 output13476) := by
  unfold output13482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13482_skip : Flapjack.WordAlloc.isSkip output13482 = false := by
  rw [output13482_def]
  conv => lhs; cbv
  try rfl
theorem node13482_eq : Flapjack.WordAlloc.removeDeadStructural input13482 value6742 value1 value2 = (output13482, value5, value1) := by
  rw [input13482_def, output13482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13476_eq]
  dsimp only
  rw [node13481_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13482 input13475)).val
theorem input13483_def : input13483 = (.seq input13482 input13475) := by
  unfold input13483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13482 output13475)).val
theorem output13483_def : output13483 = (.seq output13482 output13475) := by
  unfold output13483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13483_skip : Flapjack.WordAlloc.isSkip output13483 = false := by
  rw [output13483_def]
  conv => lhs; cbv
  try rfl
theorem node13483_eq : Flapjack.WordAlloc.removeDeadStructural input13483 value6741 value1 value2 = (output13483, value5, value1) := by
  rw [input13483_def, output13483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13475_eq]
  dsimp only
  rw [node13482_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6746 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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

@[irreducible, cbv_opaque] def input13484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 761 (Flapjack.WordLangAddr.addr 765 0#64)))).val
theorem input13484_def : input13484 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 761 (Flapjack.WordLangAddr.addr 765 0#64))) := by
  unfold input13484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 761 (Flapjack.WordLangAddr.addr 765 0#64)))).val
theorem output13484_def : output13484 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 761 (Flapjack.WordLangAddr.addr 765 0#64))) := by
  unfold output13484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13484_skip : Flapjack.WordAlloc.isSkip output13484 = false := by
  rw [output13484_def]
  conv => lhs; cbv
  try rfl
theorem node13484_eq : Flapjack.WordAlloc.removeDeadStructural input13484 value5 value1 value2 = (output13484, value6746, value1) := by
  rw [input13484_def, output13484_def]
  try (conv => lhs; cbv)
  try rfl

def value6747 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(765, 753)])).val
theorem input13485_def : input13485 = (Flapjack.WordLangProgHOL.move 0 [(765, 753)]) := by
  unfold input13485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(765, 753)])).val
theorem output13485_def : output13485 = (Flapjack.WordLangProgHOL.move 0 [(765, 753)]) := by
  unfold output13485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13485_skip : Flapjack.WordAlloc.isSkip output13485 = false := by
  rw [output13485_def]
  conv => lhs; cbv
  try rfl
theorem node13485_eq : Flapjack.WordAlloc.removeDeadStructural input13485 value6746 value1 value2 = (output13485, value6747, value1) := by
  rw [input13485_def, output13485_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13485 input13484)).val
theorem input13486_def : input13486 = (.seq input13485 input13484) := by
  unfold input13486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13485 output13484)).val
theorem output13486_def : output13486 = (.seq output13485 output13484) := by
  unfold output13486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13486_skip : Flapjack.WordAlloc.isSkip output13486 = false := by
  rw [output13486_def]
  conv => lhs; cbv
  try rfl
theorem node13486_eq : Flapjack.WordAlloc.removeDeadStructural input13486 value5 value1 value2 = (output13486, value6747, value1) := by
  rw [input13486_def, output13486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13484_eq]
  dsimp only
  rw [node13485_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6748 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 761 3557706395579559416#64))).val
theorem input13487_def : input13487 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 761 3557706395579559416#64)) := by
  unfold input13487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 761 3557706395579559416#64))).val
theorem output13487_def : output13487 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 761 3557706395579559416#64)) := by
  unfold output13487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13487_skip : Flapjack.WordAlloc.isSkip output13487 = false := by
  rw [output13487_def]
  conv => lhs; cbv
  try rfl
theorem node13487_eq : Flapjack.WordAlloc.removeDeadStructural input13487 value6747 value1 value2 = (output13487, value6748, value1) := by
  rw [input13487_def, output13487_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 757 3557706395579559416#64))).val
theorem input13488_def : input13488 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 757 3557706395579559416#64)) := by
  unfold input13488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13488_def : output13488 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13488_skip : Flapjack.WordAlloc.isSkip output13488 = true := by
  rw [output13488_def]
  conv => lhs; cbv
  try rfl
theorem node13488_eq : Flapjack.WordAlloc.removeDeadStructural input13488 value6748 value1 value2 = (output13488, value6748, value1) := by
  rw [input13488_def, output13488_def]
  try (conv => lhs; cbv)
  try rfl

def value6749 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 753 749 (Flapjack.WordRegImm.imm 152#64))))).val
theorem input13489_def : input13489 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 753 749 (Flapjack.WordRegImm.imm 152#64)))) := by
  unfold input13489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 753 749 (Flapjack.WordRegImm.imm 152#64))))).val
theorem output13489_def : output13489 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 753 749 (Flapjack.WordRegImm.imm 152#64)))) := by
  unfold output13489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13489_skip : Flapjack.WordAlloc.isSkip output13489 = false := by
  rw [output13489_def]
  conv => lhs; cbv
  try rfl
theorem node13489_eq : Flapjack.WordAlloc.removeDeadStructural input13489 value6748 value1 value2 = (output13489, value6749, value1) := by
  rw [input13489_def, output13489_def]
  try (conv => lhs; cbv)
  try rfl

def value6750 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 749 (Flapjack.WordLangAddr.addr 745 18446744073709551104#64)))).val
theorem input13490_def : input13490 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 749 (Flapjack.WordLangAddr.addr 745 18446744073709551104#64))) := by
  unfold input13490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 749 (Flapjack.WordLangAddr.addr 745 18446744073709551104#64)))).val
theorem output13490_def : output13490 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 749 (Flapjack.WordLangAddr.addr 745 18446744073709551104#64))) := by
  unfold output13490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13490_skip : Flapjack.WordAlloc.isSkip output13490 = false := by
  rw [output13490_def]
  conv => lhs; cbv
  try rfl
theorem node13490_eq : Flapjack.WordAlloc.removeDeadStructural input13490 value6749 value1 value2 = (output13490, value6750, value1) := by
  rw [input13490_def, output13490_def]
  try (conv => lhs; cbv)
  try rfl

def value6751 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 745 741)).val
theorem input13491_def : input13491 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 745 741) := by
  unfold input13491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 745 741)).val
theorem output13491_def : output13491 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 745 741) := by
  unfold output13491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13491_skip : Flapjack.WordAlloc.isSkip output13491 = false := by
  rw [output13491_def]
  conv => lhs; cbv
  try rfl
theorem node13491_eq : Flapjack.WordAlloc.removeDeadStructural input13491 value6750 value1 value2 = (output13491, value6751, value1) := by
  rw [input13491_def, output13491_def]
  try (conv => lhs; cbv)
  try rfl

def value6752 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 741 737 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13492_def : input13492 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 741 737 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 741 737 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13492_def : output13492 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 741 737 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13492_skip : Flapjack.WordAlloc.isSkip output13492 = false := by
  rw [output13492_def]
  conv => lhs; cbv
  try rfl
theorem node13492_eq : Flapjack.WordAlloc.removeDeadStructural input13492 value6751 value1 value2 = (output13492, value6752, value1) := by
  rw [input13492_def, output13492_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 737 Flapjack.WordStore.heapLength)).val
theorem input13493_def : input13493 = (Flapjack.WordLangProgHOL.get 737 Flapjack.WordStore.heapLength) := by
  unfold input13493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 737 Flapjack.WordStore.heapLength)).val
theorem output13493_def : output13493 = (Flapjack.WordLangProgHOL.get 737 Flapjack.WordStore.heapLength) := by
  unfold output13493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13493_skip : Flapjack.WordAlloc.isSkip output13493 = false := by
  rw [output13493_def]
  conv => lhs; cbv
  try rfl
theorem node13493_eq : Flapjack.WordAlloc.removeDeadStructural input13493 value6752 value1 value2 = (output13493, value5, value1) := by
  rw [input13493_def, output13493_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13493 input13492)).val
theorem input13494_def : input13494 = (.seq input13493 input13492) := by
  unfold input13494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13493 output13492)).val
theorem output13494_def : output13494 = (.seq output13493 output13492) := by
  unfold output13494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13494_skip : Flapjack.WordAlloc.isSkip output13494 = false := by
  rw [output13494_def]
  conv => lhs; cbv
  try rfl
theorem node13494_eq : Flapjack.WordAlloc.removeDeadStructural input13494 value6751 value1 value2 = (output13494, value5, value1) := by
  rw [input13494_def, output13494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13492_eq]
  dsimp only
  rw [node13493_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13494 input13491)).val
theorem input13495_def : input13495 = (.seq input13494 input13491) := by
  unfold input13495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13494 output13491)).val
theorem output13495_def : output13495 = (.seq output13494 output13491) := by
  unfold output13495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13495_skip : Flapjack.WordAlloc.isSkip output13495 = false := by
  rw [output13495_def]
  conv => lhs; cbv
  try rfl
theorem node13495_eq : Flapjack.WordAlloc.removeDeadStructural input13495 value6750 value1 value2 = (output13495, value5, value1) := by
  rw [input13495_def, output13495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13491_eq]
  dsimp only
  rw [node13494_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13495 input13490)).val
theorem input13496_def : input13496 = (.seq input13495 input13490) := by
  unfold input13496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13495 output13490)).val
theorem output13496_def : output13496 = (.seq output13495 output13490) := by
  unfold output13496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13496_skip : Flapjack.WordAlloc.isSkip output13496 = false := by
  rw [output13496_def]
  conv => lhs; cbv
  try rfl
theorem node13496_eq : Flapjack.WordAlloc.removeDeadStructural input13496 value6749 value1 value2 = (output13496, value5, value1) := by
  rw [input13496_def, output13496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13490_eq]
  dsimp only
  rw [node13495_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13496 input13489)).val
theorem input13497_def : input13497 = (.seq input13496 input13489) := by
  unfold input13497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13496 output13489)).val
theorem output13497_def : output13497 = (.seq output13496 output13489) := by
  unfold output13497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13497_skip : Flapjack.WordAlloc.isSkip output13497 = false := by
  rw [output13497_def]
  conv => lhs; cbv
  try rfl
theorem node13497_eq : Flapjack.WordAlloc.removeDeadStructural input13497 value6748 value1 value2 = (output13497, value5, value1) := by
  rw [input13497_def, output13497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13489_eq]
  dsimp only
  rw [node13496_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6753 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 729 (Flapjack.WordLangAddr.addr 733 0#64)))).val
theorem input13498_def : input13498 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 729 (Flapjack.WordLangAddr.addr 733 0#64))) := by
  unfold input13498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 729 (Flapjack.WordLangAddr.addr 733 0#64)))).val
theorem output13498_def : output13498 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 729 (Flapjack.WordLangAddr.addr 733 0#64))) := by
  unfold output13498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13498_skip : Flapjack.WordAlloc.isSkip output13498 = false := by
  rw [output13498_def]
  conv => lhs; cbv
  try rfl
theorem node13498_eq : Flapjack.WordAlloc.removeDeadStructural input13498 value5 value1 value2 = (output13498, value6753, value1) := by
  rw [input13498_def, output13498_def]
  try (conv => lhs; cbv)
  try rfl

def value6754 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(733, 721)])).val
theorem input13499_def : input13499 = (Flapjack.WordLangProgHOL.move 0 [(733, 721)]) := by
  unfold input13499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(733, 721)])).val
theorem output13499_def : output13499 = (Flapjack.WordLangProgHOL.move 0 [(733, 721)]) := by
  unfold output13499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13499_skip : Flapjack.WordAlloc.isSkip output13499 = false := by
  rw [output13499_def]
  conv => lhs; cbv
  try rfl
theorem node13499_eq : Flapjack.WordAlloc.removeDeadStructural input13499 value6753 value1 value2 = (output13499, value6754, value1) := by
  rw [input13499_def, output13499_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13499 input13498)).val
theorem input13500_def : input13500 = (.seq input13499 input13498) := by
  unfold input13500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13499 output13498)).val
theorem output13500_def : output13500 = (.seq output13499 output13498) := by
  unfold output13500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13500_skip : Flapjack.WordAlloc.isSkip output13500 = false := by
  rw [output13500_def]
  conv => lhs; cbv
  try rfl
theorem node13500_eq : Flapjack.WordAlloc.removeDeadStructural input13500 value5 value1 value2 = (output13500, value6754, value1) := by
  rw [input13500_def, output13500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13498_eq]
  dsimp only
  rw [node13499_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6755 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 729 17098105564519244256#64))).val
theorem input13501_def : input13501 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 729 17098105564519244256#64)) := by
  unfold input13501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 729 17098105564519244256#64))).val
theorem output13501_def : output13501 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 729 17098105564519244256#64)) := by
  unfold output13501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13501_skip : Flapjack.WordAlloc.isSkip output13501 = false := by
  rw [output13501_def]
  conv => lhs; cbv
  try rfl
theorem node13501_eq : Flapjack.WordAlloc.removeDeadStructural input13501 value6754 value1 value2 = (output13501, value6755, value1) := by
  rw [input13501_def, output13501_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 725 17098105564519244256#64))).val
theorem input13502_def : input13502 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 725 17098105564519244256#64)) := by
  unfold input13502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13502_def : output13502 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13502_skip : Flapjack.WordAlloc.isSkip output13502 = true := by
  rw [output13502_def]
  conv => lhs; cbv
  try rfl
theorem node13502_eq : Flapjack.WordAlloc.removeDeadStructural input13502 value6755 value1 value2 = (output13502, value6755, value1) := by
  rw [input13502_def, output13502_def]
  try (conv => lhs; cbv)
  try rfl

def value6756 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 721 717 (Flapjack.WordRegImm.imm 144#64))))).val
theorem input13503_def : input13503 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 721 717 (Flapjack.WordRegImm.imm 144#64)))) := by
  unfold input13503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 721 717 (Flapjack.WordRegImm.imm 144#64))))).val
theorem output13503_def : output13503 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 721 717 (Flapjack.WordRegImm.imm 144#64)))) := by
  unfold output13503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13503_skip : Flapjack.WordAlloc.isSkip output13503 = false := by
  rw [output13503_def]
  conv => lhs; cbv
  try rfl
theorem node13503_eq : Flapjack.WordAlloc.removeDeadStructural input13503 value6755 value1 value2 = (output13503, value6756, value1) := by
  rw [input13503_def, output13503_def]
  try (conv => lhs; cbv)
  try rfl

def value6757 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 717 (Flapjack.WordLangAddr.addr 713 18446744073709551104#64)))).val
theorem input13504_def : input13504 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 717 (Flapjack.WordLangAddr.addr 713 18446744073709551104#64))) := by
  unfold input13504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 717 (Flapjack.WordLangAddr.addr 713 18446744073709551104#64)))).val
theorem output13504_def : output13504 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 717 (Flapjack.WordLangAddr.addr 713 18446744073709551104#64))) := by
  unfold output13504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13504_skip : Flapjack.WordAlloc.isSkip output13504 = false := by
  rw [output13504_def]
  conv => lhs; cbv
  try rfl
theorem node13504_eq : Flapjack.WordAlloc.removeDeadStructural input13504 value6756 value1 value2 = (output13504, value6757, value1) := by
  rw [input13504_def, output13504_def]
  try (conv => lhs; cbv)
  try rfl

def value6758 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 713 709)).val
theorem input13505_def : input13505 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 713 709) := by
  unfold input13505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 713 709)).val
theorem output13505_def : output13505 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 713 709) := by
  unfold output13505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13505_skip : Flapjack.WordAlloc.isSkip output13505 = false := by
  rw [output13505_def]
  conv => lhs; cbv
  try rfl
theorem node13505_eq : Flapjack.WordAlloc.removeDeadStructural input13505 value6757 value1 value2 = (output13505, value6758, value1) := by
  rw [input13505_def, output13505_def]
  try (conv => lhs; cbv)
  try rfl

def value6759 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 709 705 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13506_def : input13506 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 709 705 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 709 705 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13506_def : output13506 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 709 705 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13506_skip : Flapjack.WordAlloc.isSkip output13506 = false := by
  rw [output13506_def]
  conv => lhs; cbv
  try rfl
theorem node13506_eq : Flapjack.WordAlloc.removeDeadStructural input13506 value6758 value1 value2 = (output13506, value6759, value1) := by
  rw [input13506_def, output13506_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 705 Flapjack.WordStore.heapLength)).val
theorem input13507_def : input13507 = (Flapjack.WordLangProgHOL.get 705 Flapjack.WordStore.heapLength) := by
  unfold input13507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 705 Flapjack.WordStore.heapLength)).val
theorem output13507_def : output13507 = (Flapjack.WordLangProgHOL.get 705 Flapjack.WordStore.heapLength) := by
  unfold output13507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13507_skip : Flapjack.WordAlloc.isSkip output13507 = false := by
  rw [output13507_def]
  conv => lhs; cbv
  try rfl
theorem node13507_eq : Flapjack.WordAlloc.removeDeadStructural input13507 value6759 value1 value2 = (output13507, value5, value1) := by
  rw [input13507_def, output13507_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13507 input13506)).val
theorem input13508_def : input13508 = (.seq input13507 input13506) := by
  unfold input13508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13507 output13506)).val
theorem output13508_def : output13508 = (.seq output13507 output13506) := by
  unfold output13508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13508_skip : Flapjack.WordAlloc.isSkip output13508 = false := by
  rw [output13508_def]
  conv => lhs; cbv
  try rfl
theorem node13508_eq : Flapjack.WordAlloc.removeDeadStructural input13508 value6758 value1 value2 = (output13508, value5, value1) := by
  rw [input13508_def, output13508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13506_eq]
  dsimp only
  rw [node13507_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13508 input13505)).val
theorem input13509_def : input13509 = (.seq input13508 input13505) := by
  unfold input13509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13508 output13505)).val
theorem output13509_def : output13509 = (.seq output13508 output13505) := by
  unfold output13509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13509_skip : Flapjack.WordAlloc.isSkip output13509 = false := by
  rw [output13509_def]
  conv => lhs; cbv
  try rfl
theorem node13509_eq : Flapjack.WordAlloc.removeDeadStructural input13509 value6757 value1 value2 = (output13509, value5, value1) := by
  rw [input13509_def, output13509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13505_eq]
  dsimp only
  rw [node13508_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13509 input13504)).val
theorem input13510_def : input13510 = (.seq input13509 input13504) := by
  unfold input13510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13509 output13504)).val
theorem output13510_def : output13510 = (.seq output13509 output13504) := by
  unfold output13510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13510_skip : Flapjack.WordAlloc.isSkip output13510 = false := by
  rw [output13510_def]
  conv => lhs; cbv
  try rfl
theorem node13510_eq : Flapjack.WordAlloc.removeDeadStructural input13510 value6756 value1 value2 = (output13510, value5, value1) := by
  rw [input13510_def, output13510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13504_eq]
  dsimp only
  rw [node13509_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13510 input13503)).val
theorem input13511_def : input13511 = (.seq input13510 input13503) := by
  unfold input13511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13510 output13503)).val
theorem output13511_def : output13511 = (.seq output13510 output13503) := by
  unfold output13511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13511_skip : Flapjack.WordAlloc.isSkip output13511 = false := by
  rw [output13511_def]
  conv => lhs; cbv
  try rfl
theorem node13511_eq : Flapjack.WordAlloc.removeDeadStructural input13511 value6755 value1 value2 = (output13511, value5, value1) := by
  rw [input13511_def, output13511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13503_eq]
  dsimp only
  rw [node13510_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6760 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 697 (Flapjack.WordLangAddr.addr 701 0#64)))).val
theorem input13512_def : input13512 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 697 (Flapjack.WordLangAddr.addr 701 0#64))) := by
  unfold input13512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 697 (Flapjack.WordLangAddr.addr 701 0#64)))).val
theorem output13512_def : output13512 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 697 (Flapjack.WordLangAddr.addr 701 0#64))) := by
  unfold output13512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13512_skip : Flapjack.WordAlloc.isSkip output13512 = false := by
  rw [output13512_def]
  conv => lhs; cbv
  try rfl
theorem node13512_eq : Flapjack.WordAlloc.removeDeadStructural input13512 value5 value1 value2 = (output13512, value6760, value1) := by
  rw [input13512_def, output13512_def]
  try (conv => lhs; cbv)
  try rfl

def value6761 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(701, 689)])).val
theorem input13513_def : input13513 = (Flapjack.WordLangProgHOL.move 0 [(701, 689)]) := by
  unfold input13513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(701, 689)])).val
theorem output13513_def : output13513 = (Flapjack.WordLangProgHOL.move 0 [(701, 689)]) := by
  unfold output13513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13513_skip : Flapjack.WordAlloc.isSkip output13513 = false := by
  rw [output13513_def]
  conv => lhs; cbv
  try rfl
theorem node13513_eq : Flapjack.WordAlloc.removeDeadStructural input13513 value6760 value1 value2 = (output13513, value6761, value1) := by
  rw [input13513_def, output13513_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13513 input13512)).val
theorem input13514_def : input13514 = (.seq input13513 input13512) := by
  unfold input13514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13513 output13512)).val
theorem output13514_def : output13514 = (.seq output13513 output13512) := by
  unfold output13514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13514_skip : Flapjack.WordAlloc.isSkip output13514 = false := by
  rw [output13514_def]
  conv => lhs; cbv
  try rfl
theorem node13514_eq : Flapjack.WordAlloc.removeDeadStructural input13514 value5 value1 value2 = (output13514, value6761, value1) := by
  rw [input13514_def, output13514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13512_eq]
  dsimp only
  rw [node13513_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6762 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 697 1267921511277847466#64))).val
theorem input13515_def : input13515 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 697 1267921511277847466#64)) := by
  unfold input13515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 697 1267921511277847466#64))).val
theorem output13515_def : output13515 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 697 1267921511277847466#64)) := by
  unfold output13515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13515_skip : Flapjack.WordAlloc.isSkip output13515 = false := by
  rw [output13515_def]
  conv => lhs; cbv
  try rfl
theorem node13515_eq : Flapjack.WordAlloc.removeDeadStructural input13515 value6761 value1 value2 = (output13515, value6762, value1) := by
  rw [input13515_def, output13515_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 693 1267921511277847466#64))).val
theorem input13516_def : input13516 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 693 1267921511277847466#64)) := by
  unfold input13516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13516_def : output13516 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13516_skip : Flapjack.WordAlloc.isSkip output13516 = true := by
  rw [output13516_def]
  conv => lhs; cbv
  try rfl
theorem node13516_eq : Flapjack.WordAlloc.removeDeadStructural input13516 value6762 value1 value2 = (output13516, value6762, value1) := by
  rw [input13516_def, output13516_def]
  try (conv => lhs; cbv)
  try rfl

def value6763 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 689 685 (Flapjack.WordRegImm.imm 136#64))))).val
theorem input13517_def : input13517 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 689 685 (Flapjack.WordRegImm.imm 136#64)))) := by
  unfold input13517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 689 685 (Flapjack.WordRegImm.imm 136#64))))).val
theorem output13517_def : output13517 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 689 685 (Flapjack.WordRegImm.imm 136#64)))) := by
  unfold output13517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13517_skip : Flapjack.WordAlloc.isSkip output13517 = false := by
  rw [output13517_def]
  conv => lhs; cbv
  try rfl
theorem node13517_eq : Flapjack.WordAlloc.removeDeadStructural input13517 value6762 value1 value2 = (output13517, value6763, value1) := by
  rw [input13517_def, output13517_def]
  try (conv => lhs; cbv)
  try rfl

def value6764 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 685 (Flapjack.WordLangAddr.addr 681 18446744073709551104#64)))).val
theorem input13518_def : input13518 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 685 (Flapjack.WordLangAddr.addr 681 18446744073709551104#64))) := by
  unfold input13518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 685 (Flapjack.WordLangAddr.addr 681 18446744073709551104#64)))).val
theorem output13518_def : output13518 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 685 (Flapjack.WordLangAddr.addr 681 18446744073709551104#64))) := by
  unfold output13518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13518_skip : Flapjack.WordAlloc.isSkip output13518 = false := by
  rw [output13518_def]
  conv => lhs; cbv
  try rfl
theorem node13518_eq : Flapjack.WordAlloc.removeDeadStructural input13518 value6763 value1 value2 = (output13518, value6764, value1) := by
  rw [input13518_def, output13518_def]
  try (conv => lhs; cbv)
  try rfl

def value6765 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 681 677)).val
theorem input13519_def : input13519 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 681 677) := by
  unfold input13519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 681 677)).val
theorem output13519_def : output13519 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 681 677) := by
  unfold output13519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13519_skip : Flapjack.WordAlloc.isSkip output13519 = false := by
  rw [output13519_def]
  conv => lhs; cbv
  try rfl
theorem node13519_eq : Flapjack.WordAlloc.removeDeadStructural input13519 value6764 value1 value2 = (output13519, value6765, value1) := by
  rw [input13519_def, output13519_def]
  try (conv => lhs; cbv)
  try rfl

def value6766 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 677 673 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13520_def : input13520 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 677 673 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 677 673 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13520_def : output13520 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 677 673 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13520_skip : Flapjack.WordAlloc.isSkip output13520 = false := by
  rw [output13520_def]
  conv => lhs; cbv
  try rfl
theorem node13520_eq : Flapjack.WordAlloc.removeDeadStructural input13520 value6765 value1 value2 = (output13520, value6766, value1) := by
  rw [input13520_def, output13520_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 673 Flapjack.WordStore.heapLength)).val
theorem input13521_def : input13521 = (Flapjack.WordLangProgHOL.get 673 Flapjack.WordStore.heapLength) := by
  unfold input13521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 673 Flapjack.WordStore.heapLength)).val
theorem output13521_def : output13521 = (Flapjack.WordLangProgHOL.get 673 Flapjack.WordStore.heapLength) := by
  unfold output13521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13521_skip : Flapjack.WordAlloc.isSkip output13521 = false := by
  rw [output13521_def]
  conv => lhs; cbv
  try rfl
theorem node13521_eq : Flapjack.WordAlloc.removeDeadStructural input13521 value6766 value1 value2 = (output13521, value5, value1) := by
  rw [input13521_def, output13521_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13521 input13520)).val
theorem input13522_def : input13522 = (.seq input13521 input13520) := by
  unfold input13522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13521 output13520)).val
theorem output13522_def : output13522 = (.seq output13521 output13520) := by
  unfold output13522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13522_skip : Flapjack.WordAlloc.isSkip output13522 = false := by
  rw [output13522_def]
  conv => lhs; cbv
  try rfl
theorem node13522_eq : Flapjack.WordAlloc.removeDeadStructural input13522 value6765 value1 value2 = (output13522, value5, value1) := by
  rw [input13522_def, output13522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13520_eq]
  dsimp only
  rw [node13521_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13522 input13519)).val
theorem input13523_def : input13523 = (.seq input13522 input13519) := by
  unfold input13523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13522 output13519)).val
theorem output13523_def : output13523 = (.seq output13522 output13519) := by
  unfold output13523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13523_skip : Flapjack.WordAlloc.isSkip output13523 = false := by
  rw [output13523_def]
  conv => lhs; cbv
  try rfl
theorem node13523_eq : Flapjack.WordAlloc.removeDeadStructural input13523 value6764 value1 value2 = (output13523, value5, value1) := by
  rw [input13523_def, output13523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13519_eq]
  dsimp only
  rw [node13522_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13523 input13518)).val
theorem input13524_def : input13524 = (.seq input13523 input13518) := by
  unfold input13524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13523 output13518)).val
theorem output13524_def : output13524 = (.seq output13523 output13518) := by
  unfold output13524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13524_skip : Flapjack.WordAlloc.isSkip output13524 = false := by
  rw [output13524_def]
  conv => lhs; cbv
  try rfl
theorem node13524_eq : Flapjack.WordAlloc.removeDeadStructural input13524 value6763 value1 value2 = (output13524, value5, value1) := by
  rw [input13524_def, output13524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13518_eq]
  dsimp only
  rw [node13523_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13524 input13517)).val
theorem input13525_def : input13525 = (.seq input13524 input13517) := by
  unfold input13525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13524 output13517)).val
theorem output13525_def : output13525 = (.seq output13524 output13517) := by
  unfold output13525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13525_skip : Flapjack.WordAlloc.isSkip output13525 = false := by
  rw [output13525_def]
  conv => lhs; cbv
  try rfl
theorem node13525_eq : Flapjack.WordAlloc.removeDeadStructural input13525 value6762 value1 value2 = (output13525, value5, value1) := by
  rw [input13525_def, output13525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13517_eq]
  dsimp only
  rw [node13524_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6767 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 665 (Flapjack.WordLangAddr.addr 669 0#64)))).val
theorem input13526_def : input13526 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 665 (Flapjack.WordLangAddr.addr 669 0#64))) := by
  unfold input13526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 665 (Flapjack.WordLangAddr.addr 669 0#64)))).val
theorem output13526_def : output13526 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 665 (Flapjack.WordLangAddr.addr 669 0#64))) := by
  unfold output13526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13526_skip : Flapjack.WordAlloc.isSkip output13526 = false := by
  rw [output13526_def]
  conv => lhs; cbv
  try rfl
theorem node13526_eq : Flapjack.WordAlloc.removeDeadStructural input13526 value5 value1 value2 = (output13526, value6767, value1) := by
  rw [input13526_def, output13526_def]
  try (conv => lhs; cbv)
  try rfl

def value6768 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(669, 657)])).val
theorem input13527_def : input13527 = (Flapjack.WordLangProgHOL.move 0 [(669, 657)]) := by
  unfold input13527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(669, 657)])).val
theorem output13527_def : output13527 = (Flapjack.WordLangProgHOL.move 0 [(669, 657)]) := by
  unfold output13527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13527_skip : Flapjack.WordAlloc.isSkip output13527 = false := by
  rw [output13527_def]
  conv => lhs; cbv
  try rfl
theorem node13527_eq : Flapjack.WordAlloc.removeDeadStructural input13527 value6767 value1 value2 = (output13527, value6768, value1) := by
  rw [input13527_def, output13527_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13527 input13526)).val
theorem input13528_def : input13528 = (.seq input13527 input13526) := by
  unfold input13528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13527 output13526)).val
theorem output13528_def : output13528 = (.seq output13527 output13526) := by
  unfold output13528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13528_skip : Flapjack.WordAlloc.isSkip output13528 = false := by
  rw [output13528_def]
  conv => lhs; cbv
  try rfl
theorem node13528_eq : Flapjack.WordAlloc.removeDeadStructural input13528 value5 value1 value2 = (output13528, value6768, value1) := by
  rw [input13528_def, output13528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13526_eq]
  dsimp only
  rw [node13527_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6769 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 665 11130996698012816685#64))).val
theorem input13529_def : input13529 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 665 11130996698012816685#64)) := by
  unfold input13529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 665 11130996698012816685#64))).val
theorem output13529_def : output13529 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 665 11130996698012816685#64)) := by
  unfold output13529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13529_skip : Flapjack.WordAlloc.isSkip output13529 = false := by
  rw [output13529_def]
  conv => lhs; cbv
  try rfl
theorem node13529_eq : Flapjack.WordAlloc.removeDeadStructural input13529 value6768 value1 value2 = (output13529, value6769, value1) := by
  rw [input13529_def, output13529_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 661 11130996698012816685#64))).val
theorem input13530_def : input13530 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 661 11130996698012816685#64)) := by
  unfold input13530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13530_def : output13530 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13530_skip : Flapjack.WordAlloc.isSkip output13530 = true := by
  rw [output13530_def]
  conv => lhs; cbv
  try rfl
theorem node13530_eq : Flapjack.WordAlloc.removeDeadStructural input13530 value6769 value1 value2 = (output13530, value6769, value1) := by
  rw [input13530_def, output13530_def]
  try (conv => lhs; cbv)
  try rfl

def value6770 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 657 653 (Flapjack.WordRegImm.imm 128#64))))).val
theorem input13531_def : input13531 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 657 653 (Flapjack.WordRegImm.imm 128#64)))) := by
  unfold input13531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 657 653 (Flapjack.WordRegImm.imm 128#64))))).val
theorem output13531_def : output13531 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 657 653 (Flapjack.WordRegImm.imm 128#64)))) := by
  unfold output13531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13531_skip : Flapjack.WordAlloc.isSkip output13531 = false := by
  rw [output13531_def]
  conv => lhs; cbv
  try rfl
theorem node13531_eq : Flapjack.WordAlloc.removeDeadStructural input13531 value6769 value1 value2 = (output13531, value6770, value1) := by
  rw [input13531_def, output13531_def]
  try (conv => lhs; cbv)
  try rfl

def value6771 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 653 (Flapjack.WordLangAddr.addr 649 18446744073709551104#64)))).val
theorem input13532_def : input13532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 653 (Flapjack.WordLangAddr.addr 649 18446744073709551104#64))) := by
  unfold input13532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 653 (Flapjack.WordLangAddr.addr 649 18446744073709551104#64)))).val
theorem output13532_def : output13532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 653 (Flapjack.WordLangAddr.addr 649 18446744073709551104#64))) := by
  unfold output13532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13532_skip : Flapjack.WordAlloc.isSkip output13532 = false := by
  rw [output13532_def]
  conv => lhs; cbv
  try rfl
theorem node13532_eq : Flapjack.WordAlloc.removeDeadStructural input13532 value6770 value1 value2 = (output13532, value6771, value1) := by
  rw [input13532_def, output13532_def]
  try (conv => lhs; cbv)
  try rfl

def value6772 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 649 645)).val
theorem input13533_def : input13533 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 649 645) := by
  unfold input13533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 649 645)).val
theorem output13533_def : output13533 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 649 645) := by
  unfold output13533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13533_skip : Flapjack.WordAlloc.isSkip output13533 = false := by
  rw [output13533_def]
  conv => lhs; cbv
  try rfl
theorem node13533_eq : Flapjack.WordAlloc.removeDeadStructural input13533 value6771 value1 value2 = (output13533, value6772, value1) := by
  rw [input13533_def, output13533_def]
  try (conv => lhs; cbv)
  try rfl

def value6773 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 645 641 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13534_def : input13534 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 645 641 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 645 641 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13534_def : output13534 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 645 641 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13534_skip : Flapjack.WordAlloc.isSkip output13534 = false := by
  rw [output13534_def]
  conv => lhs; cbv
  try rfl
theorem node13534_eq : Flapjack.WordAlloc.removeDeadStructural input13534 value6772 value1 value2 = (output13534, value6773, value1) := by
  rw [input13534_def, output13534_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 641 Flapjack.WordStore.heapLength)).val
theorem input13535_def : input13535 = (Flapjack.WordLangProgHOL.get 641 Flapjack.WordStore.heapLength) := by
  unfold input13535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 641 Flapjack.WordStore.heapLength)).val
theorem output13535_def : output13535 = (Flapjack.WordLangProgHOL.get 641 Flapjack.WordStore.heapLength) := by
  unfold output13535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13535_skip : Flapjack.WordAlloc.isSkip output13535 = false := by
  rw [output13535_def]
  conv => lhs; cbv
  try rfl
theorem node13535_eq : Flapjack.WordAlloc.removeDeadStructural input13535 value6773 value1 value2 = (output13535, value5, value1) := by
  rw [input13535_def, output13535_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13535 input13534)).val
theorem input13536_def : input13536 = (.seq input13535 input13534) := by
  unfold input13536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13535 output13534)).val
theorem output13536_def : output13536 = (.seq output13535 output13534) := by
  unfold output13536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13536_skip : Flapjack.WordAlloc.isSkip output13536 = false := by
  rw [output13536_def]
  conv => lhs; cbv
  try rfl
theorem node13536_eq : Flapjack.WordAlloc.removeDeadStructural input13536 value6772 value1 value2 = (output13536, value5, value1) := by
  rw [input13536_def, output13536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13534_eq]
  dsimp only
  rw [node13535_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13536 input13533)).val
theorem input13537_def : input13537 = (.seq input13536 input13533) := by
  unfold input13537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13536 output13533)).val
theorem output13537_def : output13537 = (.seq output13536 output13533) := by
  unfold output13537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13537_skip : Flapjack.WordAlloc.isSkip output13537 = false := by
  rw [output13537_def]
  conv => lhs; cbv
  try rfl
theorem node13537_eq : Flapjack.WordAlloc.removeDeadStructural input13537 value6771 value1 value2 = (output13537, value5, value1) := by
  rw [input13537_def, output13537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13533_eq]
  dsimp only
  rw [node13536_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13537 input13532)).val
theorem input13538_def : input13538 = (.seq input13537 input13532) := by
  unfold input13538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13537 output13532)).val
theorem output13538_def : output13538 = (.seq output13537 output13532) := by
  unfold output13538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13538_skip : Flapjack.WordAlloc.isSkip output13538 = false := by
  rw [output13538_def]
  conv => lhs; cbv
  try rfl
theorem node13538_eq : Flapjack.WordAlloc.removeDeadStructural input13538 value6770 value1 value2 = (output13538, value5, value1) := by
  rw [input13538_def, output13538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13532_eq]
  dsimp only
  rw [node13537_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13538 input13531)).val
theorem input13539_def : input13539 = (.seq input13538 input13531) := by
  unfold input13539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13538 output13531)).val
theorem output13539_def : output13539 = (.seq output13538 output13531) := by
  unfold output13539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13539_skip : Flapjack.WordAlloc.isSkip output13539 = false := by
  rw [output13539_def]
  conv => lhs; cbv
  try rfl
theorem node13539_eq : Flapjack.WordAlloc.removeDeadStructural input13539 value6769 value1 value2 = (output13539, value5, value1) := by
  rw [input13539_def, output13539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13531_eq]
  dsimp only
  rw [node13538_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6774 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 633 (Flapjack.WordLangAddr.addr 637 0#64)))).val
theorem input13540_def : input13540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 633 (Flapjack.WordLangAddr.addr 637 0#64))) := by
  unfold input13540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 633 (Flapjack.WordLangAddr.addr 637 0#64)))).val
theorem output13540_def : output13540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 633 (Flapjack.WordLangAddr.addr 637 0#64))) := by
  unfold output13540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13540_skip : Flapjack.WordAlloc.isSkip output13540 = false := by
  rw [output13540_def]
  conv => lhs; cbv
  try rfl
theorem node13540_eq : Flapjack.WordAlloc.removeDeadStructural input13540 value5 value1 value2 = (output13540, value6774, value1) := by
  rw [input13540_def, output13540_def]
  try (conv => lhs; cbv)
  try rfl

def value6775 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(637, 625)])).val
theorem input13541_def : input13541 = (Flapjack.WordLangProgHOL.move 0 [(637, 625)]) := by
  unfold input13541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(637, 625)])).val
theorem output13541_def : output13541 = (Flapjack.WordLangProgHOL.move 0 [(637, 625)]) := by
  unfold output13541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13541_skip : Flapjack.WordAlloc.isSkip output13541 = false := by
  rw [output13541_def]
  conv => lhs; cbv
  try rfl
theorem node13541_eq : Flapjack.WordAlloc.removeDeadStructural input13541 value6774 value1 value2 = (output13541, value6775, value1) := by
  rw [input13541_def, output13541_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13541 input13540)).val
theorem input13542_def : input13542 = (.seq input13541 input13540) := by
  unfold input13542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13541 output13540)).val
theorem output13542_def : output13542 = (.seq output13541 output13540) := by
  unfold output13542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13542_skip : Flapjack.WordAlloc.isSkip output13542 = false := by
  rw [output13542_def]
  conv => lhs; cbv
  try rfl
theorem node13542_eq : Flapjack.WordAlloc.removeDeadStructural input13542 value5 value1 value2 = (output13542, value6775, value1) := by
  rw [input13542_def, output13542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13540_eq]
  dsimp only
  rw [node13541_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6776 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 633 7488229067341005760#64))).val
theorem input13543_def : input13543 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 633 7488229067341005760#64)) := by
  unfold input13543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 633 7488229067341005760#64))).val
theorem output13543_def : output13543 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 633 7488229067341005760#64)) := by
  unfold output13543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13543_skip : Flapjack.WordAlloc.isSkip output13543 = false := by
  rw [output13543_def]
  conv => lhs; cbv
  try rfl
theorem node13543_eq : Flapjack.WordAlloc.removeDeadStructural input13543 value6775 value1 value2 = (output13543, value6776, value1) := by
  rw [input13543_def, output13543_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 629 7488229067341005760#64))).val
theorem input13544_def : input13544 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 629 7488229067341005760#64)) := by
  unfold input13544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13544_def : output13544 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13544_skip : Flapjack.WordAlloc.isSkip output13544 = true := by
  rw [output13544_def]
  conv => lhs; cbv
  try rfl
theorem node13544_eq : Flapjack.WordAlloc.removeDeadStructural input13544 value6776 value1 value2 = (output13544, value6776, value1) := by
  rw [input13544_def, output13544_def]
  try (conv => lhs; cbv)
  try rfl

def value6777 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 625 621 (Flapjack.WordRegImm.imm 120#64))))).val
theorem input13545_def : input13545 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 625 621 (Flapjack.WordRegImm.imm 120#64)))) := by
  unfold input13545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 625 621 (Flapjack.WordRegImm.imm 120#64))))).val
theorem output13545_def : output13545 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 625 621 (Flapjack.WordRegImm.imm 120#64)))) := by
  unfold output13545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13545_skip : Flapjack.WordAlloc.isSkip output13545 = false := by
  rw [output13545_def]
  conv => lhs; cbv
  try rfl
theorem node13545_eq : Flapjack.WordAlloc.removeDeadStructural input13545 value6776 value1 value2 = (output13545, value6777, value1) := by
  rw [input13545_def, output13545_def]
  try (conv => lhs; cbv)
  try rfl

def value6778 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 621 (Flapjack.WordLangAddr.addr 617 18446744073709551104#64)))).val
theorem input13546_def : input13546 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 621 (Flapjack.WordLangAddr.addr 617 18446744073709551104#64))) := by
  unfold input13546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 621 (Flapjack.WordLangAddr.addr 617 18446744073709551104#64)))).val
theorem output13546_def : output13546 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 621 (Flapjack.WordLangAddr.addr 617 18446744073709551104#64))) := by
  unfold output13546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13546_skip : Flapjack.WordAlloc.isSkip output13546 = false := by
  rw [output13546_def]
  conv => lhs; cbv
  try rfl
theorem node13546_eq : Flapjack.WordAlloc.removeDeadStructural input13546 value6777 value1 value2 = (output13546, value6778, value1) := by
  rw [input13546_def, output13546_def]
  try (conv => lhs; cbv)
  try rfl

def value6779 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 617 613)).val
theorem input13547_def : input13547 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 617 613) := by
  unfold input13547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 617 613)).val
theorem output13547_def : output13547 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 617 613) := by
  unfold output13547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13547_skip : Flapjack.WordAlloc.isSkip output13547 = false := by
  rw [output13547_def]
  conv => lhs; cbv
  try rfl
theorem node13547_eq : Flapjack.WordAlloc.removeDeadStructural input13547 value6778 value1 value2 = (output13547, value6779, value1) := by
  rw [input13547_def, output13547_def]
  try (conv => lhs; cbv)
  try rfl

def value6780 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 613 609 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13548_def : input13548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 613 609 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 613 609 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13548_def : output13548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 613 609 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13548_skip : Flapjack.WordAlloc.isSkip output13548 = false := by
  rw [output13548_def]
  conv => lhs; cbv
  try rfl
theorem node13548_eq : Flapjack.WordAlloc.removeDeadStructural input13548 value6779 value1 value2 = (output13548, value6780, value1) := by
  rw [input13548_def, output13548_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 609 Flapjack.WordStore.heapLength)).val
theorem input13549_def : input13549 = (Flapjack.WordLangProgHOL.get 609 Flapjack.WordStore.heapLength) := by
  unfold input13549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 609 Flapjack.WordStore.heapLength)).val
theorem output13549_def : output13549 = (Flapjack.WordLangProgHOL.get 609 Flapjack.WordStore.heapLength) := by
  unfold output13549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13549_skip : Flapjack.WordAlloc.isSkip output13549 = false := by
  rw [output13549_def]
  conv => lhs; cbv
  try rfl
theorem node13549_eq : Flapjack.WordAlloc.removeDeadStructural input13549 value6780 value1 value2 = (output13549, value5, value1) := by
  rw [input13549_def, output13549_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13549 input13548)).val
theorem input13550_def : input13550 = (.seq input13549 input13548) := by
  unfold input13550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13549 output13548)).val
theorem output13550_def : output13550 = (.seq output13549 output13548) := by
  unfold output13550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13550_skip : Flapjack.WordAlloc.isSkip output13550 = false := by
  rw [output13550_def]
  conv => lhs; cbv
  try rfl
theorem node13550_eq : Flapjack.WordAlloc.removeDeadStructural input13550 value6779 value1 value2 = (output13550, value5, value1) := by
  rw [input13550_def, output13550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13548_eq]
  dsimp only
  rw [node13549_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13550 input13547)).val
theorem input13551_def : input13551 = (.seq input13550 input13547) := by
  unfold input13551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13550 output13547)).val
theorem output13551_def : output13551 = (.seq output13550 output13547) := by
  unfold output13551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13551_skip : Flapjack.WordAlloc.isSkip output13551 = false := by
  rw [output13551_def]
  conv => lhs; cbv
  try rfl
theorem node13551_eq : Flapjack.WordAlloc.removeDeadStructural input13551 value6778 value1 value2 = (output13551, value5, value1) := by
  rw [input13551_def, output13551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13547_eq]
  dsimp only
  rw [node13550_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13551 input13546)).val
theorem input13552_def : input13552 = (.seq input13551 input13546) := by
  unfold input13552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13551 output13546)).val
theorem output13552_def : output13552 = (.seq output13551 output13546) := by
  unfold output13552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13552_skip : Flapjack.WordAlloc.isSkip output13552 = false := by
  rw [output13552_def]
  conv => lhs; cbv
  try rfl
theorem node13552_eq : Flapjack.WordAlloc.removeDeadStructural input13552 value6777 value1 value2 = (output13552, value5, value1) := by
  rw [input13552_def, output13552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13546_eq]
  dsimp only
  rw [node13551_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13552 input13545)).val
theorem input13553_def : input13553 = (.seq input13552 input13545) := by
  unfold input13553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13552 output13545)).val
theorem output13553_def : output13553 = (.seq output13552 output13545) := by
  unfold output13553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13553_skip : Flapjack.WordAlloc.isSkip output13553 = false := by
  rw [output13553_def]
  conv => lhs; cbv
  try rfl
theorem node13553_eq : Flapjack.WordAlloc.removeDeadStructural input13553 value6776 value1 value2 = (output13553, value5, value1) := by
  rw [input13553_def, output13553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13545_eq]
  dsimp only
  rw [node13552_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6781 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 601 (Flapjack.WordLangAddr.addr 605 0#64)))).val
theorem input13554_def : input13554 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 601 (Flapjack.WordLangAddr.addr 605 0#64))) := by
  unfold input13554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 601 (Flapjack.WordLangAddr.addr 605 0#64)))).val
theorem output13554_def : output13554 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 601 (Flapjack.WordLangAddr.addr 605 0#64))) := by
  unfold output13554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13554_skip : Flapjack.WordAlloc.isSkip output13554 = false := by
  rw [output13554_def]
  conv => lhs; cbv
  try rfl
theorem node13554_eq : Flapjack.WordAlloc.removeDeadStructural input13554 value5 value1 value2 = (output13554, value6781, value1) := by
  rw [input13554_def, output13554_def]
  try (conv => lhs; cbv)
  try rfl

def value6782 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(605, 593)])).val
theorem input13555_def : input13555 = (Flapjack.WordLangProgHOL.move 0 [(605, 593)]) := by
  unfold input13555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(605, 593)])).val
theorem output13555_def : output13555 = (Flapjack.WordLangProgHOL.move 0 [(605, 593)]) := by
  unfold output13555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13555_skip : Flapjack.WordAlloc.isSkip output13555 = false := by
  rw [output13555_def]
  conv => lhs; cbv
  try rfl
theorem node13555_eq : Flapjack.WordAlloc.removeDeadStructural input13555 value6781 value1 value2 = (output13555, value6782, value1) := by
  rw [input13555_def, output13555_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13555 input13554)).val
theorem input13556_def : input13556 = (.seq input13555 input13554) := by
  unfold input13556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13555 output13554)).val
theorem output13556_def : output13556 = (.seq output13555 output13554) := by
  unfold output13556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13556_skip : Flapjack.WordAlloc.isSkip output13556 = false := by
  rw [output13556_def]
  conv => lhs; cbv
  try rfl
theorem node13556_eq : Flapjack.WordAlloc.removeDeadStructural input13556 value5 value1 value2 = (output13556, value6782, value1) := by
  rw [input13556_def, output13556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13554_eq]
  dsimp only
  rw [node13555_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6783 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 10224657059481499349#64))).val
theorem input13557_def : input13557 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 10224657059481499349#64)) := by
  unfold input13557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 10224657059481499349#64))).val
theorem output13557_def : output13557 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 601 10224657059481499349#64)) := by
  unfold output13557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13557_skip : Flapjack.WordAlloc.isSkip output13557 = false := by
  rw [output13557_def]
  conv => lhs; cbv
  try rfl
theorem node13557_eq : Flapjack.WordAlloc.removeDeadStructural input13557 value6782 value1 value2 = (output13557, value6783, value1) := by
  rw [input13557_def, output13557_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 10224657059481499349#64))).val
theorem input13558_def : input13558 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 10224657059481499349#64)) := by
  unfold input13558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13558_def : output13558 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13558_skip : Flapjack.WordAlloc.isSkip output13558 = true := by
  rw [output13558_def]
  conv => lhs; cbv
  try rfl
theorem node13558_eq : Flapjack.WordAlloc.removeDeadStructural input13558 value6783 value1 value2 = (output13558, value6783, value1) := by
  rw [input13558_def, output13558_def]
  try (conv => lhs; cbv)
  try rfl

def value6784 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 593 589 (Flapjack.WordRegImm.imm 112#64))))).val
theorem input13559_def : input13559 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 593 589 (Flapjack.WordRegImm.imm 112#64)))) := by
  unfold input13559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 593 589 (Flapjack.WordRegImm.imm 112#64))))).val
theorem output13559_def : output13559 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 593 589 (Flapjack.WordRegImm.imm 112#64)))) := by
  unfold output13559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13559_skip : Flapjack.WordAlloc.isSkip output13559 = false := by
  rw [output13559_def]
  conv => lhs; cbv
  try rfl
theorem node13559_eq : Flapjack.WordAlloc.removeDeadStructural input13559 value6783 value1 value2 = (output13559, value6784, value1) := by
  rw [input13559_def, output13559_def]
  try (conv => lhs; cbv)
  try rfl

def value6785 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 589 (Flapjack.WordLangAddr.addr 585 18446744073709551104#64)))).val
theorem input13560_def : input13560 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 589 (Flapjack.WordLangAddr.addr 585 18446744073709551104#64))) := by
  unfold input13560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 589 (Flapjack.WordLangAddr.addr 585 18446744073709551104#64)))).val
theorem output13560_def : output13560 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 589 (Flapjack.WordLangAddr.addr 585 18446744073709551104#64))) := by
  unfold output13560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13560_skip : Flapjack.WordAlloc.isSkip output13560 = false := by
  rw [output13560_def]
  conv => lhs; cbv
  try rfl
theorem node13560_eq : Flapjack.WordAlloc.removeDeadStructural input13560 value6784 value1 value2 = (output13560, value6785, value1) := by
  rw [input13560_def, output13560_def]
  try (conv => lhs; cbv)
  try rfl

def value6786 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 585 581)).val
theorem input13561_def : input13561 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 585 581) := by
  unfold input13561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 585 581)).val
theorem output13561_def : output13561 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 585 581) := by
  unfold output13561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13561_skip : Flapjack.WordAlloc.isSkip output13561 = false := by
  rw [output13561_def]
  conv => lhs; cbv
  try rfl
theorem node13561_eq : Flapjack.WordAlloc.removeDeadStructural input13561 value6785 value1 value2 = (output13561, value6786, value1) := by
  rw [input13561_def, output13561_def]
  try (conv => lhs; cbv)
  try rfl

def value6787 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 581 577 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13562_def : input13562 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 581 577 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 581 577 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13562_def : output13562 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 581 577 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13562_skip : Flapjack.WordAlloc.isSkip output13562 = false := by
  rw [output13562_def]
  conv => lhs; cbv
  try rfl
theorem node13562_eq : Flapjack.WordAlloc.removeDeadStructural input13562 value6786 value1 value2 = (output13562, value6787, value1) := by
  rw [input13562_def, output13562_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 577 Flapjack.WordStore.heapLength)).val
theorem input13563_def : input13563 = (Flapjack.WordLangProgHOL.get 577 Flapjack.WordStore.heapLength) := by
  unfold input13563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 577 Flapjack.WordStore.heapLength)).val
theorem output13563_def : output13563 = (Flapjack.WordLangProgHOL.get 577 Flapjack.WordStore.heapLength) := by
  unfold output13563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13563_skip : Flapjack.WordAlloc.isSkip output13563 = false := by
  rw [output13563_def]
  conv => lhs; cbv
  try rfl
theorem node13563_eq : Flapjack.WordAlloc.removeDeadStructural input13563 value6787 value1 value2 = (output13563, value5, value1) := by
  rw [input13563_def, output13563_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13563 input13562)).val
theorem input13564_def : input13564 = (.seq input13563 input13562) := by
  unfold input13564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13563 output13562)).val
theorem output13564_def : output13564 = (.seq output13563 output13562) := by
  unfold output13564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13564_skip : Flapjack.WordAlloc.isSkip output13564 = false := by
  rw [output13564_def]
  conv => lhs; cbv
  try rfl
theorem node13564_eq : Flapjack.WordAlloc.removeDeadStructural input13564 value6786 value1 value2 = (output13564, value5, value1) := by
  rw [input13564_def, output13564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13562_eq]
  dsimp only
  rw [node13563_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13564 input13561)).val
theorem input13565_def : input13565 = (.seq input13564 input13561) := by
  unfold input13565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13564 output13561)).val
theorem output13565_def : output13565 = (.seq output13564 output13561) := by
  unfold output13565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13565_skip : Flapjack.WordAlloc.isSkip output13565 = false := by
  rw [output13565_def]
  conv => lhs; cbv
  try rfl
theorem node13565_eq : Flapjack.WordAlloc.removeDeadStructural input13565 value6785 value1 value2 = (output13565, value5, value1) := by
  rw [input13565_def, output13565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13561_eq]
  dsimp only
  rw [node13564_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13565 input13560)).val
theorem input13566_def : input13566 = (.seq input13565 input13560) := by
  unfold input13566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13565 output13560)).val
theorem output13566_def : output13566 = (.seq output13565 output13560) := by
  unfold output13566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13566_skip : Flapjack.WordAlloc.isSkip output13566 = false := by
  rw [output13566_def]
  conv => lhs; cbv
  try rfl
theorem node13566_eq : Flapjack.WordAlloc.removeDeadStructural input13566 value6784 value1 value2 = (output13566, value5, value1) := by
  rw [input13566_def, output13566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13560_eq]
  dsimp only
  rw [node13565_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13566 input13559)).val
theorem input13567_def : input13567 = (.seq input13566 input13559) := by
  unfold input13567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13566 output13559)).val
theorem output13567_def : output13567 = (.seq output13566 output13559) := by
  unfold output13567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13567_skip : Flapjack.WordAlloc.isSkip output13567 = false := by
  rw [output13567_def]
  conv => lhs; cbv
  try rfl
theorem node13567_eq : Flapjack.WordAlloc.removeDeadStructural input13567 value6783 value1 value2 = (output13567, value5, value1) := by
  rw [input13567_def, output13567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13559_eq]
  dsimp only
  rw [node13566_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6788 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

#print axioms node13567_eq
end InitECandidate.Proofs.DeadStages713
