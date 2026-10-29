import InitECandidate.Proofs.DeadStages713.Chunk050
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input13056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1741 (Flapjack.WordLangAddr.addr 1737 18446744073709551104#64)))).val
theorem input13056_def : input13056 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1741 (Flapjack.WordLangAddr.addr 1737 18446744073709551104#64))) := by
  unfold input13056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1741 (Flapjack.WordLangAddr.addr 1737 18446744073709551104#64)))).val
theorem output13056_def : output13056 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1741 (Flapjack.WordLangAddr.addr 1737 18446744073709551104#64))) := by
  unfold output13056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13056_skip : Flapjack.WordAlloc.isSkip output13056 = false := by
  rw [output13056_def]
  conv => lhs; cbv
  try rfl
theorem node13056_eq : Flapjack.WordAlloc.removeDeadStructural input13056 value6532 value1 value2 = (output13056, value6533, value1) := by
  rw [input13056_def, output13056_def]
  try (conv => lhs; cbv)
  try rfl

def value6534 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1737 1733)).val
theorem input13057_def : input13057 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1737 1733) := by
  unfold input13057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1737 1733)).val
theorem output13057_def : output13057 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1737 1733) := by
  unfold output13057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13057_skip : Flapjack.WordAlloc.isSkip output13057 = false := by
  rw [output13057_def]
  conv => lhs; cbv
  try rfl
theorem node13057_eq : Flapjack.WordAlloc.removeDeadStructural input13057 value6533 value1 value2 = (output13057, value6534, value1) := by
  rw [input13057_def, output13057_def]
  try (conv => lhs; cbv)
  try rfl

def value6535 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1733 1729 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13058_def : input13058 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1733 1729 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1733 1729 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13058_def : output13058 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1733 1729 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13058_skip : Flapjack.WordAlloc.isSkip output13058 = false := by
  rw [output13058_def]
  conv => lhs; cbv
  try rfl
theorem node13058_eq : Flapjack.WordAlloc.removeDeadStructural input13058 value6534 value1 value2 = (output13058, value6535, value1) := by
  rw [input13058_def, output13058_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1729 Flapjack.WordStore.heapLength)).val
theorem input13059_def : input13059 = (Flapjack.WordLangProgHOL.get 1729 Flapjack.WordStore.heapLength) := by
  unfold input13059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1729 Flapjack.WordStore.heapLength)).val
theorem output13059_def : output13059 = (Flapjack.WordLangProgHOL.get 1729 Flapjack.WordStore.heapLength) := by
  unfold output13059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13059_skip : Flapjack.WordAlloc.isSkip output13059 = false := by
  rw [output13059_def]
  conv => lhs; cbv
  try rfl
theorem node13059_eq : Flapjack.WordAlloc.removeDeadStructural input13059 value6535 value1 value2 = (output13059, value5, value1) := by
  rw [input13059_def, output13059_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13059 input13058)).val
theorem input13060_def : input13060 = (.seq input13059 input13058) := by
  unfold input13060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13059 output13058)).val
theorem output13060_def : output13060 = (.seq output13059 output13058) := by
  unfold output13060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13060_skip : Flapjack.WordAlloc.isSkip output13060 = false := by
  rw [output13060_def]
  conv => lhs; cbv
  try rfl
theorem node13060_eq : Flapjack.WordAlloc.removeDeadStructural input13060 value6534 value1 value2 = (output13060, value5, value1) := by
  rw [input13060_def, output13060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13058_eq]
  dsimp only
  rw [node13059_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13060 input13057)).val
theorem input13061_def : input13061 = (.seq input13060 input13057) := by
  unfold input13061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13060 output13057)).val
theorem output13061_def : output13061 = (.seq output13060 output13057) := by
  unfold output13061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13061_skip : Flapjack.WordAlloc.isSkip output13061 = false := by
  rw [output13061_def]
  conv => lhs; cbv
  try rfl
theorem node13061_eq : Flapjack.WordAlloc.removeDeadStructural input13061 value6533 value1 value2 = (output13061, value5, value1) := by
  rw [input13061_def, output13061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13057_eq]
  dsimp only
  rw [node13060_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13061 input13056)).val
theorem input13062_def : input13062 = (.seq input13061 input13056) := by
  unfold input13062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13061 output13056)).val
theorem output13062_def : output13062 = (.seq output13061 output13056) := by
  unfold output13062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13062_skip : Flapjack.WordAlloc.isSkip output13062 = false := by
  rw [output13062_def]
  conv => lhs; cbv
  try rfl
theorem node13062_eq : Flapjack.WordAlloc.removeDeadStructural input13062 value6532 value1 value2 = (output13062, value5, value1) := by
  rw [input13062_def, output13062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13056_eq]
  dsimp only
  rw [node13061_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13062 input13055)).val
theorem input13063_def : input13063 = (.seq input13062 input13055) := by
  unfold input13063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13062 output13055)).val
theorem output13063_def : output13063 = (.seq output13062 output13055) := by
  unfold output13063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13063_skip : Flapjack.WordAlloc.isSkip output13063 = false := by
  rw [output13063_def]
  conv => lhs; cbv
  try rfl
theorem node13063_eq : Flapjack.WordAlloc.removeDeadStructural input13063 value6531 value1 value2 = (output13063, value5, value1) := by
  rw [input13063_def, output13063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13055_eq]
  dsimp only
  rw [node13062_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6536 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1721 (Flapjack.WordLangAddr.addr 1725 0#64)))).val
theorem input13064_def : input13064 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1721 (Flapjack.WordLangAddr.addr 1725 0#64))) := by
  unfold input13064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1721 (Flapjack.WordLangAddr.addr 1725 0#64)))).val
theorem output13064_def : output13064 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1721 (Flapjack.WordLangAddr.addr 1725 0#64))) := by
  unfold output13064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13064_skip : Flapjack.WordAlloc.isSkip output13064 = false := by
  rw [output13064_def]
  conv => lhs; cbv
  try rfl
theorem node13064_eq : Flapjack.WordAlloc.removeDeadStructural input13064 value5 value1 value2 = (output13064, value6536, value1) := by
  rw [input13064_def, output13064_def]
  try (conv => lhs; cbv)
  try rfl

def value6537 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1725, 1713)])).val
theorem input13065_def : input13065 = (Flapjack.WordLangProgHOL.move 0 [(1725, 1713)]) := by
  unfold input13065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1725, 1713)])).val
theorem output13065_def : output13065 = (Flapjack.WordLangProgHOL.move 0 [(1725, 1713)]) := by
  unfold output13065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13065_skip : Flapjack.WordAlloc.isSkip output13065 = false := by
  rw [output13065_def]
  conv => lhs; cbv
  try rfl
theorem node13065_eq : Flapjack.WordAlloc.removeDeadStructural input13065 value6536 value1 value2 = (output13065, value6537, value1) := by
  rw [input13065_def, output13065_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13065 input13064)).val
theorem input13066_def : input13066 = (.seq input13065 input13064) := by
  unfold input13066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13065 output13064)).val
theorem output13066_def : output13066 = (.seq output13065 output13064) := by
  unfold output13066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13066_skip : Flapjack.WordAlloc.isSkip output13066 = false := by
  rw [output13066_def]
  conv => lhs; cbv
  try rfl
theorem node13066_eq : Flapjack.WordAlloc.removeDeadStructural input13066 value5 value1 value2 = (output13066, value6537, value1) := by
  rw [input13066_def, output13066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13064_eq]
  dsimp only
  rw [node13065_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6538 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1721 7806400890582735599#64))).val
theorem input13067_def : input13067 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1721 7806400890582735599#64)) := by
  unfold input13067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1721 7806400890582735599#64))).val
theorem output13067_def : output13067 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1721 7806400890582735599#64)) := by
  unfold output13067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13067_skip : Flapjack.WordAlloc.isSkip output13067 = false := by
  rw [output13067_def]
  conv => lhs; cbv
  try rfl
theorem node13067_eq : Flapjack.WordAlloc.removeDeadStructural input13067 value6537 value1 value2 = (output13067, value6538, value1) := by
  rw [input13067_def, output13067_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1717 7806400890582735599#64))).val
theorem input13068_def : input13068 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1717 7806400890582735599#64)) := by
  unfold input13068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13068_def : output13068 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13068_skip : Flapjack.WordAlloc.isSkip output13068 = true := by
  rw [output13068_def]
  conv => lhs; cbv
  try rfl
theorem node13068_eq : Flapjack.WordAlloc.removeDeadStructural input13068 value6538 value1 value2 = (output13068, value6538, value1) := by
  rw [input13068_def, output13068_def]
  try (conv => lhs; cbv)
  try rfl

def value6539 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1713 1709 (Flapjack.WordRegImm.imm 392#64))))).val
theorem input13069_def : input13069 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1713 1709 (Flapjack.WordRegImm.imm 392#64)))) := by
  unfold input13069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1713 1709 (Flapjack.WordRegImm.imm 392#64))))).val
theorem output13069_def : output13069 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1713 1709 (Flapjack.WordRegImm.imm 392#64)))) := by
  unfold output13069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13069_skip : Flapjack.WordAlloc.isSkip output13069 = false := by
  rw [output13069_def]
  conv => lhs; cbv
  try rfl
theorem node13069_eq : Flapjack.WordAlloc.removeDeadStructural input13069 value6538 value1 value2 = (output13069, value6539, value1) := by
  rw [input13069_def, output13069_def]
  try (conv => lhs; cbv)
  try rfl

def value6540 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1709 (Flapjack.WordLangAddr.addr 1705 18446744073709551104#64)))).val
theorem input13070_def : input13070 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1709 (Flapjack.WordLangAddr.addr 1705 18446744073709551104#64))) := by
  unfold input13070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1709 (Flapjack.WordLangAddr.addr 1705 18446744073709551104#64)))).val
theorem output13070_def : output13070 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1709 (Flapjack.WordLangAddr.addr 1705 18446744073709551104#64))) := by
  unfold output13070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13070_skip : Flapjack.WordAlloc.isSkip output13070 = false := by
  rw [output13070_def]
  conv => lhs; cbv
  try rfl
theorem node13070_eq : Flapjack.WordAlloc.removeDeadStructural input13070 value6539 value1 value2 = (output13070, value6540, value1) := by
  rw [input13070_def, output13070_def]
  try (conv => lhs; cbv)
  try rfl

def value6541 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1705 1701)).val
theorem input13071_def : input13071 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1705 1701) := by
  unfold input13071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1705 1701)).val
theorem output13071_def : output13071 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1705 1701) := by
  unfold output13071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13071_skip : Flapjack.WordAlloc.isSkip output13071 = false := by
  rw [output13071_def]
  conv => lhs; cbv
  try rfl
theorem node13071_eq : Flapjack.WordAlloc.removeDeadStructural input13071 value6540 value1 value2 = (output13071, value6541, value1) := by
  rw [input13071_def, output13071_def]
  try (conv => lhs; cbv)
  try rfl

def value6542 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1701 1697 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13072_def : input13072 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1701 1697 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1701 1697 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13072_def : output13072 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1701 1697 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13072_skip : Flapjack.WordAlloc.isSkip output13072 = false := by
  rw [output13072_def]
  conv => lhs; cbv
  try rfl
theorem node13072_eq : Flapjack.WordAlloc.removeDeadStructural input13072 value6541 value1 value2 = (output13072, value6542, value1) := by
  rw [input13072_def, output13072_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1697 Flapjack.WordStore.heapLength)).val
theorem input13073_def : input13073 = (Flapjack.WordLangProgHOL.get 1697 Flapjack.WordStore.heapLength) := by
  unfold input13073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1697 Flapjack.WordStore.heapLength)).val
theorem output13073_def : output13073 = (Flapjack.WordLangProgHOL.get 1697 Flapjack.WordStore.heapLength) := by
  unfold output13073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13073_skip : Flapjack.WordAlloc.isSkip output13073 = false := by
  rw [output13073_def]
  conv => lhs; cbv
  try rfl
theorem node13073_eq : Flapjack.WordAlloc.removeDeadStructural input13073 value6542 value1 value2 = (output13073, value5, value1) := by
  rw [input13073_def, output13073_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13073 input13072)).val
theorem input13074_def : input13074 = (.seq input13073 input13072) := by
  unfold input13074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13073 output13072)).val
theorem output13074_def : output13074 = (.seq output13073 output13072) := by
  unfold output13074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13074_skip : Flapjack.WordAlloc.isSkip output13074 = false := by
  rw [output13074_def]
  conv => lhs; cbv
  try rfl
theorem node13074_eq : Flapjack.WordAlloc.removeDeadStructural input13074 value6541 value1 value2 = (output13074, value5, value1) := by
  rw [input13074_def, output13074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13072_eq]
  dsimp only
  rw [node13073_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13074 input13071)).val
theorem input13075_def : input13075 = (.seq input13074 input13071) := by
  unfold input13075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13074 output13071)).val
theorem output13075_def : output13075 = (.seq output13074 output13071) := by
  unfold output13075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13075_skip : Flapjack.WordAlloc.isSkip output13075 = false := by
  rw [output13075_def]
  conv => lhs; cbv
  try rfl
theorem node13075_eq : Flapjack.WordAlloc.removeDeadStructural input13075 value6540 value1 value2 = (output13075, value5, value1) := by
  rw [input13075_def, output13075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13071_eq]
  dsimp only
  rw [node13074_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13075 input13070)).val
theorem input13076_def : input13076 = (.seq input13075 input13070) := by
  unfold input13076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13075 output13070)).val
theorem output13076_def : output13076 = (.seq output13075 output13070) := by
  unfold output13076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13076_skip : Flapjack.WordAlloc.isSkip output13076 = false := by
  rw [output13076_def]
  conv => lhs; cbv
  try rfl
theorem node13076_eq : Flapjack.WordAlloc.removeDeadStructural input13076 value6539 value1 value2 = (output13076, value5, value1) := by
  rw [input13076_def, output13076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13070_eq]
  dsimp only
  rw [node13075_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13076 input13069)).val
theorem input13077_def : input13077 = (.seq input13076 input13069) := by
  unfold input13077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13076 output13069)).val
theorem output13077_def : output13077 = (.seq output13076 output13069) := by
  unfold output13077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13077_skip : Flapjack.WordAlloc.isSkip output13077 = false := by
  rw [output13077_def]
  conv => lhs; cbv
  try rfl
theorem node13077_eq : Flapjack.WordAlloc.removeDeadStructural input13077 value6538 value1 value2 = (output13077, value5, value1) := by
  rw [input13077_def, output13077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13069_eq]
  dsimp only
  rw [node13076_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6543 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1689 (Flapjack.WordLangAddr.addr 1693 0#64)))).val
theorem input13078_def : input13078 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1689 (Flapjack.WordLangAddr.addr 1693 0#64))) := by
  unfold input13078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1689 (Flapjack.WordLangAddr.addr 1693 0#64)))).val
theorem output13078_def : output13078 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1689 (Flapjack.WordLangAddr.addr 1693 0#64))) := by
  unfold output13078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13078_skip : Flapjack.WordAlloc.isSkip output13078 = false := by
  rw [output13078_def]
  conv => lhs; cbv
  try rfl
theorem node13078_eq : Flapjack.WordAlloc.removeDeadStructural input13078 value5 value1 value2 = (output13078, value6543, value1) := by
  rw [input13078_def, output13078_def]
  try (conv => lhs; cbv)
  try rfl

def value6544 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1693, 1681)])).val
theorem input13079_def : input13079 = (Flapjack.WordLangProgHOL.move 0 [(1693, 1681)]) := by
  unfold input13079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1693, 1681)])).val
theorem output13079_def : output13079 = (Flapjack.WordLangProgHOL.move 0 [(1693, 1681)]) := by
  unfold output13079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13079_skip : Flapjack.WordAlloc.isSkip output13079 = false := by
  rw [output13079_def]
  conv => lhs; cbv
  try rfl
theorem node13079_eq : Flapjack.WordAlloc.removeDeadStructural input13079 value6543 value1 value2 = (output13079, value6544, value1) := by
  rw [input13079_def, output13079_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13079 input13078)).val
theorem input13080_def : input13080 = (.seq input13079 input13078) := by
  unfold input13080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13079 output13078)).val
theorem output13080_def : output13080 = (.seq output13079 output13078) := by
  unfold output13080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13080_skip : Flapjack.WordAlloc.isSkip output13080 = false := by
  rw [output13080_def]
  conv => lhs; cbv
  try rfl
theorem node13080_eq : Flapjack.WordAlloc.removeDeadStructural input13080 value5 value1 value2 = (output13080, value6544, value1) := by
  rw [input13080_def, output13080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13078_eq]
  dsimp only
  rw [node13079_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6545 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1689 18103045581585958587#64))).val
theorem input13081_def : input13081 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1689 18103045581585958587#64)) := by
  unfold input13081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1689 18103045581585958587#64))).val
theorem output13081_def : output13081 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1689 18103045581585958587#64)) := by
  unfold output13081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13081_skip : Flapjack.WordAlloc.isSkip output13081 = false := by
  rw [output13081_def]
  conv => lhs; cbv
  try rfl
theorem node13081_eq : Flapjack.WordAlloc.removeDeadStructural input13081 value6544 value1 value2 = (output13081, value6545, value1) := by
  rw [input13081_def, output13081_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1685 18103045581585958587#64))).val
theorem input13082_def : input13082 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1685 18103045581585958587#64)) := by
  unfold input13082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13082_def : output13082 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13082_skip : Flapjack.WordAlloc.isSkip output13082 = true := by
  rw [output13082_def]
  conv => lhs; cbv
  try rfl
theorem node13082_eq : Flapjack.WordAlloc.removeDeadStructural input13082 value6545 value1 value2 = (output13082, value6545, value1) := by
  rw [input13082_def, output13082_def]
  try (conv => lhs; cbv)
  try rfl

def value6546 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1681 1677 (Flapjack.WordRegImm.imm 384#64))))).val
theorem input13083_def : input13083 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1681 1677 (Flapjack.WordRegImm.imm 384#64)))) := by
  unfold input13083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1681 1677 (Flapjack.WordRegImm.imm 384#64))))).val
theorem output13083_def : output13083 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1681 1677 (Flapjack.WordRegImm.imm 384#64)))) := by
  unfold output13083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13083_skip : Flapjack.WordAlloc.isSkip output13083 = false := by
  rw [output13083_def]
  conv => lhs; cbv
  try rfl
theorem node13083_eq : Flapjack.WordAlloc.removeDeadStructural input13083 value6545 value1 value2 = (output13083, value6546, value1) := by
  rw [input13083_def, output13083_def]
  try (conv => lhs; cbv)
  try rfl

def value6547 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1677 (Flapjack.WordLangAddr.addr 1673 18446744073709551104#64)))).val
theorem input13084_def : input13084 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1677 (Flapjack.WordLangAddr.addr 1673 18446744073709551104#64))) := by
  unfold input13084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1677 (Flapjack.WordLangAddr.addr 1673 18446744073709551104#64)))).val
theorem output13084_def : output13084 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1677 (Flapjack.WordLangAddr.addr 1673 18446744073709551104#64))) := by
  unfold output13084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13084_skip : Flapjack.WordAlloc.isSkip output13084 = false := by
  rw [output13084_def]
  conv => lhs; cbv
  try rfl
theorem node13084_eq : Flapjack.WordAlloc.removeDeadStructural input13084 value6546 value1 value2 = (output13084, value6547, value1) := by
  rw [input13084_def, output13084_def]
  try (conv => lhs; cbv)
  try rfl

def value6548 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1673 1669)).val
theorem input13085_def : input13085 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1673 1669) := by
  unfold input13085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1673 1669)).val
theorem output13085_def : output13085 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1673 1669) := by
  unfold output13085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13085_skip : Flapjack.WordAlloc.isSkip output13085 = false := by
  rw [output13085_def]
  conv => lhs; cbv
  try rfl
theorem node13085_eq : Flapjack.WordAlloc.removeDeadStructural input13085 value6547 value1 value2 = (output13085, value6548, value1) := by
  rw [input13085_def, output13085_def]
  try (conv => lhs; cbv)
  try rfl

def value6549 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1669 1665 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13086_def : input13086 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1669 1665 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1669 1665 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13086_def : output13086 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1669 1665 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13086_skip : Flapjack.WordAlloc.isSkip output13086 = false := by
  rw [output13086_def]
  conv => lhs; cbv
  try rfl
theorem node13086_eq : Flapjack.WordAlloc.removeDeadStructural input13086 value6548 value1 value2 = (output13086, value6549, value1) := by
  rw [input13086_def, output13086_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1665 Flapjack.WordStore.heapLength)).val
theorem input13087_def : input13087 = (Flapjack.WordLangProgHOL.get 1665 Flapjack.WordStore.heapLength) := by
  unfold input13087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1665 Flapjack.WordStore.heapLength)).val
theorem output13087_def : output13087 = (Flapjack.WordLangProgHOL.get 1665 Flapjack.WordStore.heapLength) := by
  unfold output13087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13087_skip : Flapjack.WordAlloc.isSkip output13087 = false := by
  rw [output13087_def]
  conv => lhs; cbv
  try rfl
theorem node13087_eq : Flapjack.WordAlloc.removeDeadStructural input13087 value6549 value1 value2 = (output13087, value5, value1) := by
  rw [input13087_def, output13087_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13087 input13086)).val
theorem input13088_def : input13088 = (.seq input13087 input13086) := by
  unfold input13088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13087 output13086)).val
theorem output13088_def : output13088 = (.seq output13087 output13086) := by
  unfold output13088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13088_skip : Flapjack.WordAlloc.isSkip output13088 = false := by
  rw [output13088_def]
  conv => lhs; cbv
  try rfl
theorem node13088_eq : Flapjack.WordAlloc.removeDeadStructural input13088 value6548 value1 value2 = (output13088, value5, value1) := by
  rw [input13088_def, output13088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13086_eq]
  dsimp only
  rw [node13087_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13088 input13085)).val
theorem input13089_def : input13089 = (.seq input13088 input13085) := by
  unfold input13089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13088 output13085)).val
theorem output13089_def : output13089 = (.seq output13088 output13085) := by
  unfold output13089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13089_skip : Flapjack.WordAlloc.isSkip output13089 = false := by
  rw [output13089_def]
  conv => lhs; cbv
  try rfl
theorem node13089_eq : Flapjack.WordAlloc.removeDeadStructural input13089 value6547 value1 value2 = (output13089, value5, value1) := by
  rw [input13089_def, output13089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13085_eq]
  dsimp only
  rw [node13088_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13089 input13084)).val
theorem input13090_def : input13090 = (.seq input13089 input13084) := by
  unfold input13090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13089 output13084)).val
theorem output13090_def : output13090 = (.seq output13089 output13084) := by
  unfold output13090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13090_skip : Flapjack.WordAlloc.isSkip output13090 = false := by
  rw [output13090_def]
  conv => lhs; cbv
  try rfl
theorem node13090_eq : Flapjack.WordAlloc.removeDeadStructural input13090 value6546 value1 value2 = (output13090, value5, value1) := by
  rw [input13090_def, output13090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13084_eq]
  dsimp only
  rw [node13089_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13090 input13083)).val
theorem input13091_def : input13091 = (.seq input13090 input13083) := by
  unfold input13091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13090 output13083)).val
theorem output13091_def : output13091 = (.seq output13090 output13083) := by
  unfold output13091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13091_skip : Flapjack.WordAlloc.isSkip output13091 = false := by
  rw [output13091_def]
  conv => lhs; cbv
  try rfl
theorem node13091_eq : Flapjack.WordAlloc.removeDeadStructural input13091 value6545 value1 value2 = (output13091, value5, value1) := by
  rw [input13091_def, output13091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13083_eq]
  dsimp only
  rw [node13090_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6550 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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

@[irreducible, cbv_opaque] def input13092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1657 (Flapjack.WordLangAddr.addr 1661 0#64)))).val
theorem input13092_def : input13092 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1657 (Flapjack.WordLangAddr.addr 1661 0#64))) := by
  unfold input13092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1657 (Flapjack.WordLangAddr.addr 1661 0#64)))).val
theorem output13092_def : output13092 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1657 (Flapjack.WordLangAddr.addr 1661 0#64))) := by
  unfold output13092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13092_skip : Flapjack.WordAlloc.isSkip output13092 = false := by
  rw [output13092_def]
  conv => lhs; cbv
  try rfl
theorem node13092_eq : Flapjack.WordAlloc.removeDeadStructural input13092 value5 value1 value2 = (output13092, value6550, value1) := by
  rw [input13092_def, output13092_def]
  try (conv => lhs; cbv)
  try rfl

def value6551 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1661, 1649)])).val
theorem input13093_def : input13093 = (Flapjack.WordLangProgHOL.move 0 [(1661, 1649)]) := by
  unfold input13093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1661, 1649)])).val
theorem output13093_def : output13093 = (Flapjack.WordLangProgHOL.move 0 [(1661, 1649)]) := by
  unfold output13093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13093_skip : Flapjack.WordAlloc.isSkip output13093 = false := by
  rw [output13093_def]
  conv => lhs; cbv
  try rfl
theorem node13093_eq : Flapjack.WordAlloc.removeDeadStructural input13093 value6550 value1 value2 = (output13093, value6551, value1) := by
  rw [input13093_def, output13093_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13093 input13092)).val
theorem input13094_def : input13094 = (.seq input13093 input13092) := by
  unfold input13094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13093 output13092)).val
theorem output13094_def : output13094 = (.seq output13093 output13092) := by
  unfold output13094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13094_skip : Flapjack.WordAlloc.isSkip output13094 = false := by
  rw [output13094_def]
  conv => lhs; cbv
  try rfl
theorem node13094_eq : Flapjack.WordAlloc.removeDeadStructural input13094 value5 value1 value2 = (output13094, value6551, value1) := by
  rw [input13094_def, output13094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13092_eq]
  dsimp only
  rw [node13093_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6552 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1657 0#64))).val
theorem input13095_def : input13095 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1657 0#64)) := by
  unfold input13095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1657 0#64))).val
theorem output13095_def : output13095 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1657 0#64)) := by
  unfold output13095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13095_skip : Flapjack.WordAlloc.isSkip output13095 = false := by
  rw [output13095_def]
  conv => lhs; cbv
  try rfl
theorem node13095_eq : Flapjack.WordAlloc.removeDeadStructural input13095 value6551 value1 value2 = (output13095, value6552, value1) := by
  rw [input13095_def, output13095_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1653 0#64))).val
theorem input13096_def : input13096 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1653 0#64)) := by
  unfold input13096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13096_def : output13096 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13096_skip : Flapjack.WordAlloc.isSkip output13096 = true := by
  rw [output13096_def]
  conv => lhs; cbv
  try rfl
theorem node13096_eq : Flapjack.WordAlloc.removeDeadStructural input13096 value6552 value1 value2 = (output13096, value6552, value1) := by
  rw [input13096_def, output13096_def]
  try (conv => lhs; cbv)
  try rfl

def value6553 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1649 1645 (Flapjack.WordRegImm.imm 376#64))))).val
theorem input13097_def : input13097 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1649 1645 (Flapjack.WordRegImm.imm 376#64)))) := by
  unfold input13097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1649 1645 (Flapjack.WordRegImm.imm 376#64))))).val
theorem output13097_def : output13097 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1649 1645 (Flapjack.WordRegImm.imm 376#64)))) := by
  unfold output13097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13097_skip : Flapjack.WordAlloc.isSkip output13097 = false := by
  rw [output13097_def]
  conv => lhs; cbv
  try rfl
theorem node13097_eq : Flapjack.WordAlloc.removeDeadStructural input13097 value6552 value1 value2 = (output13097, value6553, value1) := by
  rw [input13097_def, output13097_def]
  try (conv => lhs; cbv)
  try rfl

def value6554 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1645 (Flapjack.WordLangAddr.addr 1641 18446744073709551104#64)))).val
theorem input13098_def : input13098 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1645 (Flapjack.WordLangAddr.addr 1641 18446744073709551104#64))) := by
  unfold input13098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1645 (Flapjack.WordLangAddr.addr 1641 18446744073709551104#64)))).val
theorem output13098_def : output13098 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1645 (Flapjack.WordLangAddr.addr 1641 18446744073709551104#64))) := by
  unfold output13098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13098_skip : Flapjack.WordAlloc.isSkip output13098 = false := by
  rw [output13098_def]
  conv => lhs; cbv
  try rfl
theorem node13098_eq : Flapjack.WordAlloc.removeDeadStructural input13098 value6553 value1 value2 = (output13098, value6554, value1) := by
  rw [input13098_def, output13098_def]
  try (conv => lhs; cbv)
  try rfl

def value6555 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1641 1637)).val
theorem input13099_def : input13099 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1641 1637) := by
  unfold input13099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1641 1637)).val
theorem output13099_def : output13099 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1641 1637) := by
  unfold output13099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13099_skip : Flapjack.WordAlloc.isSkip output13099 = false := by
  rw [output13099_def]
  conv => lhs; cbv
  try rfl
theorem node13099_eq : Flapjack.WordAlloc.removeDeadStructural input13099 value6554 value1 value2 = (output13099, value6555, value1) := by
  rw [input13099_def, output13099_def]
  try (conv => lhs; cbv)
  try rfl

def value6556 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1637 1633 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13100_def : input13100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1637 1633 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1637 1633 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13100_def : output13100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1637 1633 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13100_skip : Flapjack.WordAlloc.isSkip output13100 = false := by
  rw [output13100_def]
  conv => lhs; cbv
  try rfl
theorem node13100_eq : Flapjack.WordAlloc.removeDeadStructural input13100 value6555 value1 value2 = (output13100, value6556, value1) := by
  rw [input13100_def, output13100_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1633 Flapjack.WordStore.heapLength)).val
theorem input13101_def : input13101 = (Flapjack.WordLangProgHOL.get 1633 Flapjack.WordStore.heapLength) := by
  unfold input13101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1633 Flapjack.WordStore.heapLength)).val
theorem output13101_def : output13101 = (Flapjack.WordLangProgHOL.get 1633 Flapjack.WordStore.heapLength) := by
  unfold output13101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13101_skip : Flapjack.WordAlloc.isSkip output13101 = false := by
  rw [output13101_def]
  conv => lhs; cbv
  try rfl
theorem node13101_eq : Flapjack.WordAlloc.removeDeadStructural input13101 value6556 value1 value2 = (output13101, value5, value1) := by
  rw [input13101_def, output13101_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13101 input13100)).val
theorem input13102_def : input13102 = (.seq input13101 input13100) := by
  unfold input13102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13101 output13100)).val
theorem output13102_def : output13102 = (.seq output13101 output13100) := by
  unfold output13102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13102_skip : Flapjack.WordAlloc.isSkip output13102 = false := by
  rw [output13102_def]
  conv => lhs; cbv
  try rfl
theorem node13102_eq : Flapjack.WordAlloc.removeDeadStructural input13102 value6555 value1 value2 = (output13102, value5, value1) := by
  rw [input13102_def, output13102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13100_eq]
  dsimp only
  rw [node13101_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13102 input13099)).val
theorem input13103_def : input13103 = (.seq input13102 input13099) := by
  unfold input13103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13102 output13099)).val
theorem output13103_def : output13103 = (.seq output13102 output13099) := by
  unfold output13103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13103_skip : Flapjack.WordAlloc.isSkip output13103 = false := by
  rw [output13103_def]
  conv => lhs; cbv
  try rfl
theorem node13103_eq : Flapjack.WordAlloc.removeDeadStructural input13103 value6554 value1 value2 = (output13103, value5, value1) := by
  rw [input13103_def, output13103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13099_eq]
  dsimp only
  rw [node13102_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13103 input13098)).val
theorem input13104_def : input13104 = (.seq input13103 input13098) := by
  unfold input13104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13103 output13098)).val
theorem output13104_def : output13104 = (.seq output13103 output13098) := by
  unfold output13104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13104_skip : Flapjack.WordAlloc.isSkip output13104 = false := by
  rw [output13104_def]
  conv => lhs; cbv
  try rfl
theorem node13104_eq : Flapjack.WordAlloc.removeDeadStructural input13104 value6553 value1 value2 = (output13104, value5, value1) := by
  rw [input13104_def, output13104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13098_eq]
  dsimp only
  rw [node13103_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13104 input13097)).val
theorem input13105_def : input13105 = (.seq input13104 input13097) := by
  unfold input13105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13104 output13097)).val
theorem output13105_def : output13105 = (.seq output13104 output13097) := by
  unfold output13105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13105_skip : Flapjack.WordAlloc.isSkip output13105 = false := by
  rw [output13105_def]
  conv => lhs; cbv
  try rfl
theorem node13105_eq : Flapjack.WordAlloc.removeDeadStructural input13105 value6552 value1 value2 = (output13105, value5, value1) := by
  rw [input13105_def, output13105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13097_eq]
  dsimp only
  rw [node13104_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6557 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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

@[irreducible, cbv_opaque] def input13106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1625 (Flapjack.WordLangAddr.addr 1629 0#64)))).val
theorem input13106_def : input13106 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1625 (Flapjack.WordLangAddr.addr 1629 0#64))) := by
  unfold input13106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1625 (Flapjack.WordLangAddr.addr 1629 0#64)))).val
theorem output13106_def : output13106 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1625 (Flapjack.WordLangAddr.addr 1629 0#64))) := by
  unfold output13106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13106_skip : Flapjack.WordAlloc.isSkip output13106 = false := by
  rw [output13106_def]
  conv => lhs; cbv
  try rfl
theorem node13106_eq : Flapjack.WordAlloc.removeDeadStructural input13106 value5 value1 value2 = (output13106, value6557, value1) := by
  rw [input13106_def, output13106_def]
  try (conv => lhs; cbv)
  try rfl

def value6558 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1629, 1617)])).val
theorem input13107_def : input13107 = (Flapjack.WordLangProgHOL.move 0 [(1629, 1617)]) := by
  unfold input13107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1629, 1617)])).val
theorem output13107_def : output13107 = (Flapjack.WordLangProgHOL.move 0 [(1629, 1617)]) := by
  unfold output13107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13107_skip : Flapjack.WordAlloc.isSkip output13107 = false := by
  rw [output13107_def]
  conv => lhs; cbv
  try rfl
theorem node13107_eq : Flapjack.WordAlloc.removeDeadStructural input13107 value6557 value1 value2 = (output13107, value6558, value1) := by
  rw [input13107_def, output13107_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13107 input13106)).val
theorem input13108_def : input13108 = (.seq input13107 input13106) := by
  unfold input13108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13107 output13106)).val
theorem output13108_def : output13108 = (.seq output13107 output13106) := by
  unfold output13108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13108_skip : Flapjack.WordAlloc.isSkip output13108 = false := by
  rw [output13108_def]
  conv => lhs; cbv
  try rfl
theorem node13108_eq : Flapjack.WordAlloc.removeDeadStructural input13108 value5 value1 value2 = (output13108, value6558, value1) := by
  rw [input13108_def, output13108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13106_eq]
  dsimp only
  rw [node13107_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6559 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1625 0#64))).val
theorem input13109_def : input13109 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1625 0#64)) := by
  unfold input13109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1625 0#64))).val
theorem output13109_def : output13109 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1625 0#64)) := by
  unfold output13109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13109_skip : Flapjack.WordAlloc.isSkip output13109 = false := by
  rw [output13109_def]
  conv => lhs; cbv
  try rfl
theorem node13109_eq : Flapjack.WordAlloc.removeDeadStructural input13109 value6558 value1 value2 = (output13109, value6559, value1) := by
  rw [input13109_def, output13109_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1621 0#64))).val
theorem input13110_def : input13110 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1621 0#64)) := by
  unfold input13110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13110_def : output13110 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13110_skip : Flapjack.WordAlloc.isSkip output13110 = true := by
  rw [output13110_def]
  conv => lhs; cbv
  try rfl
theorem node13110_eq : Flapjack.WordAlloc.removeDeadStructural input13110 value6559 value1 value2 = (output13110, value6559, value1) := by
  rw [input13110_def, output13110_def]
  try (conv => lhs; cbv)
  try rfl

def value6560 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1617 1613 (Flapjack.WordRegImm.imm 368#64))))).val
theorem input13111_def : input13111 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1617 1613 (Flapjack.WordRegImm.imm 368#64)))) := by
  unfold input13111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1617 1613 (Flapjack.WordRegImm.imm 368#64))))).val
theorem output13111_def : output13111 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1617 1613 (Flapjack.WordRegImm.imm 368#64)))) := by
  unfold output13111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13111_skip : Flapjack.WordAlloc.isSkip output13111 = false := by
  rw [output13111_def]
  conv => lhs; cbv
  try rfl
theorem node13111_eq : Flapjack.WordAlloc.removeDeadStructural input13111 value6559 value1 value2 = (output13111, value6560, value1) := by
  rw [input13111_def, output13111_def]
  try (conv => lhs; cbv)
  try rfl

def value6561 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1613 (Flapjack.WordLangAddr.addr 1609 18446744073709551104#64)))).val
theorem input13112_def : input13112 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1613 (Flapjack.WordLangAddr.addr 1609 18446744073709551104#64))) := by
  unfold input13112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1613 (Flapjack.WordLangAddr.addr 1609 18446744073709551104#64)))).val
theorem output13112_def : output13112 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1613 (Flapjack.WordLangAddr.addr 1609 18446744073709551104#64))) := by
  unfold output13112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13112_skip : Flapjack.WordAlloc.isSkip output13112 = false := by
  rw [output13112_def]
  conv => lhs; cbv
  try rfl
theorem node13112_eq : Flapjack.WordAlloc.removeDeadStructural input13112 value6560 value1 value2 = (output13112, value6561, value1) := by
  rw [input13112_def, output13112_def]
  try (conv => lhs; cbv)
  try rfl

def value6562 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1609 1605)).val
theorem input13113_def : input13113 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1609 1605) := by
  unfold input13113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1609 1605)).val
theorem output13113_def : output13113 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1609 1605) := by
  unfold output13113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13113_skip : Flapjack.WordAlloc.isSkip output13113 = false := by
  rw [output13113_def]
  conv => lhs; cbv
  try rfl
theorem node13113_eq : Flapjack.WordAlloc.removeDeadStructural input13113 value6561 value1 value2 = (output13113, value6562, value1) := by
  rw [input13113_def, output13113_def]
  try (conv => lhs; cbv)
  try rfl

def value6563 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1605 1601 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13114_def : input13114 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1605 1601 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1605 1601 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13114_def : output13114 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1605 1601 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13114_skip : Flapjack.WordAlloc.isSkip output13114 = false := by
  rw [output13114_def]
  conv => lhs; cbv
  try rfl
theorem node13114_eq : Flapjack.WordAlloc.removeDeadStructural input13114 value6562 value1 value2 = (output13114, value6563, value1) := by
  rw [input13114_def, output13114_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1601 Flapjack.WordStore.heapLength)).val
theorem input13115_def : input13115 = (Flapjack.WordLangProgHOL.get 1601 Flapjack.WordStore.heapLength) := by
  unfold input13115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1601 Flapjack.WordStore.heapLength)).val
theorem output13115_def : output13115 = (Flapjack.WordLangProgHOL.get 1601 Flapjack.WordStore.heapLength) := by
  unfold output13115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13115_skip : Flapjack.WordAlloc.isSkip output13115 = false := by
  rw [output13115_def]
  conv => lhs; cbv
  try rfl
theorem node13115_eq : Flapjack.WordAlloc.removeDeadStructural input13115 value6563 value1 value2 = (output13115, value5, value1) := by
  rw [input13115_def, output13115_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13115 input13114)).val
theorem input13116_def : input13116 = (.seq input13115 input13114) := by
  unfold input13116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13115 output13114)).val
theorem output13116_def : output13116 = (.seq output13115 output13114) := by
  unfold output13116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13116_skip : Flapjack.WordAlloc.isSkip output13116 = false := by
  rw [output13116_def]
  conv => lhs; cbv
  try rfl
theorem node13116_eq : Flapjack.WordAlloc.removeDeadStructural input13116 value6562 value1 value2 = (output13116, value5, value1) := by
  rw [input13116_def, output13116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13114_eq]
  dsimp only
  rw [node13115_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13116 input13113)).val
theorem input13117_def : input13117 = (.seq input13116 input13113) := by
  unfold input13117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13116 output13113)).val
theorem output13117_def : output13117 = (.seq output13116 output13113) := by
  unfold output13117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13117_skip : Flapjack.WordAlloc.isSkip output13117 = false := by
  rw [output13117_def]
  conv => lhs; cbv
  try rfl
theorem node13117_eq : Flapjack.WordAlloc.removeDeadStructural input13117 value6561 value1 value2 = (output13117, value5, value1) := by
  rw [input13117_def, output13117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13113_eq]
  dsimp only
  rw [node13116_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13117 input13112)).val
theorem input13118_def : input13118 = (.seq input13117 input13112) := by
  unfold input13118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13117 output13112)).val
theorem output13118_def : output13118 = (.seq output13117 output13112) := by
  unfold output13118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13118_skip : Flapjack.WordAlloc.isSkip output13118 = false := by
  rw [output13118_def]
  conv => lhs; cbv
  try rfl
theorem node13118_eq : Flapjack.WordAlloc.removeDeadStructural input13118 value6560 value1 value2 = (output13118, value5, value1) := by
  rw [input13118_def, output13118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13112_eq]
  dsimp only
  rw [node13117_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13118 input13111)).val
theorem input13119_def : input13119 = (.seq input13118 input13111) := by
  unfold input13119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13118 output13111)).val
theorem output13119_def : output13119 = (.seq output13118 output13111) := by
  unfold output13119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13119_skip : Flapjack.WordAlloc.isSkip output13119 = false := by
  rw [output13119_def]
  conv => lhs; cbv
  try rfl
theorem node13119_eq : Flapjack.WordAlloc.removeDeadStructural input13119 value6559 value1 value2 = (output13119, value5, value1) := by
  rw [input13119_def, output13119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13111_eq]
  dsimp only
  rw [node13118_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6564 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1593 (Flapjack.WordLangAddr.addr 1597 0#64)))).val
theorem input13120_def : input13120 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1593 (Flapjack.WordLangAddr.addr 1597 0#64))) := by
  unfold input13120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1593 (Flapjack.WordLangAddr.addr 1597 0#64)))).val
theorem output13120_def : output13120 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1593 (Flapjack.WordLangAddr.addr 1597 0#64))) := by
  unfold output13120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13120_skip : Flapjack.WordAlloc.isSkip output13120 = false := by
  rw [output13120_def]
  conv => lhs; cbv
  try rfl
theorem node13120_eq : Flapjack.WordAlloc.removeDeadStructural input13120 value5 value1 value2 = (output13120, value6564, value1) := by
  rw [input13120_def, output13120_def]
  try (conv => lhs; cbv)
  try rfl

def value6565 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1597, 1585)])).val
theorem input13121_def : input13121 = (Flapjack.WordLangProgHOL.move 0 [(1597, 1585)]) := by
  unfold input13121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1597, 1585)])).val
theorem output13121_def : output13121 = (Flapjack.WordLangProgHOL.move 0 [(1597, 1585)]) := by
  unfold output13121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13121_skip : Flapjack.WordAlloc.isSkip output13121 = false := by
  rw [output13121_def]
  conv => lhs; cbv
  try rfl
theorem node13121_eq : Flapjack.WordAlloc.removeDeadStructural input13121 value6564 value1 value2 = (output13121, value6565, value1) := by
  rw [input13121_def, output13121_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13121 input13120)).val
theorem input13122_def : input13122 = (.seq input13121 input13120) := by
  unfold input13122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13121 output13120)).val
theorem output13122_def : output13122 = (.seq output13121 output13120) := by
  unfold output13122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13122_skip : Flapjack.WordAlloc.isSkip output13122 = false := by
  rw [output13122_def]
  conv => lhs; cbv
  try rfl
theorem node13122_eq : Flapjack.WordAlloc.removeDeadStructural input13122 value5 value1 value2 = (output13122, value6565, value1) := by
  rw [input13122_def, output13122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13120_eq]
  dsimp only
  rw [node13121_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6566 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1593 0#64))).val
theorem input13123_def : input13123 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1593 0#64)) := by
  unfold input13123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1593 0#64))).val
theorem output13123_def : output13123 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1593 0#64)) := by
  unfold output13123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13123_skip : Flapjack.WordAlloc.isSkip output13123 = false := by
  rw [output13123_def]
  conv => lhs; cbv
  try rfl
theorem node13123_eq : Flapjack.WordAlloc.removeDeadStructural input13123 value6565 value1 value2 = (output13123, value6566, value1) := by
  rw [input13123_def, output13123_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1589 0#64))).val
theorem input13124_def : input13124 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1589 0#64)) := by
  unfold input13124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13124_def : output13124 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13124_skip : Flapjack.WordAlloc.isSkip output13124 = true := by
  rw [output13124_def]
  conv => lhs; cbv
  try rfl
theorem node13124_eq : Flapjack.WordAlloc.removeDeadStructural input13124 value6566 value1 value2 = (output13124, value6566, value1) := by
  rw [input13124_def, output13124_def]
  try (conv => lhs; cbv)
  try rfl

def value6567 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1585 1581 (Flapjack.WordRegImm.imm 360#64))))).val
theorem input13125_def : input13125 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1585 1581 (Flapjack.WordRegImm.imm 360#64)))) := by
  unfold input13125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1585 1581 (Flapjack.WordRegImm.imm 360#64))))).val
theorem output13125_def : output13125 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1585 1581 (Flapjack.WordRegImm.imm 360#64)))) := by
  unfold output13125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13125_skip : Flapjack.WordAlloc.isSkip output13125 = false := by
  rw [output13125_def]
  conv => lhs; cbv
  try rfl
theorem node13125_eq : Flapjack.WordAlloc.removeDeadStructural input13125 value6566 value1 value2 = (output13125, value6567, value1) := by
  rw [input13125_def, output13125_def]
  try (conv => lhs; cbv)
  try rfl

def value6568 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1581 (Flapjack.WordLangAddr.addr 1577 18446744073709551104#64)))).val
theorem input13126_def : input13126 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1581 (Flapjack.WordLangAddr.addr 1577 18446744073709551104#64))) := by
  unfold input13126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1581 (Flapjack.WordLangAddr.addr 1577 18446744073709551104#64)))).val
theorem output13126_def : output13126 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1581 (Flapjack.WordLangAddr.addr 1577 18446744073709551104#64))) := by
  unfold output13126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13126_skip : Flapjack.WordAlloc.isSkip output13126 = false := by
  rw [output13126_def]
  conv => lhs; cbv
  try rfl
theorem node13126_eq : Flapjack.WordAlloc.removeDeadStructural input13126 value6567 value1 value2 = (output13126, value6568, value1) := by
  rw [input13126_def, output13126_def]
  try (conv => lhs; cbv)
  try rfl

def value6569 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1577 1573)).val
theorem input13127_def : input13127 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1577 1573) := by
  unfold input13127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1577 1573)).val
theorem output13127_def : output13127 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1577 1573) := by
  unfold output13127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13127_skip : Flapjack.WordAlloc.isSkip output13127 = false := by
  rw [output13127_def]
  conv => lhs; cbv
  try rfl
theorem node13127_eq : Flapjack.WordAlloc.removeDeadStructural input13127 value6568 value1 value2 = (output13127, value6569, value1) := by
  rw [input13127_def, output13127_def]
  try (conv => lhs; cbv)
  try rfl

def value6570 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1573 1569 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13128_def : input13128 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1573 1569 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1573 1569 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13128_def : output13128 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1573 1569 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13128_skip : Flapjack.WordAlloc.isSkip output13128 = false := by
  rw [output13128_def]
  conv => lhs; cbv
  try rfl
theorem node13128_eq : Flapjack.WordAlloc.removeDeadStructural input13128 value6569 value1 value2 = (output13128, value6570, value1) := by
  rw [input13128_def, output13128_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1569 Flapjack.WordStore.heapLength)).val
theorem input13129_def : input13129 = (Flapjack.WordLangProgHOL.get 1569 Flapjack.WordStore.heapLength) := by
  unfold input13129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1569 Flapjack.WordStore.heapLength)).val
theorem output13129_def : output13129 = (Flapjack.WordLangProgHOL.get 1569 Flapjack.WordStore.heapLength) := by
  unfold output13129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13129_skip : Flapjack.WordAlloc.isSkip output13129 = false := by
  rw [output13129_def]
  conv => lhs; cbv
  try rfl
theorem node13129_eq : Flapjack.WordAlloc.removeDeadStructural input13129 value6570 value1 value2 = (output13129, value5, value1) := by
  rw [input13129_def, output13129_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13129 input13128)).val
theorem input13130_def : input13130 = (.seq input13129 input13128) := by
  unfold input13130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13129 output13128)).val
theorem output13130_def : output13130 = (.seq output13129 output13128) := by
  unfold output13130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13130_skip : Flapjack.WordAlloc.isSkip output13130 = false := by
  rw [output13130_def]
  conv => lhs; cbv
  try rfl
theorem node13130_eq : Flapjack.WordAlloc.removeDeadStructural input13130 value6569 value1 value2 = (output13130, value5, value1) := by
  rw [input13130_def, output13130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13128_eq]
  dsimp only
  rw [node13129_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13130 input13127)).val
theorem input13131_def : input13131 = (.seq input13130 input13127) := by
  unfold input13131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13130 output13127)).val
theorem output13131_def : output13131 = (.seq output13130 output13127) := by
  unfold output13131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13131_skip : Flapjack.WordAlloc.isSkip output13131 = false := by
  rw [output13131_def]
  conv => lhs; cbv
  try rfl
theorem node13131_eq : Flapjack.WordAlloc.removeDeadStructural input13131 value6568 value1 value2 = (output13131, value5, value1) := by
  rw [input13131_def, output13131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13127_eq]
  dsimp only
  rw [node13130_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13131 input13126)).val
theorem input13132_def : input13132 = (.seq input13131 input13126) := by
  unfold input13132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13131 output13126)).val
theorem output13132_def : output13132 = (.seq output13131 output13126) := by
  unfold output13132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13132_skip : Flapjack.WordAlloc.isSkip output13132 = false := by
  rw [output13132_def]
  conv => lhs; cbv
  try rfl
theorem node13132_eq : Flapjack.WordAlloc.removeDeadStructural input13132 value6567 value1 value2 = (output13132, value5, value1) := by
  rw [input13132_def, output13132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13126_eq]
  dsimp only
  rw [node13131_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13132 input13125)).val
theorem input13133_def : input13133 = (.seq input13132 input13125) := by
  unfold input13133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13132 output13125)).val
theorem output13133_def : output13133 = (.seq output13132 output13125) := by
  unfold output13133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13133_skip : Flapjack.WordAlloc.isSkip output13133 = false := by
  rw [output13133_def]
  conv => lhs; cbv
  try rfl
theorem node13133_eq : Flapjack.WordAlloc.removeDeadStructural input13133 value6566 value1 value2 = (output13133, value5, value1) := by
  rw [input13133_def, output13133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13125_eq]
  dsimp only
  rw [node13132_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6571 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1561 (Flapjack.WordLangAddr.addr 1565 0#64)))).val
theorem input13134_def : input13134 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1561 (Flapjack.WordLangAddr.addr 1565 0#64))) := by
  unfold input13134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1561 (Flapjack.WordLangAddr.addr 1565 0#64)))).val
theorem output13134_def : output13134 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1561 (Flapjack.WordLangAddr.addr 1565 0#64))) := by
  unfold output13134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13134_skip : Flapjack.WordAlloc.isSkip output13134 = false := by
  rw [output13134_def]
  conv => lhs; cbv
  try rfl
theorem node13134_eq : Flapjack.WordAlloc.removeDeadStructural input13134 value5 value1 value2 = (output13134, value6571, value1) := by
  rw [input13134_def, output13134_def]
  try (conv => lhs; cbv)
  try rfl

def value6572 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1565, 1553)])).val
theorem input13135_def : input13135 = (Flapjack.WordLangProgHOL.move 0 [(1565, 1553)]) := by
  unfold input13135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1565, 1553)])).val
theorem output13135_def : output13135 = (Flapjack.WordLangProgHOL.move 0 [(1565, 1553)]) := by
  unfold output13135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13135_skip : Flapjack.WordAlloc.isSkip output13135 = false := by
  rw [output13135_def]
  conv => lhs; cbv
  try rfl
theorem node13135_eq : Flapjack.WordAlloc.removeDeadStructural input13135 value6571 value1 value2 = (output13135, value6572, value1) := by
  rw [input13135_def, output13135_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13135 input13134)).val
theorem input13136_def : input13136 = (.seq input13135 input13134) := by
  unfold input13136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13135 output13134)).val
theorem output13136_def : output13136 = (.seq output13135 output13134) := by
  unfold output13136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13136_skip : Flapjack.WordAlloc.isSkip output13136 = false := by
  rw [output13136_def]
  conv => lhs; cbv
  try rfl
theorem node13136_eq : Flapjack.WordAlloc.removeDeadStructural input13136 value5 value1 value2 = (output13136, value6572, value1) := by
  rw [input13136_def, output13136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13134_eq]
  dsimp only
  rw [node13135_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6573 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1561 0#64))).val
theorem input13137_def : input13137 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1561 0#64)) := by
  unfold input13137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1561 0#64))).val
theorem output13137_def : output13137 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1561 0#64)) := by
  unfold output13137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13137_skip : Flapjack.WordAlloc.isSkip output13137 = false := by
  rw [output13137_def]
  conv => lhs; cbv
  try rfl
theorem node13137_eq : Flapjack.WordAlloc.removeDeadStructural input13137 value6572 value1 value2 = (output13137, value6573, value1) := by
  rw [input13137_def, output13137_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1557 0#64))).val
theorem input13138_def : input13138 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1557 0#64)) := by
  unfold input13138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13138_def : output13138 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13138_skip : Flapjack.WordAlloc.isSkip output13138 = true := by
  rw [output13138_def]
  conv => lhs; cbv
  try rfl
theorem node13138_eq : Flapjack.WordAlloc.removeDeadStructural input13138 value6573 value1 value2 = (output13138, value6573, value1) := by
  rw [input13138_def, output13138_def]
  try (conv => lhs; cbv)
  try rfl

def value6574 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1553 1549 (Flapjack.WordRegImm.imm 352#64))))).val
theorem input13139_def : input13139 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1553 1549 (Flapjack.WordRegImm.imm 352#64)))) := by
  unfold input13139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1553 1549 (Flapjack.WordRegImm.imm 352#64))))).val
theorem output13139_def : output13139 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1553 1549 (Flapjack.WordRegImm.imm 352#64)))) := by
  unfold output13139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13139_skip : Flapjack.WordAlloc.isSkip output13139 = false := by
  rw [output13139_def]
  conv => lhs; cbv
  try rfl
theorem node13139_eq : Flapjack.WordAlloc.removeDeadStructural input13139 value6573 value1 value2 = (output13139, value6574, value1) := by
  rw [input13139_def, output13139_def]
  try (conv => lhs; cbv)
  try rfl

def value6575 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1549 (Flapjack.WordLangAddr.addr 1545 18446744073709551104#64)))).val
theorem input13140_def : input13140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1549 (Flapjack.WordLangAddr.addr 1545 18446744073709551104#64))) := by
  unfold input13140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1549 (Flapjack.WordLangAddr.addr 1545 18446744073709551104#64)))).val
theorem output13140_def : output13140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1549 (Flapjack.WordLangAddr.addr 1545 18446744073709551104#64))) := by
  unfold output13140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13140_skip : Flapjack.WordAlloc.isSkip output13140 = false := by
  rw [output13140_def]
  conv => lhs; cbv
  try rfl
theorem node13140_eq : Flapjack.WordAlloc.removeDeadStructural input13140 value6574 value1 value2 = (output13140, value6575, value1) := by
  rw [input13140_def, output13140_def]
  try (conv => lhs; cbv)
  try rfl

def value6576 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1545 1541)).val
theorem input13141_def : input13141 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1545 1541) := by
  unfold input13141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1545 1541)).val
theorem output13141_def : output13141 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1545 1541) := by
  unfold output13141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13141_skip : Flapjack.WordAlloc.isSkip output13141 = false := by
  rw [output13141_def]
  conv => lhs; cbv
  try rfl
theorem node13141_eq : Flapjack.WordAlloc.removeDeadStructural input13141 value6575 value1 value2 = (output13141, value6576, value1) := by
  rw [input13141_def, output13141_def]
  try (conv => lhs; cbv)
  try rfl

def value6577 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1541 1537 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13142_def : input13142 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1541 1537 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1541 1537 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13142_def : output13142 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1541 1537 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13142_skip : Flapjack.WordAlloc.isSkip output13142 = false := by
  rw [output13142_def]
  conv => lhs; cbv
  try rfl
theorem node13142_eq : Flapjack.WordAlloc.removeDeadStructural input13142 value6576 value1 value2 = (output13142, value6577, value1) := by
  rw [input13142_def, output13142_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1537 Flapjack.WordStore.heapLength)).val
theorem input13143_def : input13143 = (Flapjack.WordLangProgHOL.get 1537 Flapjack.WordStore.heapLength) := by
  unfold input13143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1537 Flapjack.WordStore.heapLength)).val
theorem output13143_def : output13143 = (Flapjack.WordLangProgHOL.get 1537 Flapjack.WordStore.heapLength) := by
  unfold output13143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13143_skip : Flapjack.WordAlloc.isSkip output13143 = false := by
  rw [output13143_def]
  conv => lhs; cbv
  try rfl
theorem node13143_eq : Flapjack.WordAlloc.removeDeadStructural input13143 value6577 value1 value2 = (output13143, value5, value1) := by
  rw [input13143_def, output13143_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13143 input13142)).val
theorem input13144_def : input13144 = (.seq input13143 input13142) := by
  unfold input13144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13143 output13142)).val
theorem output13144_def : output13144 = (.seq output13143 output13142) := by
  unfold output13144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13144_skip : Flapjack.WordAlloc.isSkip output13144 = false := by
  rw [output13144_def]
  conv => lhs; cbv
  try rfl
theorem node13144_eq : Flapjack.WordAlloc.removeDeadStructural input13144 value6576 value1 value2 = (output13144, value5, value1) := by
  rw [input13144_def, output13144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13142_eq]
  dsimp only
  rw [node13143_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13144 input13141)).val
theorem input13145_def : input13145 = (.seq input13144 input13141) := by
  unfold input13145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13144 output13141)).val
theorem output13145_def : output13145 = (.seq output13144 output13141) := by
  unfold output13145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13145_skip : Flapjack.WordAlloc.isSkip output13145 = false := by
  rw [output13145_def]
  conv => lhs; cbv
  try rfl
theorem node13145_eq : Flapjack.WordAlloc.removeDeadStructural input13145 value6575 value1 value2 = (output13145, value5, value1) := by
  rw [input13145_def, output13145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13141_eq]
  dsimp only
  rw [node13144_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13145 input13140)).val
theorem input13146_def : input13146 = (.seq input13145 input13140) := by
  unfold input13146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13145 output13140)).val
theorem output13146_def : output13146 = (.seq output13145 output13140) := by
  unfold output13146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13146_skip : Flapjack.WordAlloc.isSkip output13146 = false := by
  rw [output13146_def]
  conv => lhs; cbv
  try rfl
theorem node13146_eq : Flapjack.WordAlloc.removeDeadStructural input13146 value6574 value1 value2 = (output13146, value5, value1) := by
  rw [input13146_def, output13146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13140_eq]
  dsimp only
  rw [node13145_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13146 input13139)).val
theorem input13147_def : input13147 = (.seq input13146 input13139) := by
  unfold input13147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13146 output13139)).val
theorem output13147_def : output13147 = (.seq output13146 output13139) := by
  unfold output13147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13147_skip : Flapjack.WordAlloc.isSkip output13147 = false := by
  rw [output13147_def]
  conv => lhs; cbv
  try rfl
theorem node13147_eq : Flapjack.WordAlloc.removeDeadStructural input13147 value6573 value1 value2 = (output13147, value5, value1) := by
  rw [input13147_def, output13147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13139_eq]
  dsimp only
  rw [node13146_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6578 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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

@[irreducible, cbv_opaque] def input13148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1529 (Flapjack.WordLangAddr.addr 1533 0#64)))).val
theorem input13148_def : input13148 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1529 (Flapjack.WordLangAddr.addr 1533 0#64))) := by
  unfold input13148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1529 (Flapjack.WordLangAddr.addr 1533 0#64)))).val
theorem output13148_def : output13148 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1529 (Flapjack.WordLangAddr.addr 1533 0#64))) := by
  unfold output13148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13148_skip : Flapjack.WordAlloc.isSkip output13148 = false := by
  rw [output13148_def]
  conv => lhs; cbv
  try rfl
theorem node13148_eq : Flapjack.WordAlloc.removeDeadStructural input13148 value5 value1 value2 = (output13148, value6578, value1) := by
  rw [input13148_def, output13148_def]
  try (conv => lhs; cbv)
  try rfl

def value6579 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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

@[irreducible, cbv_opaque] def input13149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1533, 1521)])).val
theorem input13149_def : input13149 = (Flapjack.WordLangProgHOL.move 0 [(1533, 1521)]) := by
  unfold input13149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1533, 1521)])).val
theorem output13149_def : output13149 = (Flapjack.WordLangProgHOL.move 0 [(1533, 1521)]) := by
  unfold output13149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13149_skip : Flapjack.WordAlloc.isSkip output13149 = false := by
  rw [output13149_def]
  conv => lhs; cbv
  try rfl
theorem node13149_eq : Flapjack.WordAlloc.removeDeadStructural input13149 value6578 value1 value2 = (output13149, value6579, value1) := by
  rw [input13149_def, output13149_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13149 input13148)).val
theorem input13150_def : input13150 = (.seq input13149 input13148) := by
  unfold input13150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13149 output13148)).val
theorem output13150_def : output13150 = (.seq output13149 output13148) := by
  unfold output13150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13150_skip : Flapjack.WordAlloc.isSkip output13150 = false := by
  rw [output13150_def]
  conv => lhs; cbv
  try rfl
theorem node13150_eq : Flapjack.WordAlloc.removeDeadStructural input13150 value5 value1 value2 = (output13150, value6579, value1) := by
  rw [input13150_def, output13150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13148_eq]
  dsimp only
  rw [node13149_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6580 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1529 0#64))).val
theorem input13151_def : input13151 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1529 0#64)) := by
  unfold input13151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1529 0#64))).val
theorem output13151_def : output13151 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1529 0#64)) := by
  unfold output13151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13151_skip : Flapjack.WordAlloc.isSkip output13151 = false := by
  rw [output13151_def]
  conv => lhs; cbv
  try rfl
theorem node13151_eq : Flapjack.WordAlloc.removeDeadStructural input13151 value6579 value1 value2 = (output13151, value6580, value1) := by
  rw [input13151_def, output13151_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1525 0#64))).val
theorem input13152_def : input13152 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1525 0#64)) := by
  unfold input13152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13152_def : output13152 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13152_skip : Flapjack.WordAlloc.isSkip output13152 = true := by
  rw [output13152_def]
  conv => lhs; cbv
  try rfl
theorem node13152_eq : Flapjack.WordAlloc.removeDeadStructural input13152 value6580 value1 value2 = (output13152, value6580, value1) := by
  rw [input13152_def, output13152_def]
  try (conv => lhs; cbv)
  try rfl

def value6581 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1521 1517 (Flapjack.WordRegImm.imm 344#64))))).val
theorem input13153_def : input13153 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1521 1517 (Flapjack.WordRegImm.imm 344#64)))) := by
  unfold input13153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1521 1517 (Flapjack.WordRegImm.imm 344#64))))).val
theorem output13153_def : output13153 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1521 1517 (Flapjack.WordRegImm.imm 344#64)))) := by
  unfold output13153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13153_skip : Flapjack.WordAlloc.isSkip output13153 = false := by
  rw [output13153_def]
  conv => lhs; cbv
  try rfl
theorem node13153_eq : Flapjack.WordAlloc.removeDeadStructural input13153 value6580 value1 value2 = (output13153, value6581, value1) := by
  rw [input13153_def, output13153_def]
  try (conv => lhs; cbv)
  try rfl

def value6582 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1517 (Flapjack.WordLangAddr.addr 1513 18446744073709551104#64)))).val
theorem input13154_def : input13154 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1517 (Flapjack.WordLangAddr.addr 1513 18446744073709551104#64))) := by
  unfold input13154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1517 (Flapjack.WordLangAddr.addr 1513 18446744073709551104#64)))).val
theorem output13154_def : output13154 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1517 (Flapjack.WordLangAddr.addr 1513 18446744073709551104#64))) := by
  unfold output13154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13154_skip : Flapjack.WordAlloc.isSkip output13154 = false := by
  rw [output13154_def]
  conv => lhs; cbv
  try rfl
theorem node13154_eq : Flapjack.WordAlloc.removeDeadStructural input13154 value6581 value1 value2 = (output13154, value6582, value1) := by
  rw [input13154_def, output13154_def]
  try (conv => lhs; cbv)
  try rfl

def value6583 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1513 1509)).val
theorem input13155_def : input13155 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1513 1509) := by
  unfold input13155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1513 1509)).val
theorem output13155_def : output13155 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1513 1509) := by
  unfold output13155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13155_skip : Flapjack.WordAlloc.isSkip output13155 = false := by
  rw [output13155_def]
  conv => lhs; cbv
  try rfl
theorem node13155_eq : Flapjack.WordAlloc.removeDeadStructural input13155 value6582 value1 value2 = (output13155, value6583, value1) := by
  rw [input13155_def, output13155_def]
  try (conv => lhs; cbv)
  try rfl

def value6584 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1509 1505 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13156_def : input13156 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1509 1505 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1509 1505 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13156_def : output13156 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1509 1505 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13156_skip : Flapjack.WordAlloc.isSkip output13156 = false := by
  rw [output13156_def]
  conv => lhs; cbv
  try rfl
theorem node13156_eq : Flapjack.WordAlloc.removeDeadStructural input13156 value6583 value1 value2 = (output13156, value6584, value1) := by
  rw [input13156_def, output13156_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1505 Flapjack.WordStore.heapLength)).val
theorem input13157_def : input13157 = (Flapjack.WordLangProgHOL.get 1505 Flapjack.WordStore.heapLength) := by
  unfold input13157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1505 Flapjack.WordStore.heapLength)).val
theorem output13157_def : output13157 = (Flapjack.WordLangProgHOL.get 1505 Flapjack.WordStore.heapLength) := by
  unfold output13157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13157_skip : Flapjack.WordAlloc.isSkip output13157 = false := by
  rw [output13157_def]
  conv => lhs; cbv
  try rfl
theorem node13157_eq : Flapjack.WordAlloc.removeDeadStructural input13157 value6584 value1 value2 = (output13157, value5, value1) := by
  rw [input13157_def, output13157_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13157 input13156)).val
theorem input13158_def : input13158 = (.seq input13157 input13156) := by
  unfold input13158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13157 output13156)).val
theorem output13158_def : output13158 = (.seq output13157 output13156) := by
  unfold output13158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13158_skip : Flapjack.WordAlloc.isSkip output13158 = false := by
  rw [output13158_def]
  conv => lhs; cbv
  try rfl
theorem node13158_eq : Flapjack.WordAlloc.removeDeadStructural input13158 value6583 value1 value2 = (output13158, value5, value1) := by
  rw [input13158_def, output13158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13156_eq]
  dsimp only
  rw [node13157_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13158 input13155)).val
theorem input13159_def : input13159 = (.seq input13158 input13155) := by
  unfold input13159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13158 output13155)).val
theorem output13159_def : output13159 = (.seq output13158 output13155) := by
  unfold output13159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13159_skip : Flapjack.WordAlloc.isSkip output13159 = false := by
  rw [output13159_def]
  conv => lhs; cbv
  try rfl
theorem node13159_eq : Flapjack.WordAlloc.removeDeadStructural input13159 value6582 value1 value2 = (output13159, value5, value1) := by
  rw [input13159_def, output13159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13155_eq]
  dsimp only
  rw [node13158_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13159 input13154)).val
theorem input13160_def : input13160 = (.seq input13159 input13154) := by
  unfold input13160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13159 output13154)).val
theorem output13160_def : output13160 = (.seq output13159 output13154) := by
  unfold output13160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13160_skip : Flapjack.WordAlloc.isSkip output13160 = false := by
  rw [output13160_def]
  conv => lhs; cbv
  try rfl
theorem node13160_eq : Flapjack.WordAlloc.removeDeadStructural input13160 value6581 value1 value2 = (output13160, value5, value1) := by
  rw [input13160_def, output13160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13154_eq]
  dsimp only
  rw [node13159_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13160 input13153)).val
theorem input13161_def : input13161 = (.seq input13160 input13153) := by
  unfold input13161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13160 output13153)).val
theorem output13161_def : output13161 = (.seq output13160 output13153) := by
  unfold output13161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13161_skip : Flapjack.WordAlloc.isSkip output13161 = false := by
  rw [output13161_def]
  conv => lhs; cbv
  try rfl
theorem node13161_eq : Flapjack.WordAlloc.removeDeadStructural input13161 value6580 value1 value2 = (output13161, value5, value1) := by
  rw [input13161_def, output13161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13153_eq]
  dsimp only
  rw [node13160_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6585 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1497 (Flapjack.WordLangAddr.addr 1501 0#64)))).val
theorem input13162_def : input13162 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1497 (Flapjack.WordLangAddr.addr 1501 0#64))) := by
  unfold input13162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1497 (Flapjack.WordLangAddr.addr 1501 0#64)))).val
theorem output13162_def : output13162 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1497 (Flapjack.WordLangAddr.addr 1501 0#64))) := by
  unfold output13162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13162_skip : Flapjack.WordAlloc.isSkip output13162 = false := by
  rw [output13162_def]
  conv => lhs; cbv
  try rfl
theorem node13162_eq : Flapjack.WordAlloc.removeDeadStructural input13162 value5 value1 value2 = (output13162, value6585, value1) := by
  rw [input13162_def, output13162_def]
  try (conv => lhs; cbv)
  try rfl

def value6586 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1501, 1489)])).val
theorem input13163_def : input13163 = (Flapjack.WordLangProgHOL.move 0 [(1501, 1489)]) := by
  unfold input13163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1501, 1489)])).val
theorem output13163_def : output13163 = (Flapjack.WordLangProgHOL.move 0 [(1501, 1489)]) := by
  unfold output13163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13163_skip : Flapjack.WordAlloc.isSkip output13163 = false := by
  rw [output13163_def]
  conv => lhs; cbv
  try rfl
theorem node13163_eq : Flapjack.WordAlloc.removeDeadStructural input13163 value6585 value1 value2 = (output13163, value6586, value1) := by
  rw [input13163_def, output13163_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13163 input13162)).val
theorem input13164_def : input13164 = (.seq input13163 input13162) := by
  unfold input13164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13163 output13162)).val
theorem output13164_def : output13164 = (.seq output13163 output13162) := by
  unfold output13164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13164_skip : Flapjack.WordAlloc.isSkip output13164 = false := by
  rw [output13164_def]
  conv => lhs; cbv
  try rfl
theorem node13164_eq : Flapjack.WordAlloc.removeDeadStructural input13164 value5 value1 value2 = (output13164, value6586, value1) := by
  rw [input13164_def, output13164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13162_eq]
  dsimp only
  rw [node13163_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6587 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1497 4#64))).val
theorem input13165_def : input13165 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1497 4#64)) := by
  unfold input13165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1497 4#64))).val
theorem output13165_def : output13165 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1497 4#64)) := by
  unfold output13165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13165_skip : Flapjack.WordAlloc.isSkip output13165 = false := by
  rw [output13165_def]
  conv => lhs; cbv
  try rfl
theorem node13165_eq : Flapjack.WordAlloc.removeDeadStructural input13165 value6586 value1 value2 = (output13165, value6587, value1) := by
  rw [input13165_def, output13165_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1493 4#64))).val
theorem input13166_def : input13166 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1493 4#64)) := by
  unfold input13166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13166_def : output13166 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13166_skip : Flapjack.WordAlloc.isSkip output13166 = true := by
  rw [output13166_def]
  conv => lhs; cbv
  try rfl
theorem node13166_eq : Flapjack.WordAlloc.removeDeadStructural input13166 value6587 value1 value2 = (output13166, value6587, value1) := by
  rw [input13166_def, output13166_def]
  try (conv => lhs; cbv)
  try rfl

def value6588 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1489 1485 (Flapjack.WordRegImm.imm 336#64))))).val
theorem input13167_def : input13167 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1489 1485 (Flapjack.WordRegImm.imm 336#64)))) := by
  unfold input13167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1489 1485 (Flapjack.WordRegImm.imm 336#64))))).val
theorem output13167_def : output13167 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1489 1485 (Flapjack.WordRegImm.imm 336#64)))) := by
  unfold output13167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13167_skip : Flapjack.WordAlloc.isSkip output13167 = false := by
  rw [output13167_def]
  conv => lhs; cbv
  try rfl
theorem node13167_eq : Flapjack.WordAlloc.removeDeadStructural input13167 value6587 value1 value2 = (output13167, value6588, value1) := by
  rw [input13167_def, output13167_def]
  try (conv => lhs; cbv)
  try rfl

def value6589 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1485 (Flapjack.WordLangAddr.addr 1481 18446744073709551104#64)))).val
theorem input13168_def : input13168 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1485 (Flapjack.WordLangAddr.addr 1481 18446744073709551104#64))) := by
  unfold input13168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1485 (Flapjack.WordLangAddr.addr 1481 18446744073709551104#64)))).val
theorem output13168_def : output13168 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1485 (Flapjack.WordLangAddr.addr 1481 18446744073709551104#64))) := by
  unfold output13168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13168_skip : Flapjack.WordAlloc.isSkip output13168 = false := by
  rw [output13168_def]
  conv => lhs; cbv
  try rfl
theorem node13168_eq : Flapjack.WordAlloc.removeDeadStructural input13168 value6588 value1 value2 = (output13168, value6589, value1) := by
  rw [input13168_def, output13168_def]
  try (conv => lhs; cbv)
  try rfl

def value6590 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1481 1477)).val
theorem input13169_def : input13169 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1481 1477) := by
  unfold input13169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1481 1477)).val
theorem output13169_def : output13169 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1481 1477) := by
  unfold output13169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13169_skip : Flapjack.WordAlloc.isSkip output13169 = false := by
  rw [output13169_def]
  conv => lhs; cbv
  try rfl
theorem node13169_eq : Flapjack.WordAlloc.removeDeadStructural input13169 value6589 value1 value2 = (output13169, value6590, value1) := by
  rw [input13169_def, output13169_def]
  try (conv => lhs; cbv)
  try rfl

def value6591 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1477 1473 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13170_def : input13170 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1477 1473 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1477 1473 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13170_def : output13170 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1477 1473 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13170_skip : Flapjack.WordAlloc.isSkip output13170 = false := by
  rw [output13170_def]
  conv => lhs; cbv
  try rfl
theorem node13170_eq : Flapjack.WordAlloc.removeDeadStructural input13170 value6590 value1 value2 = (output13170, value6591, value1) := by
  rw [input13170_def, output13170_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1473 Flapjack.WordStore.heapLength)).val
theorem input13171_def : input13171 = (Flapjack.WordLangProgHOL.get 1473 Flapjack.WordStore.heapLength) := by
  unfold input13171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1473 Flapjack.WordStore.heapLength)).val
theorem output13171_def : output13171 = (Flapjack.WordLangProgHOL.get 1473 Flapjack.WordStore.heapLength) := by
  unfold output13171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13171_skip : Flapjack.WordAlloc.isSkip output13171 = false := by
  rw [output13171_def]
  conv => lhs; cbv
  try rfl
theorem node13171_eq : Flapjack.WordAlloc.removeDeadStructural input13171 value6591 value1 value2 = (output13171, value5, value1) := by
  rw [input13171_def, output13171_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13171 input13170)).val
theorem input13172_def : input13172 = (.seq input13171 input13170) := by
  unfold input13172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13171 output13170)).val
theorem output13172_def : output13172 = (.seq output13171 output13170) := by
  unfold output13172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13172_skip : Flapjack.WordAlloc.isSkip output13172 = false := by
  rw [output13172_def]
  conv => lhs; cbv
  try rfl
theorem node13172_eq : Flapjack.WordAlloc.removeDeadStructural input13172 value6590 value1 value2 = (output13172, value5, value1) := by
  rw [input13172_def, output13172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13170_eq]
  dsimp only
  rw [node13171_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13172 input13169)).val
theorem input13173_def : input13173 = (.seq input13172 input13169) := by
  unfold input13173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13172 output13169)).val
theorem output13173_def : output13173 = (.seq output13172 output13169) := by
  unfold output13173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13173_skip : Flapjack.WordAlloc.isSkip output13173 = false := by
  rw [output13173_def]
  conv => lhs; cbv
  try rfl
theorem node13173_eq : Flapjack.WordAlloc.removeDeadStructural input13173 value6589 value1 value2 = (output13173, value5, value1) := by
  rw [input13173_def, output13173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13169_eq]
  dsimp only
  rw [node13172_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13173 input13168)).val
theorem input13174_def : input13174 = (.seq input13173 input13168) := by
  unfold input13174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13173 output13168)).val
theorem output13174_def : output13174 = (.seq output13173 output13168) := by
  unfold output13174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13174_skip : Flapjack.WordAlloc.isSkip output13174 = false := by
  rw [output13174_def]
  conv => lhs; cbv
  try rfl
theorem node13174_eq : Flapjack.WordAlloc.removeDeadStructural input13174 value6588 value1 value2 = (output13174, value5, value1) := by
  rw [input13174_def, output13174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13168_eq]
  dsimp only
  rw [node13173_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13174 input13167)).val
theorem input13175_def : input13175 = (.seq input13174 input13167) := by
  unfold input13175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13174 output13167)).val
theorem output13175_def : output13175 = (.seq output13174 output13167) := by
  unfold output13175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13175_skip : Flapjack.WordAlloc.isSkip output13175 = false := by
  rw [output13175_def]
  conv => lhs; cbv
  try rfl
theorem node13175_eq : Flapjack.WordAlloc.removeDeadStructural input13175 value6587 value1 value2 = (output13175, value5, value1) := by
  rw [input13175_def, output13175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13167_eq]
  dsimp only
  rw [node13174_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6592 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1465 (Flapjack.WordLangAddr.addr 1469 0#64)))).val
theorem input13176_def : input13176 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1465 (Flapjack.WordLangAddr.addr 1469 0#64))) := by
  unfold input13176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1465 (Flapjack.WordLangAddr.addr 1469 0#64)))).val
theorem output13176_def : output13176 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1465 (Flapjack.WordLangAddr.addr 1469 0#64))) := by
  unfold output13176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13176_skip : Flapjack.WordAlloc.isSkip output13176 = false := by
  rw [output13176_def]
  conv => lhs; cbv
  try rfl
theorem node13176_eq : Flapjack.WordAlloc.removeDeadStructural input13176 value5 value1 value2 = (output13176, value6592, value1) := by
  rw [input13176_def, output13176_def]
  try (conv => lhs; cbv)
  try rfl

def value6593 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1469, 1457)])).val
theorem input13177_def : input13177 = (Flapjack.WordLangProgHOL.move 0 [(1469, 1457)]) := by
  unfold input13177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1469, 1457)])).val
theorem output13177_def : output13177 = (Flapjack.WordLangProgHOL.move 0 [(1469, 1457)]) := by
  unfold output13177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13177_skip : Flapjack.WordAlloc.isSkip output13177 = false := by
  rw [output13177_def]
  conv => lhs; cbv
  try rfl
theorem node13177_eq : Flapjack.WordAlloc.removeDeadStructural input13177 value6592 value1 value2 = (output13177, value6593, value1) := by
  rw [input13177_def, output13177_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13177 input13176)).val
theorem input13178_def : input13178 = (.seq input13177 input13176) := by
  unfold input13178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13177 output13176)).val
theorem output13178_def : output13178 = (.seq output13177 output13176) := by
  unfold output13178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13178_skip : Flapjack.WordAlloc.isSkip output13178 = false := by
  rw [output13178_def]
  conv => lhs; cbv
  try rfl
theorem node13178_eq : Flapjack.WordAlloc.removeDeadStructural input13178 value5 value1 value2 = (output13178, value6593, value1) := by
  rw [input13178_def, output13178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13176_eq]
  dsimp only
  rw [node13177_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6594 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1465 0#64))).val
theorem input13179_def : input13179 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1465 0#64)) := by
  unfold input13179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1465 0#64))).val
theorem output13179_def : output13179 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1465 0#64)) := by
  unfold output13179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13179_skip : Flapjack.WordAlloc.isSkip output13179 = false := by
  rw [output13179_def]
  conv => lhs; cbv
  try rfl
theorem node13179_eq : Flapjack.WordAlloc.removeDeadStructural input13179 value6593 value1 value2 = (output13179, value6594, value1) := by
  rw [input13179_def, output13179_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1461 0#64))).val
theorem input13180_def : input13180 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1461 0#64)) := by
  unfold input13180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13180_def : output13180 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13180_skip : Flapjack.WordAlloc.isSkip output13180 = true := by
  rw [output13180_def]
  conv => lhs; cbv
  try rfl
theorem node13180_eq : Flapjack.WordAlloc.removeDeadStructural input13180 value6594 value1 value2 = (output13180, value6594, value1) := by
  rw [input13180_def, output13180_def]
  try (conv => lhs; cbv)
  try rfl

def value6595 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1457 1453 (Flapjack.WordRegImm.imm 328#64))))).val
theorem input13181_def : input13181 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1457 1453 (Flapjack.WordRegImm.imm 328#64)))) := by
  unfold input13181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1457 1453 (Flapjack.WordRegImm.imm 328#64))))).val
theorem output13181_def : output13181 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1457 1453 (Flapjack.WordRegImm.imm 328#64)))) := by
  unfold output13181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13181_skip : Flapjack.WordAlloc.isSkip output13181 = false := by
  rw [output13181_def]
  conv => lhs; cbv
  try rfl
theorem node13181_eq : Flapjack.WordAlloc.removeDeadStructural input13181 value6594 value1 value2 = (output13181, value6595, value1) := by
  rw [input13181_def, output13181_def]
  try (conv => lhs; cbv)
  try rfl

def value6596 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1453 (Flapjack.WordLangAddr.addr 1449 18446744073709551104#64)))).val
theorem input13182_def : input13182 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1453 (Flapjack.WordLangAddr.addr 1449 18446744073709551104#64))) := by
  unfold input13182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1453 (Flapjack.WordLangAddr.addr 1449 18446744073709551104#64)))).val
theorem output13182_def : output13182 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1453 (Flapjack.WordLangAddr.addr 1449 18446744073709551104#64))) := by
  unfold output13182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13182_skip : Flapjack.WordAlloc.isSkip output13182 = false := by
  rw [output13182_def]
  conv => lhs; cbv
  try rfl
theorem node13182_eq : Flapjack.WordAlloc.removeDeadStructural input13182 value6595 value1 value2 = (output13182, value6596, value1) := by
  rw [input13182_def, output13182_def]
  try (conv => lhs; cbv)
  try rfl

def value6597 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1449 1445)).val
theorem input13183_def : input13183 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1449 1445) := by
  unfold input13183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1449 1445)).val
theorem output13183_def : output13183 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1449 1445) := by
  unfold output13183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13183_skip : Flapjack.WordAlloc.isSkip output13183 = false := by
  rw [output13183_def]
  conv => lhs; cbv
  try rfl
theorem node13183_eq : Flapjack.WordAlloc.removeDeadStructural input13183 value6596 value1 value2 = (output13183, value6597, value1) := by
  rw [input13183_def, output13183_def]
  try (conv => lhs; cbv)
  try rfl

def value6598 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1445 1441 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13184_def : input13184 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1445 1441 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1445 1441 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13184_def : output13184 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1445 1441 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13184_skip : Flapjack.WordAlloc.isSkip output13184 = false := by
  rw [output13184_def]
  conv => lhs; cbv
  try rfl
theorem node13184_eq : Flapjack.WordAlloc.removeDeadStructural input13184 value6597 value1 value2 = (output13184, value6598, value1) := by
  rw [input13184_def, output13184_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1441 Flapjack.WordStore.heapLength)).val
theorem input13185_def : input13185 = (Flapjack.WordLangProgHOL.get 1441 Flapjack.WordStore.heapLength) := by
  unfold input13185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1441 Flapjack.WordStore.heapLength)).val
theorem output13185_def : output13185 = (Flapjack.WordLangProgHOL.get 1441 Flapjack.WordStore.heapLength) := by
  unfold output13185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13185_skip : Flapjack.WordAlloc.isSkip output13185 = false := by
  rw [output13185_def]
  conv => lhs; cbv
  try rfl
theorem node13185_eq : Flapjack.WordAlloc.removeDeadStructural input13185 value6598 value1 value2 = (output13185, value5, value1) := by
  rw [input13185_def, output13185_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13185 input13184)).val
theorem input13186_def : input13186 = (.seq input13185 input13184) := by
  unfold input13186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13185 output13184)).val
theorem output13186_def : output13186 = (.seq output13185 output13184) := by
  unfold output13186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13186_skip : Flapjack.WordAlloc.isSkip output13186 = false := by
  rw [output13186_def]
  conv => lhs; cbv
  try rfl
theorem node13186_eq : Flapjack.WordAlloc.removeDeadStructural input13186 value6597 value1 value2 = (output13186, value5, value1) := by
  rw [input13186_def, output13186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13184_eq]
  dsimp only
  rw [node13185_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13186 input13183)).val
theorem input13187_def : input13187 = (.seq input13186 input13183) := by
  unfold input13187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13186 output13183)).val
theorem output13187_def : output13187 = (.seq output13186 output13183) := by
  unfold output13187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13187_skip : Flapjack.WordAlloc.isSkip output13187 = false := by
  rw [output13187_def]
  conv => lhs; cbv
  try rfl
theorem node13187_eq : Flapjack.WordAlloc.removeDeadStructural input13187 value6596 value1 value2 = (output13187, value5, value1) := by
  rw [input13187_def, output13187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13183_eq]
  dsimp only
  rw [node13186_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13187 input13182)).val
theorem input13188_def : input13188 = (.seq input13187 input13182) := by
  unfold input13188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13187 output13182)).val
theorem output13188_def : output13188 = (.seq output13187 output13182) := by
  unfold output13188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13188_skip : Flapjack.WordAlloc.isSkip output13188 = false := by
  rw [output13188_def]
  conv => lhs; cbv
  try rfl
theorem node13188_eq : Flapjack.WordAlloc.removeDeadStructural input13188 value6595 value1 value2 = (output13188, value5, value1) := by
  rw [input13188_def, output13188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13182_eq]
  dsimp only
  rw [node13187_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13188 input13181)).val
theorem input13189_def : input13189 = (.seq input13188 input13181) := by
  unfold input13189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13188 output13181)).val
theorem output13189_def : output13189 = (.seq output13188 output13181) := by
  unfold output13189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13189_skip : Flapjack.WordAlloc.isSkip output13189 = false := by
  rw [output13189_def]
  conv => lhs; cbv
  try rfl
theorem node13189_eq : Flapjack.WordAlloc.removeDeadStructural input13189 value6594 value1 value2 = (output13189, value5, value1) := by
  rw [input13189_def, output13189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13181_eq]
  dsimp only
  rw [node13188_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6599 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1433 (Flapjack.WordLangAddr.addr 1437 0#64)))).val
theorem input13190_def : input13190 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1433 (Flapjack.WordLangAddr.addr 1437 0#64))) := by
  unfold input13190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1433 (Flapjack.WordLangAddr.addr 1437 0#64)))).val
theorem output13190_def : output13190 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1433 (Flapjack.WordLangAddr.addr 1437 0#64))) := by
  unfold output13190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13190_skip : Flapjack.WordAlloc.isSkip output13190 = false := by
  rw [output13190_def]
  conv => lhs; cbv
  try rfl
theorem node13190_eq : Flapjack.WordAlloc.removeDeadStructural input13190 value5 value1 value2 = (output13190, value6599, value1) := by
  rw [input13190_def, output13190_def]
  try (conv => lhs; cbv)
  try rfl

def value6600 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1437, 1425)])).val
theorem input13191_def : input13191 = (Flapjack.WordLangProgHOL.move 0 [(1437, 1425)]) := by
  unfold input13191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1437, 1425)])).val
theorem output13191_def : output13191 = (Flapjack.WordLangProgHOL.move 0 [(1437, 1425)]) := by
  unfold output13191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13191_skip : Flapjack.WordAlloc.isSkip output13191 = false := by
  rw [output13191_def]
  conv => lhs; cbv
  try rfl
theorem node13191_eq : Flapjack.WordAlloc.removeDeadStructural input13191 value6599 value1 value2 = (output13191, value6600, value1) := by
  rw [input13191_def, output13191_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13191 input13190)).val
theorem input13192_def : input13192 = (.seq input13191 input13190) := by
  unfold input13192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13191 output13190)).val
theorem output13192_def : output13192 = (.seq output13191 output13190) := by
  unfold output13192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13192_skip : Flapjack.WordAlloc.isSkip output13192 = false := by
  rw [output13192_def]
  conv => lhs; cbv
  try rfl
theorem node13192_eq : Flapjack.WordAlloc.removeDeadStructural input13192 value5 value1 value2 = (output13192, value6600, value1) := by
  rw [input13192_def, output13192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13190_eq]
  dsimp only
  rw [node13191_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6601 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1433 0#64))).val
theorem input13193_def : input13193 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1433 0#64)) := by
  unfold input13193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1433 0#64))).val
theorem output13193_def : output13193 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1433 0#64)) := by
  unfold output13193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13193_skip : Flapjack.WordAlloc.isSkip output13193 = false := by
  rw [output13193_def]
  conv => lhs; cbv
  try rfl
theorem node13193_eq : Flapjack.WordAlloc.removeDeadStructural input13193 value6600 value1 value2 = (output13193, value6601, value1) := by
  rw [input13193_def, output13193_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1429 0#64))).val
theorem input13194_def : input13194 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1429 0#64)) := by
  unfold input13194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13194_def : output13194 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13194_skip : Flapjack.WordAlloc.isSkip output13194 = true := by
  rw [output13194_def]
  conv => lhs; cbv
  try rfl
theorem node13194_eq : Flapjack.WordAlloc.removeDeadStructural input13194 value6601 value1 value2 = (output13194, value6601, value1) := by
  rw [input13194_def, output13194_def]
  try (conv => lhs; cbv)
  try rfl

def value6602 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1425 1421 (Flapjack.WordRegImm.imm 320#64))))).val
theorem input13195_def : input13195 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1425 1421 (Flapjack.WordRegImm.imm 320#64)))) := by
  unfold input13195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1425 1421 (Flapjack.WordRegImm.imm 320#64))))).val
theorem output13195_def : output13195 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1425 1421 (Flapjack.WordRegImm.imm 320#64)))) := by
  unfold output13195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13195_skip : Flapjack.WordAlloc.isSkip output13195 = false := by
  rw [output13195_def]
  conv => lhs; cbv
  try rfl
theorem node13195_eq : Flapjack.WordAlloc.removeDeadStructural input13195 value6601 value1 value2 = (output13195, value6602, value1) := by
  rw [input13195_def, output13195_def]
  try (conv => lhs; cbv)
  try rfl

def value6603 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1421 (Flapjack.WordLangAddr.addr 1417 18446744073709551104#64)))).val
theorem input13196_def : input13196 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1421 (Flapjack.WordLangAddr.addr 1417 18446744073709551104#64))) := by
  unfold input13196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1421 (Flapjack.WordLangAddr.addr 1417 18446744073709551104#64)))).val
theorem output13196_def : output13196 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1421 (Flapjack.WordLangAddr.addr 1417 18446744073709551104#64))) := by
  unfold output13196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13196_skip : Flapjack.WordAlloc.isSkip output13196 = false := by
  rw [output13196_def]
  conv => lhs; cbv
  try rfl
theorem node13196_eq : Flapjack.WordAlloc.removeDeadStructural input13196 value6602 value1 value2 = (output13196, value6603, value1) := by
  rw [input13196_def, output13196_def]
  try (conv => lhs; cbv)
  try rfl

def value6604 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1417 1413)).val
theorem input13197_def : input13197 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1417 1413) := by
  unfold input13197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1417 1413)).val
theorem output13197_def : output13197 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1417 1413) := by
  unfold output13197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13197_skip : Flapjack.WordAlloc.isSkip output13197 = false := by
  rw [output13197_def]
  conv => lhs; cbv
  try rfl
theorem node13197_eq : Flapjack.WordAlloc.removeDeadStructural input13197 value6603 value1 value2 = (output13197, value6604, value1) := by
  rw [input13197_def, output13197_def]
  try (conv => lhs; cbv)
  try rfl

def value6605 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1413 1409 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13198_def : input13198 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1413 1409 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1413 1409 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13198_def : output13198 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1413 1409 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13198_skip : Flapjack.WordAlloc.isSkip output13198 = false := by
  rw [output13198_def]
  conv => lhs; cbv
  try rfl
theorem node13198_eq : Flapjack.WordAlloc.removeDeadStructural input13198 value6604 value1 value2 = (output13198, value6605, value1) := by
  rw [input13198_def, output13198_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1409 Flapjack.WordStore.heapLength)).val
theorem input13199_def : input13199 = (Flapjack.WordLangProgHOL.get 1409 Flapjack.WordStore.heapLength) := by
  unfold input13199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1409 Flapjack.WordStore.heapLength)).val
theorem output13199_def : output13199 = (Flapjack.WordLangProgHOL.get 1409 Flapjack.WordStore.heapLength) := by
  unfold output13199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13199_skip : Flapjack.WordAlloc.isSkip output13199 = false := by
  rw [output13199_def]
  conv => lhs; cbv
  try rfl
theorem node13199_eq : Flapjack.WordAlloc.removeDeadStructural input13199 value6605 value1 value2 = (output13199, value5, value1) := by
  rw [input13199_def, output13199_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13199 input13198)).val
theorem input13200_def : input13200 = (.seq input13199 input13198) := by
  unfold input13200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13199 output13198)).val
theorem output13200_def : output13200 = (.seq output13199 output13198) := by
  unfold output13200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13200_skip : Flapjack.WordAlloc.isSkip output13200 = false := by
  rw [output13200_def]
  conv => lhs; cbv
  try rfl
theorem node13200_eq : Flapjack.WordAlloc.removeDeadStructural input13200 value6604 value1 value2 = (output13200, value5, value1) := by
  rw [input13200_def, output13200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13198_eq]
  dsimp only
  rw [node13199_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13200 input13197)).val
theorem input13201_def : input13201 = (.seq input13200 input13197) := by
  unfold input13201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13200 output13197)).val
theorem output13201_def : output13201 = (.seq output13200 output13197) := by
  unfold output13201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13201_skip : Flapjack.WordAlloc.isSkip output13201 = false := by
  rw [output13201_def]
  conv => lhs; cbv
  try rfl
theorem node13201_eq : Flapjack.WordAlloc.removeDeadStructural input13201 value6603 value1 value2 = (output13201, value5, value1) := by
  rw [input13201_def, output13201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13197_eq]
  dsimp only
  rw [node13200_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13201 input13196)).val
theorem input13202_def : input13202 = (.seq input13201 input13196) := by
  unfold input13202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13201 output13196)).val
theorem output13202_def : output13202 = (.seq output13201 output13196) := by
  unfold output13202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13202_skip : Flapjack.WordAlloc.isSkip output13202 = false := by
  rw [output13202_def]
  conv => lhs; cbv
  try rfl
theorem node13202_eq : Flapjack.WordAlloc.removeDeadStructural input13202 value6602 value1 value2 = (output13202, value5, value1) := by
  rw [input13202_def, output13202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13196_eq]
  dsimp only
  rw [node13201_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13202 input13195)).val
theorem input13203_def : input13203 = (.seq input13202 input13195) := by
  unfold input13203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13202 output13195)).val
theorem output13203_def : output13203 = (.seq output13202 output13195) := by
  unfold output13203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13203_skip : Flapjack.WordAlloc.isSkip output13203 = false := by
  rw [output13203_def]
  conv => lhs; cbv
  try rfl
theorem node13203_eq : Flapjack.WordAlloc.removeDeadStructural input13203 value6601 value1 value2 = (output13203, value5, value1) := by
  rw [input13203_def, output13203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13195_eq]
  dsimp only
  rw [node13202_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6606 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1401 (Flapjack.WordLangAddr.addr 1405 0#64)))).val
theorem input13204_def : input13204 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1401 (Flapjack.WordLangAddr.addr 1405 0#64))) := by
  unfold input13204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1401 (Flapjack.WordLangAddr.addr 1405 0#64)))).val
theorem output13204_def : output13204 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1401 (Flapjack.WordLangAddr.addr 1405 0#64))) := by
  unfold output13204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13204_skip : Flapjack.WordAlloc.isSkip output13204 = false := by
  rw [output13204_def]
  conv => lhs; cbv
  try rfl
theorem node13204_eq : Flapjack.WordAlloc.removeDeadStructural input13204 value5 value1 value2 = (output13204, value6606, value1) := by
  rw [input13204_def, output13204_def]
  try (conv => lhs; cbv)
  try rfl

def value6607 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1405, 1393)])).val
theorem input13205_def : input13205 = (Flapjack.WordLangProgHOL.move 0 [(1405, 1393)]) := by
  unfold input13205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1405, 1393)])).val
theorem output13205_def : output13205 = (Flapjack.WordLangProgHOL.move 0 [(1405, 1393)]) := by
  unfold output13205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13205_skip : Flapjack.WordAlloc.isSkip output13205 = false := by
  rw [output13205_def]
  conv => lhs; cbv
  try rfl
theorem node13205_eq : Flapjack.WordAlloc.removeDeadStructural input13205 value6606 value1 value2 = (output13205, value6607, value1) := by
  rw [input13205_def, output13205_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13205 input13204)).val
theorem input13206_def : input13206 = (.seq input13205 input13204) := by
  unfold input13206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13205 output13204)).val
theorem output13206_def : output13206 = (.seq output13205 output13204) := by
  unfold output13206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13206_skip : Flapjack.WordAlloc.isSkip output13206 = false := by
  rw [output13206_def]
  conv => lhs; cbv
  try rfl
theorem node13206_eq : Flapjack.WordAlloc.removeDeadStructural input13206 value5 value1 value2 = (output13206, value6607, value1) := by
  rw [input13206_def, output13206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13204_eq]
  dsimp only
  rw [node13205_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6608 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1401 0#64))).val
theorem input13207_def : input13207 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1401 0#64)) := by
  unfold input13207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1401 0#64))).val
theorem output13207_def : output13207 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1401 0#64)) := by
  unfold output13207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13207_skip : Flapjack.WordAlloc.isSkip output13207 = false := by
  rw [output13207_def]
  conv => lhs; cbv
  try rfl
theorem node13207_eq : Flapjack.WordAlloc.removeDeadStructural input13207 value6607 value1 value2 = (output13207, value6608, value1) := by
  rw [input13207_def, output13207_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1397 0#64))).val
theorem input13208_def : input13208 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1397 0#64)) := by
  unfold input13208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13208_def : output13208 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13208_skip : Flapjack.WordAlloc.isSkip output13208 = true := by
  rw [output13208_def]
  conv => lhs; cbv
  try rfl
theorem node13208_eq : Flapjack.WordAlloc.removeDeadStructural input13208 value6608 value1 value2 = (output13208, value6608, value1) := by
  rw [input13208_def, output13208_def]
  try (conv => lhs; cbv)
  try rfl

def value6609 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1393 1389 (Flapjack.WordRegImm.imm 312#64))))).val
theorem input13209_def : input13209 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1393 1389 (Flapjack.WordRegImm.imm 312#64)))) := by
  unfold input13209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1393 1389 (Flapjack.WordRegImm.imm 312#64))))).val
theorem output13209_def : output13209 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1393 1389 (Flapjack.WordRegImm.imm 312#64)))) := by
  unfold output13209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13209_skip : Flapjack.WordAlloc.isSkip output13209 = false := by
  rw [output13209_def]
  conv => lhs; cbv
  try rfl
theorem node13209_eq : Flapjack.WordAlloc.removeDeadStructural input13209 value6608 value1 value2 = (output13209, value6609, value1) := by
  rw [input13209_def, output13209_def]
  try (conv => lhs; cbv)
  try rfl

def value6610 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1389 (Flapjack.WordLangAddr.addr 1385 18446744073709551104#64)))).val
theorem input13210_def : input13210 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1389 (Flapjack.WordLangAddr.addr 1385 18446744073709551104#64))) := by
  unfold input13210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1389 (Flapjack.WordLangAddr.addr 1385 18446744073709551104#64)))).val
theorem output13210_def : output13210 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1389 (Flapjack.WordLangAddr.addr 1385 18446744073709551104#64))) := by
  unfold output13210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13210_skip : Flapjack.WordAlloc.isSkip output13210 = false := by
  rw [output13210_def]
  conv => lhs; cbv
  try rfl
theorem node13210_eq : Flapjack.WordAlloc.removeDeadStructural input13210 value6609 value1 value2 = (output13210, value6610, value1) := by
  rw [input13210_def, output13210_def]
  try (conv => lhs; cbv)
  try rfl

def value6611 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1385 1381)).val
theorem input13211_def : input13211 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1385 1381) := by
  unfold input13211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1385 1381)).val
theorem output13211_def : output13211 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1385 1381) := by
  unfold output13211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13211_skip : Flapjack.WordAlloc.isSkip output13211 = false := by
  rw [output13211_def]
  conv => lhs; cbv
  try rfl
theorem node13211_eq : Flapjack.WordAlloc.removeDeadStructural input13211 value6610 value1 value2 = (output13211, value6611, value1) := by
  rw [input13211_def, output13211_def]
  try (conv => lhs; cbv)
  try rfl

def value6612 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1381 1377 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13212_def : input13212 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1381 1377 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1381 1377 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13212_def : output13212 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1381 1377 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13212_skip : Flapjack.WordAlloc.isSkip output13212 = false := by
  rw [output13212_def]
  conv => lhs; cbv
  try rfl
theorem node13212_eq : Flapjack.WordAlloc.removeDeadStructural input13212 value6611 value1 value2 = (output13212, value6612, value1) := by
  rw [input13212_def, output13212_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1377 Flapjack.WordStore.heapLength)).val
theorem input13213_def : input13213 = (Flapjack.WordLangProgHOL.get 1377 Flapjack.WordStore.heapLength) := by
  unfold input13213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1377 Flapjack.WordStore.heapLength)).val
theorem output13213_def : output13213 = (Flapjack.WordLangProgHOL.get 1377 Flapjack.WordStore.heapLength) := by
  unfold output13213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13213_skip : Flapjack.WordAlloc.isSkip output13213 = false := by
  rw [output13213_def]
  conv => lhs; cbv
  try rfl
theorem node13213_eq : Flapjack.WordAlloc.removeDeadStructural input13213 value6612 value1 value2 = (output13213, value5, value1) := by
  rw [input13213_def, output13213_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13213 input13212)).val
theorem input13214_def : input13214 = (.seq input13213 input13212) := by
  unfold input13214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13213 output13212)).val
theorem output13214_def : output13214 = (.seq output13213 output13212) := by
  unfold output13214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13214_skip : Flapjack.WordAlloc.isSkip output13214 = false := by
  rw [output13214_def]
  conv => lhs; cbv
  try rfl
theorem node13214_eq : Flapjack.WordAlloc.removeDeadStructural input13214 value6611 value1 value2 = (output13214, value5, value1) := by
  rw [input13214_def, output13214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13212_eq]
  dsimp only
  rw [node13213_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13214 input13211)).val
theorem input13215_def : input13215 = (.seq input13214 input13211) := by
  unfold input13215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13214 output13211)).val
theorem output13215_def : output13215 = (.seq output13214 output13211) := by
  unfold output13215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13215_skip : Flapjack.WordAlloc.isSkip output13215 = false := by
  rw [output13215_def]
  conv => lhs; cbv
  try rfl
theorem node13215_eq : Flapjack.WordAlloc.removeDeadStructural input13215 value6610 value1 value2 = (output13215, value5, value1) := by
  rw [input13215_def, output13215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13211_eq]
  dsimp only
  rw [node13214_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13215 input13210)).val
theorem input13216_def : input13216 = (.seq input13215 input13210) := by
  unfold input13216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13215 output13210)).val
theorem output13216_def : output13216 = (.seq output13215 output13210) := by
  unfold output13216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13216_skip : Flapjack.WordAlloc.isSkip output13216 = false := by
  rw [output13216_def]
  conv => lhs; cbv
  try rfl
theorem node13216_eq : Flapjack.WordAlloc.removeDeadStructural input13216 value6609 value1 value2 = (output13216, value5, value1) := by
  rw [input13216_def, output13216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13210_eq]
  dsimp only
  rw [node13215_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13216 input13209)).val
theorem input13217_def : input13217 = (.seq input13216 input13209) := by
  unfold input13217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13216 output13209)).val
theorem output13217_def : output13217 = (.seq output13216 output13209) := by
  unfold output13217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13217_skip : Flapjack.WordAlloc.isSkip output13217 = false := by
  rw [output13217_def]
  conv => lhs; cbv
  try rfl
theorem node13217_eq : Flapjack.WordAlloc.removeDeadStructural input13217 value6608 value1 value2 = (output13217, value5, value1) := by
  rw [input13217_def, output13217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13209_eq]
  dsimp only
  rw [node13216_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6613 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1369 (Flapjack.WordLangAddr.addr 1373 0#64)))).val
theorem input13218_def : input13218 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1369 (Flapjack.WordLangAddr.addr 1373 0#64))) := by
  unfold input13218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1369 (Flapjack.WordLangAddr.addr 1373 0#64)))).val
theorem output13218_def : output13218 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1369 (Flapjack.WordLangAddr.addr 1373 0#64))) := by
  unfold output13218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13218_skip : Flapjack.WordAlloc.isSkip output13218 = false := by
  rw [output13218_def]
  conv => lhs; cbv
  try rfl
theorem node13218_eq : Flapjack.WordAlloc.removeDeadStructural input13218 value5 value1 value2 = (output13218, value6613, value1) := by
  rw [input13218_def, output13218_def]
  try (conv => lhs; cbv)
  try rfl

def value6614 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1373, 1361)])).val
theorem input13219_def : input13219 = (Flapjack.WordLangProgHOL.move 0 [(1373, 1361)]) := by
  unfold input13219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1373, 1361)])).val
theorem output13219_def : output13219 = (Flapjack.WordLangProgHOL.move 0 [(1373, 1361)]) := by
  unfold output13219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13219_skip : Flapjack.WordAlloc.isSkip output13219 = false := by
  rw [output13219_def]
  conv => lhs; cbv
  try rfl
theorem node13219_eq : Flapjack.WordAlloc.removeDeadStructural input13219 value6613 value1 value2 = (output13219, value6614, value1) := by
  rw [input13219_def, output13219_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13219 input13218)).val
theorem input13220_def : input13220 = (.seq input13219 input13218) := by
  unfold input13220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13219 output13218)).val
theorem output13220_def : output13220 = (.seq output13219 output13218) := by
  unfold output13220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13220_skip : Flapjack.WordAlloc.isSkip output13220 = false := by
  rw [output13220_def]
  conv => lhs; cbv
  try rfl
theorem node13220_eq : Flapjack.WordAlloc.removeDeadStructural input13220 value5 value1 value2 = (output13220, value6614, value1) := by
  rw [input13220_def, output13220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13218_eq]
  dsimp only
  rw [node13219_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6615 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1369 0#64))).val
theorem input13221_def : input13221 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1369 0#64)) := by
  unfold input13221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1369 0#64))).val
theorem output13221_def : output13221 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1369 0#64)) := by
  unfold output13221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13221_skip : Flapjack.WordAlloc.isSkip output13221 = false := by
  rw [output13221_def]
  conv => lhs; cbv
  try rfl
theorem node13221_eq : Flapjack.WordAlloc.removeDeadStructural input13221 value6614 value1 value2 = (output13221, value6615, value1) := by
  rw [input13221_def, output13221_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1365 0#64))).val
theorem input13222_def : input13222 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1365 0#64)) := by
  unfold input13222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13222_def : output13222 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13222_skip : Flapjack.WordAlloc.isSkip output13222 = true := by
  rw [output13222_def]
  conv => lhs; cbv
  try rfl
theorem node13222_eq : Flapjack.WordAlloc.removeDeadStructural input13222 value6615 value1 value2 = (output13222, value6615, value1) := by
  rw [input13222_def, output13222_def]
  try (conv => lhs; cbv)
  try rfl

def value6616 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1361 1357 (Flapjack.WordRegImm.imm 304#64))))).val
theorem input13223_def : input13223 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1361 1357 (Flapjack.WordRegImm.imm 304#64)))) := by
  unfold input13223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1361 1357 (Flapjack.WordRegImm.imm 304#64))))).val
theorem output13223_def : output13223 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1361 1357 (Flapjack.WordRegImm.imm 304#64)))) := by
  unfold output13223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13223_skip : Flapjack.WordAlloc.isSkip output13223 = false := by
  rw [output13223_def]
  conv => lhs; cbv
  try rfl
theorem node13223_eq : Flapjack.WordAlloc.removeDeadStructural input13223 value6615 value1 value2 = (output13223, value6616, value1) := by
  rw [input13223_def, output13223_def]
  try (conv => lhs; cbv)
  try rfl

def value6617 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1357 (Flapjack.WordLangAddr.addr 1353 18446744073709551104#64)))).val
theorem input13224_def : input13224 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1357 (Flapjack.WordLangAddr.addr 1353 18446744073709551104#64))) := by
  unfold input13224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1357 (Flapjack.WordLangAddr.addr 1353 18446744073709551104#64)))).val
theorem output13224_def : output13224 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1357 (Flapjack.WordLangAddr.addr 1353 18446744073709551104#64))) := by
  unfold output13224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13224_skip : Flapjack.WordAlloc.isSkip output13224 = false := by
  rw [output13224_def]
  conv => lhs; cbv
  try rfl
theorem node13224_eq : Flapjack.WordAlloc.removeDeadStructural input13224 value6616 value1 value2 = (output13224, value6617, value1) := by
  rw [input13224_def, output13224_def]
  try (conv => lhs; cbv)
  try rfl

def value6618 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1353 1349)).val
theorem input13225_def : input13225 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1353 1349) := by
  unfold input13225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1353 1349)).val
theorem output13225_def : output13225 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1353 1349) := by
  unfold output13225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13225_skip : Flapjack.WordAlloc.isSkip output13225 = false := by
  rw [output13225_def]
  conv => lhs; cbv
  try rfl
theorem node13225_eq : Flapjack.WordAlloc.removeDeadStructural input13225 value6617 value1 value2 = (output13225, value6618, value1) := by
  rw [input13225_def, output13225_def]
  try (conv => lhs; cbv)
  try rfl

def value6619 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1349 1345 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13226_def : input13226 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1349 1345 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1349 1345 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13226_def : output13226 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1349 1345 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13226_skip : Flapjack.WordAlloc.isSkip output13226 = false := by
  rw [output13226_def]
  conv => lhs; cbv
  try rfl
theorem node13226_eq : Flapjack.WordAlloc.removeDeadStructural input13226 value6618 value1 value2 = (output13226, value6619, value1) := by
  rw [input13226_def, output13226_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1345 Flapjack.WordStore.heapLength)).val
theorem input13227_def : input13227 = (Flapjack.WordLangProgHOL.get 1345 Flapjack.WordStore.heapLength) := by
  unfold input13227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1345 Flapjack.WordStore.heapLength)).val
theorem output13227_def : output13227 = (Flapjack.WordLangProgHOL.get 1345 Flapjack.WordStore.heapLength) := by
  unfold output13227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13227_skip : Flapjack.WordAlloc.isSkip output13227 = false := by
  rw [output13227_def]
  conv => lhs; cbv
  try rfl
theorem node13227_eq : Flapjack.WordAlloc.removeDeadStructural input13227 value6619 value1 value2 = (output13227, value5, value1) := by
  rw [input13227_def, output13227_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13227 input13226)).val
theorem input13228_def : input13228 = (.seq input13227 input13226) := by
  unfold input13228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13227 output13226)).val
theorem output13228_def : output13228 = (.seq output13227 output13226) := by
  unfold output13228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13228_skip : Flapjack.WordAlloc.isSkip output13228 = false := by
  rw [output13228_def]
  conv => lhs; cbv
  try rfl
theorem node13228_eq : Flapjack.WordAlloc.removeDeadStructural input13228 value6618 value1 value2 = (output13228, value5, value1) := by
  rw [input13228_def, output13228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13226_eq]
  dsimp only
  rw [node13227_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13228 input13225)).val
theorem input13229_def : input13229 = (.seq input13228 input13225) := by
  unfold input13229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13228 output13225)).val
theorem output13229_def : output13229 = (.seq output13228 output13225) := by
  unfold output13229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13229_skip : Flapjack.WordAlloc.isSkip output13229 = false := by
  rw [output13229_def]
  conv => lhs; cbv
  try rfl
theorem node13229_eq : Flapjack.WordAlloc.removeDeadStructural input13229 value6617 value1 value2 = (output13229, value5, value1) := by
  rw [input13229_def, output13229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13225_eq]
  dsimp only
  rw [node13228_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13229 input13224)).val
theorem input13230_def : input13230 = (.seq input13229 input13224) := by
  unfold input13230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13229 output13224)).val
theorem output13230_def : output13230 = (.seq output13229 output13224) := by
  unfold output13230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13230_skip : Flapjack.WordAlloc.isSkip output13230 = false := by
  rw [output13230_def]
  conv => lhs; cbv
  try rfl
theorem node13230_eq : Flapjack.WordAlloc.removeDeadStructural input13230 value6616 value1 value2 = (output13230, value5, value1) := by
  rw [input13230_def, output13230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13224_eq]
  dsimp only
  rw [node13229_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13230 input13223)).val
theorem input13231_def : input13231 = (.seq input13230 input13223) := by
  unfold input13231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13230 output13223)).val
theorem output13231_def : output13231 = (.seq output13230 output13223) := by
  unfold output13231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13231_skip : Flapjack.WordAlloc.isSkip output13231 = false := by
  rw [output13231_def]
  conv => lhs; cbv
  try rfl
theorem node13231_eq : Flapjack.WordAlloc.removeDeadStructural input13231 value6615 value1 value2 = (output13231, value5, value1) := by
  rw [input13231_def, output13231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13223_eq]
  dsimp only
  rw [node13230_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6620 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1337 (Flapjack.WordLangAddr.addr 1341 0#64)))).val
theorem input13232_def : input13232 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1337 (Flapjack.WordLangAddr.addr 1341 0#64))) := by
  unfold input13232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1337 (Flapjack.WordLangAddr.addr 1341 0#64)))).val
theorem output13232_def : output13232 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1337 (Flapjack.WordLangAddr.addr 1341 0#64))) := by
  unfold output13232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13232_skip : Flapjack.WordAlloc.isSkip output13232 = false := by
  rw [output13232_def]
  conv => lhs; cbv
  try rfl
theorem node13232_eq : Flapjack.WordAlloc.removeDeadStructural input13232 value5 value1 value2 = (output13232, value6620, value1) := by
  rw [input13232_def, output13232_def]
  try (conv => lhs; cbv)
  try rfl

def value6621 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1341, 1329)])).val
theorem input13233_def : input13233 = (Flapjack.WordLangProgHOL.move 0 [(1341, 1329)]) := by
  unfold input13233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1341, 1329)])).val
theorem output13233_def : output13233 = (Flapjack.WordLangProgHOL.move 0 [(1341, 1329)]) := by
  unfold output13233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13233_skip : Flapjack.WordAlloc.isSkip output13233 = false := by
  rw [output13233_def]
  conv => lhs; cbv
  try rfl
theorem node13233_eq : Flapjack.WordAlloc.removeDeadStructural input13233 value6620 value1 value2 = (output13233, value6621, value1) := by
  rw [input13233_def, output13233_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13233 input13232)).val
theorem input13234_def : input13234 = (.seq input13233 input13232) := by
  unfold input13234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13233 output13232)).val
theorem output13234_def : output13234 = (.seq output13233 output13232) := by
  unfold output13234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13234_skip : Flapjack.WordAlloc.isSkip output13234 = false := by
  rw [output13234_def]
  conv => lhs; cbv
  try rfl
theorem node13234_eq : Flapjack.WordAlloc.removeDeadStructural input13234 value5 value1 value2 = (output13234, value6621, value1) := by
  rw [input13234_def, output13234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13232_eq]
  dsimp only
  rw [node13233_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6622 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1337 0#64))).val
theorem input13235_def : input13235 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1337 0#64)) := by
  unfold input13235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1337 0#64))).val
theorem output13235_def : output13235 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1337 0#64)) := by
  unfold output13235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13235_skip : Flapjack.WordAlloc.isSkip output13235 = false := by
  rw [output13235_def]
  conv => lhs; cbv
  try rfl
theorem node13235_eq : Flapjack.WordAlloc.removeDeadStructural input13235 value6621 value1 value2 = (output13235, value6622, value1) := by
  rw [input13235_def, output13235_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1333 0#64))).val
theorem input13236_def : input13236 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1333 0#64)) := by
  unfold input13236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13236_def : output13236 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13236_skip : Flapjack.WordAlloc.isSkip output13236 = true := by
  rw [output13236_def]
  conv => lhs; cbv
  try rfl
theorem node13236_eq : Flapjack.WordAlloc.removeDeadStructural input13236 value6622 value1 value2 = (output13236, value6622, value1) := by
  rw [input13236_def, output13236_def]
  try (conv => lhs; cbv)
  try rfl

def value6623 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1329 1325 (Flapjack.WordRegImm.imm 296#64))))).val
theorem input13237_def : input13237 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1329 1325 (Flapjack.WordRegImm.imm 296#64)))) := by
  unfold input13237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1329 1325 (Flapjack.WordRegImm.imm 296#64))))).val
theorem output13237_def : output13237 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1329 1325 (Flapjack.WordRegImm.imm 296#64)))) := by
  unfold output13237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13237_skip : Flapjack.WordAlloc.isSkip output13237 = false := by
  rw [output13237_def]
  conv => lhs; cbv
  try rfl
theorem node13237_eq : Flapjack.WordAlloc.removeDeadStructural input13237 value6622 value1 value2 = (output13237, value6623, value1) := by
  rw [input13237_def, output13237_def]
  try (conv => lhs; cbv)
  try rfl

def value6624 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1325 (Flapjack.WordLangAddr.addr 1321 18446744073709551104#64)))).val
theorem input13238_def : input13238 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1325 (Flapjack.WordLangAddr.addr 1321 18446744073709551104#64))) := by
  unfold input13238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1325 (Flapjack.WordLangAddr.addr 1321 18446744073709551104#64)))).val
theorem output13238_def : output13238 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1325 (Flapjack.WordLangAddr.addr 1321 18446744073709551104#64))) := by
  unfold output13238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13238_skip : Flapjack.WordAlloc.isSkip output13238 = false := by
  rw [output13238_def]
  conv => lhs; cbv
  try rfl
theorem node13238_eq : Flapjack.WordAlloc.removeDeadStructural input13238 value6623 value1 value2 = (output13238, value6624, value1) := by
  rw [input13238_def, output13238_def]
  try (conv => lhs; cbv)
  try rfl

def value6625 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1321 1317)).val
theorem input13239_def : input13239 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1321 1317) := by
  unfold input13239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1321 1317)).val
theorem output13239_def : output13239 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1321 1317) := by
  unfold output13239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13239_skip : Flapjack.WordAlloc.isSkip output13239 = false := by
  rw [output13239_def]
  conv => lhs; cbv
  try rfl
theorem node13239_eq : Flapjack.WordAlloc.removeDeadStructural input13239 value6624 value1 value2 = (output13239, value6625, value1) := by
  rw [input13239_def, output13239_def]
  try (conv => lhs; cbv)
  try rfl

def value6626 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1317 1313 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13240_def : input13240 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1317 1313 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1317 1313 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13240_def : output13240 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1317 1313 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13240_skip : Flapjack.WordAlloc.isSkip output13240 = false := by
  rw [output13240_def]
  conv => lhs; cbv
  try rfl
theorem node13240_eq : Flapjack.WordAlloc.removeDeadStructural input13240 value6625 value1 value2 = (output13240, value6626, value1) := by
  rw [input13240_def, output13240_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1313 Flapjack.WordStore.heapLength)).val
theorem input13241_def : input13241 = (Flapjack.WordLangProgHOL.get 1313 Flapjack.WordStore.heapLength) := by
  unfold input13241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1313 Flapjack.WordStore.heapLength)).val
theorem output13241_def : output13241 = (Flapjack.WordLangProgHOL.get 1313 Flapjack.WordStore.heapLength) := by
  unfold output13241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13241_skip : Flapjack.WordAlloc.isSkip output13241 = false := by
  rw [output13241_def]
  conv => lhs; cbv
  try rfl
theorem node13241_eq : Flapjack.WordAlloc.removeDeadStructural input13241 value6626 value1 value2 = (output13241, value5, value1) := by
  rw [input13241_def, output13241_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13241 input13240)).val
theorem input13242_def : input13242 = (.seq input13241 input13240) := by
  unfold input13242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13241 output13240)).val
theorem output13242_def : output13242 = (.seq output13241 output13240) := by
  unfold output13242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13242_skip : Flapjack.WordAlloc.isSkip output13242 = false := by
  rw [output13242_def]
  conv => lhs; cbv
  try rfl
theorem node13242_eq : Flapjack.WordAlloc.removeDeadStructural input13242 value6625 value1 value2 = (output13242, value5, value1) := by
  rw [input13242_def, output13242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13240_eq]
  dsimp only
  rw [node13241_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13242 input13239)).val
theorem input13243_def : input13243 = (.seq input13242 input13239) := by
  unfold input13243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13242 output13239)).val
theorem output13243_def : output13243 = (.seq output13242 output13239) := by
  unfold output13243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13243_skip : Flapjack.WordAlloc.isSkip output13243 = false := by
  rw [output13243_def]
  conv => lhs; cbv
  try rfl
theorem node13243_eq : Flapjack.WordAlloc.removeDeadStructural input13243 value6624 value1 value2 = (output13243, value5, value1) := by
  rw [input13243_def, output13243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13239_eq]
  dsimp only
  rw [node13242_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13243 input13238)).val
theorem input13244_def : input13244 = (.seq input13243 input13238) := by
  unfold input13244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13243 output13238)).val
theorem output13244_def : output13244 = (.seq output13243 output13238) := by
  unfold output13244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13244_skip : Flapjack.WordAlloc.isSkip output13244 = false := by
  rw [output13244_def]
  conv => lhs; cbv
  try rfl
theorem node13244_eq : Flapjack.WordAlloc.removeDeadStructural input13244 value6623 value1 value2 = (output13244, value5, value1) := by
  rw [input13244_def, output13244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13238_eq]
  dsimp only
  rw [node13243_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13244 input13237)).val
theorem input13245_def : input13245 = (.seq input13244 input13237) := by
  unfold input13245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13244 output13237)).val
theorem output13245_def : output13245 = (.seq output13244 output13237) := by
  unfold output13245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13245_skip : Flapjack.WordAlloc.isSkip output13245 = false := by
  rw [output13245_def]
  conv => lhs; cbv
  try rfl
theorem node13245_eq : Flapjack.WordAlloc.removeDeadStructural input13245 value6622 value1 value2 = (output13245, value5, value1) := by
  rw [input13245_def, output13245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13237_eq]
  dsimp only
  rw [node13244_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6627 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1305 (Flapjack.WordLangAddr.addr 1309 0#64)))).val
theorem input13246_def : input13246 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1305 (Flapjack.WordLangAddr.addr 1309 0#64))) := by
  unfold input13246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1305 (Flapjack.WordLangAddr.addr 1309 0#64)))).val
theorem output13246_def : output13246 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1305 (Flapjack.WordLangAddr.addr 1309 0#64))) := by
  unfold output13246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13246_skip : Flapjack.WordAlloc.isSkip output13246 = false := by
  rw [output13246_def]
  conv => lhs; cbv
  try rfl
theorem node13246_eq : Flapjack.WordAlloc.removeDeadStructural input13246 value5 value1 value2 = (output13246, value6627, value1) := by
  rw [input13246_def, output13246_def]
  try (conv => lhs; cbv)
  try rfl

def value6628 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1309, 1297)])).val
theorem input13247_def : input13247 = (Flapjack.WordLangProgHOL.move 0 [(1309, 1297)]) := by
  unfold input13247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1309, 1297)])).val
theorem output13247_def : output13247 = (Flapjack.WordLangProgHOL.move 0 [(1309, 1297)]) := by
  unfold output13247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13247_skip : Flapjack.WordAlloc.isSkip output13247 = false := by
  rw [output13247_def]
  conv => lhs; cbv
  try rfl
theorem node13247_eq : Flapjack.WordAlloc.removeDeadStructural input13247 value6627 value1 value2 = (output13247, value6628, value1) := by
  rw [input13247_def, output13247_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13247 input13246)).val
theorem input13248_def : input13248 = (.seq input13247 input13246) := by
  unfold input13248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13247 output13246)).val
theorem output13248_def : output13248 = (.seq output13247 output13246) := by
  unfold output13248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13248_skip : Flapjack.WordAlloc.isSkip output13248 = false := by
  rw [output13248_def]
  conv => lhs; cbv
  try rfl
theorem node13248_eq : Flapjack.WordAlloc.removeDeadStructural input13248 value5 value1 value2 = (output13248, value6628, value1) := by
  rw [input13248_def, output13248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13246_eq]
  dsimp only
  rw [node13247_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6629 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1305 4#64))).val
theorem input13249_def : input13249 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1305 4#64)) := by
  unfold input13249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1305 4#64))).val
theorem output13249_def : output13249 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1305 4#64)) := by
  unfold output13249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13249_skip : Flapjack.WordAlloc.isSkip output13249 = false := by
  rw [output13249_def]
  conv => lhs; cbv
  try rfl
theorem node13249_eq : Flapjack.WordAlloc.removeDeadStructural input13249 value6628 value1 value2 = (output13249, value6629, value1) := by
  rw [input13249_def, output13249_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1301 4#64))).val
theorem input13250_def : input13250 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1301 4#64)) := by
  unfold input13250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13250_def : output13250 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13250_skip : Flapjack.WordAlloc.isSkip output13250 = true := by
  rw [output13250_def]
  conv => lhs; cbv
  try rfl
theorem node13250_eq : Flapjack.WordAlloc.removeDeadStructural input13250 value6629 value1 value2 = (output13250, value6629, value1) := by
  rw [input13250_def, output13250_def]
  try (conv => lhs; cbv)
  try rfl

def value6630 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1297 1293 (Flapjack.WordRegImm.imm 288#64))))).val
theorem input13251_def : input13251 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1297 1293 (Flapjack.WordRegImm.imm 288#64)))) := by
  unfold input13251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1297 1293 (Flapjack.WordRegImm.imm 288#64))))).val
theorem output13251_def : output13251 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1297 1293 (Flapjack.WordRegImm.imm 288#64)))) := by
  unfold output13251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13251_skip : Flapjack.WordAlloc.isSkip output13251 = false := by
  rw [output13251_def]
  conv => lhs; cbv
  try rfl
theorem node13251_eq : Flapjack.WordAlloc.removeDeadStructural input13251 value6629 value1 value2 = (output13251, value6630, value1) := by
  rw [input13251_def, output13251_def]
  try (conv => lhs; cbv)
  try rfl

def value6631 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1293 (Flapjack.WordLangAddr.addr 1289 18446744073709551104#64)))).val
theorem input13252_def : input13252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1293 (Flapjack.WordLangAddr.addr 1289 18446744073709551104#64))) := by
  unfold input13252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1293 (Flapjack.WordLangAddr.addr 1289 18446744073709551104#64)))).val
theorem output13252_def : output13252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1293 (Flapjack.WordLangAddr.addr 1289 18446744073709551104#64))) := by
  unfold output13252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13252_skip : Flapjack.WordAlloc.isSkip output13252 = false := by
  rw [output13252_def]
  conv => lhs; cbv
  try rfl
theorem node13252_eq : Flapjack.WordAlloc.removeDeadStructural input13252 value6630 value1 value2 = (output13252, value6631, value1) := by
  rw [input13252_def, output13252_def]
  try (conv => lhs; cbv)
  try rfl

def value6632 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1289 1285)).val
theorem input13253_def : input13253 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1289 1285) := by
  unfold input13253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1289 1285)).val
theorem output13253_def : output13253 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1289 1285) := by
  unfold output13253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13253_skip : Flapjack.WordAlloc.isSkip output13253 = false := by
  rw [output13253_def]
  conv => lhs; cbv
  try rfl
theorem node13253_eq : Flapjack.WordAlloc.removeDeadStructural input13253 value6631 value1 value2 = (output13253, value6632, value1) := by
  rw [input13253_def, output13253_def]
  try (conv => lhs; cbv)
  try rfl

def value6633 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1285 1281 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13254_def : input13254 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1285 1281 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1285 1281 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13254_def : output13254 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1285 1281 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13254_skip : Flapjack.WordAlloc.isSkip output13254 = false := by
  rw [output13254_def]
  conv => lhs; cbv
  try rfl
theorem node13254_eq : Flapjack.WordAlloc.removeDeadStructural input13254 value6632 value1 value2 = (output13254, value6633, value1) := by
  rw [input13254_def, output13254_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1281 Flapjack.WordStore.heapLength)).val
theorem input13255_def : input13255 = (Flapjack.WordLangProgHOL.get 1281 Flapjack.WordStore.heapLength) := by
  unfold input13255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1281 Flapjack.WordStore.heapLength)).val
theorem output13255_def : output13255 = (Flapjack.WordLangProgHOL.get 1281 Flapjack.WordStore.heapLength) := by
  unfold output13255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13255_skip : Flapjack.WordAlloc.isSkip output13255 = false := by
  rw [output13255_def]
  conv => lhs; cbv
  try rfl
theorem node13255_eq : Flapjack.WordAlloc.removeDeadStructural input13255 value6633 value1 value2 = (output13255, value5, value1) := by
  rw [input13255_def, output13255_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13255 input13254)).val
theorem input13256_def : input13256 = (.seq input13255 input13254) := by
  unfold input13256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13255 output13254)).val
theorem output13256_def : output13256 = (.seq output13255 output13254) := by
  unfold output13256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13256_skip : Flapjack.WordAlloc.isSkip output13256 = false := by
  rw [output13256_def]
  conv => lhs; cbv
  try rfl
theorem node13256_eq : Flapjack.WordAlloc.removeDeadStructural input13256 value6632 value1 value2 = (output13256, value5, value1) := by
  rw [input13256_def, output13256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13254_eq]
  dsimp only
  rw [node13255_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13256 input13253)).val
theorem input13257_def : input13257 = (.seq input13256 input13253) := by
  unfold input13257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13256 output13253)).val
theorem output13257_def : output13257 = (.seq output13256 output13253) := by
  unfold output13257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13257_skip : Flapjack.WordAlloc.isSkip output13257 = false := by
  rw [output13257_def]
  conv => lhs; cbv
  try rfl
theorem node13257_eq : Flapjack.WordAlloc.removeDeadStructural input13257 value6631 value1 value2 = (output13257, value5, value1) := by
  rw [input13257_def, output13257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13253_eq]
  dsimp only
  rw [node13256_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13257 input13252)).val
theorem input13258_def : input13258 = (.seq input13257 input13252) := by
  unfold input13258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13257 output13252)).val
theorem output13258_def : output13258 = (.seq output13257 output13252) := by
  unfold output13258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13258_skip : Flapjack.WordAlloc.isSkip output13258 = false := by
  rw [output13258_def]
  conv => lhs; cbv
  try rfl
theorem node13258_eq : Flapjack.WordAlloc.removeDeadStructural input13258 value6630 value1 value2 = (output13258, value5, value1) := by
  rw [input13258_def, output13258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13252_eq]
  dsimp only
  rw [node13257_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13258 input13251)).val
theorem input13259_def : input13259 = (.seq input13258 input13251) := by
  unfold input13259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13258 output13251)).val
theorem output13259_def : output13259 = (.seq output13258 output13251) := by
  unfold output13259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13259_skip : Flapjack.WordAlloc.isSkip output13259 = false := by
  rw [output13259_def]
  conv => lhs; cbv
  try rfl
theorem node13259_eq : Flapjack.WordAlloc.removeDeadStructural input13259 value6629 value1 value2 = (output13259, value5, value1) := by
  rw [input13259_def, output13259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13251_eq]
  dsimp only
  rw [node13258_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6634 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1273 (Flapjack.WordLangAddr.addr 1277 0#64)))).val
theorem input13260_def : input13260 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1273 (Flapjack.WordLangAddr.addr 1277 0#64))) := by
  unfold input13260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1273 (Flapjack.WordLangAddr.addr 1277 0#64)))).val
theorem output13260_def : output13260 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1273 (Flapjack.WordLangAddr.addr 1277 0#64))) := by
  unfold output13260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13260_skip : Flapjack.WordAlloc.isSkip output13260 = false := by
  rw [output13260_def]
  conv => lhs; cbv
  try rfl
theorem node13260_eq : Flapjack.WordAlloc.removeDeadStructural input13260 value5 value1 value2 = (output13260, value6634, value1) := by
  rw [input13260_def, output13260_def]
  try (conv => lhs; cbv)
  try rfl

def value6635 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1277, 1265)])).val
theorem input13261_def : input13261 = (Flapjack.WordLangProgHOL.move 0 [(1277, 1265)]) := by
  unfold input13261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1277, 1265)])).val
theorem output13261_def : output13261 = (Flapjack.WordLangProgHOL.move 0 [(1277, 1265)]) := by
  unfold output13261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13261_skip : Flapjack.WordAlloc.isSkip output13261 = false := by
  rw [output13261_def]
  conv => lhs; cbv
  try rfl
theorem node13261_eq : Flapjack.WordAlloc.removeDeadStructural input13261 value6634 value1 value2 = (output13261, value6635, value1) := by
  rw [input13261_def, output13261_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13261 input13260)).val
theorem input13262_def : input13262 = (.seq input13261 input13260) := by
  unfold input13262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13261 output13260)).val
theorem output13262_def : output13262 = (.seq output13261 output13260) := by
  unfold output13262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13262_skip : Flapjack.WordAlloc.isSkip output13262 = false := by
  rw [output13262_def]
  conv => lhs; cbv
  try rfl
theorem node13262_eq : Flapjack.WordAlloc.removeDeadStructural input13262 value5 value1 value2 = (output13262, value6635, value1) := by
  rw [input13262_def, output13262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13260_eq]
  dsimp only
  rw [node13261_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6636 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1273 0#64))).val
theorem input13263_def : input13263 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1273 0#64)) := by
  unfold input13263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1273 0#64))).val
theorem output13263_def : output13263 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1273 0#64)) := by
  unfold output13263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13263_skip : Flapjack.WordAlloc.isSkip output13263 = false := by
  rw [output13263_def]
  conv => lhs; cbv
  try rfl
theorem node13263_eq : Flapjack.WordAlloc.removeDeadStructural input13263 value6635 value1 value2 = (output13263, value6636, value1) := by
  rw [input13263_def, output13263_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1269 0#64))).val
theorem input13264_def : input13264 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1269 0#64)) := by
  unfold input13264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13264_def : output13264 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13264_skip : Flapjack.WordAlloc.isSkip output13264 = true := by
  rw [output13264_def]
  conv => lhs; cbv
  try rfl
theorem node13264_eq : Flapjack.WordAlloc.removeDeadStructural input13264 value6636 value1 value2 = (output13264, value6636, value1) := by
  rw [input13264_def, output13264_def]
  try (conv => lhs; cbv)
  try rfl

def value6637 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1265 1261 (Flapjack.WordRegImm.imm 280#64))))).val
theorem input13265_def : input13265 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1265 1261 (Flapjack.WordRegImm.imm 280#64)))) := by
  unfold input13265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1265 1261 (Flapjack.WordRegImm.imm 280#64))))).val
theorem output13265_def : output13265 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1265 1261 (Flapjack.WordRegImm.imm 280#64)))) := by
  unfold output13265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13265_skip : Flapjack.WordAlloc.isSkip output13265 = false := by
  rw [output13265_def]
  conv => lhs; cbv
  try rfl
theorem node13265_eq : Flapjack.WordAlloc.removeDeadStructural input13265 value6636 value1 value2 = (output13265, value6637, value1) := by
  rw [input13265_def, output13265_def]
  try (conv => lhs; cbv)
  try rfl

def value6638 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1261 (Flapjack.WordLangAddr.addr 1257 18446744073709551104#64)))).val
theorem input13266_def : input13266 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1261 (Flapjack.WordLangAddr.addr 1257 18446744073709551104#64))) := by
  unfold input13266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1261 (Flapjack.WordLangAddr.addr 1257 18446744073709551104#64)))).val
theorem output13266_def : output13266 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1261 (Flapjack.WordLangAddr.addr 1257 18446744073709551104#64))) := by
  unfold output13266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13266_skip : Flapjack.WordAlloc.isSkip output13266 = false := by
  rw [output13266_def]
  conv => lhs; cbv
  try rfl
theorem node13266_eq : Flapjack.WordAlloc.removeDeadStructural input13266 value6637 value1 value2 = (output13266, value6638, value1) := by
  rw [input13266_def, output13266_def]
  try (conv => lhs; cbv)
  try rfl

def value6639 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1257 1253)).val
theorem input13267_def : input13267 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1257 1253) := by
  unfold input13267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1257 1253)).val
theorem output13267_def : output13267 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1257 1253) := by
  unfold output13267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13267_skip : Flapjack.WordAlloc.isSkip output13267 = false := by
  rw [output13267_def]
  conv => lhs; cbv
  try rfl
theorem node13267_eq : Flapjack.WordAlloc.removeDeadStructural input13267 value6638 value1 value2 = (output13267, value6639, value1) := by
  rw [input13267_def, output13267_def]
  try (conv => lhs; cbv)
  try rfl

def value6640 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1253 1249 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13268_def : input13268 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1253 1249 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1253 1249 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13268_def : output13268 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1253 1249 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13268_skip : Flapjack.WordAlloc.isSkip output13268 = false := by
  rw [output13268_def]
  conv => lhs; cbv
  try rfl
theorem node13268_eq : Flapjack.WordAlloc.removeDeadStructural input13268 value6639 value1 value2 = (output13268, value6640, value1) := by
  rw [input13268_def, output13268_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1249 Flapjack.WordStore.heapLength)).val
theorem input13269_def : input13269 = (Flapjack.WordLangProgHOL.get 1249 Flapjack.WordStore.heapLength) := by
  unfold input13269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1249 Flapjack.WordStore.heapLength)).val
theorem output13269_def : output13269 = (Flapjack.WordLangProgHOL.get 1249 Flapjack.WordStore.heapLength) := by
  unfold output13269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13269_skip : Flapjack.WordAlloc.isSkip output13269 = false := by
  rw [output13269_def]
  conv => lhs; cbv
  try rfl
theorem node13269_eq : Flapjack.WordAlloc.removeDeadStructural input13269 value6640 value1 value2 = (output13269, value5, value1) := by
  rw [input13269_def, output13269_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13269 input13268)).val
theorem input13270_def : input13270 = (.seq input13269 input13268) := by
  unfold input13270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13269 output13268)).val
theorem output13270_def : output13270 = (.seq output13269 output13268) := by
  unfold output13270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13270_skip : Flapjack.WordAlloc.isSkip output13270 = false := by
  rw [output13270_def]
  conv => lhs; cbv
  try rfl
theorem node13270_eq : Flapjack.WordAlloc.removeDeadStructural input13270 value6639 value1 value2 = (output13270, value5, value1) := by
  rw [input13270_def, output13270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13268_eq]
  dsimp only
  rw [node13269_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13270 input13267)).val
theorem input13271_def : input13271 = (.seq input13270 input13267) := by
  unfold input13271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13270 output13267)).val
theorem output13271_def : output13271 = (.seq output13270 output13267) := by
  unfold output13271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13271_skip : Flapjack.WordAlloc.isSkip output13271 = false := by
  rw [output13271_def]
  conv => lhs; cbv
  try rfl
theorem node13271_eq : Flapjack.WordAlloc.removeDeadStructural input13271 value6638 value1 value2 = (output13271, value5, value1) := by
  rw [input13271_def, output13271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13267_eq]
  dsimp only
  rw [node13270_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13271 input13266)).val
theorem input13272_def : input13272 = (.seq input13271 input13266) := by
  unfold input13272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13271 output13266)).val
theorem output13272_def : output13272 = (.seq output13271 output13266) := by
  unfold output13272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13272_skip : Flapjack.WordAlloc.isSkip output13272 = false := by
  rw [output13272_def]
  conv => lhs; cbv
  try rfl
theorem node13272_eq : Flapjack.WordAlloc.removeDeadStructural input13272 value6637 value1 value2 = (output13272, value5, value1) := by
  rw [input13272_def, output13272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13266_eq]
  dsimp only
  rw [node13271_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13272 input13265)).val
theorem input13273_def : input13273 = (.seq input13272 input13265) := by
  unfold input13273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13272 output13265)).val
theorem output13273_def : output13273 = (.seq output13272 output13265) := by
  unfold output13273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13273_skip : Flapjack.WordAlloc.isSkip output13273 = false := by
  rw [output13273_def]
  conv => lhs; cbv
  try rfl
theorem node13273_eq : Flapjack.WordAlloc.removeDeadStructural input13273 value6636 value1 value2 = (output13273, value5, value1) := by
  rw [input13273_def, output13273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13265_eq]
  dsimp only
  rw [node13272_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6641 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1241 (Flapjack.WordLangAddr.addr 1245 0#64)))).val
theorem input13274_def : input13274 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1241 (Flapjack.WordLangAddr.addr 1245 0#64))) := by
  unfold input13274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1241 (Flapjack.WordLangAddr.addr 1245 0#64)))).val
theorem output13274_def : output13274 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1241 (Flapjack.WordLangAddr.addr 1245 0#64))) := by
  unfold output13274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13274_skip : Flapjack.WordAlloc.isSkip output13274 = false := by
  rw [output13274_def]
  conv => lhs; cbv
  try rfl
theorem node13274_eq : Flapjack.WordAlloc.removeDeadStructural input13274 value5 value1 value2 = (output13274, value6641, value1) := by
  rw [input13274_def, output13274_def]
  try (conv => lhs; cbv)
  try rfl

def value6642 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1245, 1233)])).val
theorem input13275_def : input13275 = (Flapjack.WordLangProgHOL.move 0 [(1245, 1233)]) := by
  unfold input13275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1245, 1233)])).val
theorem output13275_def : output13275 = (Flapjack.WordLangProgHOL.move 0 [(1245, 1233)]) := by
  unfold output13275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13275_skip : Flapjack.WordAlloc.isSkip output13275 = false := by
  rw [output13275_def]
  conv => lhs; cbv
  try rfl
theorem node13275_eq : Flapjack.WordAlloc.removeDeadStructural input13275 value6641 value1 value2 = (output13275, value6642, value1) := by
  rw [input13275_def, output13275_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13275 input13274)).val
theorem input13276_def : input13276 = (.seq input13275 input13274) := by
  unfold input13276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13275 output13274)).val
theorem output13276_def : output13276 = (.seq output13275 output13274) := by
  unfold output13276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13276_skip : Flapjack.WordAlloc.isSkip output13276 = false := by
  rw [output13276_def]
  conv => lhs; cbv
  try rfl
theorem node13276_eq : Flapjack.WordAlloc.removeDeadStructural input13276 value5 value1 value2 = (output13276, value6642, value1) := by
  rw [input13276_def, output13276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13274_eq]
  dsimp only
  rw [node13275_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6643 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1241 0#64))).val
theorem input13277_def : input13277 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1241 0#64)) := by
  unfold input13277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1241 0#64))).val
theorem output13277_def : output13277 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1241 0#64)) := by
  unfold output13277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13277_skip : Flapjack.WordAlloc.isSkip output13277 = false := by
  rw [output13277_def]
  conv => lhs; cbv
  try rfl
theorem node13277_eq : Flapjack.WordAlloc.removeDeadStructural input13277 value6642 value1 value2 = (output13277, value6643, value1) := by
  rw [input13277_def, output13277_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1237 0#64))).val
theorem input13278_def : input13278 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1237 0#64)) := by
  unfold input13278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13278_def : output13278 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13278_skip : Flapjack.WordAlloc.isSkip output13278 = true := by
  rw [output13278_def]
  conv => lhs; cbv
  try rfl
theorem node13278_eq : Flapjack.WordAlloc.removeDeadStructural input13278 value6643 value1 value2 = (output13278, value6643, value1) := by
  rw [input13278_def, output13278_def]
  try (conv => lhs; cbv)
  try rfl

def value6644 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1233 1229 (Flapjack.WordRegImm.imm 272#64))))).val
theorem input13279_def : input13279 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1233 1229 (Flapjack.WordRegImm.imm 272#64)))) := by
  unfold input13279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1233 1229 (Flapjack.WordRegImm.imm 272#64))))).val
theorem output13279_def : output13279 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1233 1229 (Flapjack.WordRegImm.imm 272#64)))) := by
  unfold output13279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13279_skip : Flapjack.WordAlloc.isSkip output13279 = false := by
  rw [output13279_def]
  conv => lhs; cbv
  try rfl
theorem node13279_eq : Flapjack.WordAlloc.removeDeadStructural input13279 value6643 value1 value2 = (output13279, value6644, value1) := by
  rw [input13279_def, output13279_def]
  try (conv => lhs; cbv)
  try rfl

def value6645 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1229 (Flapjack.WordLangAddr.addr 1225 18446744073709551104#64)))).val
theorem input13280_def : input13280 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1229 (Flapjack.WordLangAddr.addr 1225 18446744073709551104#64))) := by
  unfold input13280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1229 (Flapjack.WordLangAddr.addr 1225 18446744073709551104#64)))).val
theorem output13280_def : output13280 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1229 (Flapjack.WordLangAddr.addr 1225 18446744073709551104#64))) := by
  unfold output13280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13280_skip : Flapjack.WordAlloc.isSkip output13280 = false := by
  rw [output13280_def]
  conv => lhs; cbv
  try rfl
theorem node13280_eq : Flapjack.WordAlloc.removeDeadStructural input13280 value6644 value1 value2 = (output13280, value6645, value1) := by
  rw [input13280_def, output13280_def]
  try (conv => lhs; cbv)
  try rfl

def value6646 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1225 1221)).val
theorem input13281_def : input13281 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1225 1221) := by
  unfold input13281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1225 1221)).val
theorem output13281_def : output13281 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1225 1221) := by
  unfold output13281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13281_skip : Flapjack.WordAlloc.isSkip output13281 = false := by
  rw [output13281_def]
  conv => lhs; cbv
  try rfl
theorem node13281_eq : Flapjack.WordAlloc.removeDeadStructural input13281 value6645 value1 value2 = (output13281, value6646, value1) := by
  rw [input13281_def, output13281_def]
  try (conv => lhs; cbv)
  try rfl

def value6647 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1221 1217 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13282_def : input13282 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1221 1217 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1221 1217 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13282_def : output13282 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1221 1217 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13282_skip : Flapjack.WordAlloc.isSkip output13282 = false := by
  rw [output13282_def]
  conv => lhs; cbv
  try rfl
theorem node13282_eq : Flapjack.WordAlloc.removeDeadStructural input13282 value6646 value1 value2 = (output13282, value6647, value1) := by
  rw [input13282_def, output13282_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1217 Flapjack.WordStore.heapLength)).val
theorem input13283_def : input13283 = (Flapjack.WordLangProgHOL.get 1217 Flapjack.WordStore.heapLength) := by
  unfold input13283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1217 Flapjack.WordStore.heapLength)).val
theorem output13283_def : output13283 = (Flapjack.WordLangProgHOL.get 1217 Flapjack.WordStore.heapLength) := by
  unfold output13283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13283_skip : Flapjack.WordAlloc.isSkip output13283 = false := by
  rw [output13283_def]
  conv => lhs; cbv
  try rfl
theorem node13283_eq : Flapjack.WordAlloc.removeDeadStructural input13283 value6647 value1 value2 = (output13283, value5, value1) := by
  rw [input13283_def, output13283_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13283 input13282)).val
theorem input13284_def : input13284 = (.seq input13283 input13282) := by
  unfold input13284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13283 output13282)).val
theorem output13284_def : output13284 = (.seq output13283 output13282) := by
  unfold output13284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13284_skip : Flapjack.WordAlloc.isSkip output13284 = false := by
  rw [output13284_def]
  conv => lhs; cbv
  try rfl
theorem node13284_eq : Flapjack.WordAlloc.removeDeadStructural input13284 value6646 value1 value2 = (output13284, value5, value1) := by
  rw [input13284_def, output13284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13282_eq]
  dsimp only
  rw [node13283_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13284 input13281)).val
theorem input13285_def : input13285 = (.seq input13284 input13281) := by
  unfold input13285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13284 output13281)).val
theorem output13285_def : output13285 = (.seq output13284 output13281) := by
  unfold output13285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13285_skip : Flapjack.WordAlloc.isSkip output13285 = false := by
  rw [output13285_def]
  conv => lhs; cbv
  try rfl
theorem node13285_eq : Flapjack.WordAlloc.removeDeadStructural input13285 value6645 value1 value2 = (output13285, value5, value1) := by
  rw [input13285_def, output13285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13281_eq]
  dsimp only
  rw [node13284_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13285 input13280)).val
theorem input13286_def : input13286 = (.seq input13285 input13280) := by
  unfold input13286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13285 output13280)).val
theorem output13286_def : output13286 = (.seq output13285 output13280) := by
  unfold output13286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13286_skip : Flapjack.WordAlloc.isSkip output13286 = false := by
  rw [output13286_def]
  conv => lhs; cbv
  try rfl
theorem node13286_eq : Flapjack.WordAlloc.removeDeadStructural input13286 value6644 value1 value2 = (output13286, value5, value1) := by
  rw [input13286_def, output13286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13280_eq]
  dsimp only
  rw [node13285_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13286 input13279)).val
theorem input13287_def : input13287 = (.seq input13286 input13279) := by
  unfold input13287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13286 output13279)).val
theorem output13287_def : output13287 = (.seq output13286 output13279) := by
  unfold output13287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13287_skip : Flapjack.WordAlloc.isSkip output13287 = false := by
  rw [output13287_def]
  conv => lhs; cbv
  try rfl
theorem node13287_eq : Flapjack.WordAlloc.removeDeadStructural input13287 value6643 value1 value2 = (output13287, value5, value1) := by
  rw [input13287_def, output13287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13279_eq]
  dsimp only
  rw [node13286_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6648 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1209 (Flapjack.WordLangAddr.addr 1213 0#64)))).val
theorem input13288_def : input13288 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1209 (Flapjack.WordLangAddr.addr 1213 0#64))) := by
  unfold input13288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1209 (Flapjack.WordLangAddr.addr 1213 0#64)))).val
theorem output13288_def : output13288 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1209 (Flapjack.WordLangAddr.addr 1213 0#64))) := by
  unfold output13288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13288_skip : Flapjack.WordAlloc.isSkip output13288 = false := by
  rw [output13288_def]
  conv => lhs; cbv
  try rfl
theorem node13288_eq : Flapjack.WordAlloc.removeDeadStructural input13288 value5 value1 value2 = (output13288, value6648, value1) := by
  rw [input13288_def, output13288_def]
  try (conv => lhs; cbv)
  try rfl

def value6649 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1213, 1201)])).val
theorem input13289_def : input13289 = (Flapjack.WordLangProgHOL.move 0 [(1213, 1201)]) := by
  unfold input13289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1213, 1201)])).val
theorem output13289_def : output13289 = (Flapjack.WordLangProgHOL.move 0 [(1213, 1201)]) := by
  unfold output13289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13289_skip : Flapjack.WordAlloc.isSkip output13289 = false := by
  rw [output13289_def]
  conv => lhs; cbv
  try rfl
theorem node13289_eq : Flapjack.WordAlloc.removeDeadStructural input13289 value6648 value1 value2 = (output13289, value6649, value1) := by
  rw [input13289_def, output13289_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13289 input13288)).val
theorem input13290_def : input13290 = (.seq input13289 input13288) := by
  unfold input13290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13289 output13288)).val
theorem output13290_def : output13290 = (.seq output13289 output13288) := by
  unfold output13290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13290_skip : Flapjack.WordAlloc.isSkip output13290 = false := by
  rw [output13290_def]
  conv => lhs; cbv
  try rfl
theorem node13290_eq : Flapjack.WordAlloc.removeDeadStructural input13290 value5 value1 value2 = (output13290, value6649, value1) := by
  rw [input13290_def, output13290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13288_eq]
  dsimp only
  rw [node13289_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6650 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1209 0#64))).val
theorem input13291_def : input13291 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1209 0#64)) := by
  unfold input13291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1209 0#64))).val
theorem output13291_def : output13291 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1209 0#64)) := by
  unfold output13291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13291_skip : Flapjack.WordAlloc.isSkip output13291 = false := by
  rw [output13291_def]
  conv => lhs; cbv
  try rfl
theorem node13291_eq : Flapjack.WordAlloc.removeDeadStructural input13291 value6649 value1 value2 = (output13291, value6650, value1) := by
  rw [input13291_def, output13291_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1205 0#64))).val
theorem input13292_def : input13292 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1205 0#64)) := by
  unfold input13292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13292_def : output13292 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13292_skip : Flapjack.WordAlloc.isSkip output13292 = true := by
  rw [output13292_def]
  conv => lhs; cbv
  try rfl
theorem node13292_eq : Flapjack.WordAlloc.removeDeadStructural input13292 value6650 value1 value2 = (output13292, value6650, value1) := by
  rw [input13292_def, output13292_def]
  try (conv => lhs; cbv)
  try rfl

def value6651 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1201 1197 (Flapjack.WordRegImm.imm 264#64))))).val
theorem input13293_def : input13293 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1201 1197 (Flapjack.WordRegImm.imm 264#64)))) := by
  unfold input13293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1201 1197 (Flapjack.WordRegImm.imm 264#64))))).val
theorem output13293_def : output13293 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1201 1197 (Flapjack.WordRegImm.imm 264#64)))) := by
  unfold output13293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13293_skip : Flapjack.WordAlloc.isSkip output13293 = false := by
  rw [output13293_def]
  conv => lhs; cbv
  try rfl
theorem node13293_eq : Flapjack.WordAlloc.removeDeadStructural input13293 value6650 value1 value2 = (output13293, value6651, value1) := by
  rw [input13293_def, output13293_def]
  try (conv => lhs; cbv)
  try rfl

def value6652 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1197 (Flapjack.WordLangAddr.addr 1193 18446744073709551104#64)))).val
theorem input13294_def : input13294 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1197 (Flapjack.WordLangAddr.addr 1193 18446744073709551104#64))) := by
  unfold input13294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1197 (Flapjack.WordLangAddr.addr 1193 18446744073709551104#64)))).val
theorem output13294_def : output13294 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1197 (Flapjack.WordLangAddr.addr 1193 18446744073709551104#64))) := by
  unfold output13294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13294_skip : Flapjack.WordAlloc.isSkip output13294 = false := by
  rw [output13294_def]
  conv => lhs; cbv
  try rfl
theorem node13294_eq : Flapjack.WordAlloc.removeDeadStructural input13294 value6651 value1 value2 = (output13294, value6652, value1) := by
  rw [input13294_def, output13294_def]
  try (conv => lhs; cbv)
  try rfl

def value6653 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1193 1189)).val
theorem input13295_def : input13295 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1193 1189) := by
  unfold input13295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1193 1189)).val
theorem output13295_def : output13295 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1193 1189) := by
  unfold output13295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13295_skip : Flapjack.WordAlloc.isSkip output13295 = false := by
  rw [output13295_def]
  conv => lhs; cbv
  try rfl
theorem node13295_eq : Flapjack.WordAlloc.removeDeadStructural input13295 value6652 value1 value2 = (output13295, value6653, value1) := by
  rw [input13295_def, output13295_def]
  try (conv => lhs; cbv)
  try rfl

def value6654 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1189 1185 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13296_def : input13296 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1189 1185 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1189 1185 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13296_def : output13296 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1189 1185 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13296_skip : Flapjack.WordAlloc.isSkip output13296 = false := by
  rw [output13296_def]
  conv => lhs; cbv
  try rfl
theorem node13296_eq : Flapjack.WordAlloc.removeDeadStructural input13296 value6653 value1 value2 = (output13296, value6654, value1) := by
  rw [input13296_def, output13296_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1185 Flapjack.WordStore.heapLength)).val
theorem input13297_def : input13297 = (Flapjack.WordLangProgHOL.get 1185 Flapjack.WordStore.heapLength) := by
  unfold input13297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1185 Flapjack.WordStore.heapLength)).val
theorem output13297_def : output13297 = (Flapjack.WordLangProgHOL.get 1185 Flapjack.WordStore.heapLength) := by
  unfold output13297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13297_skip : Flapjack.WordAlloc.isSkip output13297 = false := by
  rw [output13297_def]
  conv => lhs; cbv
  try rfl
theorem node13297_eq : Flapjack.WordAlloc.removeDeadStructural input13297 value6654 value1 value2 = (output13297, value5, value1) := by
  rw [input13297_def, output13297_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13297 input13296)).val
theorem input13298_def : input13298 = (.seq input13297 input13296) := by
  unfold input13298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13297 output13296)).val
theorem output13298_def : output13298 = (.seq output13297 output13296) := by
  unfold output13298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13298_skip : Flapjack.WordAlloc.isSkip output13298 = false := by
  rw [output13298_def]
  conv => lhs; cbv
  try rfl
theorem node13298_eq : Flapjack.WordAlloc.removeDeadStructural input13298 value6653 value1 value2 = (output13298, value5, value1) := by
  rw [input13298_def, output13298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13296_eq]
  dsimp only
  rw [node13297_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13298 input13295)).val
theorem input13299_def : input13299 = (.seq input13298 input13295) := by
  unfold input13299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13298 output13295)).val
theorem output13299_def : output13299 = (.seq output13298 output13295) := by
  unfold output13299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13299_skip : Flapjack.WordAlloc.isSkip output13299 = false := by
  rw [output13299_def]
  conv => lhs; cbv
  try rfl
theorem node13299_eq : Flapjack.WordAlloc.removeDeadStructural input13299 value6652 value1 value2 = (output13299, value5, value1) := by
  rw [input13299_def, output13299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13295_eq]
  dsimp only
  rw [node13298_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13299 input13294)).val
theorem input13300_def : input13300 = (.seq input13299 input13294) := by
  unfold input13300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13299 output13294)).val
theorem output13300_def : output13300 = (.seq output13299 output13294) := by
  unfold output13300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13300_skip : Flapjack.WordAlloc.isSkip output13300 = false := by
  rw [output13300_def]
  conv => lhs; cbv
  try rfl
theorem node13300_eq : Flapjack.WordAlloc.removeDeadStructural input13300 value6651 value1 value2 = (output13300, value5, value1) := by
  rw [input13300_def, output13300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13294_eq]
  dsimp only
  rw [node13299_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13300 input13293)).val
theorem input13301_def : input13301 = (.seq input13300 input13293) := by
  unfold input13301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13300 output13293)).val
theorem output13301_def : output13301 = (.seq output13300 output13293) := by
  unfold output13301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13301_skip : Flapjack.WordAlloc.isSkip output13301 = false := by
  rw [output13301_def]
  conv => lhs; cbv
  try rfl
theorem node13301_eq : Flapjack.WordAlloc.removeDeadStructural input13301 value6650 value1 value2 = (output13301, value5, value1) := by
  rw [input13301_def, output13301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13293_eq]
  dsimp only
  rw [node13300_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6655 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1177 (Flapjack.WordLangAddr.addr 1181 0#64)))).val
theorem input13302_def : input13302 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1177 (Flapjack.WordLangAddr.addr 1181 0#64))) := by
  unfold input13302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1177 (Flapjack.WordLangAddr.addr 1181 0#64)))).val
theorem output13302_def : output13302 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1177 (Flapjack.WordLangAddr.addr 1181 0#64))) := by
  unfold output13302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13302_skip : Flapjack.WordAlloc.isSkip output13302 = false := by
  rw [output13302_def]
  conv => lhs; cbv
  try rfl
theorem node13302_eq : Flapjack.WordAlloc.removeDeadStructural input13302 value5 value1 value2 = (output13302, value6655, value1) := by
  rw [input13302_def, output13302_def]
  try (conv => lhs; cbv)
  try rfl

def value6656 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1181, 1169)])).val
theorem input13303_def : input13303 = (Flapjack.WordLangProgHOL.move 0 [(1181, 1169)]) := by
  unfold input13303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1181, 1169)])).val
theorem output13303_def : output13303 = (Flapjack.WordLangProgHOL.move 0 [(1181, 1169)]) := by
  unfold output13303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13303_skip : Flapjack.WordAlloc.isSkip output13303 = false := by
  rw [output13303_def]
  conv => lhs; cbv
  try rfl
theorem node13303_eq : Flapjack.WordAlloc.removeDeadStructural input13303 value6655 value1 value2 = (output13303, value6656, value1) := by
  rw [input13303_def, output13303_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input13303 input13302)).val
theorem input13304_def : input13304 = (.seq input13303 input13302) := by
  unfold input13304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output13303 output13302)).val
theorem output13304_def : output13304 = (.seq output13303 output13302) := by
  unfold output13304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13304_skip : Flapjack.WordAlloc.isSkip output13304 = false := by
  rw [output13304_def]
  conv => lhs; cbv
  try rfl
theorem node13304_eq : Flapjack.WordAlloc.removeDeadStructural input13304 value5 value1 value2 = (output13304, value6656, value1) := by
  rw [input13304_def, output13304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node13302_eq]
  dsimp only
  rw [node13303_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value6657 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1177 0#64))).val
theorem input13305_def : input13305 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1177 0#64)) := by
  unfold input13305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1177 0#64))).val
theorem output13305_def : output13305 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1177 0#64)) := by
  unfold output13305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13305_skip : Flapjack.WordAlloc.isSkip output13305 = false := by
  rw [output13305_def]
  conv => lhs; cbv
  try rfl
theorem node13305_eq : Flapjack.WordAlloc.removeDeadStructural input13305 value6656 value1 value2 = (output13305, value6657, value1) := by
  rw [input13305_def, output13305_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1173 0#64))).val
theorem input13306_def : input13306 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1173 0#64)) := by
  unfold input13306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output13306_def : output13306 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output13306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13306_skip : Flapjack.WordAlloc.isSkip output13306 = true := by
  rw [output13306_def]
  conv => lhs; cbv
  try rfl
theorem node13306_eq : Flapjack.WordAlloc.removeDeadStructural input13306 value6657 value1 value2 = (output13306, value6657, value1) := by
  rw [input13306_def, output13306_def]
  try (conv => lhs; cbv)
  try rfl

def value6658 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1169 1165 (Flapjack.WordRegImm.imm 256#64))))).val
theorem input13307_def : input13307 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1169 1165 (Flapjack.WordRegImm.imm 256#64)))) := by
  unfold input13307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1169 1165 (Flapjack.WordRegImm.imm 256#64))))).val
theorem output13307_def : output13307 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1169 1165 (Flapjack.WordRegImm.imm 256#64)))) := by
  unfold output13307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13307_skip : Flapjack.WordAlloc.isSkip output13307 = false := by
  rw [output13307_def]
  conv => lhs; cbv
  try rfl
theorem node13307_eq : Flapjack.WordAlloc.removeDeadStructural input13307 value6657 value1 value2 = (output13307, value6658, value1) := by
  rw [input13307_def, output13307_def]
  try (conv => lhs; cbv)
  try rfl

def value6659 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1165 (Flapjack.WordLangAddr.addr 1161 18446744073709551104#64)))).val
theorem input13308_def : input13308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1165 (Flapjack.WordLangAddr.addr 1161 18446744073709551104#64))) := by
  unfold input13308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1165 (Flapjack.WordLangAddr.addr 1161 18446744073709551104#64)))).val
theorem output13308_def : output13308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1165 (Flapjack.WordLangAddr.addr 1161 18446744073709551104#64))) := by
  unfold output13308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13308_skip : Flapjack.WordAlloc.isSkip output13308 = false := by
  rw [output13308_def]
  conv => lhs; cbv
  try rfl
theorem node13308_eq : Flapjack.WordAlloc.removeDeadStructural input13308 value6658 value1 value2 = (output13308, value6659, value1) := by
  rw [input13308_def, output13308_def]
  try (conv => lhs; cbv)
  try rfl

def value6660 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1161 1157)).val
theorem input13309_def : input13309 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1161 1157) := by
  unfold input13309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1161 1157)).val
theorem output13309_def : output13309 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1161 1157) := by
  unfold output13309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13309_skip : Flapjack.WordAlloc.isSkip output13309 = false := by
  rw [output13309_def]
  conv => lhs; cbv
  try rfl
theorem node13309_eq : Flapjack.WordAlloc.removeDeadStructural input13309 value6659 value1 value2 = (output13309, value6660, value1) := by
  rw [input13309_def, output13309_def]
  try (conv => lhs; cbv)
  try rfl

def value6661 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input13310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1157 1153 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input13310_def : input13310 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1157 1153 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input13310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1157 1153 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output13310_def : output13310 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1157 1153 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output13310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13310_skip : Flapjack.WordAlloc.isSkip output13310 = false := by
  rw [output13310_def]
  conv => lhs; cbv
  try rfl
theorem node13310_eq : Flapjack.WordAlloc.removeDeadStructural input13310 value6660 value1 value2 = (output13310, value6661, value1) := by
  rw [input13310_def, output13310_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input13311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1153 Flapjack.WordStore.heapLength)).val
theorem input13311_def : input13311 = (Flapjack.WordLangProgHOL.get 1153 Flapjack.WordStore.heapLength) := by
  unfold input13311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output13311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1153 Flapjack.WordStore.heapLength)).val
theorem output13311_def : output13311 = (Flapjack.WordLangProgHOL.get 1153 Flapjack.WordStore.heapLength) := by
  unfold output13311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output13311_skip : Flapjack.WordAlloc.isSkip output13311 = false := by
  rw [output13311_def]
  conv => lhs; cbv
  try rfl
theorem node13311_eq : Flapjack.WordAlloc.removeDeadStructural input13311 value6661 value1 value2 = (output13311, value5, value1) := by
  rw [input13311_def, output13311_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node13311_eq
end InitECandidate.Proofs.DeadStages713
