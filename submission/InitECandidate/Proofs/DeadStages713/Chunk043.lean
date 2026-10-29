import InitECandidate.Proofs.DeadStages713.Chunk042
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input11008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11007 input11006)).val
theorem input11008_def : input11008 = (.seq input11007 input11006) := by
  unfold input11008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11007 output11006)).val
theorem output11008_def : output11008 = (.seq output11007 output11006) := by
  unfold output11008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11008_skip : Flapjack.WordAlloc.isSkip output11008 = false := by
  rw [output11008_def]
  conv => lhs; cbv
  try rfl
theorem node11008_eq : Flapjack.WordAlloc.removeDeadStructural input11008 value5 value1 value2 = (output11008, value5508, value1) := by
  rw [input11008_def, output11008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11006_eq]
  dsimp only
  rw [node11007_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5509 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6425 1285362188954994119#64))).val
theorem input11009_def : input11009 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6425 1285362188954994119#64)) := by
  unfold input11009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6425 1285362188954994119#64))).val
theorem output11009_def : output11009 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6425 1285362188954994119#64)) := by
  unfold output11009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11009_skip : Flapjack.WordAlloc.isSkip output11009 = false := by
  rw [output11009_def]
  conv => lhs; cbv
  try rfl
theorem node11009_eq : Flapjack.WordAlloc.removeDeadStructural input11009 value5508 value1 value2 = (output11009, value5509, value1) := by
  rw [input11009_def, output11009_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6421 1285362188954994119#64))).val
theorem input11010_def : input11010 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6421 1285362188954994119#64)) := by
  unfold input11010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11010_def : output11010 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11010_skip : Flapjack.WordAlloc.isSkip output11010 = true := by
  rw [output11010_def]
  conv => lhs; cbv
  try rfl
theorem node11010_eq : Flapjack.WordAlloc.removeDeadStructural input11010 value5509 value1 value2 = (output11010, value5509, value1) := by
  rw [input11010_def, output11010_def]
  try (conv => lhs; cbv)
  try rfl

def value5510 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6417 6413 (Flapjack.WordRegImm.imm 1568#64))))).val
theorem input11011_def : input11011 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6417 6413 (Flapjack.WordRegImm.imm 1568#64)))) := by
  unfold input11011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6417 6413 (Flapjack.WordRegImm.imm 1568#64))))).val
theorem output11011_def : output11011 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6417 6413 (Flapjack.WordRegImm.imm 1568#64)))) := by
  unfold output11011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11011_skip : Flapjack.WordAlloc.isSkip output11011 = false := by
  rw [output11011_def]
  conv => lhs; cbv
  try rfl
theorem node11011_eq : Flapjack.WordAlloc.removeDeadStructural input11011 value5509 value1 value2 = (output11011, value5510, value1) := by
  rw [input11011_def, output11011_def]
  try (conv => lhs; cbv)
  try rfl

def value5511 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6413 (Flapjack.WordLangAddr.addr 6409 18446744073709551104#64)))).val
theorem input11012_def : input11012 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6413 (Flapjack.WordLangAddr.addr 6409 18446744073709551104#64))) := by
  unfold input11012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6413 (Flapjack.WordLangAddr.addr 6409 18446744073709551104#64)))).val
theorem output11012_def : output11012 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6413 (Flapjack.WordLangAddr.addr 6409 18446744073709551104#64))) := by
  unfold output11012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11012_skip : Flapjack.WordAlloc.isSkip output11012 = false := by
  rw [output11012_def]
  conv => lhs; cbv
  try rfl
theorem node11012_eq : Flapjack.WordAlloc.removeDeadStructural input11012 value5510 value1 value2 = (output11012, value5511, value1) := by
  rw [input11012_def, output11012_def]
  try (conv => lhs; cbv)
  try rfl

def value5512 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6409 6405)).val
theorem input11013_def : input11013 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6409 6405) := by
  unfold input11013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6409 6405)).val
theorem output11013_def : output11013 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6409 6405) := by
  unfold output11013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11013_skip : Flapjack.WordAlloc.isSkip output11013 = false := by
  rw [output11013_def]
  conv => lhs; cbv
  try rfl
theorem node11013_eq : Flapjack.WordAlloc.removeDeadStructural input11013 value5511 value1 value2 = (output11013, value5512, value1) := by
  rw [input11013_def, output11013_def]
  try (conv => lhs; cbv)
  try rfl

def value5513 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6405 6401 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11014_def : input11014 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6405 6401 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6405 6401 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11014_def : output11014 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6405 6401 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11014_skip : Flapjack.WordAlloc.isSkip output11014 = false := by
  rw [output11014_def]
  conv => lhs; cbv
  try rfl
theorem node11014_eq : Flapjack.WordAlloc.removeDeadStructural input11014 value5512 value1 value2 = (output11014, value5513, value1) := by
  rw [input11014_def, output11014_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6401 Flapjack.WordStore.heapLength)).val
theorem input11015_def : input11015 = (Flapjack.WordLangProgHOL.get 6401 Flapjack.WordStore.heapLength) := by
  unfold input11015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6401 Flapjack.WordStore.heapLength)).val
theorem output11015_def : output11015 = (Flapjack.WordLangProgHOL.get 6401 Flapjack.WordStore.heapLength) := by
  unfold output11015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11015_skip : Flapjack.WordAlloc.isSkip output11015 = false := by
  rw [output11015_def]
  conv => lhs; cbv
  try rfl
theorem node11015_eq : Flapjack.WordAlloc.removeDeadStructural input11015 value5513 value1 value2 = (output11015, value5, value1) := by
  rw [input11015_def, output11015_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11015 input11014)).val
theorem input11016_def : input11016 = (.seq input11015 input11014) := by
  unfold input11016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11015 output11014)).val
theorem output11016_def : output11016 = (.seq output11015 output11014) := by
  unfold output11016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11016_skip : Flapjack.WordAlloc.isSkip output11016 = false := by
  rw [output11016_def]
  conv => lhs; cbv
  try rfl
theorem node11016_eq : Flapjack.WordAlloc.removeDeadStructural input11016 value5512 value1 value2 = (output11016, value5, value1) := by
  rw [input11016_def, output11016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11014_eq]
  dsimp only
  rw [node11015_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11016 input11013)).val
theorem input11017_def : input11017 = (.seq input11016 input11013) := by
  unfold input11017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11016 output11013)).val
theorem output11017_def : output11017 = (.seq output11016 output11013) := by
  unfold output11017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11017_skip : Flapjack.WordAlloc.isSkip output11017 = false := by
  rw [output11017_def]
  conv => lhs; cbv
  try rfl
theorem node11017_eq : Flapjack.WordAlloc.removeDeadStructural input11017 value5511 value1 value2 = (output11017, value5, value1) := by
  rw [input11017_def, output11017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11013_eq]
  dsimp only
  rw [node11016_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11017 input11012)).val
theorem input11018_def : input11018 = (.seq input11017 input11012) := by
  unfold input11018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11017 output11012)).val
theorem output11018_def : output11018 = (.seq output11017 output11012) := by
  unfold output11018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11018_skip : Flapjack.WordAlloc.isSkip output11018 = false := by
  rw [output11018_def]
  conv => lhs; cbv
  try rfl
theorem node11018_eq : Flapjack.WordAlloc.removeDeadStructural input11018 value5510 value1 value2 = (output11018, value5, value1) := by
  rw [input11018_def, output11018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11012_eq]
  dsimp only
  rw [node11017_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11018 input11011)).val
theorem input11019_def : input11019 = (.seq input11018 input11011) := by
  unfold input11019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11018 output11011)).val
theorem output11019_def : output11019 = (.seq output11018 output11011) := by
  unfold output11019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11019_skip : Flapjack.WordAlloc.isSkip output11019 = false := by
  rw [output11019_def]
  conv => lhs; cbv
  try rfl
theorem node11019_eq : Flapjack.WordAlloc.removeDeadStructural input11019 value5509 value1 value2 = (output11019, value5, value1) := by
  rw [input11019_def, output11019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11011_eq]
  dsimp only
  rw [node11018_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5514 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6393 (Flapjack.WordLangAddr.addr 6397 0#64)))).val
theorem input11020_def : input11020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6393 (Flapjack.WordLangAddr.addr 6397 0#64))) := by
  unfold input11020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6393 (Flapjack.WordLangAddr.addr 6397 0#64)))).val
theorem output11020_def : output11020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6393 (Flapjack.WordLangAddr.addr 6397 0#64))) := by
  unfold output11020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11020_skip : Flapjack.WordAlloc.isSkip output11020 = false := by
  rw [output11020_def]
  conv => lhs; cbv
  try rfl
theorem node11020_eq : Flapjack.WordAlloc.removeDeadStructural input11020 value5 value1 value2 = (output11020, value5514, value1) := by
  rw [input11020_def, output11020_def]
  try (conv => lhs; cbv)
  try rfl

def value5515 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6397, 6385)])).val
theorem input11021_def : input11021 = (Flapjack.WordLangProgHOL.move 0 [(6397, 6385)]) := by
  unfold input11021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6397, 6385)])).val
theorem output11021_def : output11021 = (Flapjack.WordLangProgHOL.move 0 [(6397, 6385)]) := by
  unfold output11021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11021_skip : Flapjack.WordAlloc.isSkip output11021 = false := by
  rw [output11021_def]
  conv => lhs; cbv
  try rfl
theorem node11021_eq : Flapjack.WordAlloc.removeDeadStructural input11021 value5514 value1 value2 = (output11021, value5515, value1) := by
  rw [input11021_def, output11021_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11021 input11020)).val
theorem input11022_def : input11022 = (.seq input11021 input11020) := by
  unfold input11022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11021 output11020)).val
theorem output11022_def : output11022 = (.seq output11021 output11020) := by
  unfold output11022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11022_skip : Flapjack.WordAlloc.isSkip output11022 = false := by
  rw [output11022_def]
  conv => lhs; cbv
  try rfl
theorem node11022_eq : Flapjack.WordAlloc.removeDeadStructural input11022 value5 value1 value2 = (output11022, value5515, value1) := by
  rw [input11022_def, output11022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11020_eq]
  dsimp only
  rw [node11021_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5516 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6393 12867602560861149700#64))).val
theorem input11023_def : input11023 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6393 12867602560861149700#64)) := by
  unfold input11023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6393 12867602560861149700#64))).val
theorem output11023_def : output11023 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6393 12867602560861149700#64)) := by
  unfold output11023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11023_skip : Flapjack.WordAlloc.isSkip output11023 = false := by
  rw [output11023_def]
  conv => lhs; cbv
  try rfl
theorem node11023_eq : Flapjack.WordAlloc.removeDeadStructural input11023 value5515 value1 value2 = (output11023, value5516, value1) := by
  rw [input11023_def, output11023_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6389 12867602560861149700#64))).val
theorem input11024_def : input11024 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6389 12867602560861149700#64)) := by
  unfold input11024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11024_def : output11024 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11024_skip : Flapjack.WordAlloc.isSkip output11024 = true := by
  rw [output11024_def]
  conv => lhs; cbv
  try rfl
theorem node11024_eq : Flapjack.WordAlloc.removeDeadStructural input11024 value5516 value1 value2 = (output11024, value5516, value1) := by
  rw [input11024_def, output11024_def]
  try (conv => lhs; cbv)
  try rfl

def value5517 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6385 6381 (Flapjack.WordRegImm.imm 1560#64))))).val
theorem input11025_def : input11025 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6385 6381 (Flapjack.WordRegImm.imm 1560#64)))) := by
  unfold input11025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6385 6381 (Flapjack.WordRegImm.imm 1560#64))))).val
theorem output11025_def : output11025 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6385 6381 (Flapjack.WordRegImm.imm 1560#64)))) := by
  unfold output11025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11025_skip : Flapjack.WordAlloc.isSkip output11025 = false := by
  rw [output11025_def]
  conv => lhs; cbv
  try rfl
theorem node11025_eq : Flapjack.WordAlloc.removeDeadStructural input11025 value5516 value1 value2 = (output11025, value5517, value1) := by
  rw [input11025_def, output11025_def]
  try (conv => lhs; cbv)
  try rfl

def value5518 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6381 (Flapjack.WordLangAddr.addr 6377 18446744073709551104#64)))).val
theorem input11026_def : input11026 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6381 (Flapjack.WordLangAddr.addr 6377 18446744073709551104#64))) := by
  unfold input11026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6381 (Flapjack.WordLangAddr.addr 6377 18446744073709551104#64)))).val
theorem output11026_def : output11026 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6381 (Flapjack.WordLangAddr.addr 6377 18446744073709551104#64))) := by
  unfold output11026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11026_skip : Flapjack.WordAlloc.isSkip output11026 = false := by
  rw [output11026_def]
  conv => lhs; cbv
  try rfl
theorem node11026_eq : Flapjack.WordAlloc.removeDeadStructural input11026 value5517 value1 value2 = (output11026, value5518, value1) := by
  rw [input11026_def, output11026_def]
  try (conv => lhs; cbv)
  try rfl

def value5519 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6377 6373)).val
theorem input11027_def : input11027 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6377 6373) := by
  unfold input11027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6377 6373)).val
theorem output11027_def : output11027 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6377 6373) := by
  unfold output11027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11027_skip : Flapjack.WordAlloc.isSkip output11027 = false := by
  rw [output11027_def]
  conv => lhs; cbv
  try rfl
theorem node11027_eq : Flapjack.WordAlloc.removeDeadStructural input11027 value5518 value1 value2 = (output11027, value5519, value1) := by
  rw [input11027_def, output11027_def]
  try (conv => lhs; cbv)
  try rfl

def value5520 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6373 6369 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11028_def : input11028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6373 6369 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6373 6369 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11028_def : output11028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6373 6369 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11028_skip : Flapjack.WordAlloc.isSkip output11028 = false := by
  rw [output11028_def]
  conv => lhs; cbv
  try rfl
theorem node11028_eq : Flapjack.WordAlloc.removeDeadStructural input11028 value5519 value1 value2 = (output11028, value5520, value1) := by
  rw [input11028_def, output11028_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6369 Flapjack.WordStore.heapLength)).val
theorem input11029_def : input11029 = (Flapjack.WordLangProgHOL.get 6369 Flapjack.WordStore.heapLength) := by
  unfold input11029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6369 Flapjack.WordStore.heapLength)).val
theorem output11029_def : output11029 = (Flapjack.WordLangProgHOL.get 6369 Flapjack.WordStore.heapLength) := by
  unfold output11029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11029_skip : Flapjack.WordAlloc.isSkip output11029 = false := by
  rw [output11029_def]
  conv => lhs; cbv
  try rfl
theorem node11029_eq : Flapjack.WordAlloc.removeDeadStructural input11029 value5520 value1 value2 = (output11029, value5, value1) := by
  rw [input11029_def, output11029_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11029 input11028)).val
theorem input11030_def : input11030 = (.seq input11029 input11028) := by
  unfold input11030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11029 output11028)).val
theorem output11030_def : output11030 = (.seq output11029 output11028) := by
  unfold output11030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11030_skip : Flapjack.WordAlloc.isSkip output11030 = false := by
  rw [output11030_def]
  conv => lhs; cbv
  try rfl
theorem node11030_eq : Flapjack.WordAlloc.removeDeadStructural input11030 value5519 value1 value2 = (output11030, value5, value1) := by
  rw [input11030_def, output11030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11028_eq]
  dsimp only
  rw [node11029_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11030 input11027)).val
theorem input11031_def : input11031 = (.seq input11030 input11027) := by
  unfold input11031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11030 output11027)).val
theorem output11031_def : output11031 = (.seq output11030 output11027) := by
  unfold output11031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11031_skip : Flapjack.WordAlloc.isSkip output11031 = false := by
  rw [output11031_def]
  conv => lhs; cbv
  try rfl
theorem node11031_eq : Flapjack.WordAlloc.removeDeadStructural input11031 value5518 value1 value2 = (output11031, value5, value1) := by
  rw [input11031_def, output11031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11027_eq]
  dsimp only
  rw [node11030_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11031 input11026)).val
theorem input11032_def : input11032 = (.seq input11031 input11026) := by
  unfold input11032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11031 output11026)).val
theorem output11032_def : output11032 = (.seq output11031 output11026) := by
  unfold output11032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11032_skip : Flapjack.WordAlloc.isSkip output11032 = false := by
  rw [output11032_def]
  conv => lhs; cbv
  try rfl
theorem node11032_eq : Flapjack.WordAlloc.removeDeadStructural input11032 value5517 value1 value2 = (output11032, value5, value1) := by
  rw [input11032_def, output11032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11026_eq]
  dsimp only
  rw [node11031_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11032 input11025)).val
theorem input11033_def : input11033 = (.seq input11032 input11025) := by
  unfold input11033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11032 output11025)).val
theorem output11033_def : output11033 = (.seq output11032 output11025) := by
  unfold output11033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11033_skip : Flapjack.WordAlloc.isSkip output11033 = false := by
  rw [output11033_def]
  conv => lhs; cbv
  try rfl
theorem node11033_eq : Flapjack.WordAlloc.removeDeadStructural input11033 value5516 value1 value2 = (output11033, value5, value1) := by
  rw [input11033_def, output11033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11025_eq]
  dsimp only
  rw [node11032_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5521 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6361 (Flapjack.WordLangAddr.addr 6365 0#64)))).val
theorem input11034_def : input11034 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6361 (Flapjack.WordLangAddr.addr 6365 0#64))) := by
  unfold input11034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6361 (Flapjack.WordLangAddr.addr 6365 0#64)))).val
theorem output11034_def : output11034 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6361 (Flapjack.WordLangAddr.addr 6365 0#64))) := by
  unfold output11034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11034_skip : Flapjack.WordAlloc.isSkip output11034 = false := by
  rw [output11034_def]
  conv => lhs; cbv
  try rfl
theorem node11034_eq : Flapjack.WordAlloc.removeDeadStructural input11034 value5 value1 value2 = (output11034, value5521, value1) := by
  rw [input11034_def, output11034_def]
  try (conv => lhs; cbv)
  try rfl

def value5522 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6365, 6353)])).val
theorem input11035_def : input11035 = (Flapjack.WordLangProgHOL.move 0 [(6365, 6353)]) := by
  unfold input11035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6365, 6353)])).val
theorem output11035_def : output11035 = (Flapjack.WordLangProgHOL.move 0 [(6365, 6353)]) := by
  unfold output11035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11035_skip : Flapjack.WordAlloc.isSkip output11035 = false := by
  rw [output11035_def]
  conv => lhs; cbv
  try rfl
theorem node11035_eq : Flapjack.WordAlloc.removeDeadStructural input11035 value5521 value1 value2 = (output11035, value5522, value1) := by
  rw [input11035_def, output11035_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11035 input11034)).val
theorem input11036_def : input11036 = (.seq input11035 input11034) := by
  unfold input11036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11035 output11034)).val
theorem output11036_def : output11036 = (.seq output11035 output11034) := by
  unfold output11036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11036_skip : Flapjack.WordAlloc.isSkip output11036 = false := by
  rw [output11036_def]
  conv => lhs; cbv
  try rfl
theorem node11036_eq : Flapjack.WordAlloc.removeDeadStructural input11036 value5 value1 value2 = (output11036, value5522, value1) := by
  rw [input11036_def, output11036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11034_eq]
  dsimp only
  rw [node11035_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5523 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6361 10839030838996704116#64))).val
theorem input11037_def : input11037 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6361 10839030838996704116#64)) := by
  unfold input11037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6361 10839030838996704116#64))).val
theorem output11037_def : output11037 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6361 10839030838996704116#64)) := by
  unfold output11037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11037_skip : Flapjack.WordAlloc.isSkip output11037 = false := by
  rw [output11037_def]
  conv => lhs; cbv
  try rfl
theorem node11037_eq : Flapjack.WordAlloc.removeDeadStructural input11037 value5522 value1 value2 = (output11037, value5523, value1) := by
  rw [input11037_def, output11037_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6357 10839030838996704116#64))).val
theorem input11038_def : input11038 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6357 10839030838996704116#64)) := by
  unfold input11038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11038_def : output11038 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11038_skip : Flapjack.WordAlloc.isSkip output11038 = true := by
  rw [output11038_def]
  conv => lhs; cbv
  try rfl
theorem node11038_eq : Flapjack.WordAlloc.removeDeadStructural input11038 value5523 value1 value2 = (output11038, value5523, value1) := by
  rw [input11038_def, output11038_def]
  try (conv => lhs; cbv)
  try rfl

def value5524 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6353 6349 (Flapjack.WordRegImm.imm 1552#64))))).val
theorem input11039_def : input11039 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6353 6349 (Flapjack.WordRegImm.imm 1552#64)))) := by
  unfold input11039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6353 6349 (Flapjack.WordRegImm.imm 1552#64))))).val
theorem output11039_def : output11039 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6353 6349 (Flapjack.WordRegImm.imm 1552#64)))) := by
  unfold output11039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11039_skip : Flapjack.WordAlloc.isSkip output11039 = false := by
  rw [output11039_def]
  conv => lhs; cbv
  try rfl
theorem node11039_eq : Flapjack.WordAlloc.removeDeadStructural input11039 value5523 value1 value2 = (output11039, value5524, value1) := by
  rw [input11039_def, output11039_def]
  try (conv => lhs; cbv)
  try rfl

def value5525 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6349 (Flapjack.WordLangAddr.addr 6345 18446744073709551104#64)))).val
theorem input11040_def : input11040 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6349 (Flapjack.WordLangAddr.addr 6345 18446744073709551104#64))) := by
  unfold input11040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6349 (Flapjack.WordLangAddr.addr 6345 18446744073709551104#64)))).val
theorem output11040_def : output11040 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6349 (Flapjack.WordLangAddr.addr 6345 18446744073709551104#64))) := by
  unfold output11040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11040_skip : Flapjack.WordAlloc.isSkip output11040 = false := by
  rw [output11040_def]
  conv => lhs; cbv
  try rfl
theorem node11040_eq : Flapjack.WordAlloc.removeDeadStructural input11040 value5524 value1 value2 = (output11040, value5525, value1) := by
  rw [input11040_def, output11040_def]
  try (conv => lhs; cbv)
  try rfl

def value5526 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6345 6341)).val
theorem input11041_def : input11041 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6345 6341) := by
  unfold input11041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6345 6341)).val
theorem output11041_def : output11041 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6345 6341) := by
  unfold output11041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11041_skip : Flapjack.WordAlloc.isSkip output11041 = false := by
  rw [output11041_def]
  conv => lhs; cbv
  try rfl
theorem node11041_eq : Flapjack.WordAlloc.removeDeadStructural input11041 value5525 value1 value2 = (output11041, value5526, value1) := by
  rw [input11041_def, output11041_def]
  try (conv => lhs; cbv)
  try rfl

def value5527 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6341 6337 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11042_def : input11042 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6341 6337 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6341 6337 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11042_def : output11042 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6341 6337 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11042_skip : Flapjack.WordAlloc.isSkip output11042 = false := by
  rw [output11042_def]
  conv => lhs; cbv
  try rfl
theorem node11042_eq : Flapjack.WordAlloc.removeDeadStructural input11042 value5526 value1 value2 = (output11042, value5527, value1) := by
  rw [input11042_def, output11042_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6337 Flapjack.WordStore.heapLength)).val
theorem input11043_def : input11043 = (Flapjack.WordLangProgHOL.get 6337 Flapjack.WordStore.heapLength) := by
  unfold input11043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6337 Flapjack.WordStore.heapLength)).val
theorem output11043_def : output11043 = (Flapjack.WordLangProgHOL.get 6337 Flapjack.WordStore.heapLength) := by
  unfold output11043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11043_skip : Flapjack.WordAlloc.isSkip output11043 = false := by
  rw [output11043_def]
  conv => lhs; cbv
  try rfl
theorem node11043_eq : Flapjack.WordAlloc.removeDeadStructural input11043 value5527 value1 value2 = (output11043, value5, value1) := by
  rw [input11043_def, output11043_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11043 input11042)).val
theorem input11044_def : input11044 = (.seq input11043 input11042) := by
  unfold input11044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11043 output11042)).val
theorem output11044_def : output11044 = (.seq output11043 output11042) := by
  unfold output11044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11044_skip : Flapjack.WordAlloc.isSkip output11044 = false := by
  rw [output11044_def]
  conv => lhs; cbv
  try rfl
theorem node11044_eq : Flapjack.WordAlloc.removeDeadStructural input11044 value5526 value1 value2 = (output11044, value5, value1) := by
  rw [input11044_def, output11044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11042_eq]
  dsimp only
  rw [node11043_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11044 input11041)).val
theorem input11045_def : input11045 = (.seq input11044 input11041) := by
  unfold input11045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11044 output11041)).val
theorem output11045_def : output11045 = (.seq output11044 output11041) := by
  unfold output11045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11045_skip : Flapjack.WordAlloc.isSkip output11045 = false := by
  rw [output11045_def]
  conv => lhs; cbv
  try rfl
theorem node11045_eq : Flapjack.WordAlloc.removeDeadStructural input11045 value5525 value1 value2 = (output11045, value5, value1) := by
  rw [input11045_def, output11045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11041_eq]
  dsimp only
  rw [node11044_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11045 input11040)).val
theorem input11046_def : input11046 = (.seq input11045 input11040) := by
  unfold input11046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11045 output11040)).val
theorem output11046_def : output11046 = (.seq output11045 output11040) := by
  unfold output11046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11046_skip : Flapjack.WordAlloc.isSkip output11046 = false := by
  rw [output11046_def]
  conv => lhs; cbv
  try rfl
theorem node11046_eq : Flapjack.WordAlloc.removeDeadStructural input11046 value5524 value1 value2 = (output11046, value5, value1) := by
  rw [input11046_def, output11046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11040_eq]
  dsimp only
  rw [node11045_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11046 input11039)).val
theorem input11047_def : input11047 = (.seq input11046 input11039) := by
  unfold input11047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11046 output11039)).val
theorem output11047_def : output11047 = (.seq output11046 output11039) := by
  unfold output11047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11047_skip : Flapjack.WordAlloc.isSkip output11047 = false := by
  rw [output11047_def]
  conv => lhs; cbv
  try rfl
theorem node11047_eq : Flapjack.WordAlloc.removeDeadStructural input11047 value5523 value1 value2 = (output11047, value5, value1) := by
  rw [input11047_def, output11047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11039_eq]
  dsimp only
  rw [node11046_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5528 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6329 (Flapjack.WordLangAddr.addr 6333 0#64)))).val
theorem input11048_def : input11048 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6329 (Flapjack.WordLangAddr.addr 6333 0#64))) := by
  unfold input11048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6329 (Flapjack.WordLangAddr.addr 6333 0#64)))).val
theorem output11048_def : output11048 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6329 (Flapjack.WordLangAddr.addr 6333 0#64))) := by
  unfold output11048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11048_skip : Flapjack.WordAlloc.isSkip output11048 = false := by
  rw [output11048_def]
  conv => lhs; cbv
  try rfl
theorem node11048_eq : Flapjack.WordAlloc.removeDeadStructural input11048 value5 value1 value2 = (output11048, value5528, value1) := by
  rw [input11048_def, output11048_def]
  try (conv => lhs; cbv)
  try rfl

def value5529 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6333, 6321)])).val
theorem input11049_def : input11049 = (Flapjack.WordLangProgHOL.move 0 [(6333, 6321)]) := by
  unfold input11049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6333, 6321)])).val
theorem output11049_def : output11049 = (Flapjack.WordLangProgHOL.move 0 [(6333, 6321)]) := by
  unfold output11049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11049_skip : Flapjack.WordAlloc.isSkip output11049 = false := by
  rw [output11049_def]
  conv => lhs; cbv
  try rfl
theorem node11049_eq : Flapjack.WordAlloc.removeDeadStructural input11049 value5528 value1 value2 = (output11049, value5529, value1) := by
  rw [input11049_def, output11049_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11049 input11048)).val
theorem input11050_def : input11050 = (.seq input11049 input11048) := by
  unfold input11050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11049 output11048)).val
theorem output11050_def : output11050 = (.seq output11049 output11048) := by
  unfold output11050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11050_skip : Flapjack.WordAlloc.isSkip output11050 = false := by
  rw [output11050_def]
  conv => lhs; cbv
  try rfl
theorem node11050_eq : Flapjack.WordAlloc.removeDeadStructural input11050 value5 value1 value2 = (output11050, value5529, value1) := by
  rw [input11050_def, output11050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11048_eq]
  dsimp only
  rw [node11049_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5530 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6329 3558621301769835471#64))).val
theorem input11051_def : input11051 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6329 3558621301769835471#64)) := by
  unfold input11051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6329 3558621301769835471#64))).val
theorem output11051_def : output11051 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6329 3558621301769835471#64)) := by
  unfold output11051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11051_skip : Flapjack.WordAlloc.isSkip output11051 = false := by
  rw [output11051_def]
  conv => lhs; cbv
  try rfl
theorem node11051_eq : Flapjack.WordAlloc.removeDeadStructural input11051 value5529 value1 value2 = (output11051, value5530, value1) := by
  rw [input11051_def, output11051_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6325 3558621301769835471#64))).val
theorem input11052_def : input11052 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6325 3558621301769835471#64)) := by
  unfold input11052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11052_def : output11052 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11052_skip : Flapjack.WordAlloc.isSkip output11052 = true := by
  rw [output11052_def]
  conv => lhs; cbv
  try rfl
theorem node11052_eq : Flapjack.WordAlloc.removeDeadStructural input11052 value5530 value1 value2 = (output11052, value5530, value1) := by
  rw [input11052_def, output11052_def]
  try (conv => lhs; cbv)
  try rfl

def value5531 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6321 6317 (Flapjack.WordRegImm.imm 1544#64))))).val
theorem input11053_def : input11053 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6321 6317 (Flapjack.WordRegImm.imm 1544#64)))) := by
  unfold input11053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6321 6317 (Flapjack.WordRegImm.imm 1544#64))))).val
theorem output11053_def : output11053 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6321 6317 (Flapjack.WordRegImm.imm 1544#64)))) := by
  unfold output11053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11053_skip : Flapjack.WordAlloc.isSkip output11053 = false := by
  rw [output11053_def]
  conv => lhs; cbv
  try rfl
theorem node11053_eq : Flapjack.WordAlloc.removeDeadStructural input11053 value5530 value1 value2 = (output11053, value5531, value1) := by
  rw [input11053_def, output11053_def]
  try (conv => lhs; cbv)
  try rfl

def value5532 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6317 (Flapjack.WordLangAddr.addr 6313 18446744073709551104#64)))).val
theorem input11054_def : input11054 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6317 (Flapjack.WordLangAddr.addr 6313 18446744073709551104#64))) := by
  unfold input11054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6317 (Flapjack.WordLangAddr.addr 6313 18446744073709551104#64)))).val
theorem output11054_def : output11054 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6317 (Flapjack.WordLangAddr.addr 6313 18446744073709551104#64))) := by
  unfold output11054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11054_skip : Flapjack.WordAlloc.isSkip output11054 = false := by
  rw [output11054_def]
  conv => lhs; cbv
  try rfl
theorem node11054_eq : Flapjack.WordAlloc.removeDeadStructural input11054 value5531 value1 value2 = (output11054, value5532, value1) := by
  rw [input11054_def, output11054_def]
  try (conv => lhs; cbv)
  try rfl

def value5533 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6313 6309)).val
theorem input11055_def : input11055 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6313 6309) := by
  unfold input11055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6313 6309)).val
theorem output11055_def : output11055 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6313 6309) := by
  unfold output11055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11055_skip : Flapjack.WordAlloc.isSkip output11055 = false := by
  rw [output11055_def]
  conv => lhs; cbv
  try rfl
theorem node11055_eq : Flapjack.WordAlloc.removeDeadStructural input11055 value5532 value1 value2 = (output11055, value5533, value1) := by
  rw [input11055_def, output11055_def]
  try (conv => lhs; cbv)
  try rfl

def value5534 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6309 6305 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11056_def : input11056 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6309 6305 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6309 6305 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11056_def : output11056 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6309 6305 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11056_skip : Flapjack.WordAlloc.isSkip output11056 = false := by
  rw [output11056_def]
  conv => lhs; cbv
  try rfl
theorem node11056_eq : Flapjack.WordAlloc.removeDeadStructural input11056 value5533 value1 value2 = (output11056, value5534, value1) := by
  rw [input11056_def, output11056_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6305 Flapjack.WordStore.heapLength)).val
theorem input11057_def : input11057 = (Flapjack.WordLangProgHOL.get 6305 Flapjack.WordStore.heapLength) := by
  unfold input11057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6305 Flapjack.WordStore.heapLength)).val
theorem output11057_def : output11057 = (Flapjack.WordLangProgHOL.get 6305 Flapjack.WordStore.heapLength) := by
  unfold output11057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11057_skip : Flapjack.WordAlloc.isSkip output11057 = false := by
  rw [output11057_def]
  conv => lhs; cbv
  try rfl
theorem node11057_eq : Flapjack.WordAlloc.removeDeadStructural input11057 value5534 value1 value2 = (output11057, value5, value1) := by
  rw [input11057_def, output11057_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11057 input11056)).val
theorem input11058_def : input11058 = (.seq input11057 input11056) := by
  unfold input11058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11057 output11056)).val
theorem output11058_def : output11058 = (.seq output11057 output11056) := by
  unfold output11058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11058_skip : Flapjack.WordAlloc.isSkip output11058 = false := by
  rw [output11058_def]
  conv => lhs; cbv
  try rfl
theorem node11058_eq : Flapjack.WordAlloc.removeDeadStructural input11058 value5533 value1 value2 = (output11058, value5, value1) := by
  rw [input11058_def, output11058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11056_eq]
  dsimp only
  rw [node11057_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11058 input11055)).val
theorem input11059_def : input11059 = (.seq input11058 input11055) := by
  unfold input11059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11058 output11055)).val
theorem output11059_def : output11059 = (.seq output11058 output11055) := by
  unfold output11059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11059_skip : Flapjack.WordAlloc.isSkip output11059 = false := by
  rw [output11059_def]
  conv => lhs; cbv
  try rfl
theorem node11059_eq : Flapjack.WordAlloc.removeDeadStructural input11059 value5532 value1 value2 = (output11059, value5, value1) := by
  rw [input11059_def, output11059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11055_eq]
  dsimp only
  rw [node11058_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11059 input11054)).val
theorem input11060_def : input11060 = (.seq input11059 input11054) := by
  unfold input11060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11059 output11054)).val
theorem output11060_def : output11060 = (.seq output11059 output11054) := by
  unfold output11060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11060_skip : Flapjack.WordAlloc.isSkip output11060 = false := by
  rw [output11060_def]
  conv => lhs; cbv
  try rfl
theorem node11060_eq : Flapjack.WordAlloc.removeDeadStructural input11060 value5531 value1 value2 = (output11060, value5, value1) := by
  rw [input11060_def, output11060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11054_eq]
  dsimp only
  rw [node11059_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11060 input11053)).val
theorem input11061_def : input11061 = (.seq input11060 input11053) := by
  unfold input11061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11060 output11053)).val
theorem output11061_def : output11061 = (.seq output11060 output11053) := by
  unfold output11061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11061_skip : Flapjack.WordAlloc.isSkip output11061 = false := by
  rw [output11061_def]
  conv => lhs; cbv
  try rfl
theorem node11061_eq : Flapjack.WordAlloc.removeDeadStructural input11061 value5530 value1 value2 = (output11061, value5, value1) := by
  rw [input11061_def, output11061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11053_eq]
  dsimp only
  rw [node11060_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5535 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6297 (Flapjack.WordLangAddr.addr 6301 0#64)))).val
theorem input11062_def : input11062 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6297 (Flapjack.WordLangAddr.addr 6301 0#64))) := by
  unfold input11062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6297 (Flapjack.WordLangAddr.addr 6301 0#64)))).val
theorem output11062_def : output11062 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6297 (Flapjack.WordLangAddr.addr 6301 0#64))) := by
  unfold output11062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11062_skip : Flapjack.WordAlloc.isSkip output11062 = false := by
  rw [output11062_def]
  conv => lhs; cbv
  try rfl
theorem node11062_eq : Flapjack.WordAlloc.removeDeadStructural input11062 value5 value1 value2 = (output11062, value5535, value1) := by
  rw [input11062_def, output11062_def]
  try (conv => lhs; cbv)
  try rfl

def value5536 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6301, 6289)])).val
theorem input11063_def : input11063 = (Flapjack.WordLangProgHOL.move 0 [(6301, 6289)]) := by
  unfold input11063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6301, 6289)])).val
theorem output11063_def : output11063 = (Flapjack.WordLangProgHOL.move 0 [(6301, 6289)]) := by
  unfold output11063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11063_skip : Flapjack.WordAlloc.isSkip output11063 = false := by
  rw [output11063_def]
  conv => lhs; cbv
  try rfl
theorem node11063_eq : Flapjack.WordAlloc.removeDeadStructural input11063 value5535 value1 value2 = (output11063, value5536, value1) := by
  rw [input11063_def, output11063_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11063 input11062)).val
theorem input11064_def : input11064 = (.seq input11063 input11062) := by
  unfold input11064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11063 output11062)).val
theorem output11064_def : output11064 = (.seq output11063 output11062) := by
  unfold output11064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11064_skip : Flapjack.WordAlloc.isSkip output11064 = false := by
  rw [output11064_def]
  conv => lhs; cbv
  try rfl
theorem node11064_eq : Flapjack.WordAlloc.removeDeadStructural input11064 value5 value1 value2 = (output11064, value5536, value1) := by
  rw [input11064_def, output11064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11062_eq]
  dsimp only
  rw [node11063_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5537 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6297 15550602622668079850#64))).val
theorem input11065_def : input11065 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6297 15550602622668079850#64)) := by
  unfold input11065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6297 15550602622668079850#64))).val
theorem output11065_def : output11065 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6297 15550602622668079850#64)) := by
  unfold output11065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11065_skip : Flapjack.WordAlloc.isSkip output11065 = false := by
  rw [output11065_def]
  conv => lhs; cbv
  try rfl
theorem node11065_eq : Flapjack.WordAlloc.removeDeadStructural input11065 value5536 value1 value2 = (output11065, value5537, value1) := by
  rw [input11065_def, output11065_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6293 15550602622668079850#64))).val
theorem input11066_def : input11066 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6293 15550602622668079850#64)) := by
  unfold input11066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11066_def : output11066 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11066_skip : Flapjack.WordAlloc.isSkip output11066 = true := by
  rw [output11066_def]
  conv => lhs; cbv
  try rfl
theorem node11066_eq : Flapjack.WordAlloc.removeDeadStructural input11066 value5537 value1 value2 = (output11066, value5537, value1) := by
  rw [input11066_def, output11066_def]
  try (conv => lhs; cbv)
  try rfl

def value5538 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6289 6285 (Flapjack.WordRegImm.imm 1536#64))))).val
theorem input11067_def : input11067 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6289 6285 (Flapjack.WordRegImm.imm 1536#64)))) := by
  unfold input11067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6289 6285 (Flapjack.WordRegImm.imm 1536#64))))).val
theorem output11067_def : output11067 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6289 6285 (Flapjack.WordRegImm.imm 1536#64)))) := by
  unfold output11067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11067_skip : Flapjack.WordAlloc.isSkip output11067 = false := by
  rw [output11067_def]
  conv => lhs; cbv
  try rfl
theorem node11067_eq : Flapjack.WordAlloc.removeDeadStructural input11067 value5537 value1 value2 = (output11067, value5538, value1) := by
  rw [input11067_def, output11067_def]
  try (conv => lhs; cbv)
  try rfl

def value5539 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6285 (Flapjack.WordLangAddr.addr 6281 18446744073709551104#64)))).val
theorem input11068_def : input11068 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6285 (Flapjack.WordLangAddr.addr 6281 18446744073709551104#64))) := by
  unfold input11068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6285 (Flapjack.WordLangAddr.addr 6281 18446744073709551104#64)))).val
theorem output11068_def : output11068 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6285 (Flapjack.WordLangAddr.addr 6281 18446744073709551104#64))) := by
  unfold output11068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11068_skip : Flapjack.WordAlloc.isSkip output11068 = false := by
  rw [output11068_def]
  conv => lhs; cbv
  try rfl
theorem node11068_eq : Flapjack.WordAlloc.removeDeadStructural input11068 value5538 value1 value2 = (output11068, value5539, value1) := by
  rw [input11068_def, output11068_def]
  try (conv => lhs; cbv)
  try rfl

def value5540 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6281 6277)).val
theorem input11069_def : input11069 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6281 6277) := by
  unfold input11069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6281 6277)).val
theorem output11069_def : output11069 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6281 6277) := by
  unfold output11069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11069_skip : Flapjack.WordAlloc.isSkip output11069 = false := by
  rw [output11069_def]
  conv => lhs; cbv
  try rfl
theorem node11069_eq : Flapjack.WordAlloc.removeDeadStructural input11069 value5539 value1 value2 = (output11069, value5540, value1) := by
  rw [input11069_def, output11069_def]
  try (conv => lhs; cbv)
  try rfl

def value5541 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6277 6273 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11070_def : input11070 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6277 6273 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6277 6273 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11070_def : output11070 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6277 6273 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11070_skip : Flapjack.WordAlloc.isSkip output11070 = false := by
  rw [output11070_def]
  conv => lhs; cbv
  try rfl
theorem node11070_eq : Flapjack.WordAlloc.removeDeadStructural input11070 value5540 value1 value2 = (output11070, value5541, value1) := by
  rw [input11070_def, output11070_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6273 Flapjack.WordStore.heapLength)).val
theorem input11071_def : input11071 = (Flapjack.WordLangProgHOL.get 6273 Flapjack.WordStore.heapLength) := by
  unfold input11071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6273 Flapjack.WordStore.heapLength)).val
theorem output11071_def : output11071 = (Flapjack.WordLangProgHOL.get 6273 Flapjack.WordStore.heapLength) := by
  unfold output11071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11071_skip : Flapjack.WordAlloc.isSkip output11071 = false := by
  rw [output11071_def]
  conv => lhs; cbv
  try rfl
theorem node11071_eq : Flapjack.WordAlloc.removeDeadStructural input11071 value5541 value1 value2 = (output11071, value5, value1) := by
  rw [input11071_def, output11071_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11071 input11070)).val
theorem input11072_def : input11072 = (.seq input11071 input11070) := by
  unfold input11072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11071 output11070)).val
theorem output11072_def : output11072 = (.seq output11071 output11070) := by
  unfold output11072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11072_skip : Flapjack.WordAlloc.isSkip output11072 = false := by
  rw [output11072_def]
  conv => lhs; cbv
  try rfl
theorem node11072_eq : Flapjack.WordAlloc.removeDeadStructural input11072 value5540 value1 value2 = (output11072, value5, value1) := by
  rw [input11072_def, output11072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11070_eq]
  dsimp only
  rw [node11071_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11072 input11069)).val
theorem input11073_def : input11073 = (.seq input11072 input11069) := by
  unfold input11073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11072 output11069)).val
theorem output11073_def : output11073 = (.seq output11072 output11069) := by
  unfold output11073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11073_skip : Flapjack.WordAlloc.isSkip output11073 = false := by
  rw [output11073_def]
  conv => lhs; cbv
  try rfl
theorem node11073_eq : Flapjack.WordAlloc.removeDeadStructural input11073 value5539 value1 value2 = (output11073, value5, value1) := by
  rw [input11073_def, output11073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11069_eq]
  dsimp only
  rw [node11072_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11073 input11068)).val
theorem input11074_def : input11074 = (.seq input11073 input11068) := by
  unfold input11074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11073 output11068)).val
theorem output11074_def : output11074 = (.seq output11073 output11068) := by
  unfold output11074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11074_skip : Flapjack.WordAlloc.isSkip output11074 = false := by
  rw [output11074_def]
  conv => lhs; cbv
  try rfl
theorem node11074_eq : Flapjack.WordAlloc.removeDeadStructural input11074 value5538 value1 value2 = (output11074, value5, value1) := by
  rw [input11074_def, output11074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11068_eq]
  dsimp only
  rw [node11073_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11074 input11067)).val
theorem input11075_def : input11075 = (.seq input11074 input11067) := by
  unfold input11075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11074 output11067)).val
theorem output11075_def : output11075 = (.seq output11074 output11067) := by
  unfold output11075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11075_skip : Flapjack.WordAlloc.isSkip output11075 = false := by
  rw [output11075_def]
  conv => lhs; cbv
  try rfl
theorem node11075_eq : Flapjack.WordAlloc.removeDeadStructural input11075 value5537 value1 value2 = (output11075, value5, value1) := by
  rw [input11075_def, output11075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11067_eq]
  dsimp only
  rw [node11074_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5542 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6265 (Flapjack.WordLangAddr.addr 6269 0#64)))).val
theorem input11076_def : input11076 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6265 (Flapjack.WordLangAddr.addr 6269 0#64))) := by
  unfold input11076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6265 (Flapjack.WordLangAddr.addr 6269 0#64)))).val
theorem output11076_def : output11076 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6265 (Flapjack.WordLangAddr.addr 6269 0#64))) := by
  unfold output11076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11076_skip : Flapjack.WordAlloc.isSkip output11076 = false := by
  rw [output11076_def]
  conv => lhs; cbv
  try rfl
theorem node11076_eq : Flapjack.WordAlloc.removeDeadStructural input11076 value5 value1 value2 = (output11076, value5542, value1) := by
  rw [input11076_def, output11076_def]
  try (conv => lhs; cbv)
  try rfl

def value5543 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6269, 6257)])).val
theorem input11077_def : input11077 = (Flapjack.WordLangProgHOL.move 0 [(6269, 6257)]) := by
  unfold input11077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6269, 6257)])).val
theorem output11077_def : output11077 = (Flapjack.WordLangProgHOL.move 0 [(6269, 6257)]) := by
  unfold output11077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11077_skip : Flapjack.WordAlloc.isSkip output11077 = false := by
  rw [output11077_def]
  conv => lhs; cbv
  try rfl
theorem node11077_eq : Flapjack.WordAlloc.removeDeadStructural input11077 value5542 value1 value2 = (output11077, value5543, value1) := by
  rw [input11077_def, output11077_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11077 input11076)).val
theorem input11078_def : input11078 = (.seq input11077 input11076) := by
  unfold input11078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11077 output11076)).val
theorem output11078_def : output11078 = (.seq output11077 output11076) := by
  unfold output11078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11078_skip : Flapjack.WordAlloc.isSkip output11078 = false := by
  rw [output11078_def]
  conv => lhs; cbv
  try rfl
theorem node11078_eq : Flapjack.WordAlloc.removeDeadStructural input11078 value5 value1 value2 = (output11078, value5543, value1) := by
  rw [input11078_def, output11078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11076_eq]
  dsimp only
  rw [node11077_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5544 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6265 12856264008172771555#64))).val
theorem input11079_def : input11079 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6265 12856264008172771555#64)) := by
  unfold input11079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6265 12856264008172771555#64))).val
theorem output11079_def : output11079 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6265 12856264008172771555#64)) := by
  unfold output11079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11079_skip : Flapjack.WordAlloc.isSkip output11079 = false := by
  rw [output11079_def]
  conv => lhs; cbv
  try rfl
theorem node11079_eq : Flapjack.WordAlloc.removeDeadStructural input11079 value5543 value1 value2 = (output11079, value5544, value1) := by
  rw [input11079_def, output11079_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6261 12856264008172771555#64))).val
theorem input11080_def : input11080 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6261 12856264008172771555#64)) := by
  unfold input11080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11080_def : output11080 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11080_skip : Flapjack.WordAlloc.isSkip output11080 = true := by
  rw [output11080_def]
  conv => lhs; cbv
  try rfl
theorem node11080_eq : Flapjack.WordAlloc.removeDeadStructural input11080 value5544 value1 value2 = (output11080, value5544, value1) := by
  rw [input11080_def, output11080_def]
  try (conv => lhs; cbv)
  try rfl

def value5545 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6257 6253 (Flapjack.WordRegImm.imm 1528#64))))).val
theorem input11081_def : input11081 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6257 6253 (Flapjack.WordRegImm.imm 1528#64)))) := by
  unfold input11081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6257 6253 (Flapjack.WordRegImm.imm 1528#64))))).val
theorem output11081_def : output11081 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6257 6253 (Flapjack.WordRegImm.imm 1528#64)))) := by
  unfold output11081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11081_skip : Flapjack.WordAlloc.isSkip output11081 = false := by
  rw [output11081_def]
  conv => lhs; cbv
  try rfl
theorem node11081_eq : Flapjack.WordAlloc.removeDeadStructural input11081 value5544 value1 value2 = (output11081, value5545, value1) := by
  rw [input11081_def, output11081_def]
  try (conv => lhs; cbv)
  try rfl

def value5546 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6253 (Flapjack.WordLangAddr.addr 6249 18446744073709551104#64)))).val
theorem input11082_def : input11082 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6253 (Flapjack.WordLangAddr.addr 6249 18446744073709551104#64))) := by
  unfold input11082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6253 (Flapjack.WordLangAddr.addr 6249 18446744073709551104#64)))).val
theorem output11082_def : output11082 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6253 (Flapjack.WordLangAddr.addr 6249 18446744073709551104#64))) := by
  unfold output11082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11082_skip : Flapjack.WordAlloc.isSkip output11082 = false := by
  rw [output11082_def]
  conv => lhs; cbv
  try rfl
theorem node11082_eq : Flapjack.WordAlloc.removeDeadStructural input11082 value5545 value1 value2 = (output11082, value5546, value1) := by
  rw [input11082_def, output11082_def]
  try (conv => lhs; cbv)
  try rfl

def value5547 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6249 6245)).val
theorem input11083_def : input11083 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6249 6245) := by
  unfold input11083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6249 6245)).val
theorem output11083_def : output11083 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6249 6245) := by
  unfold output11083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11083_skip : Flapjack.WordAlloc.isSkip output11083 = false := by
  rw [output11083_def]
  conv => lhs; cbv
  try rfl
theorem node11083_eq : Flapjack.WordAlloc.removeDeadStructural input11083 value5546 value1 value2 = (output11083, value5547, value1) := by
  rw [input11083_def, output11083_def]
  try (conv => lhs; cbv)
  try rfl

def value5548 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6245 6241 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11084_def : input11084 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6245 6241 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6245 6241 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11084_def : output11084 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6245 6241 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11084_skip : Flapjack.WordAlloc.isSkip output11084 = false := by
  rw [output11084_def]
  conv => lhs; cbv
  try rfl
theorem node11084_eq : Flapjack.WordAlloc.removeDeadStructural input11084 value5547 value1 value2 = (output11084, value5548, value1) := by
  rw [input11084_def, output11084_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6241 Flapjack.WordStore.heapLength)).val
theorem input11085_def : input11085 = (Flapjack.WordLangProgHOL.get 6241 Flapjack.WordStore.heapLength) := by
  unfold input11085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6241 Flapjack.WordStore.heapLength)).val
theorem output11085_def : output11085 = (Flapjack.WordLangProgHOL.get 6241 Flapjack.WordStore.heapLength) := by
  unfold output11085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11085_skip : Flapjack.WordAlloc.isSkip output11085 = false := by
  rw [output11085_def]
  conv => lhs; cbv
  try rfl
theorem node11085_eq : Flapjack.WordAlloc.removeDeadStructural input11085 value5548 value1 value2 = (output11085, value5, value1) := by
  rw [input11085_def, output11085_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11085 input11084)).val
theorem input11086_def : input11086 = (.seq input11085 input11084) := by
  unfold input11086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11085 output11084)).val
theorem output11086_def : output11086 = (.seq output11085 output11084) := by
  unfold output11086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11086_skip : Flapjack.WordAlloc.isSkip output11086 = false := by
  rw [output11086_def]
  conv => lhs; cbv
  try rfl
theorem node11086_eq : Flapjack.WordAlloc.removeDeadStructural input11086 value5547 value1 value2 = (output11086, value5, value1) := by
  rw [input11086_def, output11086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11084_eq]
  dsimp only
  rw [node11085_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11086 input11083)).val
theorem input11087_def : input11087 = (.seq input11086 input11083) := by
  unfold input11087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11086 output11083)).val
theorem output11087_def : output11087 = (.seq output11086 output11083) := by
  unfold output11087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11087_skip : Flapjack.WordAlloc.isSkip output11087 = false := by
  rw [output11087_def]
  conv => lhs; cbv
  try rfl
theorem node11087_eq : Flapjack.WordAlloc.removeDeadStructural input11087 value5546 value1 value2 = (output11087, value5, value1) := by
  rw [input11087_def, output11087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11083_eq]
  dsimp only
  rw [node11086_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11087 input11082)).val
theorem input11088_def : input11088 = (.seq input11087 input11082) := by
  unfold input11088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11087 output11082)).val
theorem output11088_def : output11088 = (.seq output11087 output11082) := by
  unfold output11088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11088_skip : Flapjack.WordAlloc.isSkip output11088 = false := by
  rw [output11088_def]
  conv => lhs; cbv
  try rfl
theorem node11088_eq : Flapjack.WordAlloc.removeDeadStructural input11088 value5545 value1 value2 = (output11088, value5, value1) := by
  rw [input11088_def, output11088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11082_eq]
  dsimp only
  rw [node11087_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11088 input11081)).val
theorem input11089_def : input11089 = (.seq input11088 input11081) := by
  unfold input11089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11088 output11081)).val
theorem output11089_def : output11089 = (.seq output11088 output11081) := by
  unfold output11089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11089_skip : Flapjack.WordAlloc.isSkip output11089 = false := by
  rw [output11089_def]
  conv => lhs; cbv
  try rfl
theorem node11089_eq : Flapjack.WordAlloc.removeDeadStructural input11089 value5544 value1 value2 = (output11089, value5, value1) := by
  rw [input11089_def, output11089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11081_eq]
  dsimp only
  rw [node11088_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5549 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6233 (Flapjack.WordLangAddr.addr 6237 0#64)))).val
theorem input11090_def : input11090 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6233 (Flapjack.WordLangAddr.addr 6237 0#64))) := by
  unfold input11090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6233 (Flapjack.WordLangAddr.addr 6237 0#64)))).val
theorem output11090_def : output11090 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6233 (Flapjack.WordLangAddr.addr 6237 0#64))) := by
  unfold output11090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11090_skip : Flapjack.WordAlloc.isSkip output11090 = false := by
  rw [output11090_def]
  conv => lhs; cbv
  try rfl
theorem node11090_eq : Flapjack.WordAlloc.removeDeadStructural input11090 value5 value1 value2 = (output11090, value5549, value1) := by
  rw [input11090_def, output11090_def]
  try (conv => lhs; cbv)
  try rfl

def value5550 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6237, 6225)])).val
theorem input11091_def : input11091 = (Flapjack.WordLangProgHOL.move 0 [(6237, 6225)]) := by
  unfold input11091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6237, 6225)])).val
theorem output11091_def : output11091 = (Flapjack.WordLangProgHOL.move 0 [(6237, 6225)]) := by
  unfold output11091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11091_skip : Flapjack.WordAlloc.isSkip output11091 = false := by
  rw [output11091_def]
  conv => lhs; cbv
  try rfl
theorem node11091_eq : Flapjack.WordAlloc.removeDeadStructural input11091 value5549 value1 value2 = (output11091, value5550, value1) := by
  rw [input11091_def, output11091_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11091 input11090)).val
theorem input11092_def : input11092 = (.seq input11091 input11090) := by
  unfold input11092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11091 output11090)).val
theorem output11092_def : output11092 = (.seq output11091 output11090) := by
  unfold output11092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11092_skip : Flapjack.WordAlloc.isSkip output11092 = false := by
  rw [output11092_def]
  conv => lhs; cbv
  try rfl
theorem node11092_eq : Flapjack.WordAlloc.removeDeadStructural input11092 value5 value1 value2 = (output11092, value5550, value1) := by
  rw [input11092_def, output11092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11090_eq]
  dsimp only
  rw [node11091_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5551 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6233 468449654411884966#64))).val
theorem input11093_def : input11093 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6233 468449654411884966#64)) := by
  unfold input11093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6233 468449654411884966#64))).val
theorem output11093_def : output11093 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6233 468449654411884966#64)) := by
  unfold output11093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11093_skip : Flapjack.WordAlloc.isSkip output11093 = false := by
  rw [output11093_def]
  conv => lhs; cbv
  try rfl
theorem node11093_eq : Flapjack.WordAlloc.removeDeadStructural input11093 value5550 value1 value2 = (output11093, value5551, value1) := by
  rw [input11093_def, output11093_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6229 468449654411884966#64))).val
theorem input11094_def : input11094 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6229 468449654411884966#64)) := by
  unfold input11094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11094_def : output11094 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11094_skip : Flapjack.WordAlloc.isSkip output11094 = true := by
  rw [output11094_def]
  conv => lhs; cbv
  try rfl
theorem node11094_eq : Flapjack.WordAlloc.removeDeadStructural input11094 value5551 value1 value2 = (output11094, value5551, value1) := by
  rw [input11094_def, output11094_def]
  try (conv => lhs; cbv)
  try rfl

def value5552 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6225 6221 (Flapjack.WordRegImm.imm 1520#64))))).val
theorem input11095_def : input11095 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6225 6221 (Flapjack.WordRegImm.imm 1520#64)))) := by
  unfold input11095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6225 6221 (Flapjack.WordRegImm.imm 1520#64))))).val
theorem output11095_def : output11095 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6225 6221 (Flapjack.WordRegImm.imm 1520#64)))) := by
  unfold output11095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11095_skip : Flapjack.WordAlloc.isSkip output11095 = false := by
  rw [output11095_def]
  conv => lhs; cbv
  try rfl
theorem node11095_eq : Flapjack.WordAlloc.removeDeadStructural input11095 value5551 value1 value2 = (output11095, value5552, value1) := by
  rw [input11095_def, output11095_def]
  try (conv => lhs; cbv)
  try rfl

def value5553 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6221 (Flapjack.WordLangAddr.addr 6217 18446744073709551104#64)))).val
theorem input11096_def : input11096 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6221 (Flapjack.WordLangAddr.addr 6217 18446744073709551104#64))) := by
  unfold input11096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6221 (Flapjack.WordLangAddr.addr 6217 18446744073709551104#64)))).val
theorem output11096_def : output11096 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6221 (Flapjack.WordLangAddr.addr 6217 18446744073709551104#64))) := by
  unfold output11096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11096_skip : Flapjack.WordAlloc.isSkip output11096 = false := by
  rw [output11096_def]
  conv => lhs; cbv
  try rfl
theorem node11096_eq : Flapjack.WordAlloc.removeDeadStructural input11096 value5552 value1 value2 = (output11096, value5553, value1) := by
  rw [input11096_def, output11096_def]
  try (conv => lhs; cbv)
  try rfl

def value5554 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6217 6213)).val
theorem input11097_def : input11097 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6217 6213) := by
  unfold input11097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6217 6213)).val
theorem output11097_def : output11097 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6217 6213) := by
  unfold output11097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11097_skip : Flapjack.WordAlloc.isSkip output11097 = false := by
  rw [output11097_def]
  conv => lhs; cbv
  try rfl
theorem node11097_eq : Flapjack.WordAlloc.removeDeadStructural input11097 value5553 value1 value2 = (output11097, value5554, value1) := by
  rw [input11097_def, output11097_def]
  try (conv => lhs; cbv)
  try rfl

def value5555 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6213 6209 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11098_def : input11098 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6213 6209 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6213 6209 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11098_def : output11098 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6213 6209 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11098_skip : Flapjack.WordAlloc.isSkip output11098 = false := by
  rw [output11098_def]
  conv => lhs; cbv
  try rfl
theorem node11098_eq : Flapjack.WordAlloc.removeDeadStructural input11098 value5554 value1 value2 = (output11098, value5555, value1) := by
  rw [input11098_def, output11098_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6209 Flapjack.WordStore.heapLength)).val
theorem input11099_def : input11099 = (Flapjack.WordLangProgHOL.get 6209 Flapjack.WordStore.heapLength) := by
  unfold input11099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6209 Flapjack.WordStore.heapLength)).val
theorem output11099_def : output11099 = (Flapjack.WordLangProgHOL.get 6209 Flapjack.WordStore.heapLength) := by
  unfold output11099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11099_skip : Flapjack.WordAlloc.isSkip output11099 = false := by
  rw [output11099_def]
  conv => lhs; cbv
  try rfl
theorem node11099_eq : Flapjack.WordAlloc.removeDeadStructural input11099 value5555 value1 value2 = (output11099, value5, value1) := by
  rw [input11099_def, output11099_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11099 input11098)).val
theorem input11100_def : input11100 = (.seq input11099 input11098) := by
  unfold input11100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11099 output11098)).val
theorem output11100_def : output11100 = (.seq output11099 output11098) := by
  unfold output11100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11100_skip : Flapjack.WordAlloc.isSkip output11100 = false := by
  rw [output11100_def]
  conv => lhs; cbv
  try rfl
theorem node11100_eq : Flapjack.WordAlloc.removeDeadStructural input11100 value5554 value1 value2 = (output11100, value5, value1) := by
  rw [input11100_def, output11100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11098_eq]
  dsimp only
  rw [node11099_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11100 input11097)).val
theorem input11101_def : input11101 = (.seq input11100 input11097) := by
  unfold input11101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11100 output11097)).val
theorem output11101_def : output11101 = (.seq output11100 output11097) := by
  unfold output11101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11101_skip : Flapjack.WordAlloc.isSkip output11101 = false := by
  rw [output11101_def]
  conv => lhs; cbv
  try rfl
theorem node11101_eq : Flapjack.WordAlloc.removeDeadStructural input11101 value5553 value1 value2 = (output11101, value5, value1) := by
  rw [input11101_def, output11101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11097_eq]
  dsimp only
  rw [node11100_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11101 input11096)).val
theorem input11102_def : input11102 = (.seq input11101 input11096) := by
  unfold input11102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11101 output11096)).val
theorem output11102_def : output11102 = (.seq output11101 output11096) := by
  unfold output11102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11102_skip : Flapjack.WordAlloc.isSkip output11102 = false := by
  rw [output11102_def]
  conv => lhs; cbv
  try rfl
theorem node11102_eq : Flapjack.WordAlloc.removeDeadStructural input11102 value5552 value1 value2 = (output11102, value5, value1) := by
  rw [input11102_def, output11102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11096_eq]
  dsimp only
  rw [node11101_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11102 input11095)).val
theorem input11103_def : input11103 = (.seq input11102 input11095) := by
  unfold input11103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11102 output11095)).val
theorem output11103_def : output11103 = (.seq output11102 output11095) := by
  unfold output11103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11103_skip : Flapjack.WordAlloc.isSkip output11103 = false := by
  rw [output11103_def]
  conv => lhs; cbv
  try rfl
theorem node11103_eq : Flapjack.WordAlloc.removeDeadStructural input11103 value5551 value1 value2 = (output11103, value5, value1) := by
  rw [input11103_def, output11103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11095_eq]
  dsimp only
  rw [node11102_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5556 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6201 (Flapjack.WordLangAddr.addr 6205 0#64)))).val
theorem input11104_def : input11104 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6201 (Flapjack.WordLangAddr.addr 6205 0#64))) := by
  unfold input11104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6201 (Flapjack.WordLangAddr.addr 6205 0#64)))).val
theorem output11104_def : output11104 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6201 (Flapjack.WordLangAddr.addr 6205 0#64))) := by
  unfold output11104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11104_skip : Flapjack.WordAlloc.isSkip output11104 = false := by
  rw [output11104_def]
  conv => lhs; cbv
  try rfl
theorem node11104_eq : Flapjack.WordAlloc.removeDeadStructural input11104 value5 value1 value2 = (output11104, value5556, value1) := by
  rw [input11104_def, output11104_def]
  try (conv => lhs; cbv)
  try rfl

def value5557 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6205, 6193)])).val
theorem input11105_def : input11105 = (Flapjack.WordLangProgHOL.move 0 [(6205, 6193)]) := by
  unfold input11105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6205, 6193)])).val
theorem output11105_def : output11105 = (Flapjack.WordLangProgHOL.move 0 [(6205, 6193)]) := by
  unfold output11105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11105_skip : Flapjack.WordAlloc.isSkip output11105 = false := by
  rw [output11105_def]
  conv => lhs; cbv
  try rfl
theorem node11105_eq : Flapjack.WordAlloc.removeDeadStructural input11105 value5556 value1 value2 = (output11105, value5557, value1) := by
  rw [input11105_def, output11105_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11105 input11104)).val
theorem input11106_def : input11106 = (.seq input11105 input11104) := by
  unfold input11106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11105 output11104)).val
theorem output11106_def : output11106 = (.seq output11105 output11104) := by
  unfold output11106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11106_skip : Flapjack.WordAlloc.isSkip output11106 = false := by
  rw [output11106_def]
  conv => lhs; cbv
  try rfl
theorem node11106_eq : Flapjack.WordAlloc.removeDeadStructural input11106 value5 value1 value2 = (output11106, value5557, value1) := by
  rw [input11106_def, output11106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11104_eq]
  dsimp only
  rw [node11105_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5558 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6201 10576397981472451381#64))).val
theorem input11107_def : input11107 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6201 10576397981472451381#64)) := by
  unfold input11107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6201 10576397981472451381#64))).val
theorem output11107_def : output11107 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6201 10576397981472451381#64)) := by
  unfold output11107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11107_skip : Flapjack.WordAlloc.isSkip output11107 = false := by
  rw [output11107_def]
  conv => lhs; cbv
  try rfl
theorem node11107_eq : Flapjack.WordAlloc.removeDeadStructural input11107 value5557 value1 value2 = (output11107, value5558, value1) := by
  rw [input11107_def, output11107_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6197 10576397981472451381#64))).val
theorem input11108_def : input11108 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6197 10576397981472451381#64)) := by
  unfold input11108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11108_def : output11108 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11108_skip : Flapjack.WordAlloc.isSkip output11108 = true := by
  rw [output11108_def]
  conv => lhs; cbv
  try rfl
theorem node11108_eq : Flapjack.WordAlloc.removeDeadStructural input11108 value5558 value1 value2 = (output11108, value5558, value1) := by
  rw [input11108_def, output11108_def]
  try (conv => lhs; cbv)
  try rfl

def value5559 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6193 6189 (Flapjack.WordRegImm.imm 1512#64))))).val
theorem input11109_def : input11109 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6193 6189 (Flapjack.WordRegImm.imm 1512#64)))) := by
  unfold input11109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6193 6189 (Flapjack.WordRegImm.imm 1512#64))))).val
theorem output11109_def : output11109 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6193 6189 (Flapjack.WordRegImm.imm 1512#64)))) := by
  unfold output11109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11109_skip : Flapjack.WordAlloc.isSkip output11109 = false := by
  rw [output11109_def]
  conv => lhs; cbv
  try rfl
theorem node11109_eq : Flapjack.WordAlloc.removeDeadStructural input11109 value5558 value1 value2 = (output11109, value5559, value1) := by
  rw [input11109_def, output11109_def]
  try (conv => lhs; cbv)
  try rfl

def value5560 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6189 (Flapjack.WordLangAddr.addr 6185 18446744073709551104#64)))).val
theorem input11110_def : input11110 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6189 (Flapjack.WordLangAddr.addr 6185 18446744073709551104#64))) := by
  unfold input11110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6189 (Flapjack.WordLangAddr.addr 6185 18446744073709551104#64)))).val
theorem output11110_def : output11110 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6189 (Flapjack.WordLangAddr.addr 6185 18446744073709551104#64))) := by
  unfold output11110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11110_skip : Flapjack.WordAlloc.isSkip output11110 = false := by
  rw [output11110_def]
  conv => lhs; cbv
  try rfl
theorem node11110_eq : Flapjack.WordAlloc.removeDeadStructural input11110 value5559 value1 value2 = (output11110, value5560, value1) := by
  rw [input11110_def, output11110_def]
  try (conv => lhs; cbv)
  try rfl

def value5561 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6185 6181)).val
theorem input11111_def : input11111 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6185 6181) := by
  unfold input11111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6185 6181)).val
theorem output11111_def : output11111 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6185 6181) := by
  unfold output11111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11111_skip : Flapjack.WordAlloc.isSkip output11111 = false := by
  rw [output11111_def]
  conv => lhs; cbv
  try rfl
theorem node11111_eq : Flapjack.WordAlloc.removeDeadStructural input11111 value5560 value1 value2 = (output11111, value5561, value1) := by
  rw [input11111_def, output11111_def]
  try (conv => lhs; cbv)
  try rfl

def value5562 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6181 6177 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11112_def : input11112 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6181 6177 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6181 6177 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11112_def : output11112 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6181 6177 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11112_skip : Flapjack.WordAlloc.isSkip output11112 = false := by
  rw [output11112_def]
  conv => lhs; cbv
  try rfl
theorem node11112_eq : Flapjack.WordAlloc.removeDeadStructural input11112 value5561 value1 value2 = (output11112, value5562, value1) := by
  rw [input11112_def, output11112_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6177 Flapjack.WordStore.heapLength)).val
theorem input11113_def : input11113 = (Flapjack.WordLangProgHOL.get 6177 Flapjack.WordStore.heapLength) := by
  unfold input11113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6177 Flapjack.WordStore.heapLength)).val
theorem output11113_def : output11113 = (Flapjack.WordLangProgHOL.get 6177 Flapjack.WordStore.heapLength) := by
  unfold output11113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11113_skip : Flapjack.WordAlloc.isSkip output11113 = false := by
  rw [output11113_def]
  conv => lhs; cbv
  try rfl
theorem node11113_eq : Flapjack.WordAlloc.removeDeadStructural input11113 value5562 value1 value2 = (output11113, value5, value1) := by
  rw [input11113_def, output11113_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11113 input11112)).val
theorem input11114_def : input11114 = (.seq input11113 input11112) := by
  unfold input11114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11113 output11112)).val
theorem output11114_def : output11114 = (.seq output11113 output11112) := by
  unfold output11114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11114_skip : Flapjack.WordAlloc.isSkip output11114 = false := by
  rw [output11114_def]
  conv => lhs; cbv
  try rfl
theorem node11114_eq : Flapjack.WordAlloc.removeDeadStructural input11114 value5561 value1 value2 = (output11114, value5, value1) := by
  rw [input11114_def, output11114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11112_eq]
  dsimp only
  rw [node11113_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11114 input11111)).val
theorem input11115_def : input11115 = (.seq input11114 input11111) := by
  unfold input11115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11114 output11111)).val
theorem output11115_def : output11115 = (.seq output11114 output11111) := by
  unfold output11115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11115_skip : Flapjack.WordAlloc.isSkip output11115 = false := by
  rw [output11115_def]
  conv => lhs; cbv
  try rfl
theorem node11115_eq : Flapjack.WordAlloc.removeDeadStructural input11115 value5560 value1 value2 = (output11115, value5, value1) := by
  rw [input11115_def, output11115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11111_eq]
  dsimp only
  rw [node11114_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11115 input11110)).val
theorem input11116_def : input11116 = (.seq input11115 input11110) := by
  unfold input11116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11115 output11110)).val
theorem output11116_def : output11116 = (.seq output11115 output11110) := by
  unfold output11116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11116_skip : Flapjack.WordAlloc.isSkip output11116 = false := by
  rw [output11116_def]
  conv => lhs; cbv
  try rfl
theorem node11116_eq : Flapjack.WordAlloc.removeDeadStructural input11116 value5559 value1 value2 = (output11116, value5, value1) := by
  rw [input11116_def, output11116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11110_eq]
  dsimp only
  rw [node11115_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11116 input11109)).val
theorem input11117_def : input11117 = (.seq input11116 input11109) := by
  unfold input11117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11116 output11109)).val
theorem output11117_def : output11117 = (.seq output11116 output11109) := by
  unfold output11117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11117_skip : Flapjack.WordAlloc.isSkip output11117 = false := by
  rw [output11117_def]
  conv => lhs; cbv
  try rfl
theorem node11117_eq : Flapjack.WordAlloc.removeDeadStructural input11117 value5558 value1 value2 = (output11117, value5, value1) := by
  rw [input11117_def, output11117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11109_eq]
  dsimp only
  rw [node11116_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5563 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6169 (Flapjack.WordLangAddr.addr 6173 0#64)))).val
theorem input11118_def : input11118 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6169 (Flapjack.WordLangAddr.addr 6173 0#64))) := by
  unfold input11118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6169 (Flapjack.WordLangAddr.addr 6173 0#64)))).val
theorem output11118_def : output11118 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6169 (Flapjack.WordLangAddr.addr 6173 0#64))) := by
  unfold output11118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11118_skip : Flapjack.WordAlloc.isSkip output11118 = false := by
  rw [output11118_def]
  conv => lhs; cbv
  try rfl
theorem node11118_eq : Flapjack.WordAlloc.removeDeadStructural input11118 value5 value1 value2 = (output11118, value5563, value1) := by
  rw [input11118_def, output11118_def]
  try (conv => lhs; cbv)
  try rfl

def value5564 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6173, 6161)])).val
theorem input11119_def : input11119 = (Flapjack.WordLangProgHOL.move 0 [(6173, 6161)]) := by
  unfold input11119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6173, 6161)])).val
theorem output11119_def : output11119 = (Flapjack.WordLangProgHOL.move 0 [(6173, 6161)]) := by
  unfold output11119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11119_skip : Flapjack.WordAlloc.isSkip output11119 = false := by
  rw [output11119_def]
  conv => lhs; cbv
  try rfl
theorem node11119_eq : Flapjack.WordAlloc.removeDeadStructural input11119 value5563 value1 value2 = (output11119, value5564, value1) := by
  rw [input11119_def, output11119_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11119 input11118)).val
theorem input11120_def : input11120 = (.seq input11119 input11118) := by
  unfold input11120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11119 output11118)).val
theorem output11120_def : output11120 = (.seq output11119 output11118) := by
  unfold output11120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11120_skip : Flapjack.WordAlloc.isSkip output11120 = false := by
  rw [output11120_def]
  conv => lhs; cbv
  try rfl
theorem node11120_eq : Flapjack.WordAlloc.removeDeadStructural input11120 value5 value1 value2 = (output11120, value5564, value1) := by
  rw [input11120_def, output11120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11118_eq]
  dsimp only
  rw [node11119_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5565 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6169 15644892545385841839#64))).val
theorem input11121_def : input11121 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6169 15644892545385841839#64)) := by
  unfold input11121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6169 15644892545385841839#64))).val
theorem output11121_def : output11121 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6169 15644892545385841839#64)) := by
  unfold output11121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11121_skip : Flapjack.WordAlloc.isSkip output11121 = false := by
  rw [output11121_def]
  conv => lhs; cbv
  try rfl
theorem node11121_eq : Flapjack.WordAlloc.removeDeadStructural input11121 value5564 value1 value2 = (output11121, value5565, value1) := by
  rw [input11121_def, output11121_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6165 15644892545385841839#64))).val
theorem input11122_def : input11122 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6165 15644892545385841839#64)) := by
  unfold input11122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11122_def : output11122 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11122_skip : Flapjack.WordAlloc.isSkip output11122 = true := by
  rw [output11122_def]
  conv => lhs; cbv
  try rfl
theorem node11122_eq : Flapjack.WordAlloc.removeDeadStructural input11122 value5565 value1 value2 = (output11122, value5565, value1) := by
  rw [input11122_def, output11122_def]
  try (conv => lhs; cbv)
  try rfl

def value5566 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6161 6157 (Flapjack.WordRegImm.imm 1504#64))))).val
theorem input11123_def : input11123 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6161 6157 (Flapjack.WordRegImm.imm 1504#64)))) := by
  unfold input11123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6161 6157 (Flapjack.WordRegImm.imm 1504#64))))).val
theorem output11123_def : output11123 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6161 6157 (Flapjack.WordRegImm.imm 1504#64)))) := by
  unfold output11123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11123_skip : Flapjack.WordAlloc.isSkip output11123 = false := by
  rw [output11123_def]
  conv => lhs; cbv
  try rfl
theorem node11123_eq : Flapjack.WordAlloc.removeDeadStructural input11123 value5565 value1 value2 = (output11123, value5566, value1) := by
  rw [input11123_def, output11123_def]
  try (conv => lhs; cbv)
  try rfl

def value5567 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6157 (Flapjack.WordLangAddr.addr 6153 18446744073709551104#64)))).val
theorem input11124_def : input11124 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6157 (Flapjack.WordLangAddr.addr 6153 18446744073709551104#64))) := by
  unfold input11124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6157 (Flapjack.WordLangAddr.addr 6153 18446744073709551104#64)))).val
theorem output11124_def : output11124 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6157 (Flapjack.WordLangAddr.addr 6153 18446744073709551104#64))) := by
  unfold output11124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11124_skip : Flapjack.WordAlloc.isSkip output11124 = false := by
  rw [output11124_def]
  conv => lhs; cbv
  try rfl
theorem node11124_eq : Flapjack.WordAlloc.removeDeadStructural input11124 value5566 value1 value2 = (output11124, value5567, value1) := by
  rw [input11124_def, output11124_def]
  try (conv => lhs; cbv)
  try rfl

def value5568 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6153 6149)).val
theorem input11125_def : input11125 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6153 6149) := by
  unfold input11125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6153 6149)).val
theorem output11125_def : output11125 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6153 6149) := by
  unfold output11125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11125_skip : Flapjack.WordAlloc.isSkip output11125 = false := by
  rw [output11125_def]
  conv => lhs; cbv
  try rfl
theorem node11125_eq : Flapjack.WordAlloc.removeDeadStructural input11125 value5567 value1 value2 = (output11125, value5568, value1) := by
  rw [input11125_def, output11125_def]
  try (conv => lhs; cbv)
  try rfl

def value5569 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6149 6145 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11126_def : input11126 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6149 6145 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6149 6145 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11126_def : output11126 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6149 6145 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11126_skip : Flapjack.WordAlloc.isSkip output11126 = false := by
  rw [output11126_def]
  conv => lhs; cbv
  try rfl
theorem node11126_eq : Flapjack.WordAlloc.removeDeadStructural input11126 value5568 value1 value2 = (output11126, value5569, value1) := by
  rw [input11126_def, output11126_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6145 Flapjack.WordStore.heapLength)).val
theorem input11127_def : input11127 = (Flapjack.WordLangProgHOL.get 6145 Flapjack.WordStore.heapLength) := by
  unfold input11127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6145 Flapjack.WordStore.heapLength)).val
theorem output11127_def : output11127 = (Flapjack.WordLangProgHOL.get 6145 Flapjack.WordStore.heapLength) := by
  unfold output11127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11127_skip : Flapjack.WordAlloc.isSkip output11127 = false := by
  rw [output11127_def]
  conv => lhs; cbv
  try rfl
theorem node11127_eq : Flapjack.WordAlloc.removeDeadStructural input11127 value5569 value1 value2 = (output11127, value5, value1) := by
  rw [input11127_def, output11127_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11127 input11126)).val
theorem input11128_def : input11128 = (.seq input11127 input11126) := by
  unfold input11128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11127 output11126)).val
theorem output11128_def : output11128 = (.seq output11127 output11126) := by
  unfold output11128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11128_skip : Flapjack.WordAlloc.isSkip output11128 = false := by
  rw [output11128_def]
  conv => lhs; cbv
  try rfl
theorem node11128_eq : Flapjack.WordAlloc.removeDeadStructural input11128 value5568 value1 value2 = (output11128, value5, value1) := by
  rw [input11128_def, output11128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11126_eq]
  dsimp only
  rw [node11127_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11128 input11125)).val
theorem input11129_def : input11129 = (.seq input11128 input11125) := by
  unfold input11129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11128 output11125)).val
theorem output11129_def : output11129 = (.seq output11128 output11125) := by
  unfold output11129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11129_skip : Flapjack.WordAlloc.isSkip output11129 = false := by
  rw [output11129_def]
  conv => lhs; cbv
  try rfl
theorem node11129_eq : Flapjack.WordAlloc.removeDeadStructural input11129 value5567 value1 value2 = (output11129, value5, value1) := by
  rw [input11129_def, output11129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11125_eq]
  dsimp only
  rw [node11128_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11129 input11124)).val
theorem input11130_def : input11130 = (.seq input11129 input11124) := by
  unfold input11130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11129 output11124)).val
theorem output11130_def : output11130 = (.seq output11129 output11124) := by
  unfold output11130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11130_skip : Flapjack.WordAlloc.isSkip output11130 = false := by
  rw [output11130_def]
  conv => lhs; cbv
  try rfl
theorem node11130_eq : Flapjack.WordAlloc.removeDeadStructural input11130 value5566 value1 value2 = (output11130, value5, value1) := by
  rw [input11130_def, output11130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11124_eq]
  dsimp only
  rw [node11129_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11130 input11123)).val
theorem input11131_def : input11131 = (.seq input11130 input11123) := by
  unfold input11131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11130 output11123)).val
theorem output11131_def : output11131 = (.seq output11130 output11123) := by
  unfold output11131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11131_skip : Flapjack.WordAlloc.isSkip output11131 = false := by
  rw [output11131_def]
  conv => lhs; cbv
  try rfl
theorem node11131_eq : Flapjack.WordAlloc.removeDeadStructural input11131 value5565 value1 value2 = (output11131, value5, value1) := by
  rw [input11131_def, output11131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11123_eq]
  dsimp only
  rw [node11130_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5570 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6137 (Flapjack.WordLangAddr.addr 6141 0#64)))).val
theorem input11132_def : input11132 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6137 (Flapjack.WordLangAddr.addr 6141 0#64))) := by
  unfold input11132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6137 (Flapjack.WordLangAddr.addr 6141 0#64)))).val
theorem output11132_def : output11132 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6137 (Flapjack.WordLangAddr.addr 6141 0#64))) := by
  unfold output11132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11132_skip : Flapjack.WordAlloc.isSkip output11132 = false := by
  rw [output11132_def]
  conv => lhs; cbv
  try rfl
theorem node11132_eq : Flapjack.WordAlloc.removeDeadStructural input11132 value5 value1 value2 = (output11132, value5570, value1) := by
  rw [input11132_def, output11132_def]
  try (conv => lhs; cbv)
  try rfl

def value5571 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6141, 6129)])).val
theorem input11133_def : input11133 = (Flapjack.WordLangProgHOL.move 0 [(6141, 6129)]) := by
  unfold input11133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6141, 6129)])).val
theorem output11133_def : output11133 = (Flapjack.WordLangProgHOL.move 0 [(6141, 6129)]) := by
  unfold output11133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11133_skip : Flapjack.WordAlloc.isSkip output11133 = false := by
  rw [output11133_def]
  conv => lhs; cbv
  try rfl
theorem node11133_eq : Flapjack.WordAlloc.removeDeadStructural input11133 value5570 value1 value2 = (output11133, value5571, value1) := by
  rw [input11133_def, output11133_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11133 input11132)).val
theorem input11134_def : input11134 = (.seq input11133 input11132) := by
  unfold input11134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11133 output11132)).val
theorem output11134_def : output11134 = (.seq output11133 output11132) := by
  unfold output11134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11134_skip : Flapjack.WordAlloc.isSkip output11134 = false := by
  rw [output11134_def]
  conv => lhs; cbv
  try rfl
theorem node11134_eq : Flapjack.WordAlloc.removeDeadStructural input11134 value5 value1 value2 = (output11134, value5571, value1) := by
  rw [input11134_def, output11134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11132_eq]
  dsimp only
  rw [node11133_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5572 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6137 15693976698673184137#64))).val
theorem input11135_def : input11135 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6137 15693976698673184137#64)) := by
  unfold input11135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6137 15693976698673184137#64))).val
theorem output11135_def : output11135 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6137 15693976698673184137#64)) := by
  unfold output11135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11135_skip : Flapjack.WordAlloc.isSkip output11135 = false := by
  rw [output11135_def]
  conv => lhs; cbv
  try rfl
theorem node11135_eq : Flapjack.WordAlloc.removeDeadStructural input11135 value5571 value1 value2 = (output11135, value5572, value1) := by
  rw [input11135_def, output11135_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6133 15693976698673184137#64))).val
theorem input11136_def : input11136 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6133 15693976698673184137#64)) := by
  unfold input11136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11136_def : output11136 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11136_skip : Flapjack.WordAlloc.isSkip output11136 = true := by
  rw [output11136_def]
  conv => lhs; cbv
  try rfl
theorem node11136_eq : Flapjack.WordAlloc.removeDeadStructural input11136 value5572 value1 value2 = (output11136, value5572, value1) := by
  rw [input11136_def, output11136_def]
  try (conv => lhs; cbv)
  try rfl

def value5573 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6129 6125 (Flapjack.WordRegImm.imm 1496#64))))).val
theorem input11137_def : input11137 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6129 6125 (Flapjack.WordRegImm.imm 1496#64)))) := by
  unfold input11137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6129 6125 (Flapjack.WordRegImm.imm 1496#64))))).val
theorem output11137_def : output11137 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6129 6125 (Flapjack.WordRegImm.imm 1496#64)))) := by
  unfold output11137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11137_skip : Flapjack.WordAlloc.isSkip output11137 = false := by
  rw [output11137_def]
  conv => lhs; cbv
  try rfl
theorem node11137_eq : Flapjack.WordAlloc.removeDeadStructural input11137 value5572 value1 value2 = (output11137, value5573, value1) := by
  rw [input11137_def, output11137_def]
  try (conv => lhs; cbv)
  try rfl

def value5574 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6125 (Flapjack.WordLangAddr.addr 6121 18446744073709551104#64)))).val
theorem input11138_def : input11138 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6125 (Flapjack.WordLangAddr.addr 6121 18446744073709551104#64))) := by
  unfold input11138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6125 (Flapjack.WordLangAddr.addr 6121 18446744073709551104#64)))).val
theorem output11138_def : output11138 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6125 (Flapjack.WordLangAddr.addr 6121 18446744073709551104#64))) := by
  unfold output11138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11138_skip : Flapjack.WordAlloc.isSkip output11138 = false := by
  rw [output11138_def]
  conv => lhs; cbv
  try rfl
theorem node11138_eq : Flapjack.WordAlloc.removeDeadStructural input11138 value5573 value1 value2 = (output11138, value5574, value1) := by
  rw [input11138_def, output11138_def]
  try (conv => lhs; cbv)
  try rfl

def value5575 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6121 6117)).val
theorem input11139_def : input11139 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6121 6117) := by
  unfold input11139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6121 6117)).val
theorem output11139_def : output11139 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6121 6117) := by
  unfold output11139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11139_skip : Flapjack.WordAlloc.isSkip output11139 = false := by
  rw [output11139_def]
  conv => lhs; cbv
  try rfl
theorem node11139_eq : Flapjack.WordAlloc.removeDeadStructural input11139 value5574 value1 value2 = (output11139, value5575, value1) := by
  rw [input11139_def, output11139_def]
  try (conv => lhs; cbv)
  try rfl

def value5576 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6117 6113 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11140_def : input11140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6117 6113 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6117 6113 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11140_def : output11140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6117 6113 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11140_skip : Flapjack.WordAlloc.isSkip output11140 = false := by
  rw [output11140_def]
  conv => lhs; cbv
  try rfl
theorem node11140_eq : Flapjack.WordAlloc.removeDeadStructural input11140 value5575 value1 value2 = (output11140, value5576, value1) := by
  rw [input11140_def, output11140_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6113 Flapjack.WordStore.heapLength)).val
theorem input11141_def : input11141 = (Flapjack.WordLangProgHOL.get 6113 Flapjack.WordStore.heapLength) := by
  unfold input11141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6113 Flapjack.WordStore.heapLength)).val
theorem output11141_def : output11141 = (Flapjack.WordLangProgHOL.get 6113 Flapjack.WordStore.heapLength) := by
  unfold output11141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11141_skip : Flapjack.WordAlloc.isSkip output11141 = false := by
  rw [output11141_def]
  conv => lhs; cbv
  try rfl
theorem node11141_eq : Flapjack.WordAlloc.removeDeadStructural input11141 value5576 value1 value2 = (output11141, value5, value1) := by
  rw [input11141_def, output11141_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11141 input11140)).val
theorem input11142_def : input11142 = (.seq input11141 input11140) := by
  unfold input11142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11141 output11140)).val
theorem output11142_def : output11142 = (.seq output11141 output11140) := by
  unfold output11142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11142_skip : Flapjack.WordAlloc.isSkip output11142 = false := by
  rw [output11142_def]
  conv => lhs; cbv
  try rfl
theorem node11142_eq : Flapjack.WordAlloc.removeDeadStructural input11142 value5575 value1 value2 = (output11142, value5, value1) := by
  rw [input11142_def, output11142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11140_eq]
  dsimp only
  rw [node11141_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11142 input11139)).val
theorem input11143_def : input11143 = (.seq input11142 input11139) := by
  unfold input11143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11142 output11139)).val
theorem output11143_def : output11143 = (.seq output11142 output11139) := by
  unfold output11143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11143_skip : Flapjack.WordAlloc.isSkip output11143 = false := by
  rw [output11143_def]
  conv => lhs; cbv
  try rfl
theorem node11143_eq : Flapjack.WordAlloc.removeDeadStructural input11143 value5574 value1 value2 = (output11143, value5, value1) := by
  rw [input11143_def, output11143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11139_eq]
  dsimp only
  rw [node11142_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11143 input11138)).val
theorem input11144_def : input11144 = (.seq input11143 input11138) := by
  unfold input11144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11143 output11138)).val
theorem output11144_def : output11144 = (.seq output11143 output11138) := by
  unfold output11144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11144_skip : Flapjack.WordAlloc.isSkip output11144 = false := by
  rw [output11144_def]
  conv => lhs; cbv
  try rfl
theorem node11144_eq : Flapjack.WordAlloc.removeDeadStructural input11144 value5573 value1 value2 = (output11144, value5, value1) := by
  rw [input11144_def, output11144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11138_eq]
  dsimp only
  rw [node11143_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11144 input11137)).val
theorem input11145_def : input11145 = (.seq input11144 input11137) := by
  unfold input11145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11144 output11137)).val
theorem output11145_def : output11145 = (.seq output11144 output11137) := by
  unfold output11145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11145_skip : Flapjack.WordAlloc.isSkip output11145 = false := by
  rw [output11145_def]
  conv => lhs; cbv
  try rfl
theorem node11145_eq : Flapjack.WordAlloc.removeDeadStructural input11145 value5572 value1 value2 = (output11145, value5, value1) := by
  rw [input11145_def, output11145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11137_eq]
  dsimp only
  rw [node11144_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5577 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6105 (Flapjack.WordLangAddr.addr 6109 0#64)))).val
theorem input11146_def : input11146 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6105 (Flapjack.WordLangAddr.addr 6109 0#64))) := by
  unfold input11146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6105 (Flapjack.WordLangAddr.addr 6109 0#64)))).val
theorem output11146_def : output11146 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6105 (Flapjack.WordLangAddr.addr 6109 0#64))) := by
  unfold output11146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11146_skip : Flapjack.WordAlloc.isSkip output11146 = false := by
  rw [output11146_def]
  conv => lhs; cbv
  try rfl
theorem node11146_eq : Flapjack.WordAlloc.removeDeadStructural input11146 value5 value1 value2 = (output11146, value5577, value1) := by
  rw [input11146_def, output11146_def]
  try (conv => lhs; cbv)
  try rfl

def value5578 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6109, 6097)])).val
theorem input11147_def : input11147 = (Flapjack.WordLangProgHOL.move 0 [(6109, 6097)]) := by
  unfold input11147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6109, 6097)])).val
theorem output11147_def : output11147 = (Flapjack.WordLangProgHOL.move 0 [(6109, 6097)]) := by
  unfold output11147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11147_skip : Flapjack.WordAlloc.isSkip output11147 = false := by
  rw [output11147_def]
  conv => lhs; cbv
  try rfl
theorem node11147_eq : Flapjack.WordAlloc.removeDeadStructural input11147 value5577 value1 value2 = (output11147, value5578, value1) := by
  rw [input11147_def, output11147_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11147 input11146)).val
theorem input11148_def : input11148 = (.seq input11147 input11146) := by
  unfold input11148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11147 output11146)).val
theorem output11148_def : output11148 = (.seq output11147 output11146) := by
  unfold output11148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11148_skip : Flapjack.WordAlloc.isSkip output11148 = false := by
  rw [output11148_def]
  conv => lhs; cbv
  try rfl
theorem node11148_eq : Flapjack.WordAlloc.removeDeadStructural input11148 value5 value1 value2 = (output11148, value5578, value1) := by
  rw [input11148_def, output11148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11146_eq]
  dsimp only
  rw [node11147_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5579 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6105 552535377879302143#64))).val
theorem input11149_def : input11149 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6105 552535377879302143#64)) := by
  unfold input11149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6105 552535377879302143#64))).val
theorem output11149_def : output11149 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6105 552535377879302143#64)) := by
  unfold output11149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11149_skip : Flapjack.WordAlloc.isSkip output11149 = false := by
  rw [output11149_def]
  conv => lhs; cbv
  try rfl
theorem node11149_eq : Flapjack.WordAlloc.removeDeadStructural input11149 value5578 value1 value2 = (output11149, value5579, value1) := by
  rw [input11149_def, output11149_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6101 552535377879302143#64))).val
theorem input11150_def : input11150 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6101 552535377879302143#64)) := by
  unfold input11150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11150_def : output11150 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11150_skip : Flapjack.WordAlloc.isSkip output11150 = true := by
  rw [output11150_def]
  conv => lhs; cbv
  try rfl
theorem node11150_eq : Flapjack.WordAlloc.removeDeadStructural input11150 value5579 value1 value2 = (output11150, value5579, value1) := by
  rw [input11150_def, output11150_def]
  try (conv => lhs; cbv)
  try rfl

def value5580 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6097 6093 (Flapjack.WordRegImm.imm 1488#64))))).val
theorem input11151_def : input11151 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6097 6093 (Flapjack.WordRegImm.imm 1488#64)))) := by
  unfold input11151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6097 6093 (Flapjack.WordRegImm.imm 1488#64))))).val
theorem output11151_def : output11151 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6097 6093 (Flapjack.WordRegImm.imm 1488#64)))) := by
  unfold output11151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11151_skip : Flapjack.WordAlloc.isSkip output11151 = false := by
  rw [output11151_def]
  conv => lhs; cbv
  try rfl
theorem node11151_eq : Flapjack.WordAlloc.removeDeadStructural input11151 value5579 value1 value2 = (output11151, value5580, value1) := by
  rw [input11151_def, output11151_def]
  try (conv => lhs; cbv)
  try rfl

def value5581 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6093 (Flapjack.WordLangAddr.addr 6089 18446744073709551104#64)))).val
theorem input11152_def : input11152 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6093 (Flapjack.WordLangAddr.addr 6089 18446744073709551104#64))) := by
  unfold input11152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6093 (Flapjack.WordLangAddr.addr 6089 18446744073709551104#64)))).val
theorem output11152_def : output11152 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6093 (Flapjack.WordLangAddr.addr 6089 18446744073709551104#64))) := by
  unfold output11152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11152_skip : Flapjack.WordAlloc.isSkip output11152 = false := by
  rw [output11152_def]
  conv => lhs; cbv
  try rfl
theorem node11152_eq : Flapjack.WordAlloc.removeDeadStructural input11152 value5580 value1 value2 = (output11152, value5581, value1) := by
  rw [input11152_def, output11152_def]
  try (conv => lhs; cbv)
  try rfl

def value5582 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6089 6085)).val
theorem input11153_def : input11153 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6089 6085) := by
  unfold input11153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6089 6085)).val
theorem output11153_def : output11153 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6089 6085) := by
  unfold output11153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11153_skip : Flapjack.WordAlloc.isSkip output11153 = false := by
  rw [output11153_def]
  conv => lhs; cbv
  try rfl
theorem node11153_eq : Flapjack.WordAlloc.removeDeadStructural input11153 value5581 value1 value2 = (output11153, value5582, value1) := by
  rw [input11153_def, output11153_def]
  try (conv => lhs; cbv)
  try rfl

def value5583 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6085 6081 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11154_def : input11154 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6085 6081 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6085 6081 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11154_def : output11154 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6085 6081 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11154_skip : Flapjack.WordAlloc.isSkip output11154 = false := by
  rw [output11154_def]
  conv => lhs; cbv
  try rfl
theorem node11154_eq : Flapjack.WordAlloc.removeDeadStructural input11154 value5582 value1 value2 = (output11154, value5583, value1) := by
  rw [input11154_def, output11154_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6081 Flapjack.WordStore.heapLength)).val
theorem input11155_def : input11155 = (Flapjack.WordLangProgHOL.get 6081 Flapjack.WordStore.heapLength) := by
  unfold input11155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6081 Flapjack.WordStore.heapLength)).val
theorem output11155_def : output11155 = (Flapjack.WordLangProgHOL.get 6081 Flapjack.WordStore.heapLength) := by
  unfold output11155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11155_skip : Flapjack.WordAlloc.isSkip output11155 = false := by
  rw [output11155_def]
  conv => lhs; cbv
  try rfl
theorem node11155_eq : Flapjack.WordAlloc.removeDeadStructural input11155 value5583 value1 value2 = (output11155, value5, value1) := by
  rw [input11155_def, output11155_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11155 input11154)).val
theorem input11156_def : input11156 = (.seq input11155 input11154) := by
  unfold input11156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11155 output11154)).val
theorem output11156_def : output11156 = (.seq output11155 output11154) := by
  unfold output11156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11156_skip : Flapjack.WordAlloc.isSkip output11156 = false := by
  rw [output11156_def]
  conv => lhs; cbv
  try rfl
theorem node11156_eq : Flapjack.WordAlloc.removeDeadStructural input11156 value5582 value1 value2 = (output11156, value5, value1) := by
  rw [input11156_def, output11156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11154_eq]
  dsimp only
  rw [node11155_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11156 input11153)).val
theorem input11157_def : input11157 = (.seq input11156 input11153) := by
  unfold input11157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11156 output11153)).val
theorem output11157_def : output11157 = (.seq output11156 output11153) := by
  unfold output11157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11157_skip : Flapjack.WordAlloc.isSkip output11157 = false := by
  rw [output11157_def]
  conv => lhs; cbv
  try rfl
theorem node11157_eq : Flapjack.WordAlloc.removeDeadStructural input11157 value5581 value1 value2 = (output11157, value5, value1) := by
  rw [input11157_def, output11157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11153_eq]
  dsimp only
  rw [node11156_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11157 input11152)).val
theorem input11158_def : input11158 = (.seq input11157 input11152) := by
  unfold input11158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11157 output11152)).val
theorem output11158_def : output11158 = (.seq output11157 output11152) := by
  unfold output11158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11158_skip : Flapjack.WordAlloc.isSkip output11158 = false := by
  rw [output11158_def]
  conv => lhs; cbv
  try rfl
theorem node11158_eq : Flapjack.WordAlloc.removeDeadStructural input11158 value5580 value1 value2 = (output11158, value5, value1) := by
  rw [input11158_def, output11158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11152_eq]
  dsimp only
  rw [node11157_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11158 input11151)).val
theorem input11159_def : input11159 = (.seq input11158 input11151) := by
  unfold input11159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11158 output11151)).val
theorem output11159_def : output11159 = (.seq output11158 output11151) := by
  unfold output11159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11159_skip : Flapjack.WordAlloc.isSkip output11159 = false := by
  rw [output11159_def]
  conv => lhs; cbv
  try rfl
theorem node11159_eq : Flapjack.WordAlloc.removeDeadStructural input11159 value5579 value1 value2 = (output11159, value5, value1) := by
  rw [input11159_def, output11159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11151_eq]
  dsimp only
  rw [node11158_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5584 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6073 (Flapjack.WordLangAddr.addr 6077 0#64)))).val
theorem input11160_def : input11160 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6073 (Flapjack.WordLangAddr.addr 6077 0#64))) := by
  unfold input11160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6073 (Flapjack.WordLangAddr.addr 6077 0#64)))).val
theorem output11160_def : output11160 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6073 (Flapjack.WordLangAddr.addr 6077 0#64))) := by
  unfold output11160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11160_skip : Flapjack.WordAlloc.isSkip output11160 = false := by
  rw [output11160_def]
  conv => lhs; cbv
  try rfl
theorem node11160_eq : Flapjack.WordAlloc.removeDeadStructural input11160 value5 value1 value2 = (output11160, value5584, value1) := by
  rw [input11160_def, output11160_def]
  try (conv => lhs; cbv)
  try rfl

def value5585 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6077, 6065)])).val
theorem input11161_def : input11161 = (Flapjack.WordLangProgHOL.move 0 [(6077, 6065)]) := by
  unfold input11161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6077, 6065)])).val
theorem output11161_def : output11161 = (Flapjack.WordLangProgHOL.move 0 [(6077, 6065)]) := by
  unfold output11161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11161_skip : Flapjack.WordAlloc.isSkip output11161 = false := by
  rw [output11161_def]
  conv => lhs; cbv
  try rfl
theorem node11161_eq : Flapjack.WordAlloc.removeDeadStructural input11161 value5584 value1 value2 = (output11161, value5585, value1) := by
  rw [input11161_def, output11161_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11161 input11160)).val
theorem input11162_def : input11162 = (.seq input11161 input11160) := by
  unfold input11162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11161 output11160)).val
theorem output11162_def : output11162 = (.seq output11161 output11160) := by
  unfold output11162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11162_skip : Flapjack.WordAlloc.isSkip output11162 = false := by
  rw [output11162_def]
  conv => lhs; cbv
  try rfl
theorem node11162_eq : Flapjack.WordAlloc.removeDeadStructural input11162 value5 value1 value2 = (output11162, value5585, value1) := by
  rw [input11162_def, output11162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11160_eq]
  dsimp only
  rw [node11161_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5586 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6073 17185665809301629610#64))).val
theorem input11163_def : input11163 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6073 17185665809301629610#64)) := by
  unfold input11163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6073 17185665809301629610#64))).val
theorem output11163_def : output11163 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6073 17185665809301629610#64)) := by
  unfold output11163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11163_skip : Flapjack.WordAlloc.isSkip output11163 = false := by
  rw [output11163_def]
  conv => lhs; cbv
  try rfl
theorem node11163_eq : Flapjack.WordAlloc.removeDeadStructural input11163 value5585 value1 value2 = (output11163, value5586, value1) := by
  rw [input11163_def, output11163_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6069 17185665809301629610#64))).val
theorem input11164_def : input11164 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6069 17185665809301629610#64)) := by
  unfold input11164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11164_def : output11164 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11164_skip : Flapjack.WordAlloc.isSkip output11164 = true := by
  rw [output11164_def]
  conv => lhs; cbv
  try rfl
theorem node11164_eq : Flapjack.WordAlloc.removeDeadStructural input11164 value5586 value1 value2 = (output11164, value5586, value1) := by
  rw [input11164_def, output11164_def]
  try (conv => lhs; cbv)
  try rfl

def value5587 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6065 6061 (Flapjack.WordRegImm.imm 1480#64))))).val
theorem input11165_def : input11165 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6065 6061 (Flapjack.WordRegImm.imm 1480#64)))) := by
  unfold input11165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6065 6061 (Flapjack.WordRegImm.imm 1480#64))))).val
theorem output11165_def : output11165 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6065 6061 (Flapjack.WordRegImm.imm 1480#64)))) := by
  unfold output11165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11165_skip : Flapjack.WordAlloc.isSkip output11165 = false := by
  rw [output11165_def]
  conv => lhs; cbv
  try rfl
theorem node11165_eq : Flapjack.WordAlloc.removeDeadStructural input11165 value5586 value1 value2 = (output11165, value5587, value1) := by
  rw [input11165_def, output11165_def]
  try (conv => lhs; cbv)
  try rfl

def value5588 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6061 (Flapjack.WordLangAddr.addr 6057 18446744073709551104#64)))).val
theorem input11166_def : input11166 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6061 (Flapjack.WordLangAddr.addr 6057 18446744073709551104#64))) := by
  unfold input11166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6061 (Flapjack.WordLangAddr.addr 6057 18446744073709551104#64)))).val
theorem output11166_def : output11166 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6061 (Flapjack.WordLangAddr.addr 6057 18446744073709551104#64))) := by
  unfold output11166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11166_skip : Flapjack.WordAlloc.isSkip output11166 = false := by
  rw [output11166_def]
  conv => lhs; cbv
  try rfl
theorem node11166_eq : Flapjack.WordAlloc.removeDeadStructural input11166 value5587 value1 value2 = (output11166, value5588, value1) := by
  rw [input11166_def, output11166_def]
  try (conv => lhs; cbv)
  try rfl

def value5589 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6057 6053)).val
theorem input11167_def : input11167 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6057 6053) := by
  unfold input11167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6057 6053)).val
theorem output11167_def : output11167 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6057 6053) := by
  unfold output11167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11167_skip : Flapjack.WordAlloc.isSkip output11167 = false := by
  rw [output11167_def]
  conv => lhs; cbv
  try rfl
theorem node11167_eq : Flapjack.WordAlloc.removeDeadStructural input11167 value5588 value1 value2 = (output11167, value5589, value1) := by
  rw [input11167_def, output11167_def]
  try (conv => lhs; cbv)
  try rfl

def value5590 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6053 6049 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11168_def : input11168 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6053 6049 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6053 6049 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11168_def : output11168 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6053 6049 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11168_skip : Flapjack.WordAlloc.isSkip output11168 = false := by
  rw [output11168_def]
  conv => lhs; cbv
  try rfl
theorem node11168_eq : Flapjack.WordAlloc.removeDeadStructural input11168 value5589 value1 value2 = (output11168, value5590, value1) := by
  rw [input11168_def, output11168_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6049 Flapjack.WordStore.heapLength)).val
theorem input11169_def : input11169 = (Flapjack.WordLangProgHOL.get 6049 Flapjack.WordStore.heapLength) := by
  unfold input11169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6049 Flapjack.WordStore.heapLength)).val
theorem output11169_def : output11169 = (Flapjack.WordLangProgHOL.get 6049 Flapjack.WordStore.heapLength) := by
  unfold output11169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11169_skip : Flapjack.WordAlloc.isSkip output11169 = false := by
  rw [output11169_def]
  conv => lhs; cbv
  try rfl
theorem node11169_eq : Flapjack.WordAlloc.removeDeadStructural input11169 value5590 value1 value2 = (output11169, value5, value1) := by
  rw [input11169_def, output11169_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11169 input11168)).val
theorem input11170_def : input11170 = (.seq input11169 input11168) := by
  unfold input11170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11169 output11168)).val
theorem output11170_def : output11170 = (.seq output11169 output11168) := by
  unfold output11170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11170_skip : Flapjack.WordAlloc.isSkip output11170 = false := by
  rw [output11170_def]
  conv => lhs; cbv
  try rfl
theorem node11170_eq : Flapjack.WordAlloc.removeDeadStructural input11170 value5589 value1 value2 = (output11170, value5, value1) := by
  rw [input11170_def, output11170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11168_eq]
  dsimp only
  rw [node11169_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11170 input11167)).val
theorem input11171_def : input11171 = (.seq input11170 input11167) := by
  unfold input11171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11170 output11167)).val
theorem output11171_def : output11171 = (.seq output11170 output11167) := by
  unfold output11171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11171_skip : Flapjack.WordAlloc.isSkip output11171 = false := by
  rw [output11171_def]
  conv => lhs; cbv
  try rfl
theorem node11171_eq : Flapjack.WordAlloc.removeDeadStructural input11171 value5588 value1 value2 = (output11171, value5, value1) := by
  rw [input11171_def, output11171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11167_eq]
  dsimp only
  rw [node11170_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11171 input11166)).val
theorem input11172_def : input11172 = (.seq input11171 input11166) := by
  unfold input11172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11171 output11166)).val
theorem output11172_def : output11172 = (.seq output11171 output11166) := by
  unfold output11172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11172_skip : Flapjack.WordAlloc.isSkip output11172 = false := by
  rw [output11172_def]
  conv => lhs; cbv
  try rfl
theorem node11172_eq : Flapjack.WordAlloc.removeDeadStructural input11172 value5587 value1 value2 = (output11172, value5, value1) := by
  rw [input11172_def, output11172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11166_eq]
  dsimp only
  rw [node11171_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11172 input11165)).val
theorem input11173_def : input11173 = (.seq input11172 input11165) := by
  unfold input11173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11172 output11165)).val
theorem output11173_def : output11173 = (.seq output11172 output11165) := by
  unfold output11173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11173_skip : Flapjack.WordAlloc.isSkip output11173 = false := by
  rw [output11173_def]
  conv => lhs; cbv
  try rfl
theorem node11173_eq : Flapjack.WordAlloc.removeDeadStructural input11173 value5586 value1 value2 = (output11173, value5, value1) := by
  rw [input11173_def, output11173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11165_eq]
  dsimp only
  rw [node11172_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5591 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6041 (Flapjack.WordLangAddr.addr 6045 0#64)))).val
theorem input11174_def : input11174 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6041 (Flapjack.WordLangAddr.addr 6045 0#64))) := by
  unfold input11174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6041 (Flapjack.WordLangAddr.addr 6045 0#64)))).val
theorem output11174_def : output11174 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6041 (Flapjack.WordLangAddr.addr 6045 0#64))) := by
  unfold output11174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11174_skip : Flapjack.WordAlloc.isSkip output11174 = false := by
  rw [output11174_def]
  conv => lhs; cbv
  try rfl
theorem node11174_eq : Flapjack.WordAlloc.removeDeadStructural input11174 value5 value1 value2 = (output11174, value5591, value1) := by
  rw [input11174_def, output11174_def]
  try (conv => lhs; cbv)
  try rfl

def value5592 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6045, 6033)])).val
theorem input11175_def : input11175 = (Flapjack.WordLangProgHOL.move 0 [(6045, 6033)]) := by
  unfold input11175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6045, 6033)])).val
theorem output11175_def : output11175 = (Flapjack.WordLangProgHOL.move 0 [(6045, 6033)]) := by
  unfold output11175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11175_skip : Flapjack.WordAlloc.isSkip output11175 = false := by
  rw [output11175_def]
  conv => lhs; cbv
  try rfl
theorem node11175_eq : Flapjack.WordAlloc.removeDeadStructural input11175 value5591 value1 value2 = (output11175, value5592, value1) := by
  rw [input11175_def, output11175_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11175 input11174)).val
theorem input11176_def : input11176 = (.seq input11175 input11174) := by
  unfold input11176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11175 output11174)).val
theorem output11176_def : output11176 = (.seq output11175 output11174) := by
  unfold output11176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11176_skip : Flapjack.WordAlloc.isSkip output11176 = false := by
  rw [output11176_def]
  conv => lhs; cbv
  try rfl
theorem node11176_eq : Flapjack.WordAlloc.removeDeadStructural input11176 value5 value1 value2 = (output11176, value5592, value1) := by
  rw [input11176_def, output11176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11174_eq]
  dsimp only
  rw [node11175_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5593 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6041 468449654411884966#64))).val
theorem input11177_def : input11177 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6041 468449654411884966#64)) := by
  unfold input11177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6041 468449654411884966#64))).val
theorem output11177_def : output11177 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6041 468449654411884966#64)) := by
  unfold output11177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11177_skip : Flapjack.WordAlloc.isSkip output11177 = false := by
  rw [output11177_def]
  conv => lhs; cbv
  try rfl
theorem node11177_eq : Flapjack.WordAlloc.removeDeadStructural input11177 value5592 value1 value2 = (output11177, value5593, value1) := by
  rw [input11177_def, output11177_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6037 468449654411884966#64))).val
theorem input11178_def : input11178 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6037 468449654411884966#64)) := by
  unfold input11178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11178_def : output11178 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11178_skip : Flapjack.WordAlloc.isSkip output11178 = true := by
  rw [output11178_def]
  conv => lhs; cbv
  try rfl
theorem node11178_eq : Flapjack.WordAlloc.removeDeadStructural input11178 value5593 value1 value2 = (output11178, value5593, value1) := by
  rw [input11178_def, output11178_def]
  try (conv => lhs; cbv)
  try rfl

def value5594 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6033 6029 (Flapjack.WordRegImm.imm 1472#64))))).val
theorem input11179_def : input11179 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6033 6029 (Flapjack.WordRegImm.imm 1472#64)))) := by
  unfold input11179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6033 6029 (Flapjack.WordRegImm.imm 1472#64))))).val
theorem output11179_def : output11179 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6033 6029 (Flapjack.WordRegImm.imm 1472#64)))) := by
  unfold output11179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11179_skip : Flapjack.WordAlloc.isSkip output11179 = false := by
  rw [output11179_def]
  conv => lhs; cbv
  try rfl
theorem node11179_eq : Flapjack.WordAlloc.removeDeadStructural input11179 value5593 value1 value2 = (output11179, value5594, value1) := by
  rw [input11179_def, output11179_def]
  try (conv => lhs; cbv)
  try rfl

def value5595 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6029 (Flapjack.WordLangAddr.addr 6025 18446744073709551104#64)))).val
theorem input11180_def : input11180 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6029 (Flapjack.WordLangAddr.addr 6025 18446744073709551104#64))) := by
  unfold input11180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6029 (Flapjack.WordLangAddr.addr 6025 18446744073709551104#64)))).val
theorem output11180_def : output11180 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6029 (Flapjack.WordLangAddr.addr 6025 18446744073709551104#64))) := by
  unfold output11180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11180_skip : Flapjack.WordAlloc.isSkip output11180 = false := by
  rw [output11180_def]
  conv => lhs; cbv
  try rfl
theorem node11180_eq : Flapjack.WordAlloc.removeDeadStructural input11180 value5594 value1 value2 = (output11180, value5595, value1) := by
  rw [input11180_def, output11180_def]
  try (conv => lhs; cbv)
  try rfl

def value5596 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6025 6021)).val
theorem input11181_def : input11181 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6025 6021) := by
  unfold input11181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6025 6021)).val
theorem output11181_def : output11181 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6025 6021) := by
  unfold output11181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11181_skip : Flapjack.WordAlloc.isSkip output11181 = false := by
  rw [output11181_def]
  conv => lhs; cbv
  try rfl
theorem node11181_eq : Flapjack.WordAlloc.removeDeadStructural input11181 value5595 value1 value2 = (output11181, value5596, value1) := by
  rw [input11181_def, output11181_def]
  try (conv => lhs; cbv)
  try rfl

def value5597 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6021 6017 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11182_def : input11182 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6021 6017 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6021 6017 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11182_def : output11182 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6021 6017 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11182_skip : Flapjack.WordAlloc.isSkip output11182 = false := by
  rw [output11182_def]
  conv => lhs; cbv
  try rfl
theorem node11182_eq : Flapjack.WordAlloc.removeDeadStructural input11182 value5596 value1 value2 = (output11182, value5597, value1) := by
  rw [input11182_def, output11182_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6017 Flapjack.WordStore.heapLength)).val
theorem input11183_def : input11183 = (Flapjack.WordLangProgHOL.get 6017 Flapjack.WordStore.heapLength) := by
  unfold input11183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 6017 Flapjack.WordStore.heapLength)).val
theorem output11183_def : output11183 = (Flapjack.WordLangProgHOL.get 6017 Flapjack.WordStore.heapLength) := by
  unfold output11183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11183_skip : Flapjack.WordAlloc.isSkip output11183 = false := by
  rw [output11183_def]
  conv => lhs; cbv
  try rfl
theorem node11183_eq : Flapjack.WordAlloc.removeDeadStructural input11183 value5597 value1 value2 = (output11183, value5, value1) := by
  rw [input11183_def, output11183_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11183 input11182)).val
theorem input11184_def : input11184 = (.seq input11183 input11182) := by
  unfold input11184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11183 output11182)).val
theorem output11184_def : output11184 = (.seq output11183 output11182) := by
  unfold output11184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11184_skip : Flapjack.WordAlloc.isSkip output11184 = false := by
  rw [output11184_def]
  conv => lhs; cbv
  try rfl
theorem node11184_eq : Flapjack.WordAlloc.removeDeadStructural input11184 value5596 value1 value2 = (output11184, value5, value1) := by
  rw [input11184_def, output11184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11182_eq]
  dsimp only
  rw [node11183_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11184 input11181)).val
theorem input11185_def : input11185 = (.seq input11184 input11181) := by
  unfold input11185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11184 output11181)).val
theorem output11185_def : output11185 = (.seq output11184 output11181) := by
  unfold output11185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11185_skip : Flapjack.WordAlloc.isSkip output11185 = false := by
  rw [output11185_def]
  conv => lhs; cbv
  try rfl
theorem node11185_eq : Flapjack.WordAlloc.removeDeadStructural input11185 value5595 value1 value2 = (output11185, value5, value1) := by
  rw [input11185_def, output11185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11181_eq]
  dsimp only
  rw [node11184_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11185 input11180)).val
theorem input11186_def : input11186 = (.seq input11185 input11180) := by
  unfold input11186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11185 output11180)).val
theorem output11186_def : output11186 = (.seq output11185 output11180) := by
  unfold output11186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11186_skip : Flapjack.WordAlloc.isSkip output11186 = false := by
  rw [output11186_def]
  conv => lhs; cbv
  try rfl
theorem node11186_eq : Flapjack.WordAlloc.removeDeadStructural input11186 value5594 value1 value2 = (output11186, value5, value1) := by
  rw [input11186_def, output11186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11180_eq]
  dsimp only
  rw [node11185_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11186 input11179)).val
theorem input11187_def : input11187 = (.seq input11186 input11179) := by
  unfold input11187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11186 output11179)).val
theorem output11187_def : output11187 = (.seq output11186 output11179) := by
  unfold output11187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11187_skip : Flapjack.WordAlloc.isSkip output11187 = false := by
  rw [output11187_def]
  conv => lhs; cbv
  try rfl
theorem node11187_eq : Flapjack.WordAlloc.removeDeadStructural input11187 value5593 value1 value2 = (output11187, value5, value1) := by
  rw [input11187_def, output11187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11179_eq]
  dsimp only
  rw [node11186_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5598 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6009 (Flapjack.WordLangAddr.addr 6013 0#64)))).val
theorem input11188_def : input11188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6009 (Flapjack.WordLangAddr.addr 6013 0#64))) := by
  unfold input11188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6009 (Flapjack.WordLangAddr.addr 6013 0#64)))).val
theorem output11188_def : output11188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6009 (Flapjack.WordLangAddr.addr 6013 0#64))) := by
  unfold output11188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11188_skip : Flapjack.WordAlloc.isSkip output11188 = false := by
  rw [output11188_def]
  conv => lhs; cbv
  try rfl
theorem node11188_eq : Flapjack.WordAlloc.removeDeadStructural input11188 value5 value1 value2 = (output11188, value5598, value1) := by
  rw [input11188_def, output11188_def]
  try (conv => lhs; cbv)
  try rfl

def value5599 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6013, 6001)])).val
theorem input11189_def : input11189 = (Flapjack.WordLangProgHOL.move 0 [(6013, 6001)]) := by
  unfold input11189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6013, 6001)])).val
theorem output11189_def : output11189 = (Flapjack.WordLangProgHOL.move 0 [(6013, 6001)]) := by
  unfold output11189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11189_skip : Flapjack.WordAlloc.isSkip output11189 = false := by
  rw [output11189_def]
  conv => lhs; cbv
  try rfl
theorem node11189_eq : Flapjack.WordAlloc.removeDeadStructural input11189 value5598 value1 value2 = (output11189, value5599, value1) := by
  rw [input11189_def, output11189_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11189 input11188)).val
theorem input11190_def : input11190 = (.seq input11189 input11188) := by
  unfold input11190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11189 output11188)).val
theorem output11190_def : output11190 = (.seq output11189 output11188) := by
  unfold output11190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11190_skip : Flapjack.WordAlloc.isSkip output11190 = false := by
  rw [output11190_def]
  conv => lhs; cbv
  try rfl
theorem node11190_eq : Flapjack.WordAlloc.removeDeadStructural input11190 value5 value1 value2 = (output11190, value5599, value1) := by
  rw [input11190_def, output11190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11188_eq]
  dsimp only
  rw [node11189_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5600 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6009 10576397981472451381#64))).val
theorem input11191_def : input11191 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6009 10576397981472451381#64)) := by
  unfold input11191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6009 10576397981472451381#64))).val
theorem output11191_def : output11191 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6009 10576397981472451381#64)) := by
  unfold output11191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11191_skip : Flapjack.WordAlloc.isSkip output11191 = false := by
  rw [output11191_def]
  conv => lhs; cbv
  try rfl
theorem node11191_eq : Flapjack.WordAlloc.removeDeadStructural input11191 value5599 value1 value2 = (output11191, value5600, value1) := by
  rw [input11191_def, output11191_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6005 10576397981472451381#64))).val
theorem input11192_def : input11192 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6005 10576397981472451381#64)) := by
  unfold input11192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11192_def : output11192 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11192_skip : Flapjack.WordAlloc.isSkip output11192 = true := by
  rw [output11192_def]
  conv => lhs; cbv
  try rfl
theorem node11192_eq : Flapjack.WordAlloc.removeDeadStructural input11192 value5600 value1 value2 = (output11192, value5600, value1) := by
  rw [input11192_def, output11192_def]
  try (conv => lhs; cbv)
  try rfl

def value5601 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6001 5997 (Flapjack.WordRegImm.imm 1464#64))))).val
theorem input11193_def : input11193 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6001 5997 (Flapjack.WordRegImm.imm 1464#64)))) := by
  unfold input11193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6001 5997 (Flapjack.WordRegImm.imm 1464#64))))).val
theorem output11193_def : output11193 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6001 5997 (Flapjack.WordRegImm.imm 1464#64)))) := by
  unfold output11193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11193_skip : Flapjack.WordAlloc.isSkip output11193 = false := by
  rw [output11193_def]
  conv => lhs; cbv
  try rfl
theorem node11193_eq : Flapjack.WordAlloc.removeDeadStructural input11193 value5600 value1 value2 = (output11193, value5601, value1) := by
  rw [input11193_def, output11193_def]
  try (conv => lhs; cbv)
  try rfl

def value5602 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5997 (Flapjack.WordLangAddr.addr 5993 18446744073709551104#64)))).val
theorem input11194_def : input11194 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5997 (Flapjack.WordLangAddr.addr 5993 18446744073709551104#64))) := by
  unfold input11194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5997 (Flapjack.WordLangAddr.addr 5993 18446744073709551104#64)))).val
theorem output11194_def : output11194 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5997 (Flapjack.WordLangAddr.addr 5993 18446744073709551104#64))) := by
  unfold output11194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11194_skip : Flapjack.WordAlloc.isSkip output11194 = false := by
  rw [output11194_def]
  conv => lhs; cbv
  try rfl
theorem node11194_eq : Flapjack.WordAlloc.removeDeadStructural input11194 value5601 value1 value2 = (output11194, value5602, value1) := by
  rw [input11194_def, output11194_def]
  try (conv => lhs; cbv)
  try rfl

def value5603 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5993 5989)).val
theorem input11195_def : input11195 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5993 5989) := by
  unfold input11195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5993 5989)).val
theorem output11195_def : output11195 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5993 5989) := by
  unfold output11195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11195_skip : Flapjack.WordAlloc.isSkip output11195 = false := by
  rw [output11195_def]
  conv => lhs; cbv
  try rfl
theorem node11195_eq : Flapjack.WordAlloc.removeDeadStructural input11195 value5602 value1 value2 = (output11195, value5603, value1) := by
  rw [input11195_def, output11195_def]
  try (conv => lhs; cbv)
  try rfl

def value5604 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5989 5985 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11196_def : input11196 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5989 5985 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5989 5985 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11196_def : output11196 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5989 5985 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11196_skip : Flapjack.WordAlloc.isSkip output11196 = false := by
  rw [output11196_def]
  conv => lhs; cbv
  try rfl
theorem node11196_eq : Flapjack.WordAlloc.removeDeadStructural input11196 value5603 value1 value2 = (output11196, value5604, value1) := by
  rw [input11196_def, output11196_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5985 Flapjack.WordStore.heapLength)).val
theorem input11197_def : input11197 = (Flapjack.WordLangProgHOL.get 5985 Flapjack.WordStore.heapLength) := by
  unfold input11197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5985 Flapjack.WordStore.heapLength)).val
theorem output11197_def : output11197 = (Flapjack.WordLangProgHOL.get 5985 Flapjack.WordStore.heapLength) := by
  unfold output11197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11197_skip : Flapjack.WordAlloc.isSkip output11197 = false := by
  rw [output11197_def]
  conv => lhs; cbv
  try rfl
theorem node11197_eq : Flapjack.WordAlloc.removeDeadStructural input11197 value5604 value1 value2 = (output11197, value5, value1) := by
  rw [input11197_def, output11197_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11197 input11196)).val
theorem input11198_def : input11198 = (.seq input11197 input11196) := by
  unfold input11198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11197 output11196)).val
theorem output11198_def : output11198 = (.seq output11197 output11196) := by
  unfold output11198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11198_skip : Flapjack.WordAlloc.isSkip output11198 = false := by
  rw [output11198_def]
  conv => lhs; cbv
  try rfl
theorem node11198_eq : Flapjack.WordAlloc.removeDeadStructural input11198 value5603 value1 value2 = (output11198, value5, value1) := by
  rw [input11198_def, output11198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11196_eq]
  dsimp only
  rw [node11197_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11198 input11195)).val
theorem input11199_def : input11199 = (.seq input11198 input11195) := by
  unfold input11199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11198 output11195)).val
theorem output11199_def : output11199 = (.seq output11198 output11195) := by
  unfold output11199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11199_skip : Flapjack.WordAlloc.isSkip output11199 = false := by
  rw [output11199_def]
  conv => lhs; cbv
  try rfl
theorem node11199_eq : Flapjack.WordAlloc.removeDeadStructural input11199 value5602 value1 value2 = (output11199, value5, value1) := by
  rw [input11199_def, output11199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11195_eq]
  dsimp only
  rw [node11198_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11199 input11194)).val
theorem input11200_def : input11200 = (.seq input11199 input11194) := by
  unfold input11200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11199 output11194)).val
theorem output11200_def : output11200 = (.seq output11199 output11194) := by
  unfold output11200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11200_skip : Flapjack.WordAlloc.isSkip output11200 = false := by
  rw [output11200_def]
  conv => lhs; cbv
  try rfl
theorem node11200_eq : Flapjack.WordAlloc.removeDeadStructural input11200 value5601 value1 value2 = (output11200, value5, value1) := by
  rw [input11200_def, output11200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11194_eq]
  dsimp only
  rw [node11199_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11200 input11193)).val
theorem input11201_def : input11201 = (.seq input11200 input11193) := by
  unfold input11201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11200 output11193)).val
theorem output11201_def : output11201 = (.seq output11200 output11193) := by
  unfold output11201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11201_skip : Flapjack.WordAlloc.isSkip output11201 = false := by
  rw [output11201_def]
  conv => lhs; cbv
  try rfl
theorem node11201_eq : Flapjack.WordAlloc.removeDeadStructural input11201 value5600 value1 value2 = (output11201, value5, value1) := by
  rw [input11201_def, output11201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11193_eq]
  dsimp only
  rw [node11200_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5605 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5977 (Flapjack.WordLangAddr.addr 5981 0#64)))).val
theorem input11202_def : input11202 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5977 (Flapjack.WordLangAddr.addr 5981 0#64))) := by
  unfold input11202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5977 (Flapjack.WordLangAddr.addr 5981 0#64)))).val
theorem output11202_def : output11202 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5977 (Flapjack.WordLangAddr.addr 5981 0#64))) := by
  unfold output11202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11202_skip : Flapjack.WordAlloc.isSkip output11202 = false := by
  rw [output11202_def]
  conv => lhs; cbv
  try rfl
theorem node11202_eq : Flapjack.WordAlloc.removeDeadStructural input11202 value5 value1 value2 = (output11202, value5605, value1) := by
  rw [input11202_def, output11202_def]
  try (conv => lhs; cbv)
  try rfl

def value5606 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5981, 5969)])).val
theorem input11203_def : input11203 = (Flapjack.WordLangProgHOL.move 0 [(5981, 5969)]) := by
  unfold input11203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5981, 5969)])).val
theorem output11203_def : output11203 = (Flapjack.WordLangProgHOL.move 0 [(5981, 5969)]) := by
  unfold output11203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11203_skip : Flapjack.WordAlloc.isSkip output11203 = false := by
  rw [output11203_def]
  conv => lhs; cbv
  try rfl
theorem node11203_eq : Flapjack.WordAlloc.removeDeadStructural input11203 value5605 value1 value2 = (output11203, value5606, value1) := by
  rw [input11203_def, output11203_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11203 input11202)).val
theorem input11204_def : input11204 = (.seq input11203 input11202) := by
  unfold input11204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11203 output11202)).val
theorem output11204_def : output11204 = (.seq output11203 output11202) := by
  unfold output11204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11204_skip : Flapjack.WordAlloc.isSkip output11204 = false := by
  rw [output11204_def]
  conv => lhs; cbv
  try rfl
theorem node11204_eq : Flapjack.WordAlloc.removeDeadStructural input11204 value5 value1 value2 = (output11204, value5606, value1) := by
  rw [input11204_def, output11204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11202_eq]
  dsimp only
  rw [node11203_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5607 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5977 15644892545385841839#64))).val
theorem input11205_def : input11205 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5977 15644892545385841839#64)) := by
  unfold input11205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5977 15644892545385841839#64))).val
theorem output11205_def : output11205 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5977 15644892545385841839#64)) := by
  unfold output11205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11205_skip : Flapjack.WordAlloc.isSkip output11205 = false := by
  rw [output11205_def]
  conv => lhs; cbv
  try rfl
theorem node11205_eq : Flapjack.WordAlloc.removeDeadStructural input11205 value5606 value1 value2 = (output11205, value5607, value1) := by
  rw [input11205_def, output11205_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5973 15644892545385841839#64))).val
theorem input11206_def : input11206 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5973 15644892545385841839#64)) := by
  unfold input11206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11206_def : output11206 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11206_skip : Flapjack.WordAlloc.isSkip output11206 = true := by
  rw [output11206_def]
  conv => lhs; cbv
  try rfl
theorem node11206_eq : Flapjack.WordAlloc.removeDeadStructural input11206 value5607 value1 value2 = (output11206, value5607, value1) := by
  rw [input11206_def, output11206_def]
  try (conv => lhs; cbv)
  try rfl

def value5608 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5969 5965 (Flapjack.WordRegImm.imm 1456#64))))).val
theorem input11207_def : input11207 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5969 5965 (Flapjack.WordRegImm.imm 1456#64)))) := by
  unfold input11207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5969 5965 (Flapjack.WordRegImm.imm 1456#64))))).val
theorem output11207_def : output11207 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5969 5965 (Flapjack.WordRegImm.imm 1456#64)))) := by
  unfold output11207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11207_skip : Flapjack.WordAlloc.isSkip output11207 = false := by
  rw [output11207_def]
  conv => lhs; cbv
  try rfl
theorem node11207_eq : Flapjack.WordAlloc.removeDeadStructural input11207 value5607 value1 value2 = (output11207, value5608, value1) := by
  rw [input11207_def, output11207_def]
  try (conv => lhs; cbv)
  try rfl

def value5609 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5965 (Flapjack.WordLangAddr.addr 5961 18446744073709551104#64)))).val
theorem input11208_def : input11208 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5965 (Flapjack.WordLangAddr.addr 5961 18446744073709551104#64))) := by
  unfold input11208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5965 (Flapjack.WordLangAddr.addr 5961 18446744073709551104#64)))).val
theorem output11208_def : output11208 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5965 (Flapjack.WordLangAddr.addr 5961 18446744073709551104#64))) := by
  unfold output11208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11208_skip : Flapjack.WordAlloc.isSkip output11208 = false := by
  rw [output11208_def]
  conv => lhs; cbv
  try rfl
theorem node11208_eq : Flapjack.WordAlloc.removeDeadStructural input11208 value5608 value1 value2 = (output11208, value5609, value1) := by
  rw [input11208_def, output11208_def]
  try (conv => lhs; cbv)
  try rfl

def value5610 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5961 5957)).val
theorem input11209_def : input11209 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5961 5957) := by
  unfold input11209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5961 5957)).val
theorem output11209_def : output11209 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5961 5957) := by
  unfold output11209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11209_skip : Flapjack.WordAlloc.isSkip output11209 = false := by
  rw [output11209_def]
  conv => lhs; cbv
  try rfl
theorem node11209_eq : Flapjack.WordAlloc.removeDeadStructural input11209 value5609 value1 value2 = (output11209, value5610, value1) := by
  rw [input11209_def, output11209_def]
  try (conv => lhs; cbv)
  try rfl

def value5611 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5957 5953 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11210_def : input11210 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5957 5953 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5957 5953 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11210_def : output11210 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5957 5953 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11210_skip : Flapjack.WordAlloc.isSkip output11210 = false := by
  rw [output11210_def]
  conv => lhs; cbv
  try rfl
theorem node11210_eq : Flapjack.WordAlloc.removeDeadStructural input11210 value5610 value1 value2 = (output11210, value5611, value1) := by
  rw [input11210_def, output11210_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5953 Flapjack.WordStore.heapLength)).val
theorem input11211_def : input11211 = (Flapjack.WordLangProgHOL.get 5953 Flapjack.WordStore.heapLength) := by
  unfold input11211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5953 Flapjack.WordStore.heapLength)).val
theorem output11211_def : output11211 = (Flapjack.WordLangProgHOL.get 5953 Flapjack.WordStore.heapLength) := by
  unfold output11211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11211_skip : Flapjack.WordAlloc.isSkip output11211 = false := by
  rw [output11211_def]
  conv => lhs; cbv
  try rfl
theorem node11211_eq : Flapjack.WordAlloc.removeDeadStructural input11211 value5611 value1 value2 = (output11211, value5, value1) := by
  rw [input11211_def, output11211_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11211 input11210)).val
theorem input11212_def : input11212 = (.seq input11211 input11210) := by
  unfold input11212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11211 output11210)).val
theorem output11212_def : output11212 = (.seq output11211 output11210) := by
  unfold output11212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11212_skip : Flapjack.WordAlloc.isSkip output11212 = false := by
  rw [output11212_def]
  conv => lhs; cbv
  try rfl
theorem node11212_eq : Flapjack.WordAlloc.removeDeadStructural input11212 value5610 value1 value2 = (output11212, value5, value1) := by
  rw [input11212_def, output11212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11210_eq]
  dsimp only
  rw [node11211_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11212 input11209)).val
theorem input11213_def : input11213 = (.seq input11212 input11209) := by
  unfold input11213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11212 output11209)).val
theorem output11213_def : output11213 = (.seq output11212 output11209) := by
  unfold output11213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11213_skip : Flapjack.WordAlloc.isSkip output11213 = false := by
  rw [output11213_def]
  conv => lhs; cbv
  try rfl
theorem node11213_eq : Flapjack.WordAlloc.removeDeadStructural input11213 value5609 value1 value2 = (output11213, value5, value1) := by
  rw [input11213_def, output11213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11209_eq]
  dsimp only
  rw [node11212_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11213 input11208)).val
theorem input11214_def : input11214 = (.seq input11213 input11208) := by
  unfold input11214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11213 output11208)).val
theorem output11214_def : output11214 = (.seq output11213 output11208) := by
  unfold output11214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11214_skip : Flapjack.WordAlloc.isSkip output11214 = false := by
  rw [output11214_def]
  conv => lhs; cbv
  try rfl
theorem node11214_eq : Flapjack.WordAlloc.removeDeadStructural input11214 value5608 value1 value2 = (output11214, value5, value1) := by
  rw [input11214_def, output11214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11208_eq]
  dsimp only
  rw [node11213_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11214 input11207)).val
theorem input11215_def : input11215 = (.seq input11214 input11207) := by
  unfold input11215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11214 output11207)).val
theorem output11215_def : output11215 = (.seq output11214 output11207) := by
  unfold output11215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11215_skip : Flapjack.WordAlloc.isSkip output11215 = false := by
  rw [output11215_def]
  conv => lhs; cbv
  try rfl
theorem node11215_eq : Flapjack.WordAlloc.removeDeadStructural input11215 value5607 value1 value2 = (output11215, value5, value1) := by
  rw [input11215_def, output11215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11207_eq]
  dsimp only
  rw [node11214_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5612 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5945 (Flapjack.WordLangAddr.addr 5949 0#64)))).val
theorem input11216_def : input11216 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5945 (Flapjack.WordLangAddr.addr 5949 0#64))) := by
  unfold input11216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5945 (Flapjack.WordLangAddr.addr 5949 0#64)))).val
theorem output11216_def : output11216 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5945 (Flapjack.WordLangAddr.addr 5949 0#64))) := by
  unfold output11216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11216_skip : Flapjack.WordAlloc.isSkip output11216 = false := by
  rw [output11216_def]
  conv => lhs; cbv
  try rfl
theorem node11216_eq : Flapjack.WordAlloc.removeDeadStructural input11216 value5 value1 value2 = (output11216, value5612, value1) := by
  rw [input11216_def, output11216_def]
  try (conv => lhs; cbv)
  try rfl

def value5613 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5949, 5937)])).val
theorem input11217_def : input11217 = (Flapjack.WordLangProgHOL.move 0 [(5949, 5937)]) := by
  unfold input11217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5949, 5937)])).val
theorem output11217_def : output11217 = (Flapjack.WordLangProgHOL.move 0 [(5949, 5937)]) := by
  unfold output11217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11217_skip : Flapjack.WordAlloc.isSkip output11217 = false := by
  rw [output11217_def]
  conv => lhs; cbv
  try rfl
theorem node11217_eq : Flapjack.WordAlloc.removeDeadStructural input11217 value5612 value1 value2 = (output11217, value5613, value1) := by
  rw [input11217_def, output11217_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11217 input11216)).val
theorem input11218_def : input11218 = (.seq input11217 input11216) := by
  unfold input11218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11217 output11216)).val
theorem output11218_def : output11218 = (.seq output11217 output11216) := by
  unfold output11218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11218_skip : Flapjack.WordAlloc.isSkip output11218 = false := by
  rw [output11218_def]
  conv => lhs; cbv
  try rfl
theorem node11218_eq : Flapjack.WordAlloc.removeDeadStructural input11218 value5 value1 value2 = (output11218, value5613, value1) := by
  rw [input11218_def, output11218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11216_eq]
  dsimp only
  rw [node11217_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5614 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5945 15693976698673184137#64))).val
theorem input11219_def : input11219 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5945 15693976698673184137#64)) := by
  unfold input11219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5945 15693976698673184137#64))).val
theorem output11219_def : output11219 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5945 15693976698673184137#64)) := by
  unfold output11219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11219_skip : Flapjack.WordAlloc.isSkip output11219 = false := by
  rw [output11219_def]
  conv => lhs; cbv
  try rfl
theorem node11219_eq : Flapjack.WordAlloc.removeDeadStructural input11219 value5613 value1 value2 = (output11219, value5614, value1) := by
  rw [input11219_def, output11219_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5941 15693976698673184137#64))).val
theorem input11220_def : input11220 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5941 15693976698673184137#64)) := by
  unfold input11220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11220_def : output11220 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11220_skip : Flapjack.WordAlloc.isSkip output11220 = true := by
  rw [output11220_def]
  conv => lhs; cbv
  try rfl
theorem node11220_eq : Flapjack.WordAlloc.removeDeadStructural input11220 value5614 value1 value2 = (output11220, value5614, value1) := by
  rw [input11220_def, output11220_def]
  try (conv => lhs; cbv)
  try rfl

def value5615 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5937 5933 (Flapjack.WordRegImm.imm 1448#64))))).val
theorem input11221_def : input11221 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5937 5933 (Flapjack.WordRegImm.imm 1448#64)))) := by
  unfold input11221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5937 5933 (Flapjack.WordRegImm.imm 1448#64))))).val
theorem output11221_def : output11221 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5937 5933 (Flapjack.WordRegImm.imm 1448#64)))) := by
  unfold output11221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11221_skip : Flapjack.WordAlloc.isSkip output11221 = false := by
  rw [output11221_def]
  conv => lhs; cbv
  try rfl
theorem node11221_eq : Flapjack.WordAlloc.removeDeadStructural input11221 value5614 value1 value2 = (output11221, value5615, value1) := by
  rw [input11221_def, output11221_def]
  try (conv => lhs; cbv)
  try rfl

def value5616 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5933 (Flapjack.WordLangAddr.addr 5929 18446744073709551104#64)))).val
theorem input11222_def : input11222 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5933 (Flapjack.WordLangAddr.addr 5929 18446744073709551104#64))) := by
  unfold input11222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5933 (Flapjack.WordLangAddr.addr 5929 18446744073709551104#64)))).val
theorem output11222_def : output11222 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5933 (Flapjack.WordLangAddr.addr 5929 18446744073709551104#64))) := by
  unfold output11222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11222_skip : Flapjack.WordAlloc.isSkip output11222 = false := by
  rw [output11222_def]
  conv => lhs; cbv
  try rfl
theorem node11222_eq : Flapjack.WordAlloc.removeDeadStructural input11222 value5615 value1 value2 = (output11222, value5616, value1) := by
  rw [input11222_def, output11222_def]
  try (conv => lhs; cbv)
  try rfl

def value5617 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5929 5925)).val
theorem input11223_def : input11223 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5929 5925) := by
  unfold input11223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5929 5925)).val
theorem output11223_def : output11223 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5929 5925) := by
  unfold output11223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11223_skip : Flapjack.WordAlloc.isSkip output11223 = false := by
  rw [output11223_def]
  conv => lhs; cbv
  try rfl
theorem node11223_eq : Flapjack.WordAlloc.removeDeadStructural input11223 value5616 value1 value2 = (output11223, value5617, value1) := by
  rw [input11223_def, output11223_def]
  try (conv => lhs; cbv)
  try rfl

def value5618 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5925 5921 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11224_def : input11224 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5925 5921 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5925 5921 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11224_def : output11224 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5925 5921 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11224_skip : Flapjack.WordAlloc.isSkip output11224 = false := by
  rw [output11224_def]
  conv => lhs; cbv
  try rfl
theorem node11224_eq : Flapjack.WordAlloc.removeDeadStructural input11224 value5617 value1 value2 = (output11224, value5618, value1) := by
  rw [input11224_def, output11224_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5921 Flapjack.WordStore.heapLength)).val
theorem input11225_def : input11225 = (Flapjack.WordLangProgHOL.get 5921 Flapjack.WordStore.heapLength) := by
  unfold input11225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5921 Flapjack.WordStore.heapLength)).val
theorem output11225_def : output11225 = (Flapjack.WordLangProgHOL.get 5921 Flapjack.WordStore.heapLength) := by
  unfold output11225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11225_skip : Flapjack.WordAlloc.isSkip output11225 = false := by
  rw [output11225_def]
  conv => lhs; cbv
  try rfl
theorem node11225_eq : Flapjack.WordAlloc.removeDeadStructural input11225 value5618 value1 value2 = (output11225, value5, value1) := by
  rw [input11225_def, output11225_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11225 input11224)).val
theorem input11226_def : input11226 = (.seq input11225 input11224) := by
  unfold input11226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11225 output11224)).val
theorem output11226_def : output11226 = (.seq output11225 output11224) := by
  unfold output11226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11226_skip : Flapjack.WordAlloc.isSkip output11226 = false := by
  rw [output11226_def]
  conv => lhs; cbv
  try rfl
theorem node11226_eq : Flapjack.WordAlloc.removeDeadStructural input11226 value5617 value1 value2 = (output11226, value5, value1) := by
  rw [input11226_def, output11226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11224_eq]
  dsimp only
  rw [node11225_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11226 input11223)).val
theorem input11227_def : input11227 = (.seq input11226 input11223) := by
  unfold input11227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11226 output11223)).val
theorem output11227_def : output11227 = (.seq output11226 output11223) := by
  unfold output11227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11227_skip : Flapjack.WordAlloc.isSkip output11227 = false := by
  rw [output11227_def]
  conv => lhs; cbv
  try rfl
theorem node11227_eq : Flapjack.WordAlloc.removeDeadStructural input11227 value5616 value1 value2 = (output11227, value5, value1) := by
  rw [input11227_def, output11227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11223_eq]
  dsimp only
  rw [node11226_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11227 input11222)).val
theorem input11228_def : input11228 = (.seq input11227 input11222) := by
  unfold input11228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11227 output11222)).val
theorem output11228_def : output11228 = (.seq output11227 output11222) := by
  unfold output11228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11228_skip : Flapjack.WordAlloc.isSkip output11228 = false := by
  rw [output11228_def]
  conv => lhs; cbv
  try rfl
theorem node11228_eq : Flapjack.WordAlloc.removeDeadStructural input11228 value5615 value1 value2 = (output11228, value5, value1) := by
  rw [input11228_def, output11228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11222_eq]
  dsimp only
  rw [node11227_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11228 input11221)).val
theorem input11229_def : input11229 = (.seq input11228 input11221) := by
  unfold input11229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11228 output11221)).val
theorem output11229_def : output11229 = (.seq output11228 output11221) := by
  unfold output11229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11229_skip : Flapjack.WordAlloc.isSkip output11229 = false := by
  rw [output11229_def]
  conv => lhs; cbv
  try rfl
theorem node11229_eq : Flapjack.WordAlloc.removeDeadStructural input11229 value5614 value1 value2 = (output11229, value5, value1) := by
  rw [input11229_def, output11229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11221_eq]
  dsimp only
  rw [node11228_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5619 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5913 (Flapjack.WordLangAddr.addr 5917 0#64)))).val
theorem input11230_def : input11230 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5913 (Flapjack.WordLangAddr.addr 5917 0#64))) := by
  unfold input11230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5913 (Flapjack.WordLangAddr.addr 5917 0#64)))).val
theorem output11230_def : output11230 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5913 (Flapjack.WordLangAddr.addr 5917 0#64))) := by
  unfold output11230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11230_skip : Flapjack.WordAlloc.isSkip output11230 = false := by
  rw [output11230_def]
  conv => lhs; cbv
  try rfl
theorem node11230_eq : Flapjack.WordAlloc.removeDeadStructural input11230 value5 value1 value2 = (output11230, value5619, value1) := by
  rw [input11230_def, output11230_def]
  try (conv => lhs; cbv)
  try rfl

def value5620 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5917, 5905)])).val
theorem input11231_def : input11231 = (Flapjack.WordLangProgHOL.move 0 [(5917, 5905)]) := by
  unfold input11231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5917, 5905)])).val
theorem output11231_def : output11231 = (Flapjack.WordLangProgHOL.move 0 [(5917, 5905)]) := by
  unfold output11231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11231_skip : Flapjack.WordAlloc.isSkip output11231 = false := by
  rw [output11231_def]
  conv => lhs; cbv
  try rfl
theorem node11231_eq : Flapjack.WordAlloc.removeDeadStructural input11231 value5619 value1 value2 = (output11231, value5620, value1) := by
  rw [input11231_def, output11231_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11231 input11230)).val
theorem input11232_def : input11232 = (.seq input11231 input11230) := by
  unfold input11232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11231 output11230)).val
theorem output11232_def : output11232 = (.seq output11231 output11230) := by
  unfold output11232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11232_skip : Flapjack.WordAlloc.isSkip output11232 = false := by
  rw [output11232_def]
  conv => lhs; cbv
  try rfl
theorem node11232_eq : Flapjack.WordAlloc.removeDeadStructural input11232 value5 value1 value2 = (output11232, value5620, value1) := by
  rw [input11232_def, output11232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11230_eq]
  dsimp only
  rw [node11231_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5621 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5913 552535377879302143#64))).val
theorem input11233_def : input11233 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5913 552535377879302143#64)) := by
  unfold input11233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5913 552535377879302143#64))).val
theorem output11233_def : output11233 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5913 552535377879302143#64)) := by
  unfold output11233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11233_skip : Flapjack.WordAlloc.isSkip output11233 = false := by
  rw [output11233_def]
  conv => lhs; cbv
  try rfl
theorem node11233_eq : Flapjack.WordAlloc.removeDeadStructural input11233 value5620 value1 value2 = (output11233, value5621, value1) := by
  rw [input11233_def, output11233_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5909 552535377879302143#64))).val
theorem input11234_def : input11234 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5909 552535377879302143#64)) := by
  unfold input11234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11234_def : output11234 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11234_skip : Flapjack.WordAlloc.isSkip output11234 = true := by
  rw [output11234_def]
  conv => lhs; cbv
  try rfl
theorem node11234_eq : Flapjack.WordAlloc.removeDeadStructural input11234 value5621 value1 value2 = (output11234, value5621, value1) := by
  rw [input11234_def, output11234_def]
  try (conv => lhs; cbv)
  try rfl

def value5622 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5905 5901 (Flapjack.WordRegImm.imm 1440#64))))).val
theorem input11235_def : input11235 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5905 5901 (Flapjack.WordRegImm.imm 1440#64)))) := by
  unfold input11235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5905 5901 (Flapjack.WordRegImm.imm 1440#64))))).val
theorem output11235_def : output11235 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5905 5901 (Flapjack.WordRegImm.imm 1440#64)))) := by
  unfold output11235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11235_skip : Flapjack.WordAlloc.isSkip output11235 = false := by
  rw [output11235_def]
  conv => lhs; cbv
  try rfl
theorem node11235_eq : Flapjack.WordAlloc.removeDeadStructural input11235 value5621 value1 value2 = (output11235, value5622, value1) := by
  rw [input11235_def, output11235_def]
  try (conv => lhs; cbv)
  try rfl

def value5623 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5901 (Flapjack.WordLangAddr.addr 5897 18446744073709551104#64)))).val
theorem input11236_def : input11236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5901 (Flapjack.WordLangAddr.addr 5897 18446744073709551104#64))) := by
  unfold input11236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5901 (Flapjack.WordLangAddr.addr 5897 18446744073709551104#64)))).val
theorem output11236_def : output11236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5901 (Flapjack.WordLangAddr.addr 5897 18446744073709551104#64))) := by
  unfold output11236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11236_skip : Flapjack.WordAlloc.isSkip output11236 = false := by
  rw [output11236_def]
  conv => lhs; cbv
  try rfl
theorem node11236_eq : Flapjack.WordAlloc.removeDeadStructural input11236 value5622 value1 value2 = (output11236, value5623, value1) := by
  rw [input11236_def, output11236_def]
  try (conv => lhs; cbv)
  try rfl

def value5624 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5897 5893)).val
theorem input11237_def : input11237 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5897 5893) := by
  unfold input11237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5897 5893)).val
theorem output11237_def : output11237 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5897 5893) := by
  unfold output11237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11237_skip : Flapjack.WordAlloc.isSkip output11237 = false := by
  rw [output11237_def]
  conv => lhs; cbv
  try rfl
theorem node11237_eq : Flapjack.WordAlloc.removeDeadStructural input11237 value5623 value1 value2 = (output11237, value5624, value1) := by
  rw [input11237_def, output11237_def]
  try (conv => lhs; cbv)
  try rfl

def value5625 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5893 5889 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11238_def : input11238 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5893 5889 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5893 5889 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11238_def : output11238 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5893 5889 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11238_skip : Flapjack.WordAlloc.isSkip output11238 = false := by
  rw [output11238_def]
  conv => lhs; cbv
  try rfl
theorem node11238_eq : Flapjack.WordAlloc.removeDeadStructural input11238 value5624 value1 value2 = (output11238, value5625, value1) := by
  rw [input11238_def, output11238_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5889 Flapjack.WordStore.heapLength)).val
theorem input11239_def : input11239 = (Flapjack.WordLangProgHOL.get 5889 Flapjack.WordStore.heapLength) := by
  unfold input11239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5889 Flapjack.WordStore.heapLength)).val
theorem output11239_def : output11239 = (Flapjack.WordLangProgHOL.get 5889 Flapjack.WordStore.heapLength) := by
  unfold output11239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11239_skip : Flapjack.WordAlloc.isSkip output11239 = false := by
  rw [output11239_def]
  conv => lhs; cbv
  try rfl
theorem node11239_eq : Flapjack.WordAlloc.removeDeadStructural input11239 value5625 value1 value2 = (output11239, value5, value1) := by
  rw [input11239_def, output11239_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11239 input11238)).val
theorem input11240_def : input11240 = (.seq input11239 input11238) := by
  unfold input11240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11239 output11238)).val
theorem output11240_def : output11240 = (.seq output11239 output11238) := by
  unfold output11240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11240_skip : Flapjack.WordAlloc.isSkip output11240 = false := by
  rw [output11240_def]
  conv => lhs; cbv
  try rfl
theorem node11240_eq : Flapjack.WordAlloc.removeDeadStructural input11240 value5624 value1 value2 = (output11240, value5, value1) := by
  rw [input11240_def, output11240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11238_eq]
  dsimp only
  rw [node11239_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11240 input11237)).val
theorem input11241_def : input11241 = (.seq input11240 input11237) := by
  unfold input11241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11240 output11237)).val
theorem output11241_def : output11241 = (.seq output11240 output11237) := by
  unfold output11241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11241_skip : Flapjack.WordAlloc.isSkip output11241 = false := by
  rw [output11241_def]
  conv => lhs; cbv
  try rfl
theorem node11241_eq : Flapjack.WordAlloc.removeDeadStructural input11241 value5623 value1 value2 = (output11241, value5, value1) := by
  rw [input11241_def, output11241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11237_eq]
  dsimp only
  rw [node11240_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11241 input11236)).val
theorem input11242_def : input11242 = (.seq input11241 input11236) := by
  unfold input11242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11241 output11236)).val
theorem output11242_def : output11242 = (.seq output11241 output11236) := by
  unfold output11242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11242_skip : Flapjack.WordAlloc.isSkip output11242 = false := by
  rw [output11242_def]
  conv => lhs; cbv
  try rfl
theorem node11242_eq : Flapjack.WordAlloc.removeDeadStructural input11242 value5622 value1 value2 = (output11242, value5, value1) := by
  rw [input11242_def, output11242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11236_eq]
  dsimp only
  rw [node11241_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11242 input11235)).val
theorem input11243_def : input11243 = (.seq input11242 input11235) := by
  unfold input11243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11242 output11235)).val
theorem output11243_def : output11243 = (.seq output11242 output11235) := by
  unfold output11243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11243_skip : Flapjack.WordAlloc.isSkip output11243 = false := by
  rw [output11243_def]
  conv => lhs; cbv
  try rfl
theorem node11243_eq : Flapjack.WordAlloc.removeDeadStructural input11243 value5621 value1 value2 = (output11243, value5, value1) := by
  rw [input11243_def, output11243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11235_eq]
  dsimp only
  rw [node11242_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5626 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5881 (Flapjack.WordLangAddr.addr 5885 0#64)))).val
theorem input11244_def : input11244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5881 (Flapjack.WordLangAddr.addr 5885 0#64))) := by
  unfold input11244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5881 (Flapjack.WordLangAddr.addr 5885 0#64)))).val
theorem output11244_def : output11244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5881 (Flapjack.WordLangAddr.addr 5885 0#64))) := by
  unfold output11244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11244_skip : Flapjack.WordAlloc.isSkip output11244 = false := by
  rw [output11244_def]
  conv => lhs; cbv
  try rfl
theorem node11244_eq : Flapjack.WordAlloc.removeDeadStructural input11244 value5 value1 value2 = (output11244, value5626, value1) := by
  rw [input11244_def, output11244_def]
  try (conv => lhs; cbv)
  try rfl

def value5627 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5885, 5873)])).val
theorem input11245_def : input11245 = (Flapjack.WordLangProgHOL.move 0 [(5885, 5873)]) := by
  unfold input11245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5885, 5873)])).val
theorem output11245_def : output11245 = (Flapjack.WordLangProgHOL.move 0 [(5885, 5873)]) := by
  unfold output11245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11245_skip : Flapjack.WordAlloc.isSkip output11245 = false := by
  rw [output11245_def]
  conv => lhs; cbv
  try rfl
theorem node11245_eq : Flapjack.WordAlloc.removeDeadStructural input11245 value5626 value1 value2 = (output11245, value5627, value1) := by
  rw [input11245_def, output11245_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11245 input11244)).val
theorem input11246_def : input11246 = (.seq input11245 input11244) := by
  unfold input11246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11245 output11244)).val
theorem output11246_def : output11246 = (.seq output11245 output11244) := by
  unfold output11246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11246_skip : Flapjack.WordAlloc.isSkip output11246 = false := by
  rw [output11246_def]
  conv => lhs; cbv
  try rfl
theorem node11246_eq : Flapjack.WordAlloc.removeDeadStructural input11246 value5 value1 value2 = (output11246, value5627, value1) := by
  rw [input11246_def, output11246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11244_eq]
  dsimp only
  rw [node11245_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5628 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5881 17185665809301629611#64))).val
theorem input11247_def : input11247 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5881 17185665809301629611#64)) := by
  unfold input11247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5881 17185665809301629611#64))).val
theorem output11247_def : output11247 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5881 17185665809301629611#64)) := by
  unfold output11247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11247_skip : Flapjack.WordAlloc.isSkip output11247 = false := by
  rw [output11247_def]
  conv => lhs; cbv
  try rfl
theorem node11247_eq : Flapjack.WordAlloc.removeDeadStructural input11247 value5627 value1 value2 = (output11247, value5628, value1) := by
  rw [input11247_def, output11247_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5877 17185665809301629611#64))).val
theorem input11248_def : input11248 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5877 17185665809301629611#64)) := by
  unfold input11248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11248_def : output11248 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11248_skip : Flapjack.WordAlloc.isSkip output11248 = true := by
  rw [output11248_def]
  conv => lhs; cbv
  try rfl
theorem node11248_eq : Flapjack.WordAlloc.removeDeadStructural input11248 value5628 value1 value2 = (output11248, value5628, value1) := by
  rw [input11248_def, output11248_def]
  try (conv => lhs; cbv)
  try rfl

def value5629 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5873 5869 (Flapjack.WordRegImm.imm 1432#64))))).val
theorem input11249_def : input11249 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5873 5869 (Flapjack.WordRegImm.imm 1432#64)))) := by
  unfold input11249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5873 5869 (Flapjack.WordRegImm.imm 1432#64))))).val
theorem output11249_def : output11249 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5873 5869 (Flapjack.WordRegImm.imm 1432#64)))) := by
  unfold output11249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11249_skip : Flapjack.WordAlloc.isSkip output11249 = false := by
  rw [output11249_def]
  conv => lhs; cbv
  try rfl
theorem node11249_eq : Flapjack.WordAlloc.removeDeadStructural input11249 value5628 value1 value2 = (output11249, value5629, value1) := by
  rw [input11249_def, output11249_def]
  try (conv => lhs; cbv)
  try rfl

def value5630 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5869 (Flapjack.WordLangAddr.addr 5865 18446744073709551104#64)))).val
theorem input11250_def : input11250 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5869 (Flapjack.WordLangAddr.addr 5865 18446744073709551104#64))) := by
  unfold input11250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5869 (Flapjack.WordLangAddr.addr 5865 18446744073709551104#64)))).val
theorem output11250_def : output11250 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5869 (Flapjack.WordLangAddr.addr 5865 18446744073709551104#64))) := by
  unfold output11250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11250_skip : Flapjack.WordAlloc.isSkip output11250 = false := by
  rw [output11250_def]
  conv => lhs; cbv
  try rfl
theorem node11250_eq : Flapjack.WordAlloc.removeDeadStructural input11250 value5629 value1 value2 = (output11250, value5630, value1) := by
  rw [input11250_def, output11250_def]
  try (conv => lhs; cbv)
  try rfl

def value5631 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5865 5861)).val
theorem input11251_def : input11251 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5865 5861) := by
  unfold input11251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5865 5861)).val
theorem output11251_def : output11251 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5865 5861) := by
  unfold output11251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11251_skip : Flapjack.WordAlloc.isSkip output11251 = false := by
  rw [output11251_def]
  conv => lhs; cbv
  try rfl
theorem node11251_eq : Flapjack.WordAlloc.removeDeadStructural input11251 value5630 value1 value2 = (output11251, value5631, value1) := by
  rw [input11251_def, output11251_def]
  try (conv => lhs; cbv)
  try rfl

def value5632 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5861 5857 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11252_def : input11252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5861 5857 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5861 5857 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11252_def : output11252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5861 5857 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11252_skip : Flapjack.WordAlloc.isSkip output11252 = false := by
  rw [output11252_def]
  conv => lhs; cbv
  try rfl
theorem node11252_eq : Flapjack.WordAlloc.removeDeadStructural input11252 value5631 value1 value2 = (output11252, value5632, value1) := by
  rw [input11252_def, output11252_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5857 Flapjack.WordStore.heapLength)).val
theorem input11253_def : input11253 = (Flapjack.WordLangProgHOL.get 5857 Flapjack.WordStore.heapLength) := by
  unfold input11253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5857 Flapjack.WordStore.heapLength)).val
theorem output11253_def : output11253 = (Flapjack.WordLangProgHOL.get 5857 Flapjack.WordStore.heapLength) := by
  unfold output11253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11253_skip : Flapjack.WordAlloc.isSkip output11253 = false := by
  rw [output11253_def]
  conv => lhs; cbv
  try rfl
theorem node11253_eq : Flapjack.WordAlloc.removeDeadStructural input11253 value5632 value1 value2 = (output11253, value5, value1) := by
  rw [input11253_def, output11253_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11253 input11252)).val
theorem input11254_def : input11254 = (.seq input11253 input11252) := by
  unfold input11254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11253 output11252)).val
theorem output11254_def : output11254 = (.seq output11253 output11252) := by
  unfold output11254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11254_skip : Flapjack.WordAlloc.isSkip output11254 = false := by
  rw [output11254_def]
  conv => lhs; cbv
  try rfl
theorem node11254_eq : Flapjack.WordAlloc.removeDeadStructural input11254 value5631 value1 value2 = (output11254, value5, value1) := by
  rw [input11254_def, output11254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11252_eq]
  dsimp only
  rw [node11253_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11254 input11251)).val
theorem input11255_def : input11255 = (.seq input11254 input11251) := by
  unfold input11255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11254 output11251)).val
theorem output11255_def : output11255 = (.seq output11254 output11251) := by
  unfold output11255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11255_skip : Flapjack.WordAlloc.isSkip output11255 = false := by
  rw [output11255_def]
  conv => lhs; cbv
  try rfl
theorem node11255_eq : Flapjack.WordAlloc.removeDeadStructural input11255 value5630 value1 value2 = (output11255, value5, value1) := by
  rw [input11255_def, output11255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11251_eq]
  dsimp only
  rw [node11254_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11255 input11250)).val
theorem input11256_def : input11256 = (.seq input11255 input11250) := by
  unfold input11256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11255 output11250)).val
theorem output11256_def : output11256 = (.seq output11255 output11250) := by
  unfold output11256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11256_skip : Flapjack.WordAlloc.isSkip output11256 = false := by
  rw [output11256_def]
  conv => lhs; cbv
  try rfl
theorem node11256_eq : Flapjack.WordAlloc.removeDeadStructural input11256 value5629 value1 value2 = (output11256, value5, value1) := by
  rw [input11256_def, output11256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11250_eq]
  dsimp only
  rw [node11255_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11256 input11249)).val
theorem input11257_def : input11257 = (.seq input11256 input11249) := by
  unfold input11257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11256 output11249)).val
theorem output11257_def : output11257 = (.seq output11256 output11249) := by
  unfold output11257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11257_skip : Flapjack.WordAlloc.isSkip output11257 = false := by
  rw [output11257_def]
  conv => lhs; cbv
  try rfl
theorem node11257_eq : Flapjack.WordAlloc.removeDeadStructural input11257 value5628 value1 value2 = (output11257, value5, value1) := by
  rw [input11257_def, output11257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11249_eq]
  dsimp only
  rw [node11256_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5633 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5849 (Flapjack.WordLangAddr.addr 5853 0#64)))).val
theorem input11258_def : input11258 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5849 (Flapjack.WordLangAddr.addr 5853 0#64))) := by
  unfold input11258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5849 (Flapjack.WordLangAddr.addr 5853 0#64)))).val
theorem output11258_def : output11258 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5849 (Flapjack.WordLangAddr.addr 5853 0#64))) := by
  unfold output11258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11258_skip : Flapjack.WordAlloc.isSkip output11258 = false := by
  rw [output11258_def]
  conv => lhs; cbv
  try rfl
theorem node11258_eq : Flapjack.WordAlloc.removeDeadStructural input11258 value5 value1 value2 = (output11258, value5633, value1) := by
  rw [input11258_def, output11258_def]
  try (conv => lhs; cbv)
  try rfl

def value5634 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5853, 5841)])).val
theorem input11259_def : input11259 = (Flapjack.WordLangProgHOL.move 0 [(5853, 5841)]) := by
  unfold input11259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5853, 5841)])).val
theorem output11259_def : output11259 = (Flapjack.WordLangProgHOL.move 0 [(5853, 5841)]) := by
  unfold output11259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11259_skip : Flapjack.WordAlloc.isSkip output11259 = false := by
  rw [output11259_def]
  conv => lhs; cbv
  try rfl
theorem node11259_eq : Flapjack.WordAlloc.removeDeadStructural input11259 value5633 value1 value2 = (output11259, value5634, value1) := by
  rw [input11259_def, output11259_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11259 input11258)).val
theorem input11260_def : input11260 = (.seq input11259 input11258) := by
  unfold input11260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11259 output11258)).val
theorem output11260_def : output11260 = (.seq output11259 output11258) := by
  unfold output11260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11260_skip : Flapjack.WordAlloc.isSkip output11260 = false := by
  rw [output11260_def]
  conv => lhs; cbv
  try rfl
theorem node11260_eq : Flapjack.WordAlloc.removeDeadStructural input11260 value5 value1 value2 = (output11260, value5634, value1) := by
  rw [input11260_def, output11260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11258_eq]
  dsimp only
  rw [node11259_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5635 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5849 1873798617647539866#64))).val
theorem input11261_def : input11261 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5849 1873798617647539866#64)) := by
  unfold input11261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5849 1873798617647539866#64))).val
theorem output11261_def : output11261 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5849 1873798617647539866#64)) := by
  unfold output11261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11261_skip : Flapjack.WordAlloc.isSkip output11261 = false := by
  rw [output11261_def]
  conv => lhs; cbv
  try rfl
theorem node11261_eq : Flapjack.WordAlloc.removeDeadStructural input11261 value5634 value1 value2 = (output11261, value5635, value1) := by
  rw [input11261_def, output11261_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5845 1873798617647539866#64))).val
theorem input11262_def : input11262 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5845 1873798617647539866#64)) := by
  unfold input11262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11262_def : output11262 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11262_skip : Flapjack.WordAlloc.isSkip output11262 = true := by
  rw [output11262_def]
  conv => lhs; cbv
  try rfl
theorem node11262_eq : Flapjack.WordAlloc.removeDeadStructural input11262 value5635 value1 value2 = (output11262, value5635, value1) := by
  rw [input11262_def, output11262_def]
  try (conv => lhs; cbv)
  try rfl

def value5636 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5841 5837 (Flapjack.WordRegImm.imm 1424#64))))).val
theorem input11263_def : input11263 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5841 5837 (Flapjack.WordRegImm.imm 1424#64)))) := by
  unfold input11263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5841 5837 (Flapjack.WordRegImm.imm 1424#64))))).val
theorem output11263_def : output11263 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5841 5837 (Flapjack.WordRegImm.imm 1424#64)))) := by
  unfold output11263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11263_skip : Flapjack.WordAlloc.isSkip output11263 = false := by
  rw [output11263_def]
  conv => lhs; cbv
  try rfl
theorem node11263_eq : Flapjack.WordAlloc.removeDeadStructural input11263 value5635 value1 value2 = (output11263, value5636, value1) := by
  rw [input11263_def, output11263_def]
  try (conv => lhs; cbv)
  try rfl

def value5637 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

#print axioms node11263_eq
end InitECandidate.Proofs.DeadStages713
