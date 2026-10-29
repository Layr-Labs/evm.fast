import InitECandidate.Proofs.DeadStages64.Chunk009
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
def value164 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1873 1869 (Flapjack.WordRegImm.imm 18446744073709551080#64))))).val
theorem input320_def : input320 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1873 1869 (Flapjack.WordRegImm.imm 18446744073709551080#64)))) := by
  unfold input320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1873 1869 (Flapjack.WordRegImm.imm 18446744073709551080#64))))).val
theorem output320_def : output320 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1873 1869 (Flapjack.WordRegImm.imm 18446744073709551080#64)))) := by
  unfold output320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output320_skip : Flapjack.WordAlloc.isSkip output320 = false := by
  rw [output320_def]
  conv => lhs; cbv
  try rfl
theorem node320_eq : Flapjack.WordAlloc.removeDeadStructural input320 value163 value1 value2 = (output320, value164, value1) := by
  rw [input320_def, output320_def]
  try (conv => lhs; cbv)
  try rfl

def value165 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1869 1865)).val
theorem input321_def : input321 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1869 1865) := by
  unfold input321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1869 1865)).val
theorem output321_def : output321 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1869 1865) := by
  unfold output321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output321_skip : Flapjack.WordAlloc.isSkip output321 = false := by
  rw [output321_def]
  conv => lhs; cbv
  try rfl
theorem node321_eq : Flapjack.WordAlloc.removeDeadStructural input321 value164 value1 value2 = (output321, value165, value1) := by
  rw [input321_def, output321_def]
  try (conv => lhs; cbv)
  try rfl

def value166 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1865 1861 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input322_def : input322 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1865 1861 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1865 1861 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output322_def : output322 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1865 1861 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output322_skip : Flapjack.WordAlloc.isSkip output322 = false := by
  rw [output322_def]
  conv => lhs; cbv
  try rfl
theorem node322_eq : Flapjack.WordAlloc.removeDeadStructural input322 value165 value1 value2 = (output322, value166, value1) := by
  rw [input322_def, output322_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1861 Flapjack.WordStore.heapLength)).val
theorem input323_def : input323 = (Flapjack.WordLangProgHOL.get 1861 Flapjack.WordStore.heapLength) := by
  unfold input323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1861 Flapjack.WordStore.heapLength)).val
theorem output323_def : output323 = (Flapjack.WordLangProgHOL.get 1861 Flapjack.WordStore.heapLength) := by
  unfold output323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output323_skip : Flapjack.WordAlloc.isSkip output323 = false := by
  rw [output323_def]
  conv => lhs; cbv
  try rfl
theorem node323_eq : Flapjack.WordAlloc.removeDeadStructural input323 value166 value1 value2 = (output323, value4, value1) := by
  rw [input323_def, output323_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input323 input322)).val
theorem input324_def : input324 = (.seq input323 input322) := by
  unfold input324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output323 output322)).val
theorem output324_def : output324 = (.seq output323 output322) := by
  unfold output324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output324_skip : Flapjack.WordAlloc.isSkip output324 = false := by
  rw [output324_def]
  conv => lhs; cbv
  try rfl
theorem node324_eq : Flapjack.WordAlloc.removeDeadStructural input324 value165 value1 value2 = (output324, value4, value1) := by
  rw [input324_def, output324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node322_eq]
  dsimp only
  rw [node323_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input324 input321)).val
theorem input325_def : input325 = (.seq input324 input321) := by
  unfold input325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output324 output321)).val
theorem output325_def : output325 = (.seq output324 output321) := by
  unfold output325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output325_skip : Flapjack.WordAlloc.isSkip output325 = false := by
  rw [output325_def]
  conv => lhs; cbv
  try rfl
theorem node325_eq : Flapjack.WordAlloc.removeDeadStructural input325 value164 value1 value2 = (output325, value4, value1) := by
  rw [input325_def, output325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node321_eq]
  dsimp only
  rw [node324_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input325 input320)).val
theorem input326_def : input326 = (.seq input325 input320) := by
  unfold input326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output325 output320)).val
theorem output326_def : output326 = (.seq output325 output320) := by
  unfold output326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output326_skip : Flapjack.WordAlloc.isSkip output326 = false := by
  rw [output326_def]
  conv => lhs; cbv
  try rfl
theorem node326_eq : Flapjack.WordAlloc.removeDeadStructural input326 value163 value1 value2 = (output326, value4, value1) := by
  rw [input326_def, output326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node320_eq]
  dsimp only
  rw [node325_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value167 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1853 (Flapjack.WordLangAddr.addr 1857 0#64)))).val
theorem input327_def : input327 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1853 (Flapjack.WordLangAddr.addr 1857 0#64))) := by
  unfold input327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1853 (Flapjack.WordLangAddr.addr 1857 0#64)))).val
theorem output327_def : output327 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1853 (Flapjack.WordLangAddr.addr 1857 0#64))) := by
  unfold output327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output327_skip : Flapjack.WordAlloc.isSkip output327 = false := by
  rw [output327_def]
  conv => lhs; cbv
  try rfl
theorem node327_eq : Flapjack.WordAlloc.removeDeadStructural input327 value4 value1 value2 = (output327, value167, value1) := by
  rw [input327_def, output327_def]
  try (conv => lhs; cbv)
  try rfl

def value168 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1857, 1845)])).val
theorem input328_def : input328 = (Flapjack.WordLangProgHOL.move 0 [(1857, 1845)]) := by
  unfold input328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1857, 1845)])).val
theorem output328_def : output328 = (Flapjack.WordLangProgHOL.move 0 [(1857, 1845)]) := by
  unfold output328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output328_skip : Flapjack.WordAlloc.isSkip output328 = false := by
  rw [output328_def]
  conv => lhs; cbv
  try rfl
theorem node328_eq : Flapjack.WordAlloc.removeDeadStructural input328 value167 value1 value2 = (output328, value168, value1) := by
  rw [input328_def, output328_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input328 input327)).val
theorem input329_def : input329 = (.seq input328 input327) := by
  unfold input329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output328 output327)).val
theorem output329_def : output329 = (.seq output328 output327) := by
  unfold output329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output329_skip : Flapjack.WordAlloc.isSkip output329 = false := by
  rw [output329_def]
  conv => lhs; cbv
  try rfl
theorem node329_eq : Flapjack.WordAlloc.removeDeadStructural input329 value4 value1 value2 = (output329, value168, value1) := by
  rw [input329_def, output329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node327_eq]
  dsimp only
  rw [node328_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value169 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1853 0#64))).val
theorem input330_def : input330 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1853 0#64)) := by
  unfold input330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1853 0#64))).val
theorem output330_def : output330 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1853 0#64)) := by
  unfold output330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output330_skip : Flapjack.WordAlloc.isSkip output330 = false := by
  rw [output330_def]
  conv => lhs; cbv
  try rfl
theorem node330_eq : Flapjack.WordAlloc.removeDeadStructural input330 value168 value1 value2 = (output330, value169, value1) := by
  rw [input330_def, output330_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1849 0#64))).val
theorem input331_def : input331 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1849 0#64)) := by
  unfold input331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output331_def : output331 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output331_skip : Flapjack.WordAlloc.isSkip output331 = true := by
  rw [output331_def]
  conv => lhs; cbv
  try rfl
theorem node331_eq : Flapjack.WordAlloc.removeDeadStructural input331 value169 value1 value2 = (output331, value169, value1) := by
  rw [input331_def, output331_def]
  try (conv => lhs; cbv)
  try rfl

def value170 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1845 1841 (Flapjack.WordRegImm.imm 18446744073709551088#64))))).val
theorem input332_def : input332 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1845 1841 (Flapjack.WordRegImm.imm 18446744073709551088#64)))) := by
  unfold input332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1845 1841 (Flapjack.WordRegImm.imm 18446744073709551088#64))))).val
theorem output332_def : output332 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1845 1841 (Flapjack.WordRegImm.imm 18446744073709551088#64)))) := by
  unfold output332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output332_skip : Flapjack.WordAlloc.isSkip output332 = false := by
  rw [output332_def]
  conv => lhs; cbv
  try rfl
theorem node332_eq : Flapjack.WordAlloc.removeDeadStructural input332 value169 value1 value2 = (output332, value170, value1) := by
  rw [input332_def, output332_def]
  try (conv => lhs; cbv)
  try rfl

def value171 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1841 1837)).val
theorem input333_def : input333 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1841 1837) := by
  unfold input333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1841 1837)).val
theorem output333_def : output333 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1841 1837) := by
  unfold output333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output333_skip : Flapjack.WordAlloc.isSkip output333 = false := by
  rw [output333_def]
  conv => lhs; cbv
  try rfl
theorem node333_eq : Flapjack.WordAlloc.removeDeadStructural input333 value170 value1 value2 = (output333, value171, value1) := by
  rw [input333_def, output333_def]
  try (conv => lhs; cbv)
  try rfl

def value172 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1837 1833 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input334_def : input334 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1837 1833 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1837 1833 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output334_def : output334 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1837 1833 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output334_skip : Flapjack.WordAlloc.isSkip output334 = false := by
  rw [output334_def]
  conv => lhs; cbv
  try rfl
theorem node334_eq : Flapjack.WordAlloc.removeDeadStructural input334 value171 value1 value2 = (output334, value172, value1) := by
  rw [input334_def, output334_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1833 Flapjack.WordStore.heapLength)).val
theorem input335_def : input335 = (Flapjack.WordLangProgHOL.get 1833 Flapjack.WordStore.heapLength) := by
  unfold input335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1833 Flapjack.WordStore.heapLength)).val
theorem output335_def : output335 = (Flapjack.WordLangProgHOL.get 1833 Flapjack.WordStore.heapLength) := by
  unfold output335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output335_skip : Flapjack.WordAlloc.isSkip output335 = false := by
  rw [output335_def]
  conv => lhs; cbv
  try rfl
theorem node335_eq : Flapjack.WordAlloc.removeDeadStructural input335 value172 value1 value2 = (output335, value4, value1) := by
  rw [input335_def, output335_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input335 input334)).val
theorem input336_def : input336 = (.seq input335 input334) := by
  unfold input336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output335 output334)).val
theorem output336_def : output336 = (.seq output335 output334) := by
  unfold output336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output336_skip : Flapjack.WordAlloc.isSkip output336 = false := by
  rw [output336_def]
  conv => lhs; cbv
  try rfl
theorem node336_eq : Flapjack.WordAlloc.removeDeadStructural input336 value171 value1 value2 = (output336, value4, value1) := by
  rw [input336_def, output336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node334_eq]
  dsimp only
  rw [node335_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input336 input333)).val
theorem input337_def : input337 = (.seq input336 input333) := by
  unfold input337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output336 output333)).val
theorem output337_def : output337 = (.seq output336 output333) := by
  unfold output337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output337_skip : Flapjack.WordAlloc.isSkip output337 = false := by
  rw [output337_def]
  conv => lhs; cbv
  try rfl
theorem node337_eq : Flapjack.WordAlloc.removeDeadStructural input337 value170 value1 value2 = (output337, value4, value1) := by
  rw [input337_def, output337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node333_eq]
  dsimp only
  rw [node336_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input337 input332)).val
theorem input338_def : input338 = (.seq input337 input332) := by
  unfold input338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output337 output332)).val
theorem output338_def : output338 = (.seq output337 output332) := by
  unfold output338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output338_skip : Flapjack.WordAlloc.isSkip output338 = false := by
  rw [output338_def]
  conv => lhs; cbv
  try rfl
theorem node338_eq : Flapjack.WordAlloc.removeDeadStructural input338 value169 value1 value2 = (output338, value4, value1) := by
  rw [input338_def, output338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node332_eq]
  dsimp only
  rw [node337_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value173 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1825 (Flapjack.WordLangAddr.addr 1829 0#64)))).val
theorem input339_def : input339 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1825 (Flapjack.WordLangAddr.addr 1829 0#64))) := by
  unfold input339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1825 (Flapjack.WordLangAddr.addr 1829 0#64)))).val
theorem output339_def : output339 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1825 (Flapjack.WordLangAddr.addr 1829 0#64))) := by
  unfold output339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output339_skip : Flapjack.WordAlloc.isSkip output339 = false := by
  rw [output339_def]
  conv => lhs; cbv
  try rfl
theorem node339_eq : Flapjack.WordAlloc.removeDeadStructural input339 value4 value1 value2 = (output339, value173, value1) := by
  rw [input339_def, output339_def]
  try (conv => lhs; cbv)
  try rfl

def value174 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1829, 1817)])).val
theorem input340_def : input340 = (Flapjack.WordLangProgHOL.move 0 [(1829, 1817)]) := by
  unfold input340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1829, 1817)])).val
theorem output340_def : output340 = (Flapjack.WordLangProgHOL.move 0 [(1829, 1817)]) := by
  unfold output340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output340_skip : Flapjack.WordAlloc.isSkip output340 = false := by
  rw [output340_def]
  conv => lhs; cbv
  try rfl
theorem node340_eq : Flapjack.WordAlloc.removeDeadStructural input340 value173 value1 value2 = (output340, value174, value1) := by
  rw [input340_def, output340_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input340 input339)).val
theorem input341_def : input341 = (.seq input340 input339) := by
  unfold input341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output340 output339)).val
theorem output341_def : output341 = (.seq output340 output339) := by
  unfold output341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output341_skip : Flapjack.WordAlloc.isSkip output341 = false := by
  rw [output341_def]
  conv => lhs; cbv
  try rfl
theorem node341_eq : Flapjack.WordAlloc.removeDeadStructural input341 value4 value1 value2 = (output341, value174, value1) := by
  rw [input341_def, output341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node339_eq]
  dsimp only
  rw [node340_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value175 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1825 0#64))).val
theorem input342_def : input342 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1825 0#64)) := by
  unfold input342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1825 0#64))).val
theorem output342_def : output342 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1825 0#64)) := by
  unfold output342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output342_skip : Flapjack.WordAlloc.isSkip output342 = false := by
  rw [output342_def]
  conv => lhs; cbv
  try rfl
theorem node342_eq : Flapjack.WordAlloc.removeDeadStructural input342 value174 value1 value2 = (output342, value175, value1) := by
  rw [input342_def, output342_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1821 0#64))).val
theorem input343_def : input343 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1821 0#64)) := by
  unfold input343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output343_def : output343 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output343_skip : Flapjack.WordAlloc.isSkip output343 = true := by
  rw [output343_def]
  conv => lhs; cbv
  try rfl
theorem node343_eq : Flapjack.WordAlloc.removeDeadStructural input343 value175 value1 value2 = (output343, value175, value1) := by
  rw [input343_def, output343_def]
  try (conv => lhs; cbv)
  try rfl

def value176 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1817 1813 (Flapjack.WordRegImm.imm 18446744073709551096#64))))).val
theorem input344_def : input344 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1817 1813 (Flapjack.WordRegImm.imm 18446744073709551096#64)))) := by
  unfold input344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1817 1813 (Flapjack.WordRegImm.imm 18446744073709551096#64))))).val
theorem output344_def : output344 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1817 1813 (Flapjack.WordRegImm.imm 18446744073709551096#64)))) := by
  unfold output344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output344_skip : Flapjack.WordAlloc.isSkip output344 = false := by
  rw [output344_def]
  conv => lhs; cbv
  try rfl
theorem node344_eq : Flapjack.WordAlloc.removeDeadStructural input344 value175 value1 value2 = (output344, value176, value1) := by
  rw [input344_def, output344_def]
  try (conv => lhs; cbv)
  try rfl

def value177 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1813 1809)).val
theorem input345_def : input345 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1813 1809) := by
  unfold input345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1813 1809)).val
theorem output345_def : output345 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1813 1809) := by
  unfold output345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output345_skip : Flapjack.WordAlloc.isSkip output345 = false := by
  rw [output345_def]
  conv => lhs; cbv
  try rfl
theorem node345_eq : Flapjack.WordAlloc.removeDeadStructural input345 value176 value1 value2 = (output345, value177, value1) := by
  rw [input345_def, output345_def]
  try (conv => lhs; cbv)
  try rfl

def value178 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1809 1805 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input346_def : input346 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1809 1805 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1809 1805 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output346_def : output346 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1809 1805 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output346_skip : Flapjack.WordAlloc.isSkip output346 = false := by
  rw [output346_def]
  conv => lhs; cbv
  try rfl
theorem node346_eq : Flapjack.WordAlloc.removeDeadStructural input346 value177 value1 value2 = (output346, value178, value1) := by
  rw [input346_def, output346_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1805 Flapjack.WordStore.heapLength)).val
theorem input347_def : input347 = (Flapjack.WordLangProgHOL.get 1805 Flapjack.WordStore.heapLength) := by
  unfold input347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1805 Flapjack.WordStore.heapLength)).val
theorem output347_def : output347 = (Flapjack.WordLangProgHOL.get 1805 Flapjack.WordStore.heapLength) := by
  unfold output347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output347_skip : Flapjack.WordAlloc.isSkip output347 = false := by
  rw [output347_def]
  conv => lhs; cbv
  try rfl
theorem node347_eq : Flapjack.WordAlloc.removeDeadStructural input347 value178 value1 value2 = (output347, value4, value1) := by
  rw [input347_def, output347_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input347 input346)).val
theorem input348_def : input348 = (.seq input347 input346) := by
  unfold input348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output347 output346)).val
theorem output348_def : output348 = (.seq output347 output346) := by
  unfold output348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output348_skip : Flapjack.WordAlloc.isSkip output348 = false := by
  rw [output348_def]
  conv => lhs; cbv
  try rfl
theorem node348_eq : Flapjack.WordAlloc.removeDeadStructural input348 value177 value1 value2 = (output348, value4, value1) := by
  rw [input348_def, output348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node346_eq]
  dsimp only
  rw [node347_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input348 input345)).val
theorem input349_def : input349 = (.seq input348 input345) := by
  unfold input349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output348 output345)).val
theorem output349_def : output349 = (.seq output348 output345) := by
  unfold output349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output349_skip : Flapjack.WordAlloc.isSkip output349 = false := by
  rw [output349_def]
  conv => lhs; cbv
  try rfl
theorem node349_eq : Flapjack.WordAlloc.removeDeadStructural input349 value176 value1 value2 = (output349, value4, value1) := by
  rw [input349_def, output349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node345_eq]
  dsimp only
  rw [node348_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input349 input344)).val
theorem input350_def : input350 = (.seq input349 input344) := by
  unfold input350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output349 output344)).val
theorem output350_def : output350 = (.seq output349 output344) := by
  unfold output350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output350_skip : Flapjack.WordAlloc.isSkip output350 = false := by
  rw [output350_def]
  conv => lhs; cbv
  try rfl
theorem node350_eq : Flapjack.WordAlloc.removeDeadStructural input350 value175 value1 value2 = (output350, value4, value1) := by
  rw [input350_def, output350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node344_eq]
  dsimp only
  rw [node349_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value179 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1797 (Flapjack.WordLangAddr.addr 1801 0#64)))).val
theorem input351_def : input351 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1797 (Flapjack.WordLangAddr.addr 1801 0#64))) := by
  unfold input351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1797 (Flapjack.WordLangAddr.addr 1801 0#64)))).val
theorem output351_def : output351 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1797 (Flapjack.WordLangAddr.addr 1801 0#64))) := by
  unfold output351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output351_skip : Flapjack.WordAlloc.isSkip output351 = false := by
  rw [output351_def]
  conv => lhs; cbv
  try rfl
theorem node351_eq : Flapjack.WordAlloc.removeDeadStructural input351 value4 value1 value2 = (output351, value179, value1) := by
  rw [input351_def, output351_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node351_eq
end InitECandidate.Proofs.DeadStages64
