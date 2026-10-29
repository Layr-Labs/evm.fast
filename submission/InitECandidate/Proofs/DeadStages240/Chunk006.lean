import InitECandidate.Proofs.DeadStages240.Chunk005
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages240
def value773 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4941 (Flapjack.WordLangAddr.addr 4937 18446744073709551520#64)))).val
theorem input1536_def : input1536 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4941 (Flapjack.WordLangAddr.addr 4937 18446744073709551520#64))) := by
  unfold input1536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4941 (Flapjack.WordLangAddr.addr 4937 18446744073709551520#64)))).val
theorem output1536_def : output1536 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4941 (Flapjack.WordLangAddr.addr 4937 18446744073709551520#64))) := by
  unfold output1536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1536_skip : Flapjack.WordAlloc.isSkip output1536 = false := by
  rw [output1536_def]
  conv => lhs; cbv
  try rfl
theorem node1536_eq : Flapjack.WordAlloc.removeDeadStructural input1536 value772 value1 value2 = (output1536, value773, value1) := by
  rw [input1536_def, output1536_def]
  try (conv => lhs; cbv)
  try rfl

def value774 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4937 4933)).val
theorem input1537_def : input1537 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4937 4933) := by
  unfold input1537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4937 4933)).val
theorem output1537_def : output1537 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4937 4933) := by
  unfold output1537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1537_skip : Flapjack.WordAlloc.isSkip output1537 = false := by
  rw [output1537_def]
  conv => lhs; cbv
  try rfl
theorem node1537_eq : Flapjack.WordAlloc.removeDeadStructural input1537 value773 value1 value2 = (output1537, value774, value1) := by
  rw [input1537_def, output1537_def]
  try (conv => lhs; cbv)
  try rfl

def value775 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4933 4929 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1538_def : input1538 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4933 4929 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4933 4929 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1538_def : output1538 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4933 4929 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1538_skip : Flapjack.WordAlloc.isSkip output1538 = false := by
  rw [output1538_def]
  conv => lhs; cbv
  try rfl
theorem node1538_eq : Flapjack.WordAlloc.removeDeadStructural input1538 value774 value1 value2 = (output1538, value775, value1) := by
  rw [input1538_def, output1538_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4929 Flapjack.WordStore.heapLength)).val
theorem input1539_def : input1539 = (Flapjack.WordLangProgHOL.get 4929 Flapjack.WordStore.heapLength) := by
  unfold input1539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4929 Flapjack.WordStore.heapLength)).val
theorem output1539_def : output1539 = (Flapjack.WordLangProgHOL.get 4929 Flapjack.WordStore.heapLength) := by
  unfold output1539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1539_skip : Flapjack.WordAlloc.isSkip output1539 = false := by
  rw [output1539_def]
  conv => lhs; cbv
  try rfl
theorem node1539_eq : Flapjack.WordAlloc.removeDeadStructural input1539 value775 value1 value2 = (output1539, value5, value1) := by
  rw [input1539_def, output1539_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1539 input1538)).val
theorem input1540_def : input1540 = (.seq input1539 input1538) := by
  unfold input1540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1539 output1538)).val
theorem output1540_def : output1540 = (.seq output1539 output1538) := by
  unfold output1540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1540_skip : Flapjack.WordAlloc.isSkip output1540 = false := by
  rw [output1540_def]
  conv => lhs; cbv
  try rfl
theorem node1540_eq : Flapjack.WordAlloc.removeDeadStructural input1540 value774 value1 value2 = (output1540, value5, value1) := by
  rw [input1540_def, output1540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1538_eq]
  try dsimp only
  rw [node1539_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1540 input1537)).val
theorem input1541_def : input1541 = (.seq input1540 input1537) := by
  unfold input1541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1540 output1537)).val
theorem output1541_def : output1541 = (.seq output1540 output1537) := by
  unfold output1541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1541_skip : Flapjack.WordAlloc.isSkip output1541 = false := by
  rw [output1541_def]
  conv => lhs; cbv
  try rfl
theorem node1541_eq : Flapjack.WordAlloc.removeDeadStructural input1541 value773 value1 value2 = (output1541, value5, value1) := by
  rw [input1541_def, output1541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1537_eq]
  try dsimp only
  rw [node1540_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1541 input1536)).val
theorem input1542_def : input1542 = (.seq input1541 input1536) := by
  unfold input1542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1541 output1536)).val
theorem output1542_def : output1542 = (.seq output1541 output1536) := by
  unfold output1542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1542_skip : Flapjack.WordAlloc.isSkip output1542 = false := by
  rw [output1542_def]
  conv => lhs; cbv
  try rfl
theorem node1542_eq : Flapjack.WordAlloc.removeDeadStructural input1542 value772 value1 value2 = (output1542, value5, value1) := by
  rw [input1542_def, output1542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1536_eq]
  try dsimp only
  rw [node1541_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1542 input1535)).val
theorem input1543_def : input1543 = (.seq input1542 input1535) := by
  unfold input1543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1542 output1535)).val
theorem output1543_def : output1543 = (.seq output1542 output1535) := by
  unfold output1543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1543_skip : Flapjack.WordAlloc.isSkip output1543 = false := by
  rw [output1543_def]
  conv => lhs; cbv
  try rfl
theorem node1543_eq : Flapjack.WordAlloc.removeDeadStructural input1543 value771 value1 value2 = (output1543, value5, value1) := by
  rw [input1543_def, output1543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1535_eq]
  try dsimp only
  rw [node1542_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value776 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4921 (Flapjack.WordLangAddr.addr 4925 0#64)))).val
theorem input1544_def : input1544 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4921 (Flapjack.WordLangAddr.addr 4925 0#64))) := by
  unfold input1544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4921 (Flapjack.WordLangAddr.addr 4925 0#64)))).val
theorem output1544_def : output1544 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4921 (Flapjack.WordLangAddr.addr 4925 0#64))) := by
  unfold output1544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1544_skip : Flapjack.WordAlloc.isSkip output1544 = false := by
  rw [output1544_def]
  conv => lhs; cbv
  try rfl
theorem node1544_eq : Flapjack.WordAlloc.removeDeadStructural input1544 value5 value1 value2 = (output1544, value776, value1) := by
  rw [input1544_def, output1544_def]
  try (conv => lhs; cbv)
  try rfl

def value777 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4925, 4913)])).val
theorem input1545_def : input1545 = (Flapjack.WordLangProgHOL.move 0 [(4925, 4913)]) := by
  unfold input1545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4925, 4913)])).val
theorem output1545_def : output1545 = (Flapjack.WordLangProgHOL.move 0 [(4925, 4913)]) := by
  unfold output1545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1545_skip : Flapjack.WordAlloc.isSkip output1545 = false := by
  rw [output1545_def]
  conv => lhs; cbv
  try rfl
theorem node1545_eq : Flapjack.WordAlloc.removeDeadStructural input1545 value776 value1 value2 = (output1545, value777, value1) := by
  rw [input1545_def, output1545_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1545 input1544)).val
theorem input1546_def : input1546 = (.seq input1545 input1544) := by
  unfold input1546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1545 output1544)).val
theorem output1546_def : output1546 = (.seq output1545 output1544) := by
  unfold output1546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1546_skip : Flapjack.WordAlloc.isSkip output1546 = false := by
  rw [output1546_def]
  conv => lhs; cbv
  try rfl
theorem node1546_eq : Flapjack.WordAlloc.removeDeadStructural input1546 value5 value1 value2 = (output1546, value777, value1) := by
  rw [input1546_def, output1546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1544_eq]
  try dsimp only
  rw [node1545_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value778 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4921 8403734739674248209#64))).val
theorem input1547_def : input1547 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4921 8403734739674248209#64)) := by
  unfold input1547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4921 8403734739674248209#64))).val
theorem output1547_def : output1547 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4921 8403734739674248209#64)) := by
  unfold output1547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1547_skip : Flapjack.WordAlloc.isSkip output1547 = false := by
  rw [output1547_def]
  conv => lhs; cbv
  try rfl
theorem node1547_eq : Flapjack.WordAlloc.removeDeadStructural input1547 value777 value1 value2 = (output1547, value778, value1) := by
  rw [input1547_def, output1547_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4917 8403734739674248209#64))).val
theorem input1548_def : input1548 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4917 8403734739674248209#64)) := by
  unfold input1548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1548_def : output1548 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1548_skip : Flapjack.WordAlloc.isSkip output1548 = true := by
  rw [output1548_def]
  conv => lhs; cbv
  try rfl
theorem node1548_eq : Flapjack.WordAlloc.removeDeadStructural input1548 value778 value1 value2 = (output1548, value778, value1) := by
  rw [input1548_def, output1548_def]
  try (conv => lhs; cbv)
  try rfl

def value779 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4913 4909 (Flapjack.WordRegImm.imm 1160#64))))).val
theorem input1549_def : input1549 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4913 4909 (Flapjack.WordRegImm.imm 1160#64)))) := by
  unfold input1549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4913 4909 (Flapjack.WordRegImm.imm 1160#64))))).val
theorem output1549_def : output1549 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4913 4909 (Flapjack.WordRegImm.imm 1160#64)))) := by
  unfold output1549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1549_skip : Flapjack.WordAlloc.isSkip output1549 = false := by
  rw [output1549_def]
  conv => lhs; cbv
  try rfl
theorem node1549_eq : Flapjack.WordAlloc.removeDeadStructural input1549 value778 value1 value2 = (output1549, value779, value1) := by
  rw [input1549_def, output1549_def]
  try (conv => lhs; cbv)
  try rfl

def value780 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4909 (Flapjack.WordLangAddr.addr 4905 18446744073709551520#64)))).val
theorem input1550_def : input1550 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4909 (Flapjack.WordLangAddr.addr 4905 18446744073709551520#64))) := by
  unfold input1550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4909 (Flapjack.WordLangAddr.addr 4905 18446744073709551520#64)))).val
theorem output1550_def : output1550 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4909 (Flapjack.WordLangAddr.addr 4905 18446744073709551520#64))) := by
  unfold output1550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1550_skip : Flapjack.WordAlloc.isSkip output1550 = false := by
  rw [output1550_def]
  conv => lhs; cbv
  try rfl
theorem node1550_eq : Flapjack.WordAlloc.removeDeadStructural input1550 value779 value1 value2 = (output1550, value780, value1) := by
  rw [input1550_def, output1550_def]
  try (conv => lhs; cbv)
  try rfl

def value781 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4905 4901)).val
theorem input1551_def : input1551 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4905 4901) := by
  unfold input1551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4905 4901)).val
theorem output1551_def : output1551 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4905 4901) := by
  unfold output1551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1551_skip : Flapjack.WordAlloc.isSkip output1551 = false := by
  rw [output1551_def]
  conv => lhs; cbv
  try rfl
theorem node1551_eq : Flapjack.WordAlloc.removeDeadStructural input1551 value780 value1 value2 = (output1551, value781, value1) := by
  rw [input1551_def, output1551_def]
  try (conv => lhs; cbv)
  try rfl

def value782 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4901 4897 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1552_def : input1552 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4901 4897 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4901 4897 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1552_def : output1552 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4901 4897 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1552_skip : Flapjack.WordAlloc.isSkip output1552 = false := by
  rw [output1552_def]
  conv => lhs; cbv
  try rfl
theorem node1552_eq : Flapjack.WordAlloc.removeDeadStructural input1552 value781 value1 value2 = (output1552, value782, value1) := by
  rw [input1552_def, output1552_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4897 Flapjack.WordStore.heapLength)).val
theorem input1553_def : input1553 = (Flapjack.WordLangProgHOL.get 4897 Flapjack.WordStore.heapLength) := by
  unfold input1553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4897 Flapjack.WordStore.heapLength)).val
theorem output1553_def : output1553 = (Flapjack.WordLangProgHOL.get 4897 Flapjack.WordStore.heapLength) := by
  unfold output1553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1553_skip : Flapjack.WordAlloc.isSkip output1553 = false := by
  rw [output1553_def]
  conv => lhs; cbv
  try rfl
theorem node1553_eq : Flapjack.WordAlloc.removeDeadStructural input1553 value782 value1 value2 = (output1553, value5, value1) := by
  rw [input1553_def, output1553_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1553 input1552)).val
theorem input1554_def : input1554 = (.seq input1553 input1552) := by
  unfold input1554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1553 output1552)).val
theorem output1554_def : output1554 = (.seq output1553 output1552) := by
  unfold output1554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1554_skip : Flapjack.WordAlloc.isSkip output1554 = false := by
  rw [output1554_def]
  conv => lhs; cbv
  try rfl
theorem node1554_eq : Flapjack.WordAlloc.removeDeadStructural input1554 value781 value1 value2 = (output1554, value5, value1) := by
  rw [input1554_def, output1554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1552_eq]
  try dsimp only
  rw [node1553_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1554 input1551)).val
theorem input1555_def : input1555 = (.seq input1554 input1551) := by
  unfold input1555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1554 output1551)).val
theorem output1555_def : output1555 = (.seq output1554 output1551) := by
  unfold output1555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1555_skip : Flapjack.WordAlloc.isSkip output1555 = false := by
  rw [output1555_def]
  conv => lhs; cbv
  try rfl
theorem node1555_eq : Flapjack.WordAlloc.removeDeadStructural input1555 value780 value1 value2 = (output1555, value5, value1) := by
  rw [input1555_def, output1555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1551_eq]
  try dsimp only
  rw [node1554_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1555 input1550)).val
theorem input1556_def : input1556 = (.seq input1555 input1550) := by
  unfold input1556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1555 output1550)).val
theorem output1556_def : output1556 = (.seq output1555 output1550) := by
  unfold output1556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1556_skip : Flapjack.WordAlloc.isSkip output1556 = false := by
  rw [output1556_def]
  conv => lhs; cbv
  try rfl
theorem node1556_eq : Flapjack.WordAlloc.removeDeadStructural input1556 value779 value1 value2 = (output1556, value5, value1) := by
  rw [input1556_def, output1556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1550_eq]
  try dsimp only
  rw [node1555_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1556 input1549)).val
theorem input1557_def : input1557 = (.seq input1556 input1549) := by
  unfold input1557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1556 output1549)).val
theorem output1557_def : output1557 = (.seq output1556 output1549) := by
  unfold output1557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1557_skip : Flapjack.WordAlloc.isSkip output1557 = false := by
  rw [output1557_def]
  conv => lhs; cbv
  try rfl
theorem node1557_eq : Flapjack.WordAlloc.removeDeadStructural input1557 value778 value1 value2 = (output1557, value5, value1) := by
  rw [input1557_def, output1557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1549_eq]
  try dsimp only
  rw [node1556_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value783 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4889 (Flapjack.WordLangAddr.addr 4893 0#64)))).val
theorem input1558_def : input1558 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4889 (Flapjack.WordLangAddr.addr 4893 0#64))) := by
  unfold input1558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4889 (Flapjack.WordLangAddr.addr 4893 0#64)))).val
theorem output1558_def : output1558 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4889 (Flapjack.WordLangAddr.addr 4893 0#64))) := by
  unfold output1558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1558_skip : Flapjack.WordAlloc.isSkip output1558 = false := by
  rw [output1558_def]
  conv => lhs; cbv
  try rfl
theorem node1558_eq : Flapjack.WordAlloc.removeDeadStructural input1558 value5 value1 value2 = (output1558, value783, value1) := by
  rw [input1558_def, output1558_def]
  try (conv => lhs; cbv)
  try rfl

def value784 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4893, 4881)])).val
theorem input1559_def : input1559 = (Flapjack.WordLangProgHOL.move 0 [(4893, 4881)]) := by
  unfold input1559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4893, 4881)])).val
theorem output1559_def : output1559 = (Flapjack.WordLangProgHOL.move 0 [(4893, 4881)]) := by
  unfold output1559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1559_skip : Flapjack.WordAlloc.isSkip output1559 = false := by
  rw [output1559_def]
  conv => lhs; cbv
  try rfl
theorem node1559_eq : Flapjack.WordAlloc.removeDeadStructural input1559 value783 value1 value2 = (output1559, value784, value1) := by
  rw [input1559_def, output1559_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1559 input1558)).val
theorem input1560_def : input1560 = (.seq input1559 input1558) := by
  unfold input1560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1559 output1558)).val
theorem output1560_def : output1560 = (.seq output1559 output1558) := by
  unfold output1560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1560_skip : Flapjack.WordAlloc.isSkip output1560 = false := by
  rw [output1560_def]
  conv => lhs; cbv
  try rfl
theorem node1560_eq : Flapjack.WordAlloc.removeDeadStructural input1560 value5 value1 value2 = (output1560, value784, value1) := by
  rw [input1560_def, output1560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1558_eq]
  try dsimp only
  rw [node1559_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value785 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4889 2642828698713700799#64))).val
theorem input1561_def : input1561 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4889 2642828698713700799#64)) := by
  unfold input1561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4889 2642828698713700799#64))).val
theorem output1561_def : output1561 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4889 2642828698713700799#64)) := by
  unfold output1561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1561_skip : Flapjack.WordAlloc.isSkip output1561 = false := by
  rw [output1561_def]
  conv => lhs; cbv
  try rfl
theorem node1561_eq : Flapjack.WordAlloc.removeDeadStructural input1561 value784 value1 value2 = (output1561, value785, value1) := by
  rw [input1561_def, output1561_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4885 2642828698713700799#64))).val
theorem input1562_def : input1562 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4885 2642828698713700799#64)) := by
  unfold input1562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1562_def : output1562 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1562_skip : Flapjack.WordAlloc.isSkip output1562 = true := by
  rw [output1562_def]
  conv => lhs; cbv
  try rfl
theorem node1562_eq : Flapjack.WordAlloc.removeDeadStructural input1562 value785 value1 value2 = (output1562, value785, value1) := by
  rw [input1562_def, output1562_def]
  try (conv => lhs; cbv)
  try rfl

def value786 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4881 4877 (Flapjack.WordRegImm.imm 1152#64))))).val
theorem input1563_def : input1563 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4881 4877 (Flapjack.WordRegImm.imm 1152#64)))) := by
  unfold input1563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4881 4877 (Flapjack.WordRegImm.imm 1152#64))))).val
theorem output1563_def : output1563 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4881 4877 (Flapjack.WordRegImm.imm 1152#64)))) := by
  unfold output1563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1563_skip : Flapjack.WordAlloc.isSkip output1563 = false := by
  rw [output1563_def]
  conv => lhs; cbv
  try rfl
theorem node1563_eq : Flapjack.WordAlloc.removeDeadStructural input1563 value785 value1 value2 = (output1563, value786, value1) := by
  rw [input1563_def, output1563_def]
  try (conv => lhs; cbv)
  try rfl

def value787 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4877 (Flapjack.WordLangAddr.addr 4873 18446744073709551520#64)))).val
theorem input1564_def : input1564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4877 (Flapjack.WordLangAddr.addr 4873 18446744073709551520#64))) := by
  unfold input1564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4877 (Flapjack.WordLangAddr.addr 4873 18446744073709551520#64)))).val
theorem output1564_def : output1564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4877 (Flapjack.WordLangAddr.addr 4873 18446744073709551520#64))) := by
  unfold output1564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1564_skip : Flapjack.WordAlloc.isSkip output1564 = false := by
  rw [output1564_def]
  conv => lhs; cbv
  try rfl
theorem node1564_eq : Flapjack.WordAlloc.removeDeadStructural input1564 value786 value1 value2 = (output1564, value787, value1) := by
  rw [input1564_def, output1564_def]
  try (conv => lhs; cbv)
  try rfl

def value788 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4873 4869)).val
theorem input1565_def : input1565 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4873 4869) := by
  unfold input1565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4873 4869)).val
theorem output1565_def : output1565 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4873 4869) := by
  unfold output1565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1565_skip : Flapjack.WordAlloc.isSkip output1565 = false := by
  rw [output1565_def]
  conv => lhs; cbv
  try rfl
theorem node1565_eq : Flapjack.WordAlloc.removeDeadStructural input1565 value787 value1 value2 = (output1565, value788, value1) := by
  rw [input1565_def, output1565_def]
  try (conv => lhs; cbv)
  try rfl

def value789 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4869 4865 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1566_def : input1566 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4869 4865 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4869 4865 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1566_def : output1566 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4869 4865 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1566_skip : Flapjack.WordAlloc.isSkip output1566 = false := by
  rw [output1566_def]
  conv => lhs; cbv
  try rfl
theorem node1566_eq : Flapjack.WordAlloc.removeDeadStructural input1566 value788 value1 value2 = (output1566, value789, value1) := by
  rw [input1566_def, output1566_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4865 Flapjack.WordStore.heapLength)).val
theorem input1567_def : input1567 = (Flapjack.WordLangProgHOL.get 4865 Flapjack.WordStore.heapLength) := by
  unfold input1567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4865 Flapjack.WordStore.heapLength)).val
theorem output1567_def : output1567 = (Flapjack.WordLangProgHOL.get 4865 Flapjack.WordStore.heapLength) := by
  unfold output1567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1567_skip : Flapjack.WordAlloc.isSkip output1567 = false := by
  rw [output1567_def]
  conv => lhs; cbv
  try rfl
theorem node1567_eq : Flapjack.WordAlloc.removeDeadStructural input1567 value789 value1 value2 = (output1567, value5, value1) := by
  rw [input1567_def, output1567_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1567 input1566)).val
theorem input1568_def : input1568 = (.seq input1567 input1566) := by
  unfold input1568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1567 output1566)).val
theorem output1568_def : output1568 = (.seq output1567 output1566) := by
  unfold output1568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1568_skip : Flapjack.WordAlloc.isSkip output1568 = false := by
  rw [output1568_def]
  conv => lhs; cbv
  try rfl
theorem node1568_eq : Flapjack.WordAlloc.removeDeadStructural input1568 value788 value1 value2 = (output1568, value5, value1) := by
  rw [input1568_def, output1568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1566_eq]
  try dsimp only
  rw [node1567_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1568 input1565)).val
theorem input1569_def : input1569 = (.seq input1568 input1565) := by
  unfold input1569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1568 output1565)).val
theorem output1569_def : output1569 = (.seq output1568 output1565) := by
  unfold output1569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1569_skip : Flapjack.WordAlloc.isSkip output1569 = false := by
  rw [output1569_def]
  conv => lhs; cbv
  try rfl
theorem node1569_eq : Flapjack.WordAlloc.removeDeadStructural input1569 value787 value1 value2 = (output1569, value5, value1) := by
  rw [input1569_def, output1569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1565_eq]
  try dsimp only
  rw [node1568_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1569 input1564)).val
theorem input1570_def : input1570 = (.seq input1569 input1564) := by
  unfold input1570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1569 output1564)).val
theorem output1570_def : output1570 = (.seq output1569 output1564) := by
  unfold output1570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1570_skip : Flapjack.WordAlloc.isSkip output1570 = false := by
  rw [output1570_def]
  conv => lhs; cbv
  try rfl
theorem node1570_eq : Flapjack.WordAlloc.removeDeadStructural input1570 value786 value1 value2 = (output1570, value5, value1) := by
  rw [input1570_def, output1570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1564_eq]
  try dsimp only
  rw [node1569_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1570 input1563)).val
theorem input1571_def : input1571 = (.seq input1570 input1563) := by
  unfold input1571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1570 output1563)).val
theorem output1571_def : output1571 = (.seq output1570 output1563) := by
  unfold output1571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1571_skip : Flapjack.WordAlloc.isSkip output1571 = false := by
  rw [output1571_def]
  conv => lhs; cbv
  try rfl
theorem node1571_eq : Flapjack.WordAlloc.removeDeadStructural input1571 value785 value1 value2 = (output1571, value5, value1) := by
  rw [input1571_def, output1571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1563_eq]
  try dsimp only
  rw [node1570_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value790 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4857 (Flapjack.WordLangAddr.addr 4861 0#64)))).val
theorem input1572_def : input1572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4857 (Flapjack.WordLangAddr.addr 4861 0#64))) := by
  unfold input1572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4857 (Flapjack.WordLangAddr.addr 4861 0#64)))).val
theorem output1572_def : output1572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4857 (Flapjack.WordLangAddr.addr 4861 0#64))) := by
  unfold output1572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1572_skip : Flapjack.WordAlloc.isSkip output1572 = false := by
  rw [output1572_def]
  conv => lhs; cbv
  try rfl
theorem node1572_eq : Flapjack.WordAlloc.removeDeadStructural input1572 value5 value1 value2 = (output1572, value790, value1) := by
  rw [input1572_def, output1572_def]
  try (conv => lhs; cbv)
  try rfl

def value791 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4861, 4849)])).val
theorem input1573_def : input1573 = (Flapjack.WordLangProgHOL.move 0 [(4861, 4849)]) := by
  unfold input1573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4861, 4849)])).val
theorem output1573_def : output1573 = (Flapjack.WordLangProgHOL.move 0 [(4861, 4849)]) := by
  unfold output1573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1573_skip : Flapjack.WordAlloc.isSkip output1573 = false := by
  rw [output1573_def]
  conv => lhs; cbv
  try rfl
theorem node1573_eq : Flapjack.WordAlloc.removeDeadStructural input1573 value790 value1 value2 = (output1573, value791, value1) := by
  rw [input1573_def, output1573_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1573 input1572)).val
theorem input1574_def : input1574 = (.seq input1573 input1572) := by
  unfold input1574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1573 output1572)).val
theorem output1574_def : output1574 = (.seq output1573 output1572) := by
  unfold output1574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1574_skip : Flapjack.WordAlloc.isSkip output1574 = false := by
  rw [output1574_def]
  conv => lhs; cbv
  try rfl
theorem node1574_eq : Flapjack.WordAlloc.removeDeadStructural input1574 value5 value1 value2 = (output1574, value791, value1) := by
  rw [input1574_def, output1574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1572_eq]
  try dsimp only
  rw [node1573_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value792 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4857 3185811144024273606#64))).val
theorem input1575_def : input1575 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4857 3185811144024273606#64)) := by
  unfold input1575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4857 3185811144024273606#64))).val
theorem output1575_def : output1575 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4857 3185811144024273606#64)) := by
  unfold output1575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1575_skip : Flapjack.WordAlloc.isSkip output1575 = false := by
  rw [output1575_def]
  conv => lhs; cbv
  try rfl
theorem node1575_eq : Flapjack.WordAlloc.removeDeadStructural input1575 value791 value1 value2 = (output1575, value792, value1) := by
  rw [input1575_def, output1575_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4853 3185811144024273606#64))).val
theorem input1576_def : input1576 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4853 3185811144024273606#64)) := by
  unfold input1576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1576_def : output1576 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1576_skip : Flapjack.WordAlloc.isSkip output1576 = true := by
  rw [output1576_def]
  conv => lhs; cbv
  try rfl
theorem node1576_eq : Flapjack.WordAlloc.removeDeadStructural input1576 value792 value1 value2 = (output1576, value792, value1) := by
  rw [input1576_def, output1576_def]
  try (conv => lhs; cbv)
  try rfl

def value793 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4849 4845 (Flapjack.WordRegImm.imm 1144#64))))).val
theorem input1577_def : input1577 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4849 4845 (Flapjack.WordRegImm.imm 1144#64)))) := by
  unfold input1577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4849 4845 (Flapjack.WordRegImm.imm 1144#64))))).val
theorem output1577_def : output1577 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4849 4845 (Flapjack.WordRegImm.imm 1144#64)))) := by
  unfold output1577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1577_skip : Flapjack.WordAlloc.isSkip output1577 = false := by
  rw [output1577_def]
  conv => lhs; cbv
  try rfl
theorem node1577_eq : Flapjack.WordAlloc.removeDeadStructural input1577 value792 value1 value2 = (output1577, value793, value1) := by
  rw [input1577_def, output1577_def]
  try (conv => lhs; cbv)
  try rfl

def value794 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4845 (Flapjack.WordLangAddr.addr 4841 18446744073709551520#64)))).val
theorem input1578_def : input1578 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4845 (Flapjack.WordLangAddr.addr 4841 18446744073709551520#64))) := by
  unfold input1578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4845 (Flapjack.WordLangAddr.addr 4841 18446744073709551520#64)))).val
theorem output1578_def : output1578 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4845 (Flapjack.WordLangAddr.addr 4841 18446744073709551520#64))) := by
  unfold output1578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1578_skip : Flapjack.WordAlloc.isSkip output1578 = false := by
  rw [output1578_def]
  conv => lhs; cbv
  try rfl
theorem node1578_eq : Flapjack.WordAlloc.removeDeadStructural input1578 value793 value1 value2 = (output1578, value794, value1) := by
  rw [input1578_def, output1578_def]
  try (conv => lhs; cbv)
  try rfl

def value795 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4841 4837)).val
theorem input1579_def : input1579 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4841 4837) := by
  unfold input1579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4841 4837)).val
theorem output1579_def : output1579 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4841 4837) := by
  unfold output1579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1579_skip : Flapjack.WordAlloc.isSkip output1579 = false := by
  rw [output1579_def]
  conv => lhs; cbv
  try rfl
theorem node1579_eq : Flapjack.WordAlloc.removeDeadStructural input1579 value794 value1 value2 = (output1579, value795, value1) := by
  rw [input1579_def, output1579_def]
  try (conv => lhs; cbv)
  try rfl

def value796 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4837 4833 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1580_def : input1580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4837 4833 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4837 4833 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1580_def : output1580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4837 4833 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1580_skip : Flapjack.WordAlloc.isSkip output1580 = false := by
  rw [output1580_def]
  conv => lhs; cbv
  try rfl
theorem node1580_eq : Flapjack.WordAlloc.removeDeadStructural input1580 value795 value1 value2 = (output1580, value796, value1) := by
  rw [input1580_def, output1580_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4833 Flapjack.WordStore.heapLength)).val
theorem input1581_def : input1581 = (Flapjack.WordLangProgHOL.get 4833 Flapjack.WordStore.heapLength) := by
  unfold input1581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4833 Flapjack.WordStore.heapLength)).val
theorem output1581_def : output1581 = (Flapjack.WordLangProgHOL.get 4833 Flapjack.WordStore.heapLength) := by
  unfold output1581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1581_skip : Flapjack.WordAlloc.isSkip output1581 = false := by
  rw [output1581_def]
  conv => lhs; cbv
  try rfl
theorem node1581_eq : Flapjack.WordAlloc.removeDeadStructural input1581 value796 value1 value2 = (output1581, value5, value1) := by
  rw [input1581_def, output1581_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1581 input1580)).val
theorem input1582_def : input1582 = (.seq input1581 input1580) := by
  unfold input1582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1581 output1580)).val
theorem output1582_def : output1582 = (.seq output1581 output1580) := by
  unfold output1582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1582_skip : Flapjack.WordAlloc.isSkip output1582 = false := by
  rw [output1582_def]
  conv => lhs; cbv
  try rfl
theorem node1582_eq : Flapjack.WordAlloc.removeDeadStructural input1582 value795 value1 value2 = (output1582, value5, value1) := by
  rw [input1582_def, output1582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1580_eq]
  try dsimp only
  rw [node1581_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1582 input1579)).val
theorem input1583_def : input1583 = (.seq input1582 input1579) := by
  unfold input1583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1582 output1579)).val
theorem output1583_def : output1583 = (.seq output1582 output1579) := by
  unfold output1583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1583_skip : Flapjack.WordAlloc.isSkip output1583 = false := by
  rw [output1583_def]
  conv => lhs; cbv
  try rfl
theorem node1583_eq : Flapjack.WordAlloc.removeDeadStructural input1583 value794 value1 value2 = (output1583, value5, value1) := by
  rw [input1583_def, output1583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1579_eq]
  try dsimp only
  rw [node1582_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1583 input1578)).val
theorem input1584_def : input1584 = (.seq input1583 input1578) := by
  unfold input1584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1583 output1578)).val
theorem output1584_def : output1584 = (.seq output1583 output1578) := by
  unfold output1584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1584_skip : Flapjack.WordAlloc.isSkip output1584 = false := by
  rw [output1584_def]
  conv => lhs; cbv
  try rfl
theorem node1584_eq : Flapjack.WordAlloc.removeDeadStructural input1584 value793 value1 value2 = (output1584, value5, value1) := by
  rw [input1584_def, output1584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1578_eq]
  try dsimp only
  rw [node1583_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1584 input1577)).val
theorem input1585_def : input1585 = (.seq input1584 input1577) := by
  unfold input1585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1584 output1577)).val
theorem output1585_def : output1585 = (.seq output1584 output1577) := by
  unfold output1585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1585_skip : Flapjack.WordAlloc.isSkip output1585 = false := by
  rw [output1585_def]
  conv => lhs; cbv
  try rfl
theorem node1585_eq : Flapjack.WordAlloc.removeDeadStructural input1585 value792 value1 value2 = (output1585, value5, value1) := by
  rw [input1585_def, output1585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1577_eq]
  try dsimp only
  rw [node1584_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value797 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4825 (Flapjack.WordLangAddr.addr 4829 0#64)))).val
theorem input1586_def : input1586 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4825 (Flapjack.WordLangAddr.addr 4829 0#64))) := by
  unfold input1586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4825 (Flapjack.WordLangAddr.addr 4829 0#64)))).val
theorem output1586_def : output1586 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4825 (Flapjack.WordLangAddr.addr 4829 0#64))) := by
  unfold output1586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1586_skip : Flapjack.WordAlloc.isSkip output1586 = false := by
  rw [output1586_def]
  conv => lhs; cbv
  try rfl
theorem node1586_eq : Flapjack.WordAlloc.removeDeadStructural input1586 value5 value1 value2 = (output1586, value797, value1) := by
  rw [input1586_def, output1586_def]
  try (conv => lhs; cbv)
  try rfl

def value798 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4829, 4817)])).val
theorem input1587_def : input1587 = (Flapjack.WordLangProgHOL.move 0 [(4829, 4817)]) := by
  unfold input1587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4829, 4817)])).val
theorem output1587_def : output1587 = (Flapjack.WordLangProgHOL.move 0 [(4829, 4817)]) := by
  unfold output1587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1587_skip : Flapjack.WordAlloc.isSkip output1587 = false := by
  rw [output1587_def]
  conv => lhs; cbv
  try rfl
theorem node1587_eq : Flapjack.WordAlloc.removeDeadStructural input1587 value797 value1 value2 = (output1587, value798, value1) := by
  rw [input1587_def, output1587_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1587 input1586)).val
theorem input1588_def : input1588 = (.seq input1587 input1586) := by
  unfold input1588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1587 output1586)).val
theorem output1588_def : output1588 = (.seq output1587 output1586) := by
  unfold output1588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1588_skip : Flapjack.WordAlloc.isSkip output1588 = false := by
  rw [output1588_def]
  conv => lhs; cbv
  try rfl
theorem node1588_eq : Flapjack.WordAlloc.removeDeadStructural input1588 value5 value1 value2 = (output1588, value798, value1) := by
  rw [input1588_def, output1588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1586_eq]
  try dsimp only
  rw [node1587_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value799 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4825 6654427682542765749#64))).val
theorem input1589_def : input1589 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4825 6654427682542765749#64)) := by
  unfold input1589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4825 6654427682542765749#64))).val
theorem output1589_def : output1589 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4825 6654427682542765749#64)) := by
  unfold output1589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1589_skip : Flapjack.WordAlloc.isSkip output1589 = false := by
  rw [output1589_def]
  conv => lhs; cbv
  try rfl
theorem node1589_eq : Flapjack.WordAlloc.removeDeadStructural input1589 value798 value1 value2 = (output1589, value799, value1) := by
  rw [input1589_def, output1589_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4821 6654427682542765749#64))).val
theorem input1590_def : input1590 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4821 6654427682542765749#64)) := by
  unfold input1590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1590_def : output1590 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1590_skip : Flapjack.WordAlloc.isSkip output1590 = true := by
  rw [output1590_def]
  conv => lhs; cbv
  try rfl
theorem node1590_eq : Flapjack.WordAlloc.removeDeadStructural input1590 value799 value1 value2 = (output1590, value799, value1) := by
  rw [input1590_def, output1590_def]
  try (conv => lhs; cbv)
  try rfl

def value800 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4817 4813 (Flapjack.WordRegImm.imm 1136#64))))).val
theorem input1591_def : input1591 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4817 4813 (Flapjack.WordRegImm.imm 1136#64)))) := by
  unfold input1591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4817 4813 (Flapjack.WordRegImm.imm 1136#64))))).val
theorem output1591_def : output1591 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4817 4813 (Flapjack.WordRegImm.imm 1136#64)))) := by
  unfold output1591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1591_skip : Flapjack.WordAlloc.isSkip output1591 = false := by
  rw [output1591_def]
  conv => lhs; cbv
  try rfl
theorem node1591_eq : Flapjack.WordAlloc.removeDeadStructural input1591 value799 value1 value2 = (output1591, value800, value1) := by
  rw [input1591_def, output1591_def]
  try (conv => lhs; cbv)
  try rfl

def value801 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4813 (Flapjack.WordLangAddr.addr 4809 18446744073709551520#64)))).val
theorem input1592_def : input1592 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4813 (Flapjack.WordLangAddr.addr 4809 18446744073709551520#64))) := by
  unfold input1592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4813 (Flapjack.WordLangAddr.addr 4809 18446744073709551520#64)))).val
theorem output1592_def : output1592 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4813 (Flapjack.WordLangAddr.addr 4809 18446744073709551520#64))) := by
  unfold output1592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1592_skip : Flapjack.WordAlloc.isSkip output1592 = false := by
  rw [output1592_def]
  conv => lhs; cbv
  try rfl
theorem node1592_eq : Flapjack.WordAlloc.removeDeadStructural input1592 value800 value1 value2 = (output1592, value801, value1) := by
  rw [input1592_def, output1592_def]
  try (conv => lhs; cbv)
  try rfl

def value802 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4809 4805)).val
theorem input1593_def : input1593 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4809 4805) := by
  unfold input1593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4809 4805)).val
theorem output1593_def : output1593 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4809 4805) := by
  unfold output1593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1593_skip : Flapjack.WordAlloc.isSkip output1593 = false := by
  rw [output1593_def]
  conv => lhs; cbv
  try rfl
theorem node1593_eq : Flapjack.WordAlloc.removeDeadStructural input1593 value801 value1 value2 = (output1593, value802, value1) := by
  rw [input1593_def, output1593_def]
  try (conv => lhs; cbv)
  try rfl

def value803 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4805 4801 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1594_def : input1594 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4805 4801 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4805 4801 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1594_def : output1594 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4805 4801 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1594_skip : Flapjack.WordAlloc.isSkip output1594 = false := by
  rw [output1594_def]
  conv => lhs; cbv
  try rfl
theorem node1594_eq : Flapjack.WordAlloc.removeDeadStructural input1594 value802 value1 value2 = (output1594, value803, value1) := by
  rw [input1594_def, output1594_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4801 Flapjack.WordStore.heapLength)).val
theorem input1595_def : input1595 = (Flapjack.WordLangProgHOL.get 4801 Flapjack.WordStore.heapLength) := by
  unfold input1595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4801 Flapjack.WordStore.heapLength)).val
theorem output1595_def : output1595 = (Flapjack.WordLangProgHOL.get 4801 Flapjack.WordStore.heapLength) := by
  unfold output1595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1595_skip : Flapjack.WordAlloc.isSkip output1595 = false := by
  rw [output1595_def]
  conv => lhs; cbv
  try rfl
theorem node1595_eq : Flapjack.WordAlloc.removeDeadStructural input1595 value803 value1 value2 = (output1595, value5, value1) := by
  rw [input1595_def, output1595_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1595 input1594)).val
theorem input1596_def : input1596 = (.seq input1595 input1594) := by
  unfold input1596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1595 output1594)).val
theorem output1596_def : output1596 = (.seq output1595 output1594) := by
  unfold output1596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1596_skip : Flapjack.WordAlloc.isSkip output1596 = false := by
  rw [output1596_def]
  conv => lhs; cbv
  try rfl
theorem node1596_eq : Flapjack.WordAlloc.removeDeadStructural input1596 value802 value1 value2 = (output1596, value5, value1) := by
  rw [input1596_def, output1596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1594_eq]
  try dsimp only
  rw [node1595_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1596 input1593)).val
theorem input1597_def : input1597 = (.seq input1596 input1593) := by
  unfold input1597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1596 output1593)).val
theorem output1597_def : output1597 = (.seq output1596 output1593) := by
  unfold output1597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1597_skip : Flapjack.WordAlloc.isSkip output1597 = false := by
  rw [output1597_def]
  conv => lhs; cbv
  try rfl
theorem node1597_eq : Flapjack.WordAlloc.removeDeadStructural input1597 value801 value1 value2 = (output1597, value5, value1) := by
  rw [input1597_def, output1597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1593_eq]
  try dsimp only
  rw [node1596_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1597 input1592)).val
theorem input1598_def : input1598 = (.seq input1597 input1592) := by
  unfold input1598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1597 output1592)).val
theorem output1598_def : output1598 = (.seq output1597 output1592) := by
  unfold output1598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1598_skip : Flapjack.WordAlloc.isSkip output1598 = false := by
  rw [output1598_def]
  conv => lhs; cbv
  try rfl
theorem node1598_eq : Flapjack.WordAlloc.removeDeadStructural input1598 value800 value1 value2 = (output1598, value5, value1) := by
  rw [input1598_def, output1598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1592_eq]
  try dsimp only
  rw [node1597_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1598 input1591)).val
theorem input1599_def : input1599 = (.seq input1598 input1591) := by
  unfold input1599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1598 output1591)).val
theorem output1599_def : output1599 = (.seq output1598 output1591) := by
  unfold output1599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1599_skip : Flapjack.WordAlloc.isSkip output1599 = false := by
  rw [output1599_def]
  conv => lhs; cbv
  try rfl
theorem node1599_eq : Flapjack.WordAlloc.removeDeadStructural input1599 value799 value1 value2 = (output1599, value5, value1) := by
  rw [input1599_def, output1599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1591_eq]
  try dsimp only
  rw [node1598_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value804 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4793 (Flapjack.WordLangAddr.addr 4797 0#64)))).val
theorem input1600_def : input1600 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4793 (Flapjack.WordLangAddr.addr 4797 0#64))) := by
  unfold input1600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4793 (Flapjack.WordLangAddr.addr 4797 0#64)))).val
theorem output1600_def : output1600 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4793 (Flapjack.WordLangAddr.addr 4797 0#64))) := by
  unfold output1600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1600_skip : Flapjack.WordAlloc.isSkip output1600 = false := by
  rw [output1600_def]
  conv => lhs; cbv
  try rfl
theorem node1600_eq : Flapjack.WordAlloc.removeDeadStructural input1600 value5 value1 value2 = (output1600, value804, value1) := by
  rw [input1600_def, output1600_def]
  try (conv => lhs; cbv)
  try rfl

def value805 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4797, 4785)])).val
theorem input1601_def : input1601 = (Flapjack.WordLangProgHOL.move 0 [(4797, 4785)]) := by
  unfold input1601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4797, 4785)])).val
theorem output1601_def : output1601 = (Flapjack.WordLangProgHOL.move 0 [(4797, 4785)]) := by
  unfold output1601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1601_skip : Flapjack.WordAlloc.isSkip output1601 = false := by
  rw [output1601_def]
  conv => lhs; cbv
  try rfl
theorem node1601_eq : Flapjack.WordAlloc.removeDeadStructural input1601 value804 value1 value2 = (output1601, value805, value1) := by
  rw [input1601_def, output1601_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1601 input1600)).val
theorem input1602_def : input1602 = (.seq input1601 input1600) := by
  unfold input1602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1601 output1600)).val
theorem output1602_def : output1602 = (.seq output1601 output1600) := by
  unfold output1602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1602_skip : Flapjack.WordAlloc.isSkip output1602 = false := by
  rw [output1602_def]
  conv => lhs; cbv
  try rfl
theorem node1602_eq : Flapjack.WordAlloc.removeDeadStructural input1602 value5 value1 value2 = (output1602, value805, value1) := by
  rw [input1602_def, output1602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1600_eq]
  try dsimp only
  rw [node1601_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value806 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4793 513790109098180968#64))).val
theorem input1603_def : input1603 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4793 513790109098180968#64)) := by
  unfold input1603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4793 513790109098180968#64))).val
theorem output1603_def : output1603 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4793 513790109098180968#64)) := by
  unfold output1603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1603_skip : Flapjack.WordAlloc.isSkip output1603 = false := by
  rw [output1603_def]
  conv => lhs; cbv
  try rfl
theorem node1603_eq : Flapjack.WordAlloc.removeDeadStructural input1603 value805 value1 value2 = (output1603, value806, value1) := by
  rw [input1603_def, output1603_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4789 513790109098180968#64))).val
theorem input1604_def : input1604 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4789 513790109098180968#64)) := by
  unfold input1604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1604_def : output1604 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1604_skip : Flapjack.WordAlloc.isSkip output1604 = true := by
  rw [output1604_def]
  conv => lhs; cbv
  try rfl
theorem node1604_eq : Flapjack.WordAlloc.removeDeadStructural input1604 value806 value1 value2 = (output1604, value806, value1) := by
  rw [input1604_def, output1604_def]
  try (conv => lhs; cbv)
  try rfl

def value807 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4785 4781 (Flapjack.WordRegImm.imm 1128#64))))).val
theorem input1605_def : input1605 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4785 4781 (Flapjack.WordRegImm.imm 1128#64)))) := by
  unfold input1605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4785 4781 (Flapjack.WordRegImm.imm 1128#64))))).val
theorem output1605_def : output1605 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4785 4781 (Flapjack.WordRegImm.imm 1128#64)))) := by
  unfold output1605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1605_skip : Flapjack.WordAlloc.isSkip output1605 = false := by
  rw [output1605_def]
  conv => lhs; cbv
  try rfl
theorem node1605_eq : Flapjack.WordAlloc.removeDeadStructural input1605 value806 value1 value2 = (output1605, value807, value1) := by
  rw [input1605_def, output1605_def]
  try (conv => lhs; cbv)
  try rfl

def value808 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4781 (Flapjack.WordLangAddr.addr 4777 18446744073709551520#64)))).val
theorem input1606_def : input1606 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4781 (Flapjack.WordLangAddr.addr 4777 18446744073709551520#64))) := by
  unfold input1606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4781 (Flapjack.WordLangAddr.addr 4777 18446744073709551520#64)))).val
theorem output1606_def : output1606 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4781 (Flapjack.WordLangAddr.addr 4777 18446744073709551520#64))) := by
  unfold output1606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1606_skip : Flapjack.WordAlloc.isSkip output1606 = false := by
  rw [output1606_def]
  conv => lhs; cbv
  try rfl
theorem node1606_eq : Flapjack.WordAlloc.removeDeadStructural input1606 value807 value1 value2 = (output1606, value808, value1) := by
  rw [input1606_def, output1606_def]
  try (conv => lhs; cbv)
  try rfl

def value809 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4777 4773)).val
theorem input1607_def : input1607 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4777 4773) := by
  unfold input1607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4777 4773)).val
theorem output1607_def : output1607 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4777 4773) := by
  unfold output1607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1607_skip : Flapjack.WordAlloc.isSkip output1607 = false := by
  rw [output1607_def]
  conv => lhs; cbv
  try rfl
theorem node1607_eq : Flapjack.WordAlloc.removeDeadStructural input1607 value808 value1 value2 = (output1607, value809, value1) := by
  rw [input1607_def, output1607_def]
  try (conv => lhs; cbv)
  try rfl

def value810 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4773 4769 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1608_def : input1608 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4773 4769 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4773 4769 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1608_def : output1608 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4773 4769 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1608_skip : Flapjack.WordAlloc.isSkip output1608 = false := by
  rw [output1608_def]
  conv => lhs; cbv
  try rfl
theorem node1608_eq : Flapjack.WordAlloc.removeDeadStructural input1608 value809 value1 value2 = (output1608, value810, value1) := by
  rw [input1608_def, output1608_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4769 Flapjack.WordStore.heapLength)).val
theorem input1609_def : input1609 = (Flapjack.WordLangProgHOL.get 4769 Flapjack.WordStore.heapLength) := by
  unfold input1609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4769 Flapjack.WordStore.heapLength)).val
theorem output1609_def : output1609 = (Flapjack.WordLangProgHOL.get 4769 Flapjack.WordStore.heapLength) := by
  unfold output1609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1609_skip : Flapjack.WordAlloc.isSkip output1609 = false := by
  rw [output1609_def]
  conv => lhs; cbv
  try rfl
theorem node1609_eq : Flapjack.WordAlloc.removeDeadStructural input1609 value810 value1 value2 = (output1609, value5, value1) := by
  rw [input1609_def, output1609_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1609 input1608)).val
theorem input1610_def : input1610 = (.seq input1609 input1608) := by
  unfold input1610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1609 output1608)).val
theorem output1610_def : output1610 = (.seq output1609 output1608) := by
  unfold output1610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1610_skip : Flapjack.WordAlloc.isSkip output1610 = false := by
  rw [output1610_def]
  conv => lhs; cbv
  try rfl
theorem node1610_eq : Flapjack.WordAlloc.removeDeadStructural input1610 value809 value1 value2 = (output1610, value5, value1) := by
  rw [input1610_def, output1610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1608_eq]
  try dsimp only
  rw [node1609_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1610 input1607)).val
theorem input1611_def : input1611 = (.seq input1610 input1607) := by
  unfold input1611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1610 output1607)).val
theorem output1611_def : output1611 = (.seq output1610 output1607) := by
  unfold output1611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1611_skip : Flapjack.WordAlloc.isSkip output1611 = false := by
  rw [output1611_def]
  conv => lhs; cbv
  try rfl
theorem node1611_eq : Flapjack.WordAlloc.removeDeadStructural input1611 value808 value1 value2 = (output1611, value5, value1) := by
  rw [input1611_def, output1611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1607_eq]
  try dsimp only
  rw [node1610_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1611 input1606)).val
theorem input1612_def : input1612 = (.seq input1611 input1606) := by
  unfold input1612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1611 output1606)).val
theorem output1612_def : output1612 = (.seq output1611 output1606) := by
  unfold output1612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1612_skip : Flapjack.WordAlloc.isSkip output1612 = false := by
  rw [output1612_def]
  conv => lhs; cbv
  try rfl
theorem node1612_eq : Flapjack.WordAlloc.removeDeadStructural input1612 value807 value1 value2 = (output1612, value5, value1) := by
  rw [input1612_def, output1612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1606_eq]
  try dsimp only
  rw [node1611_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1612 input1605)).val
theorem input1613_def : input1613 = (.seq input1612 input1605) := by
  unfold input1613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1612 output1605)).val
theorem output1613_def : output1613 = (.seq output1612 output1605) := by
  unfold output1613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1613_skip : Flapjack.WordAlloc.isSkip output1613 = false := by
  rw [output1613_def]
  conv => lhs; cbv
  try rfl
theorem node1613_eq : Flapjack.WordAlloc.removeDeadStructural input1613 value806 value1 value2 = (output1613, value5, value1) := by
  rw [input1613_def, output1613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1605_eq]
  try dsimp only
  rw [node1612_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value811 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4761 (Flapjack.WordLangAddr.addr 4765 0#64)))).val
theorem input1614_def : input1614 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4761 (Flapjack.WordLangAddr.addr 4765 0#64))) := by
  unfold input1614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4761 (Flapjack.WordLangAddr.addr 4765 0#64)))).val
theorem output1614_def : output1614 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4761 (Flapjack.WordLangAddr.addr 4765 0#64))) := by
  unfold output1614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1614_skip : Flapjack.WordAlloc.isSkip output1614 = false := by
  rw [output1614_def]
  conv => lhs; cbv
  try rfl
theorem node1614_eq : Flapjack.WordAlloc.removeDeadStructural input1614 value5 value1 value2 = (output1614, value811, value1) := by
  rw [input1614_def, output1614_def]
  try (conv => lhs; cbv)
  try rfl

def value812 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4765, 4753)])).val
theorem input1615_def : input1615 = (Flapjack.WordLangProgHOL.move 0 [(4765, 4753)]) := by
  unfold input1615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4765, 4753)])).val
theorem output1615_def : output1615 = (Flapjack.WordLangProgHOL.move 0 [(4765, 4753)]) := by
  unfold output1615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1615_skip : Flapjack.WordAlloc.isSkip output1615 = false := by
  rw [output1615_def]
  conv => lhs; cbv
  try rfl
theorem node1615_eq : Flapjack.WordAlloc.removeDeadStructural input1615 value811 value1 value2 = (output1615, value812, value1) := by
  rw [input1615_def, output1615_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1615 input1614)).val
theorem input1616_def : input1616 = (.seq input1615 input1614) := by
  unfold input1616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1615 output1614)).val
theorem output1616_def : output1616 = (.seq output1615 output1614) := by
  unfold output1616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1616_skip : Flapjack.WordAlloc.isSkip output1616 = false := by
  rw [output1616_def]
  conv => lhs; cbv
  try rfl
theorem node1616_eq : Flapjack.WordAlloc.removeDeadStructural input1616 value5 value1 value2 = (output1616, value812, value1) := by
  rw [input1616_def, output1616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1614_eq]
  try dsimp only
  rw [node1615_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value813 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4761 509635415706274098#64))).val
theorem input1617_def : input1617 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4761 509635415706274098#64)) := by
  unfold input1617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4761 509635415706274098#64))).val
theorem output1617_def : output1617 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4761 509635415706274098#64)) := by
  unfold output1617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1617_skip : Flapjack.WordAlloc.isSkip output1617 = false := by
  rw [output1617_def]
  conv => lhs; cbv
  try rfl
theorem node1617_eq : Flapjack.WordAlloc.removeDeadStructural input1617 value812 value1 value2 = (output1617, value813, value1) := by
  rw [input1617_def, output1617_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4757 509635415706274098#64))).val
theorem input1618_def : input1618 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4757 509635415706274098#64)) := by
  unfold input1618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1618_def : output1618 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1618_skip : Flapjack.WordAlloc.isSkip output1618 = true := by
  rw [output1618_def]
  conv => lhs; cbv
  try rfl
theorem node1618_eq : Flapjack.WordAlloc.removeDeadStructural input1618 value813 value1 value2 = (output1618, value813, value1) := by
  rw [input1618_def, output1618_def]
  try (conv => lhs; cbv)
  try rfl

def value814 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4753 4749 (Flapjack.WordRegImm.imm 1120#64))))).val
theorem input1619_def : input1619 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4753 4749 (Flapjack.WordRegImm.imm 1120#64)))) := by
  unfold input1619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4753 4749 (Flapjack.WordRegImm.imm 1120#64))))).val
theorem output1619_def : output1619 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4753 4749 (Flapjack.WordRegImm.imm 1120#64)))) := by
  unfold output1619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1619_skip : Flapjack.WordAlloc.isSkip output1619 = false := by
  rw [output1619_def]
  conv => lhs; cbv
  try rfl
theorem node1619_eq : Flapjack.WordAlloc.removeDeadStructural input1619 value813 value1 value2 = (output1619, value814, value1) := by
  rw [input1619_def, output1619_def]
  try (conv => lhs; cbv)
  try rfl

def value815 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4749 (Flapjack.WordLangAddr.addr 4745 18446744073709551520#64)))).val
theorem input1620_def : input1620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4749 (Flapjack.WordLangAddr.addr 4745 18446744073709551520#64))) := by
  unfold input1620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4749 (Flapjack.WordLangAddr.addr 4745 18446744073709551520#64)))).val
theorem output1620_def : output1620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4749 (Flapjack.WordLangAddr.addr 4745 18446744073709551520#64))) := by
  unfold output1620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1620_skip : Flapjack.WordAlloc.isSkip output1620 = false := by
  rw [output1620_def]
  conv => lhs; cbv
  try rfl
theorem node1620_eq : Flapjack.WordAlloc.removeDeadStructural input1620 value814 value1 value2 = (output1620, value815, value1) := by
  rw [input1620_def, output1620_def]
  try (conv => lhs; cbv)
  try rfl

def value816 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4745 4741)).val
theorem input1621_def : input1621 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4745 4741) := by
  unfold input1621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4745 4741)).val
theorem output1621_def : output1621 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4745 4741) := by
  unfold output1621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1621_skip : Flapjack.WordAlloc.isSkip output1621 = false := by
  rw [output1621_def]
  conv => lhs; cbv
  try rfl
theorem node1621_eq : Flapjack.WordAlloc.removeDeadStructural input1621 value815 value1 value2 = (output1621, value816, value1) := by
  rw [input1621_def, output1621_def]
  try (conv => lhs; cbv)
  try rfl

def value817 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4741 4737 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1622_def : input1622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4741 4737 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4741 4737 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1622_def : output1622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4741 4737 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1622_skip : Flapjack.WordAlloc.isSkip output1622 = false := by
  rw [output1622_def]
  conv => lhs; cbv
  try rfl
theorem node1622_eq : Flapjack.WordAlloc.removeDeadStructural input1622 value816 value1 value2 = (output1622, value817, value1) := by
  rw [input1622_def, output1622_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4737 Flapjack.WordStore.heapLength)).val
theorem input1623_def : input1623 = (Flapjack.WordLangProgHOL.get 4737 Flapjack.WordStore.heapLength) := by
  unfold input1623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4737 Flapjack.WordStore.heapLength)).val
theorem output1623_def : output1623 = (Flapjack.WordLangProgHOL.get 4737 Flapjack.WordStore.heapLength) := by
  unfold output1623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1623_skip : Flapjack.WordAlloc.isSkip output1623 = false := by
  rw [output1623_def]
  conv => lhs; cbv
  try rfl
theorem node1623_eq : Flapjack.WordAlloc.removeDeadStructural input1623 value817 value1 value2 = (output1623, value5, value1) := by
  rw [input1623_def, output1623_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1623 input1622)).val
theorem input1624_def : input1624 = (.seq input1623 input1622) := by
  unfold input1624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1623 output1622)).val
theorem output1624_def : output1624 = (.seq output1623 output1622) := by
  unfold output1624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1624_skip : Flapjack.WordAlloc.isSkip output1624 = false := by
  rw [output1624_def]
  conv => lhs; cbv
  try rfl
theorem node1624_eq : Flapjack.WordAlloc.removeDeadStructural input1624 value816 value1 value2 = (output1624, value5, value1) := by
  rw [input1624_def, output1624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1622_eq]
  try dsimp only
  rw [node1623_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1624 input1621)).val
theorem input1625_def : input1625 = (.seq input1624 input1621) := by
  unfold input1625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1624 output1621)).val
theorem output1625_def : output1625 = (.seq output1624 output1621) := by
  unfold output1625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1625_skip : Flapjack.WordAlloc.isSkip output1625 = false := by
  rw [output1625_def]
  conv => lhs; cbv
  try rfl
theorem node1625_eq : Flapjack.WordAlloc.removeDeadStructural input1625 value815 value1 value2 = (output1625, value5, value1) := by
  rw [input1625_def, output1625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1621_eq]
  try dsimp only
  rw [node1624_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1625 input1620)).val
theorem input1626_def : input1626 = (.seq input1625 input1620) := by
  unfold input1626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1625 output1620)).val
theorem output1626_def : output1626 = (.seq output1625 output1620) := by
  unfold output1626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1626_skip : Flapjack.WordAlloc.isSkip output1626 = false := by
  rw [output1626_def]
  conv => lhs; cbv
  try rfl
theorem node1626_eq : Flapjack.WordAlloc.removeDeadStructural input1626 value814 value1 value2 = (output1626, value5, value1) := by
  rw [input1626_def, output1626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1620_eq]
  try dsimp only
  rw [node1625_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1626 input1619)).val
theorem input1627_def : input1627 = (.seq input1626 input1619) := by
  unfold input1627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1626 output1619)).val
theorem output1627_def : output1627 = (.seq output1626 output1619) := by
  unfold output1627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1627_skip : Flapjack.WordAlloc.isSkip output1627 = false := by
  rw [output1627_def]
  conv => lhs; cbv
  try rfl
theorem node1627_eq : Flapjack.WordAlloc.removeDeadStructural input1627 value813 value1 value2 = (output1627, value5, value1) := by
  rw [input1627_def, output1627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1619_eq]
  try dsimp only
  rw [node1626_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value818 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4729 (Flapjack.WordLangAddr.addr 4733 0#64)))).val
theorem input1628_def : input1628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4729 (Flapjack.WordLangAddr.addr 4733 0#64))) := by
  unfold input1628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4729 (Flapjack.WordLangAddr.addr 4733 0#64)))).val
theorem output1628_def : output1628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4729 (Flapjack.WordLangAddr.addr 4733 0#64))) := by
  unfold output1628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1628_skip : Flapjack.WordAlloc.isSkip output1628 = false := by
  rw [output1628_def]
  conv => lhs; cbv
  try rfl
theorem node1628_eq : Flapjack.WordAlloc.removeDeadStructural input1628 value5 value1 value2 = (output1628, value818, value1) := by
  rw [input1628_def, output1628_def]
  try (conv => lhs; cbv)
  try rfl

def value819 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4733, 4721)])).val
theorem input1629_def : input1629 = (Flapjack.WordLangProgHOL.move 0 [(4733, 4721)]) := by
  unfold input1629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4733, 4721)])).val
theorem output1629_def : output1629 = (Flapjack.WordLangProgHOL.move 0 [(4733, 4721)]) := by
  unfold output1629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1629_skip : Flapjack.WordAlloc.isSkip output1629 = false := by
  rw [output1629_def]
  conv => lhs; cbv
  try rfl
theorem node1629_eq : Flapjack.WordAlloc.removeDeadStructural input1629 value818 value1 value2 = (output1629, value819, value1) := by
  rw [input1629_def, output1629_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1629 input1628)).val
theorem input1630_def : input1630 = (.seq input1629 input1628) := by
  unfold input1630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1629 output1628)).val
theorem output1630_def : output1630 = (.seq output1629 output1628) := by
  unfold output1630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1630_skip : Flapjack.WordAlloc.isSkip output1630 = false := by
  rw [output1630_def]
  conv => lhs; cbv
  try rfl
theorem node1630_eq : Flapjack.WordAlloc.removeDeadStructural input1630 value5 value1 value2 = (output1630, value819, value1) := by
  rw [input1630_def, output1630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1628_eq]
  try dsimp only
  rw [node1629_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value820 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4729 9024665051920482203#64))).val
theorem input1631_def : input1631 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4729 9024665051920482203#64)) := by
  unfold input1631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4729 9024665051920482203#64))).val
theorem output1631_def : output1631 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4729 9024665051920482203#64)) := by
  unfold output1631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1631_skip : Flapjack.WordAlloc.isSkip output1631 = false := by
  rw [output1631_def]
  conv => lhs; cbv
  try rfl
theorem node1631_eq : Flapjack.WordAlloc.removeDeadStructural input1631 value819 value1 value2 = (output1631, value820, value1) := by
  rw [input1631_def, output1631_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4725 9024665051920482203#64))).val
theorem input1632_def : input1632 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4725 9024665051920482203#64)) := by
  unfold input1632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1632_def : output1632 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1632_skip : Flapjack.WordAlloc.isSkip output1632 = true := by
  rw [output1632_def]
  conv => lhs; cbv
  try rfl
theorem node1632_eq : Flapjack.WordAlloc.removeDeadStructural input1632 value820 value1 value2 = (output1632, value820, value1) := by
  rw [input1632_def, output1632_def]
  try (conv => lhs; cbv)
  try rfl

def value821 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4721 4717 (Flapjack.WordRegImm.imm 1112#64))))).val
theorem input1633_def : input1633 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4721 4717 (Flapjack.WordRegImm.imm 1112#64)))) := by
  unfold input1633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4721 4717 (Flapjack.WordRegImm.imm 1112#64))))).val
theorem output1633_def : output1633 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4721 4717 (Flapjack.WordRegImm.imm 1112#64)))) := by
  unfold output1633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1633_skip : Flapjack.WordAlloc.isSkip output1633 = false := by
  rw [output1633_def]
  conv => lhs; cbv
  try rfl
theorem node1633_eq : Flapjack.WordAlloc.removeDeadStructural input1633 value820 value1 value2 = (output1633, value821, value1) := by
  rw [input1633_def, output1633_def]
  try (conv => lhs; cbv)
  try rfl

def value822 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4717 (Flapjack.WordLangAddr.addr 4713 18446744073709551520#64)))).val
theorem input1634_def : input1634 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4717 (Flapjack.WordLangAddr.addr 4713 18446744073709551520#64))) := by
  unfold input1634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4717 (Flapjack.WordLangAddr.addr 4713 18446744073709551520#64)))).val
theorem output1634_def : output1634 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4717 (Flapjack.WordLangAddr.addr 4713 18446744073709551520#64))) := by
  unfold output1634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1634_skip : Flapjack.WordAlloc.isSkip output1634 = false := by
  rw [output1634_def]
  conv => lhs; cbv
  try rfl
theorem node1634_eq : Flapjack.WordAlloc.removeDeadStructural input1634 value821 value1 value2 = (output1634, value822, value1) := by
  rw [input1634_def, output1634_def]
  try (conv => lhs; cbv)
  try rfl

def value823 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4713 4709)).val
theorem input1635_def : input1635 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4713 4709) := by
  unfold input1635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4713 4709)).val
theorem output1635_def : output1635 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4713 4709) := by
  unfold output1635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1635_skip : Flapjack.WordAlloc.isSkip output1635 = false := by
  rw [output1635_def]
  conv => lhs; cbv
  try rfl
theorem node1635_eq : Flapjack.WordAlloc.removeDeadStructural input1635 value822 value1 value2 = (output1635, value823, value1) := by
  rw [input1635_def, output1635_def]
  try (conv => lhs; cbv)
  try rfl

def value824 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4709 4705 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1636_def : input1636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4709 4705 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4709 4705 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1636_def : output1636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4709 4705 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1636_skip : Flapjack.WordAlloc.isSkip output1636 = false := by
  rw [output1636_def]
  conv => lhs; cbv
  try rfl
theorem node1636_eq : Flapjack.WordAlloc.removeDeadStructural input1636 value823 value1 value2 = (output1636, value824, value1) := by
  rw [input1636_def, output1636_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4705 Flapjack.WordStore.heapLength)).val
theorem input1637_def : input1637 = (Flapjack.WordLangProgHOL.get 4705 Flapjack.WordStore.heapLength) := by
  unfold input1637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4705 Flapjack.WordStore.heapLength)).val
theorem output1637_def : output1637 = (Flapjack.WordLangProgHOL.get 4705 Flapjack.WordStore.heapLength) := by
  unfold output1637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1637_skip : Flapjack.WordAlloc.isSkip output1637 = false := by
  rw [output1637_def]
  conv => lhs; cbv
  try rfl
theorem node1637_eq : Flapjack.WordAlloc.removeDeadStructural input1637 value824 value1 value2 = (output1637, value5, value1) := by
  rw [input1637_def, output1637_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1637 input1636)).val
theorem input1638_def : input1638 = (.seq input1637 input1636) := by
  unfold input1638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1637 output1636)).val
theorem output1638_def : output1638 = (.seq output1637 output1636) := by
  unfold output1638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1638_skip : Flapjack.WordAlloc.isSkip output1638 = false := by
  rw [output1638_def]
  conv => lhs; cbv
  try rfl
theorem node1638_eq : Flapjack.WordAlloc.removeDeadStructural input1638 value823 value1 value2 = (output1638, value5, value1) := by
  rw [input1638_def, output1638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1636_eq]
  try dsimp only
  rw [node1637_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1638 input1635)).val
theorem input1639_def : input1639 = (.seq input1638 input1635) := by
  unfold input1639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1638 output1635)).val
theorem output1639_def : output1639 = (.seq output1638 output1635) := by
  unfold output1639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1639_skip : Flapjack.WordAlloc.isSkip output1639 = false := by
  rw [output1639_def]
  conv => lhs; cbv
  try rfl
theorem node1639_eq : Flapjack.WordAlloc.removeDeadStructural input1639 value822 value1 value2 = (output1639, value5, value1) := by
  rw [input1639_def, output1639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1635_eq]
  try dsimp only
  rw [node1638_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1639 input1634)).val
theorem input1640_def : input1640 = (.seq input1639 input1634) := by
  unfold input1640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1639 output1634)).val
theorem output1640_def : output1640 = (.seq output1639 output1634) := by
  unfold output1640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1640_skip : Flapjack.WordAlloc.isSkip output1640 = false := by
  rw [output1640_def]
  conv => lhs; cbv
  try rfl
theorem node1640_eq : Flapjack.WordAlloc.removeDeadStructural input1640 value821 value1 value2 = (output1640, value5, value1) := by
  rw [input1640_def, output1640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1634_eq]
  try dsimp only
  rw [node1639_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1640 input1633)).val
theorem input1641_def : input1641 = (.seq input1640 input1633) := by
  unfold input1641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1640 output1633)).val
theorem output1641_def : output1641 = (.seq output1640 output1633) := by
  unfold output1641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1641_skip : Flapjack.WordAlloc.isSkip output1641 = false := by
  rw [output1641_def]
  conv => lhs; cbv
  try rfl
theorem node1641_eq : Flapjack.WordAlloc.removeDeadStructural input1641 value820 value1 value2 = (output1641, value5, value1) := by
  rw [input1641_def, output1641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1633_eq]
  try dsimp only
  rw [node1640_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value825 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4697 (Flapjack.WordLangAddr.addr 4701 0#64)))).val
theorem input1642_def : input1642 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4697 (Flapjack.WordLangAddr.addr 4701 0#64))) := by
  unfold input1642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4697 (Flapjack.WordLangAddr.addr 4701 0#64)))).val
theorem output1642_def : output1642 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4697 (Flapjack.WordLangAddr.addr 4701 0#64))) := by
  unfold output1642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1642_skip : Flapjack.WordAlloc.isSkip output1642 = false := by
  rw [output1642_def]
  conv => lhs; cbv
  try rfl
theorem node1642_eq : Flapjack.WordAlloc.removeDeadStructural input1642 value5 value1 value2 = (output1642, value825, value1) := by
  rw [input1642_def, output1642_def]
  try (conv => lhs; cbv)
  try rfl

def value826 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4701, 4689)])).val
theorem input1643_def : input1643 = (Flapjack.WordLangProgHOL.move 0 [(4701, 4689)]) := by
  unfold input1643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4701, 4689)])).val
theorem output1643_def : output1643 = (Flapjack.WordLangProgHOL.move 0 [(4701, 4689)]) := by
  unfold output1643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1643_skip : Flapjack.WordAlloc.isSkip output1643 = false := by
  rw [output1643_def]
  conv => lhs; cbv
  try rfl
theorem node1643_eq : Flapjack.WordAlloc.removeDeadStructural input1643 value825 value1 value2 = (output1643, value826, value1) := by
  rw [input1643_def, output1643_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1643 input1642)).val
theorem input1644_def : input1644 = (.seq input1643 input1642) := by
  unfold input1644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1643 output1642)).val
theorem output1644_def : output1644 = (.seq output1643 output1642) := by
  unfold output1644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1644_skip : Flapjack.WordAlloc.isSkip output1644 = false := by
  rw [output1644_def]
  conv => lhs; cbv
  try rfl
theorem node1644_eq : Flapjack.WordAlloc.removeDeadStructural input1644 value5 value1 value2 = (output1644, value826, value1) := by
  rw [input1644_def, output1644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1642_eq]
  try dsimp only
  rw [node1643_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value827 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4697 6485064407427613008#64))).val
theorem input1645_def : input1645 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4697 6485064407427613008#64)) := by
  unfold input1645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4697 6485064407427613008#64))).val
theorem output1645_def : output1645 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4697 6485064407427613008#64)) := by
  unfold output1645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1645_skip : Flapjack.WordAlloc.isSkip output1645 = false := by
  rw [output1645_def]
  conv => lhs; cbv
  try rfl
theorem node1645_eq : Flapjack.WordAlloc.removeDeadStructural input1645 value826 value1 value2 = (output1645, value827, value1) := by
  rw [input1645_def, output1645_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4693 6485064407427613008#64))).val
theorem input1646_def : input1646 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4693 6485064407427613008#64)) := by
  unfold input1646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1646_def : output1646 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1646_skip : Flapjack.WordAlloc.isSkip output1646 = true := by
  rw [output1646_def]
  conv => lhs; cbv
  try rfl
theorem node1646_eq : Flapjack.WordAlloc.removeDeadStructural input1646 value827 value1 value2 = (output1646, value827, value1) := by
  rw [input1646_def, output1646_def]
  try (conv => lhs; cbv)
  try rfl

def value828 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4689 4685 (Flapjack.WordRegImm.imm 1104#64))))).val
theorem input1647_def : input1647 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4689 4685 (Flapjack.WordRegImm.imm 1104#64)))) := by
  unfold input1647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4689 4685 (Flapjack.WordRegImm.imm 1104#64))))).val
theorem output1647_def : output1647 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4689 4685 (Flapjack.WordRegImm.imm 1104#64)))) := by
  unfold output1647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1647_skip : Flapjack.WordAlloc.isSkip output1647 = false := by
  rw [output1647_def]
  conv => lhs; cbv
  try rfl
theorem node1647_eq : Flapjack.WordAlloc.removeDeadStructural input1647 value827 value1 value2 = (output1647, value828, value1) := by
  rw [input1647_def, output1647_def]
  try (conv => lhs; cbv)
  try rfl

def value829 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4685 (Flapjack.WordLangAddr.addr 4681 18446744073709551520#64)))).val
theorem input1648_def : input1648 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4685 (Flapjack.WordLangAddr.addr 4681 18446744073709551520#64))) := by
  unfold input1648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4685 (Flapjack.WordLangAddr.addr 4681 18446744073709551520#64)))).val
theorem output1648_def : output1648 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4685 (Flapjack.WordLangAddr.addr 4681 18446744073709551520#64))) := by
  unfold output1648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1648_skip : Flapjack.WordAlloc.isSkip output1648 = false := by
  rw [output1648_def]
  conv => lhs; cbv
  try rfl
theorem node1648_eq : Flapjack.WordAlloc.removeDeadStructural input1648 value828 value1 value2 = (output1648, value829, value1) := by
  rw [input1648_def, output1648_def]
  try (conv => lhs; cbv)
  try rfl

def value830 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4681 4677)).val
theorem input1649_def : input1649 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4681 4677) := by
  unfold input1649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4681 4677)).val
theorem output1649_def : output1649 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4681 4677) := by
  unfold output1649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1649_skip : Flapjack.WordAlloc.isSkip output1649 = false := by
  rw [output1649_def]
  conv => lhs; cbv
  try rfl
theorem node1649_eq : Flapjack.WordAlloc.removeDeadStructural input1649 value829 value1 value2 = (output1649, value830, value1) := by
  rw [input1649_def, output1649_def]
  try (conv => lhs; cbv)
  try rfl

def value831 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4677 4673 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1650_def : input1650 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4677 4673 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4677 4673 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1650_def : output1650 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4677 4673 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1650_skip : Flapjack.WordAlloc.isSkip output1650 = false := by
  rw [output1650_def]
  conv => lhs; cbv
  try rfl
theorem node1650_eq : Flapjack.WordAlloc.removeDeadStructural input1650 value830 value1 value2 = (output1650, value831, value1) := by
  rw [input1650_def, output1650_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4673 Flapjack.WordStore.heapLength)).val
theorem input1651_def : input1651 = (Flapjack.WordLangProgHOL.get 4673 Flapjack.WordStore.heapLength) := by
  unfold input1651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4673 Flapjack.WordStore.heapLength)).val
theorem output1651_def : output1651 = (Flapjack.WordLangProgHOL.get 4673 Flapjack.WordStore.heapLength) := by
  unfold output1651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1651_skip : Flapjack.WordAlloc.isSkip output1651 = false := by
  rw [output1651_def]
  conv => lhs; cbv
  try rfl
theorem node1651_eq : Flapjack.WordAlloc.removeDeadStructural input1651 value831 value1 value2 = (output1651, value5, value1) := by
  rw [input1651_def, output1651_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1651 input1650)).val
theorem input1652_def : input1652 = (.seq input1651 input1650) := by
  unfold input1652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1651 output1650)).val
theorem output1652_def : output1652 = (.seq output1651 output1650) := by
  unfold output1652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1652_skip : Flapjack.WordAlloc.isSkip output1652 = false := by
  rw [output1652_def]
  conv => lhs; cbv
  try rfl
theorem node1652_eq : Flapjack.WordAlloc.removeDeadStructural input1652 value830 value1 value2 = (output1652, value5, value1) := by
  rw [input1652_def, output1652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1650_eq]
  try dsimp only
  rw [node1651_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1652 input1649)).val
theorem input1653_def : input1653 = (.seq input1652 input1649) := by
  unfold input1653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1652 output1649)).val
theorem output1653_def : output1653 = (.seq output1652 output1649) := by
  unfold output1653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1653_skip : Flapjack.WordAlloc.isSkip output1653 = false := by
  rw [output1653_def]
  conv => lhs; cbv
  try rfl
theorem node1653_eq : Flapjack.WordAlloc.removeDeadStructural input1653 value829 value1 value2 = (output1653, value5, value1) := by
  rw [input1653_def, output1653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1649_eq]
  try dsimp only
  rw [node1652_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1653 input1648)).val
theorem input1654_def : input1654 = (.seq input1653 input1648) := by
  unfold input1654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1653 output1648)).val
theorem output1654_def : output1654 = (.seq output1653 output1648) := by
  unfold output1654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1654_skip : Flapjack.WordAlloc.isSkip output1654 = false := by
  rw [output1654_def]
  conv => lhs; cbv
  try rfl
theorem node1654_eq : Flapjack.WordAlloc.removeDeadStructural input1654 value828 value1 value2 = (output1654, value5, value1) := by
  rw [input1654_def, output1654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1648_eq]
  try dsimp only
  rw [node1653_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1654 input1647)).val
theorem input1655_def : input1655 = (.seq input1654 input1647) := by
  unfold input1655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1654 output1647)).val
theorem output1655_def : output1655 = (.seq output1654 output1647) := by
  unfold output1655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1655_skip : Flapjack.WordAlloc.isSkip output1655 = false := by
  rw [output1655_def]
  conv => lhs; cbv
  try rfl
theorem node1655_eq : Flapjack.WordAlloc.removeDeadStructural input1655 value827 value1 value2 = (output1655, value5, value1) := by
  rw [input1655_def, output1655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1647_eq]
  try dsimp only
  rw [node1654_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value832 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4665 (Flapjack.WordLangAddr.addr 4669 0#64)))).val
theorem input1656_def : input1656 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4665 (Flapjack.WordLangAddr.addr 4669 0#64))) := by
  unfold input1656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4665 (Flapjack.WordLangAddr.addr 4669 0#64)))).val
theorem output1656_def : output1656 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4665 (Flapjack.WordLangAddr.addr 4669 0#64))) := by
  unfold output1656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1656_skip : Flapjack.WordAlloc.isSkip output1656 = false := by
  rw [output1656_def]
  conv => lhs; cbv
  try rfl
theorem node1656_eq : Flapjack.WordAlloc.removeDeadStructural input1656 value5 value1 value2 = (output1656, value832, value1) := by
  rw [input1656_def, output1656_def]
  try (conv => lhs; cbv)
  try rfl

def value833 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4669, 4657)])).val
theorem input1657_def : input1657 = (Flapjack.WordLangProgHOL.move 0 [(4669, 4657)]) := by
  unfold input1657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4669, 4657)])).val
theorem output1657_def : output1657 = (Flapjack.WordLangProgHOL.move 0 [(4669, 4657)]) := by
  unfold output1657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1657_skip : Flapjack.WordAlloc.isSkip output1657 = false := by
  rw [output1657_def]
  conv => lhs; cbv
  try rfl
theorem node1657_eq : Flapjack.WordAlloc.removeDeadStructural input1657 value832 value1 value2 = (output1657, value833, value1) := by
  rw [input1657_def, output1657_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1657 input1656)).val
theorem input1658_def : input1658 = (.seq input1657 input1656) := by
  unfold input1658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1657 output1656)).val
theorem output1658_def : output1658 = (.seq output1657 output1656) := by
  unfold output1658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1658_skip : Flapjack.WordAlloc.isSkip output1658 = false := by
  rw [output1658_def]
  conv => lhs; cbv
  try rfl
theorem node1658_eq : Flapjack.WordAlloc.removeDeadStructural input1658 value5 value1 value2 = (output1658, value833, value1) := by
  rw [input1658_def, output1658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1656_eq]
  try dsimp only
  rw [node1657_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value834 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4665 3012752997787233642#64))).val
theorem input1659_def : input1659 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4665 3012752997787233642#64)) := by
  unfold input1659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4665 3012752997787233642#64))).val
theorem output1659_def : output1659 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4665 3012752997787233642#64)) := by
  unfold output1659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1659_skip : Flapjack.WordAlloc.isSkip output1659 = false := by
  rw [output1659_def]
  conv => lhs; cbv
  try rfl
theorem node1659_eq : Flapjack.WordAlloc.removeDeadStructural input1659 value833 value1 value2 = (output1659, value834, value1) := by
  rw [input1659_def, output1659_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4661 3012752997787233642#64))).val
theorem input1660_def : input1660 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4661 3012752997787233642#64)) := by
  unfold input1660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1660_def : output1660 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1660_skip : Flapjack.WordAlloc.isSkip output1660 = true := by
  rw [output1660_def]
  conv => lhs; cbv
  try rfl
theorem node1660_eq : Flapjack.WordAlloc.removeDeadStructural input1660 value834 value1 value2 = (output1660, value834, value1) := by
  rw [input1660_def, output1660_def]
  try (conv => lhs; cbv)
  try rfl

def value835 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4657 4653 (Flapjack.WordRegImm.imm 1096#64))))).val
theorem input1661_def : input1661 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4657 4653 (Flapjack.WordRegImm.imm 1096#64)))) := by
  unfold input1661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4657 4653 (Flapjack.WordRegImm.imm 1096#64))))).val
theorem output1661_def : output1661 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4657 4653 (Flapjack.WordRegImm.imm 1096#64)))) := by
  unfold output1661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1661_skip : Flapjack.WordAlloc.isSkip output1661 = false := by
  rw [output1661_def]
  conv => lhs; cbv
  try rfl
theorem node1661_eq : Flapjack.WordAlloc.removeDeadStructural input1661 value834 value1 value2 = (output1661, value835, value1) := by
  rw [input1661_def, output1661_def]
  try (conv => lhs; cbv)
  try rfl

def value836 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4653 (Flapjack.WordLangAddr.addr 4649 18446744073709551520#64)))).val
theorem input1662_def : input1662 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4653 (Flapjack.WordLangAddr.addr 4649 18446744073709551520#64))) := by
  unfold input1662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4653 (Flapjack.WordLangAddr.addr 4649 18446744073709551520#64)))).val
theorem output1662_def : output1662 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4653 (Flapjack.WordLangAddr.addr 4649 18446744073709551520#64))) := by
  unfold output1662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1662_skip : Flapjack.WordAlloc.isSkip output1662 = false := by
  rw [output1662_def]
  conv => lhs; cbv
  try rfl
theorem node1662_eq : Flapjack.WordAlloc.removeDeadStructural input1662 value835 value1 value2 = (output1662, value836, value1) := by
  rw [input1662_def, output1662_def]
  try (conv => lhs; cbv)
  try rfl

def value837 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4649 4645)).val
theorem input1663_def : input1663 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4649 4645) := by
  unfold input1663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4649 4645)).val
theorem output1663_def : output1663 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4649 4645) := by
  unfold output1663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1663_skip : Flapjack.WordAlloc.isSkip output1663 = false := by
  rw [output1663_def]
  conv => lhs; cbv
  try rfl
theorem node1663_eq : Flapjack.WordAlloc.removeDeadStructural input1663 value836 value1 value2 = (output1663, value837, value1) := by
  rw [input1663_def, output1663_def]
  try (conv => lhs; cbv)
  try rfl

def value838 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4645 4641 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1664_def : input1664 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4645 4641 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4645 4641 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1664_def : output1664 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4645 4641 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1664_skip : Flapjack.WordAlloc.isSkip output1664 = false := by
  rw [output1664_def]
  conv => lhs; cbv
  try rfl
theorem node1664_eq : Flapjack.WordAlloc.removeDeadStructural input1664 value837 value1 value2 = (output1664, value838, value1) := by
  rw [input1664_def, output1664_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4641 Flapjack.WordStore.heapLength)).val
theorem input1665_def : input1665 = (Flapjack.WordLangProgHOL.get 4641 Flapjack.WordStore.heapLength) := by
  unfold input1665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4641 Flapjack.WordStore.heapLength)).val
theorem output1665_def : output1665 = (Flapjack.WordLangProgHOL.get 4641 Flapjack.WordStore.heapLength) := by
  unfold output1665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1665_skip : Flapjack.WordAlloc.isSkip output1665 = false := by
  rw [output1665_def]
  conv => lhs; cbv
  try rfl
theorem node1665_eq : Flapjack.WordAlloc.removeDeadStructural input1665 value838 value1 value2 = (output1665, value5, value1) := by
  rw [input1665_def, output1665_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1665 input1664)).val
theorem input1666_def : input1666 = (.seq input1665 input1664) := by
  unfold input1666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1665 output1664)).val
theorem output1666_def : output1666 = (.seq output1665 output1664) := by
  unfold output1666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1666_skip : Flapjack.WordAlloc.isSkip output1666 = false := by
  rw [output1666_def]
  conv => lhs; cbv
  try rfl
theorem node1666_eq : Flapjack.WordAlloc.removeDeadStructural input1666 value837 value1 value2 = (output1666, value5, value1) := by
  rw [input1666_def, output1666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1664_eq]
  try dsimp only
  rw [node1665_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1666 input1663)).val
theorem input1667_def : input1667 = (.seq input1666 input1663) := by
  unfold input1667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1666 output1663)).val
theorem output1667_def : output1667 = (.seq output1666 output1663) := by
  unfold output1667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1667_skip : Flapjack.WordAlloc.isSkip output1667 = false := by
  rw [output1667_def]
  conv => lhs; cbv
  try rfl
theorem node1667_eq : Flapjack.WordAlloc.removeDeadStructural input1667 value836 value1 value2 = (output1667, value5, value1) := by
  rw [input1667_def, output1667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1663_eq]
  try dsimp only
  rw [node1666_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1667 input1662)).val
theorem input1668_def : input1668 = (.seq input1667 input1662) := by
  unfold input1668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1667 output1662)).val
theorem output1668_def : output1668 = (.seq output1667 output1662) := by
  unfold output1668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1668_skip : Flapjack.WordAlloc.isSkip output1668 = false := by
  rw [output1668_def]
  conv => lhs; cbv
  try rfl
theorem node1668_eq : Flapjack.WordAlloc.removeDeadStructural input1668 value835 value1 value2 = (output1668, value5, value1) := by
  rw [input1668_def, output1668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1662_eq]
  try dsimp only
  rw [node1667_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1668 input1661)).val
theorem input1669_def : input1669 = (.seq input1668 input1661) := by
  unfold input1669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1668 output1661)).val
theorem output1669_def : output1669 = (.seq output1668 output1661) := by
  unfold output1669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1669_skip : Flapjack.WordAlloc.isSkip output1669 = false := by
  rw [output1669_def]
  conv => lhs; cbv
  try rfl
theorem node1669_eq : Flapjack.WordAlloc.removeDeadStructural input1669 value834 value1 value2 = (output1669, value5, value1) := by
  rw [input1669_def, output1669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1661_eq]
  try dsimp only
  rw [node1668_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value839 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4633 (Flapjack.WordLangAddr.addr 4637 0#64)))).val
theorem input1670_def : input1670 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4633 (Flapjack.WordLangAddr.addr 4637 0#64))) := by
  unfold input1670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4633 (Flapjack.WordLangAddr.addr 4637 0#64)))).val
theorem output1670_def : output1670 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4633 (Flapjack.WordLangAddr.addr 4637 0#64))) := by
  unfold output1670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1670_skip : Flapjack.WordAlloc.isSkip output1670 = false := by
  rw [output1670_def]
  conv => lhs; cbv
  try rfl
theorem node1670_eq : Flapjack.WordAlloc.removeDeadStructural input1670 value5 value1 value2 = (output1670, value839, value1) := by
  rw [input1670_def, output1670_def]
  try (conv => lhs; cbv)
  try rfl

def value840 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4637, 4625)])).val
theorem input1671_def : input1671 = (Flapjack.WordLangProgHOL.move 0 [(4637, 4625)]) := by
  unfold input1671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4637, 4625)])).val
theorem output1671_def : output1671 = (Flapjack.WordLangProgHOL.move 0 [(4637, 4625)]) := by
  unfold output1671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1671_skip : Flapjack.WordAlloc.isSkip output1671 = false := by
  rw [output1671_def]
  conv => lhs; cbv
  try rfl
theorem node1671_eq : Flapjack.WordAlloc.removeDeadStructural input1671 value839 value1 value2 = (output1671, value840, value1) := by
  rw [input1671_def, output1671_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1671 input1670)).val
theorem input1672_def : input1672 = (.seq input1671 input1670) := by
  unfold input1672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1671 output1670)).val
theorem output1672_def : output1672 = (.seq output1671 output1670) := by
  unfold output1672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1672_skip : Flapjack.WordAlloc.isSkip output1672 = false := by
  rw [output1672_def]
  conv => lhs; cbv
  try rfl
theorem node1672_eq : Flapjack.WordAlloc.removeDeadStructural input1672 value5 value1 value2 = (output1672, value840, value1) := by
  rw [input1672_def, output1672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1670_eq]
  try dsimp only
  rw [node1671_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value841 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4633 8028620891772028719#64))).val
theorem input1673_def : input1673 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4633 8028620891772028719#64)) := by
  unfold input1673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4633 8028620891772028719#64))).val
theorem output1673_def : output1673 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4633 8028620891772028719#64)) := by
  unfold output1673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1673_skip : Flapjack.WordAlloc.isSkip output1673 = false := by
  rw [output1673_def]
  conv => lhs; cbv
  try rfl
theorem node1673_eq : Flapjack.WordAlloc.removeDeadStructural input1673 value840 value1 value2 = (output1673, value841, value1) := by
  rw [input1673_def, output1673_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4629 8028620891772028719#64))).val
theorem input1674_def : input1674 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4629 8028620891772028719#64)) := by
  unfold input1674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1674_def : output1674 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1674_skip : Flapjack.WordAlloc.isSkip output1674 = true := by
  rw [output1674_def]
  conv => lhs; cbv
  try rfl
theorem node1674_eq : Flapjack.WordAlloc.removeDeadStructural input1674 value841 value1 value2 = (output1674, value841, value1) := by
  rw [input1674_def, output1674_def]
  try (conv => lhs; cbv)
  try rfl

def value842 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4625 4621 (Flapjack.WordRegImm.imm 1088#64))))).val
theorem input1675_def : input1675 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4625 4621 (Flapjack.WordRegImm.imm 1088#64)))) := by
  unfold input1675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4625 4621 (Flapjack.WordRegImm.imm 1088#64))))).val
theorem output1675_def : output1675 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4625 4621 (Flapjack.WordRegImm.imm 1088#64)))) := by
  unfold output1675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1675_skip : Flapjack.WordAlloc.isSkip output1675 = false := by
  rw [output1675_def]
  conv => lhs; cbv
  try rfl
theorem node1675_eq : Flapjack.WordAlloc.removeDeadStructural input1675 value841 value1 value2 = (output1675, value842, value1) := by
  rw [input1675_def, output1675_def]
  try (conv => lhs; cbv)
  try rfl

def value843 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4621 (Flapjack.WordLangAddr.addr 4617 18446744073709551520#64)))).val
theorem input1676_def : input1676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4621 (Flapjack.WordLangAddr.addr 4617 18446744073709551520#64))) := by
  unfold input1676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4621 (Flapjack.WordLangAddr.addr 4617 18446744073709551520#64)))).val
theorem output1676_def : output1676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4621 (Flapjack.WordLangAddr.addr 4617 18446744073709551520#64))) := by
  unfold output1676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1676_skip : Flapjack.WordAlloc.isSkip output1676 = false := by
  rw [output1676_def]
  conv => lhs; cbv
  try rfl
theorem node1676_eq : Flapjack.WordAlloc.removeDeadStructural input1676 value842 value1 value2 = (output1676, value843, value1) := by
  rw [input1676_def, output1676_def]
  try (conv => lhs; cbv)
  try rfl

def value844 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4617 4613)).val
theorem input1677_def : input1677 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4617 4613) := by
  unfold input1677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4617 4613)).val
theorem output1677_def : output1677 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4617 4613) := by
  unfold output1677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1677_skip : Flapjack.WordAlloc.isSkip output1677 = false := by
  rw [output1677_def]
  conv => lhs; cbv
  try rfl
theorem node1677_eq : Flapjack.WordAlloc.removeDeadStructural input1677 value843 value1 value2 = (output1677, value844, value1) := by
  rw [input1677_def, output1677_def]
  try (conv => lhs; cbv)
  try rfl

def value845 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4613 4609 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1678_def : input1678 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4613 4609 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4613 4609 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1678_def : output1678 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4613 4609 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1678_skip : Flapjack.WordAlloc.isSkip output1678 = false := by
  rw [output1678_def]
  conv => lhs; cbv
  try rfl
theorem node1678_eq : Flapjack.WordAlloc.removeDeadStructural input1678 value844 value1 value2 = (output1678, value845, value1) := by
  rw [input1678_def, output1678_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4609 Flapjack.WordStore.heapLength)).val
theorem input1679_def : input1679 = (Flapjack.WordLangProgHOL.get 4609 Flapjack.WordStore.heapLength) := by
  unfold input1679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4609 Flapjack.WordStore.heapLength)).val
theorem output1679_def : output1679 = (Flapjack.WordLangProgHOL.get 4609 Flapjack.WordStore.heapLength) := by
  unfold output1679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1679_skip : Flapjack.WordAlloc.isSkip output1679 = false := by
  rw [output1679_def]
  conv => lhs; cbv
  try rfl
theorem node1679_eq : Flapjack.WordAlloc.removeDeadStructural input1679 value845 value1 value2 = (output1679, value5, value1) := by
  rw [input1679_def, output1679_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1679 input1678)).val
theorem input1680_def : input1680 = (.seq input1679 input1678) := by
  unfold input1680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1679 output1678)).val
theorem output1680_def : output1680 = (.seq output1679 output1678) := by
  unfold output1680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1680_skip : Flapjack.WordAlloc.isSkip output1680 = false := by
  rw [output1680_def]
  conv => lhs; cbv
  try rfl
theorem node1680_eq : Flapjack.WordAlloc.removeDeadStructural input1680 value844 value1 value2 = (output1680, value5, value1) := by
  rw [input1680_def, output1680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1678_eq]
  try dsimp only
  rw [node1679_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1680 input1677)).val
theorem input1681_def : input1681 = (.seq input1680 input1677) := by
  unfold input1681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1680 output1677)).val
theorem output1681_def : output1681 = (.seq output1680 output1677) := by
  unfold output1681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1681_skip : Flapjack.WordAlloc.isSkip output1681 = false := by
  rw [output1681_def]
  conv => lhs; cbv
  try rfl
theorem node1681_eq : Flapjack.WordAlloc.removeDeadStructural input1681 value843 value1 value2 = (output1681, value5, value1) := by
  rw [input1681_def, output1681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1677_eq]
  try dsimp only
  rw [node1680_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1681 input1676)).val
theorem input1682_def : input1682 = (.seq input1681 input1676) := by
  unfold input1682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1681 output1676)).val
theorem output1682_def : output1682 = (.seq output1681 output1676) := by
  unfold output1682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1682_skip : Flapjack.WordAlloc.isSkip output1682 = false := by
  rw [output1682_def]
  conv => lhs; cbv
  try rfl
theorem node1682_eq : Flapjack.WordAlloc.removeDeadStructural input1682 value842 value1 value2 = (output1682, value5, value1) := by
  rw [input1682_def, output1682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1676_eq]
  try dsimp only
  rw [node1681_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1682 input1675)).val
theorem input1683_def : input1683 = (.seq input1682 input1675) := by
  unfold input1683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1682 output1675)).val
theorem output1683_def : output1683 = (.seq output1682 output1675) := by
  unfold output1683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1683_skip : Flapjack.WordAlloc.isSkip output1683 = false := by
  rw [output1683_def]
  conv => lhs; cbv
  try rfl
theorem node1683_eq : Flapjack.WordAlloc.removeDeadStructural input1683 value841 value1 value2 = (output1683, value5, value1) := by
  rw [input1683_def, output1683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1675_eq]
  try dsimp only
  rw [node1682_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value846 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4601 (Flapjack.WordLangAddr.addr 4605 0#64)))).val
theorem input1684_def : input1684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4601 (Flapjack.WordLangAddr.addr 4605 0#64))) := by
  unfold input1684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4601 (Flapjack.WordLangAddr.addr 4605 0#64)))).val
theorem output1684_def : output1684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4601 (Flapjack.WordLangAddr.addr 4605 0#64))) := by
  unfold output1684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1684_skip : Flapjack.WordAlloc.isSkip output1684 = false := by
  rw [output1684_def]
  conv => lhs; cbv
  try rfl
theorem node1684_eq : Flapjack.WordAlloc.removeDeadStructural input1684 value5 value1 value2 = (output1684, value846, value1) := by
  rw [input1684_def, output1684_def]
  try (conv => lhs; cbv)
  try rfl

def value847 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4605, 4593)])).val
theorem input1685_def : input1685 = (Flapjack.WordLangProgHOL.move 0 [(4605, 4593)]) := by
  unfold input1685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4605, 4593)])).val
theorem output1685_def : output1685 = (Flapjack.WordLangProgHOL.move 0 [(4605, 4593)]) := by
  unfold output1685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1685_skip : Flapjack.WordAlloc.isSkip output1685 = false := by
  rw [output1685_def]
  conv => lhs; cbv
  try rfl
theorem node1685_eq : Flapjack.WordAlloc.removeDeadStructural input1685 value846 value1 value2 = (output1685, value847, value1) := by
  rw [input1685_def, output1685_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1685 input1684)).val
theorem input1686_def : input1686 = (.seq input1685 input1684) := by
  unfold input1686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1685 output1684)).val
theorem output1686_def : output1686 = (.seq output1685 output1684) := by
  unfold output1686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1686_skip : Flapjack.WordAlloc.isSkip output1686 = false := by
  rw [output1686_def]
  conv => lhs; cbv
  try rfl
theorem node1686_eq : Flapjack.WordAlloc.removeDeadStructural input1686 value5 value1 value2 = (output1686, value847, value1) := by
  rw [input1686_def, output1686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1684_eq]
  try dsimp only
  rw [node1685_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value848 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4601 14261549653343708295#64))).val
theorem input1687_def : input1687 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4601 14261549653343708295#64)) := by
  unfold input1687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4601 14261549653343708295#64))).val
theorem output1687_def : output1687 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4601 14261549653343708295#64)) := by
  unfold output1687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1687_skip : Flapjack.WordAlloc.isSkip output1687 = false := by
  rw [output1687_def]
  conv => lhs; cbv
  try rfl
theorem node1687_eq : Flapjack.WordAlloc.removeDeadStructural input1687 value847 value1 value2 = (output1687, value848, value1) := by
  rw [input1687_def, output1687_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4597 14261549653343708295#64))).val
theorem input1688_def : input1688 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4597 14261549653343708295#64)) := by
  unfold input1688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1688_def : output1688 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1688_skip : Flapjack.WordAlloc.isSkip output1688 = true := by
  rw [output1688_def]
  conv => lhs; cbv
  try rfl
theorem node1688_eq : Flapjack.WordAlloc.removeDeadStructural input1688 value848 value1 value2 = (output1688, value848, value1) := by
  rw [input1688_def, output1688_def]
  try (conv => lhs; cbv)
  try rfl

def value849 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4593 4589 (Flapjack.WordRegImm.imm 1080#64))))).val
theorem input1689_def : input1689 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4593 4589 (Flapjack.WordRegImm.imm 1080#64)))) := by
  unfold input1689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4593 4589 (Flapjack.WordRegImm.imm 1080#64))))).val
theorem output1689_def : output1689 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4593 4589 (Flapjack.WordRegImm.imm 1080#64)))) := by
  unfold output1689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1689_skip : Flapjack.WordAlloc.isSkip output1689 = false := by
  rw [output1689_def]
  conv => lhs; cbv
  try rfl
theorem node1689_eq : Flapjack.WordAlloc.removeDeadStructural input1689 value848 value1 value2 = (output1689, value849, value1) := by
  rw [input1689_def, output1689_def]
  try (conv => lhs; cbv)
  try rfl

def value850 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4589 (Flapjack.WordLangAddr.addr 4585 18446744073709551520#64)))).val
theorem input1690_def : input1690 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4589 (Flapjack.WordLangAddr.addr 4585 18446744073709551520#64))) := by
  unfold input1690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4589 (Flapjack.WordLangAddr.addr 4585 18446744073709551520#64)))).val
theorem output1690_def : output1690 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4589 (Flapjack.WordLangAddr.addr 4585 18446744073709551520#64))) := by
  unfold output1690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1690_skip : Flapjack.WordAlloc.isSkip output1690 = false := by
  rw [output1690_def]
  conv => lhs; cbv
  try rfl
theorem node1690_eq : Flapjack.WordAlloc.removeDeadStructural input1690 value849 value1 value2 = (output1690, value850, value1) := by
  rw [input1690_def, output1690_def]
  try (conv => lhs; cbv)
  try rfl

def value851 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4585 4581)).val
theorem input1691_def : input1691 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4585 4581) := by
  unfold input1691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4585 4581)).val
theorem output1691_def : output1691 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4585 4581) := by
  unfold output1691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1691_skip : Flapjack.WordAlloc.isSkip output1691 = false := by
  rw [output1691_def]
  conv => lhs; cbv
  try rfl
theorem node1691_eq : Flapjack.WordAlloc.removeDeadStructural input1691 value850 value1 value2 = (output1691, value851, value1) := by
  rw [input1691_def, output1691_def]
  try (conv => lhs; cbv)
  try rfl

def value852 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4581 4577 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1692_def : input1692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4581 4577 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4581 4577 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1692_def : output1692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4581 4577 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1692_skip : Flapjack.WordAlloc.isSkip output1692 = false := by
  rw [output1692_def]
  conv => lhs; cbv
  try rfl
theorem node1692_eq : Flapjack.WordAlloc.removeDeadStructural input1692 value851 value1 value2 = (output1692, value852, value1) := by
  rw [input1692_def, output1692_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4577 Flapjack.WordStore.heapLength)).val
theorem input1693_def : input1693 = (Flapjack.WordLangProgHOL.get 4577 Flapjack.WordStore.heapLength) := by
  unfold input1693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4577 Flapjack.WordStore.heapLength)).val
theorem output1693_def : output1693 = (Flapjack.WordLangProgHOL.get 4577 Flapjack.WordStore.heapLength) := by
  unfold output1693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1693_skip : Flapjack.WordAlloc.isSkip output1693 = false := by
  rw [output1693_def]
  conv => lhs; cbv
  try rfl
theorem node1693_eq : Flapjack.WordAlloc.removeDeadStructural input1693 value852 value1 value2 = (output1693, value5, value1) := by
  rw [input1693_def, output1693_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1693 input1692)).val
theorem input1694_def : input1694 = (.seq input1693 input1692) := by
  unfold input1694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1693 output1692)).val
theorem output1694_def : output1694 = (.seq output1693 output1692) := by
  unfold output1694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1694_skip : Flapjack.WordAlloc.isSkip output1694 = false := by
  rw [output1694_def]
  conv => lhs; cbv
  try rfl
theorem node1694_eq : Flapjack.WordAlloc.removeDeadStructural input1694 value851 value1 value2 = (output1694, value5, value1) := by
  rw [input1694_def, output1694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1692_eq]
  try dsimp only
  rw [node1693_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1694 input1691)).val
theorem input1695_def : input1695 = (.seq input1694 input1691) := by
  unfold input1695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1694 output1691)).val
theorem output1695_def : output1695 = (.seq output1694 output1691) := by
  unfold output1695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1695_skip : Flapjack.WordAlloc.isSkip output1695 = false := by
  rw [output1695_def]
  conv => lhs; cbv
  try rfl
theorem node1695_eq : Flapjack.WordAlloc.removeDeadStructural input1695 value850 value1 value2 = (output1695, value5, value1) := by
  rw [input1695_def, output1695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1691_eq]
  try dsimp only
  rw [node1694_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1695 input1690)).val
theorem input1696_def : input1696 = (.seq input1695 input1690) := by
  unfold input1696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1695 output1690)).val
theorem output1696_def : output1696 = (.seq output1695 output1690) := by
  unfold output1696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1696_skip : Flapjack.WordAlloc.isSkip output1696 = false := by
  rw [output1696_def]
  conv => lhs; cbv
  try rfl
theorem node1696_eq : Flapjack.WordAlloc.removeDeadStructural input1696 value849 value1 value2 = (output1696, value5, value1) := by
  rw [input1696_def, output1696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1690_eq]
  try dsimp only
  rw [node1695_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1696 input1689)).val
theorem input1697_def : input1697 = (.seq input1696 input1689) := by
  unfold input1697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1696 output1689)).val
theorem output1697_def : output1697 = (.seq output1696 output1689) := by
  unfold output1697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1697_skip : Flapjack.WordAlloc.isSkip output1697 = false := by
  rw [output1697_def]
  conv => lhs; cbv
  try rfl
theorem node1697_eq : Flapjack.WordAlloc.removeDeadStructural input1697 value848 value1 value2 = (output1697, value5, value1) := by
  rw [input1697_def, output1697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1689_eq]
  try dsimp only
  rw [node1696_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value853 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4569 (Flapjack.WordLangAddr.addr 4573 0#64)))).val
theorem input1698_def : input1698 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4569 (Flapjack.WordLangAddr.addr 4573 0#64))) := by
  unfold input1698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4569 (Flapjack.WordLangAddr.addr 4573 0#64)))).val
theorem output1698_def : output1698 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4569 (Flapjack.WordLangAddr.addr 4573 0#64))) := by
  unfold output1698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1698_skip : Flapjack.WordAlloc.isSkip output1698 = false := by
  rw [output1698_def]
  conv => lhs; cbv
  try rfl
theorem node1698_eq : Flapjack.WordAlloc.removeDeadStructural input1698 value5 value1 value2 = (output1698, value853, value1) := by
  rw [input1698_def, output1698_def]
  try (conv => lhs; cbv)
  try rfl

def value854 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4573, 4561)])).val
theorem input1699_def : input1699 = (Flapjack.WordLangProgHOL.move 0 [(4573, 4561)]) := by
  unfold input1699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4573, 4561)])).val
theorem output1699_def : output1699 = (Flapjack.WordLangProgHOL.move 0 [(4573, 4561)]) := by
  unfold output1699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1699_skip : Flapjack.WordAlloc.isSkip output1699 = false := by
  rw [output1699_def]
  conv => lhs; cbv
  try rfl
theorem node1699_eq : Flapjack.WordAlloc.removeDeadStructural input1699 value853 value1 value2 = (output1699, value854, value1) := by
  rw [input1699_def, output1699_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1699 input1698)).val
theorem input1700_def : input1700 = (.seq input1699 input1698) := by
  unfold input1700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1699 output1698)).val
theorem output1700_def : output1700 = (.seq output1699 output1698) := by
  unfold output1700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1700_skip : Flapjack.WordAlloc.isSkip output1700 = false := by
  rw [output1700_def]
  conv => lhs; cbv
  try rfl
theorem node1700_eq : Flapjack.WordAlloc.removeDeadStructural input1700 value5 value1 value2 = (output1700, value854, value1) := by
  rw [input1700_def, output1700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1698_eq]
  try dsimp only
  rw [node1699_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value855 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4569 1420783178076928847#64))).val
theorem input1701_def : input1701 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4569 1420783178076928847#64)) := by
  unfold input1701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4569 1420783178076928847#64))).val
theorem output1701_def : output1701 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4569 1420783178076928847#64)) := by
  unfold output1701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1701_skip : Flapjack.WordAlloc.isSkip output1701 = false := by
  rw [output1701_def]
  conv => lhs; cbv
  try rfl
theorem node1701_eq : Flapjack.WordAlloc.removeDeadStructural input1701 value854 value1 value2 = (output1701, value855, value1) := by
  rw [input1701_def, output1701_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4565 1420783178076928847#64))).val
theorem input1702_def : input1702 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4565 1420783178076928847#64)) := by
  unfold input1702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1702_def : output1702 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1702_skip : Flapjack.WordAlloc.isSkip output1702 = true := by
  rw [output1702_def]
  conv => lhs; cbv
  try rfl
theorem node1702_eq : Flapjack.WordAlloc.removeDeadStructural input1702 value855 value1 value2 = (output1702, value855, value1) := by
  rw [input1702_def, output1702_def]
  try (conv => lhs; cbv)
  try rfl

def value856 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4561 4557 (Flapjack.WordRegImm.imm 1072#64))))).val
theorem input1703_def : input1703 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4561 4557 (Flapjack.WordRegImm.imm 1072#64)))) := by
  unfold input1703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4561 4557 (Flapjack.WordRegImm.imm 1072#64))))).val
theorem output1703_def : output1703 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4561 4557 (Flapjack.WordRegImm.imm 1072#64)))) := by
  unfold output1703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1703_skip : Flapjack.WordAlloc.isSkip output1703 = false := by
  rw [output1703_def]
  conv => lhs; cbv
  try rfl
theorem node1703_eq : Flapjack.WordAlloc.removeDeadStructural input1703 value855 value1 value2 = (output1703, value856, value1) := by
  rw [input1703_def, output1703_def]
  try (conv => lhs; cbv)
  try rfl

def value857 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4557 (Flapjack.WordLangAddr.addr 4553 18446744073709551520#64)))).val
theorem input1704_def : input1704 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4557 (Flapjack.WordLangAddr.addr 4553 18446744073709551520#64))) := by
  unfold input1704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4557 (Flapjack.WordLangAddr.addr 4553 18446744073709551520#64)))).val
theorem output1704_def : output1704 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4557 (Flapjack.WordLangAddr.addr 4553 18446744073709551520#64))) := by
  unfold output1704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1704_skip : Flapjack.WordAlloc.isSkip output1704 = false := by
  rw [output1704_def]
  conv => lhs; cbv
  try rfl
theorem node1704_eq : Flapjack.WordAlloc.removeDeadStructural input1704 value856 value1 value2 = (output1704, value857, value1) := by
  rw [input1704_def, output1704_def]
  try (conv => lhs; cbv)
  try rfl

def value858 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4553 4549)).val
theorem input1705_def : input1705 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4553 4549) := by
  unfold input1705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4553 4549)).val
theorem output1705_def : output1705 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4553 4549) := by
  unfold output1705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1705_skip : Flapjack.WordAlloc.isSkip output1705 = false := by
  rw [output1705_def]
  conv => lhs; cbv
  try rfl
theorem node1705_eq : Flapjack.WordAlloc.removeDeadStructural input1705 value857 value1 value2 = (output1705, value858, value1) := by
  rw [input1705_def, output1705_def]
  try (conv => lhs; cbv)
  try rfl

def value859 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4549 4545 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1706_def : input1706 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4549 4545 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4549 4545 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1706_def : output1706 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4549 4545 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1706_skip : Flapjack.WordAlloc.isSkip output1706 = false := by
  rw [output1706_def]
  conv => lhs; cbv
  try rfl
theorem node1706_eq : Flapjack.WordAlloc.removeDeadStructural input1706 value858 value1 value2 = (output1706, value859, value1) := by
  rw [input1706_def, output1706_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4545 Flapjack.WordStore.heapLength)).val
theorem input1707_def : input1707 = (Flapjack.WordLangProgHOL.get 4545 Flapjack.WordStore.heapLength) := by
  unfold input1707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4545 Flapjack.WordStore.heapLength)).val
theorem output1707_def : output1707 = (Flapjack.WordLangProgHOL.get 4545 Flapjack.WordStore.heapLength) := by
  unfold output1707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1707_skip : Flapjack.WordAlloc.isSkip output1707 = false := by
  rw [output1707_def]
  conv => lhs; cbv
  try rfl
theorem node1707_eq : Flapjack.WordAlloc.removeDeadStructural input1707 value859 value1 value2 = (output1707, value5, value1) := by
  rw [input1707_def, output1707_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1707 input1706)).val
theorem input1708_def : input1708 = (.seq input1707 input1706) := by
  unfold input1708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1707 output1706)).val
theorem output1708_def : output1708 = (.seq output1707 output1706) := by
  unfold output1708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1708_skip : Flapjack.WordAlloc.isSkip output1708 = false := by
  rw [output1708_def]
  conv => lhs; cbv
  try rfl
theorem node1708_eq : Flapjack.WordAlloc.removeDeadStructural input1708 value858 value1 value2 = (output1708, value5, value1) := by
  rw [input1708_def, output1708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1706_eq]
  try dsimp only
  rw [node1707_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1708 input1705)).val
theorem input1709_def : input1709 = (.seq input1708 input1705) := by
  unfold input1709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1708 output1705)).val
theorem output1709_def : output1709 = (.seq output1708 output1705) := by
  unfold output1709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1709_skip : Flapjack.WordAlloc.isSkip output1709 = false := by
  rw [output1709_def]
  conv => lhs; cbv
  try rfl
theorem node1709_eq : Flapjack.WordAlloc.removeDeadStructural input1709 value857 value1 value2 = (output1709, value5, value1) := by
  rw [input1709_def, output1709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1705_eq]
  try dsimp only
  rw [node1708_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1709 input1704)).val
theorem input1710_def : input1710 = (.seq input1709 input1704) := by
  unfold input1710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1709 output1704)).val
theorem output1710_def : output1710 = (.seq output1709 output1704) := by
  unfold output1710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1710_skip : Flapjack.WordAlloc.isSkip output1710 = false := by
  rw [output1710_def]
  conv => lhs; cbv
  try rfl
theorem node1710_eq : Flapjack.WordAlloc.removeDeadStructural input1710 value856 value1 value2 = (output1710, value5, value1) := by
  rw [input1710_def, output1710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1704_eq]
  try dsimp only
  rw [node1709_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1710 input1703)).val
theorem input1711_def : input1711 = (.seq input1710 input1703) := by
  unfold input1711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1710 output1703)).val
theorem output1711_def : output1711 = (.seq output1710 output1703) := by
  unfold output1711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1711_skip : Flapjack.WordAlloc.isSkip output1711 = false := by
  rw [output1711_def]
  conv => lhs; cbv
  try rfl
theorem node1711_eq : Flapjack.WordAlloc.removeDeadStructural input1711 value855 value1 value2 = (output1711, value5, value1) := by
  rw [input1711_def, output1711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1703_eq]
  try dsimp only
  rw [node1710_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value860 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4537 (Flapjack.WordLangAddr.addr 4541 0#64)))).val
theorem input1712_def : input1712 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4537 (Flapjack.WordLangAddr.addr 4541 0#64))) := by
  unfold input1712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4537 (Flapjack.WordLangAddr.addr 4541 0#64)))).val
theorem output1712_def : output1712 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4537 (Flapjack.WordLangAddr.addr 4541 0#64))) := by
  unfold output1712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1712_skip : Flapjack.WordAlloc.isSkip output1712 = false := by
  rw [output1712_def]
  conv => lhs; cbv
  try rfl
theorem node1712_eq : Flapjack.WordAlloc.removeDeadStructural input1712 value5 value1 value2 = (output1712, value860, value1) := by
  rw [input1712_def, output1712_def]
  try (conv => lhs; cbv)
  try rfl

def value861 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4541, 4529)])).val
theorem input1713_def : input1713 = (Flapjack.WordLangProgHOL.move 0 [(4541, 4529)]) := by
  unfold input1713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4541, 4529)])).val
theorem output1713_def : output1713 = (Flapjack.WordLangProgHOL.move 0 [(4541, 4529)]) := by
  unfold output1713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1713_skip : Flapjack.WordAlloc.isSkip output1713 = false := by
  rw [output1713_def]
  conv => lhs; cbv
  try rfl
theorem node1713_eq : Flapjack.WordAlloc.removeDeadStructural input1713 value860 value1 value2 = (output1713, value861, value1) := by
  rw [input1713_def, output1713_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1713 input1712)).val
theorem input1714_def : input1714 = (.seq input1713 input1712) := by
  unfold input1714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1713 output1712)).val
theorem output1714_def : output1714 = (.seq output1713 output1712) := by
  unfold output1714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1714_skip : Flapjack.WordAlloc.isSkip output1714 = false := by
  rw [output1714_def]
  conv => lhs; cbv
  try rfl
theorem node1714_eq : Flapjack.WordAlloc.removeDeadStructural input1714 value5 value1 value2 = (output1714, value861, value1) := by
  rw [input1714_def, output1714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1712_eq]
  try dsimp only
  rw [node1713_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value862 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4537 45569211422086573#64))).val
theorem input1715_def : input1715 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4537 45569211422086573#64)) := by
  unfold input1715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4537 45569211422086573#64))).val
theorem output1715_def : output1715 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4537 45569211422086573#64)) := by
  unfold output1715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1715_skip : Flapjack.WordAlloc.isSkip output1715 = false := by
  rw [output1715_def]
  conv => lhs; cbv
  try rfl
theorem node1715_eq : Flapjack.WordAlloc.removeDeadStructural input1715 value861 value1 value2 = (output1715, value862, value1) := by
  rw [input1715_def, output1715_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4533 45569211422086573#64))).val
theorem input1716_def : input1716 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4533 45569211422086573#64)) := by
  unfold input1716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1716_def : output1716 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1716_skip : Flapjack.WordAlloc.isSkip output1716 = true := by
  rw [output1716_def]
  conv => lhs; cbv
  try rfl
theorem node1716_eq : Flapjack.WordAlloc.removeDeadStructural input1716 value862 value1 value2 = (output1716, value862, value1) := by
  rw [input1716_def, output1716_def]
  try (conv => lhs; cbv)
  try rfl

def value863 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4529 4525 (Flapjack.WordRegImm.imm 1064#64))))).val
theorem input1717_def : input1717 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4529 4525 (Flapjack.WordRegImm.imm 1064#64)))) := by
  unfold input1717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4529 4525 (Flapjack.WordRegImm.imm 1064#64))))).val
theorem output1717_def : output1717 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4529 4525 (Flapjack.WordRegImm.imm 1064#64)))) := by
  unfold output1717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1717_skip : Flapjack.WordAlloc.isSkip output1717 = false := by
  rw [output1717_def]
  conv => lhs; cbv
  try rfl
theorem node1717_eq : Flapjack.WordAlloc.removeDeadStructural input1717 value862 value1 value2 = (output1717, value863, value1) := by
  rw [input1717_def, output1717_def]
  try (conv => lhs; cbv)
  try rfl

def value864 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4525 (Flapjack.WordLangAddr.addr 4521 18446744073709551520#64)))).val
theorem input1718_def : input1718 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4525 (Flapjack.WordLangAddr.addr 4521 18446744073709551520#64))) := by
  unfold input1718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4525 (Flapjack.WordLangAddr.addr 4521 18446744073709551520#64)))).val
theorem output1718_def : output1718 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4525 (Flapjack.WordLangAddr.addr 4521 18446744073709551520#64))) := by
  unfold output1718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1718_skip : Flapjack.WordAlloc.isSkip output1718 = false := by
  rw [output1718_def]
  conv => lhs; cbv
  try rfl
theorem node1718_eq : Flapjack.WordAlloc.removeDeadStructural input1718 value863 value1 value2 = (output1718, value864, value1) := by
  rw [input1718_def, output1718_def]
  try (conv => lhs; cbv)
  try rfl

def value865 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4521 4517)).val
theorem input1719_def : input1719 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4521 4517) := by
  unfold input1719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4521 4517)).val
theorem output1719_def : output1719 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4521 4517) := by
  unfold output1719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1719_skip : Flapjack.WordAlloc.isSkip output1719 = false := by
  rw [output1719_def]
  conv => lhs; cbv
  try rfl
theorem node1719_eq : Flapjack.WordAlloc.removeDeadStructural input1719 value864 value1 value2 = (output1719, value865, value1) := by
  rw [input1719_def, output1719_def]
  try (conv => lhs; cbv)
  try rfl

def value866 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4517 4513 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1720_def : input1720 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4517 4513 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4517 4513 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1720_def : output1720 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4517 4513 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1720_skip : Flapjack.WordAlloc.isSkip output1720 = false := by
  rw [output1720_def]
  conv => lhs; cbv
  try rfl
theorem node1720_eq : Flapjack.WordAlloc.removeDeadStructural input1720 value865 value1 value2 = (output1720, value866, value1) := by
  rw [input1720_def, output1720_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4513 Flapjack.WordStore.heapLength)).val
theorem input1721_def : input1721 = (Flapjack.WordLangProgHOL.get 4513 Flapjack.WordStore.heapLength) := by
  unfold input1721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4513 Flapjack.WordStore.heapLength)).val
theorem output1721_def : output1721 = (Flapjack.WordLangProgHOL.get 4513 Flapjack.WordStore.heapLength) := by
  unfold output1721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1721_skip : Flapjack.WordAlloc.isSkip output1721 = false := by
  rw [output1721_def]
  conv => lhs; cbv
  try rfl
theorem node1721_eq : Flapjack.WordAlloc.removeDeadStructural input1721 value866 value1 value2 = (output1721, value5, value1) := by
  rw [input1721_def, output1721_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1721 input1720)).val
theorem input1722_def : input1722 = (.seq input1721 input1720) := by
  unfold input1722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1721 output1720)).val
theorem output1722_def : output1722 = (.seq output1721 output1720) := by
  unfold output1722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1722_skip : Flapjack.WordAlloc.isSkip output1722 = false := by
  rw [output1722_def]
  conv => lhs; cbv
  try rfl
theorem node1722_eq : Flapjack.WordAlloc.removeDeadStructural input1722 value865 value1 value2 = (output1722, value5, value1) := by
  rw [input1722_def, output1722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1720_eq]
  try dsimp only
  rw [node1721_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1722 input1719)).val
theorem input1723_def : input1723 = (.seq input1722 input1719) := by
  unfold input1723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1722 output1719)).val
theorem output1723_def : output1723 = (.seq output1722 output1719) := by
  unfold output1723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1723_skip : Flapjack.WordAlloc.isSkip output1723 = false := by
  rw [output1723_def]
  conv => lhs; cbv
  try rfl
theorem node1723_eq : Flapjack.WordAlloc.removeDeadStructural input1723 value864 value1 value2 = (output1723, value5, value1) := by
  rw [input1723_def, output1723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1719_eq]
  try dsimp only
  rw [node1722_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1723 input1718)).val
theorem input1724_def : input1724 = (.seq input1723 input1718) := by
  unfold input1724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1723 output1718)).val
theorem output1724_def : output1724 = (.seq output1723 output1718) := by
  unfold output1724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1724_skip : Flapjack.WordAlloc.isSkip output1724 = false := by
  rw [output1724_def]
  conv => lhs; cbv
  try rfl
theorem node1724_eq : Flapjack.WordAlloc.removeDeadStructural input1724 value863 value1 value2 = (output1724, value5, value1) := by
  rw [input1724_def, output1724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1718_eq]
  try dsimp only
  rw [node1723_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1724 input1717)).val
theorem input1725_def : input1725 = (.seq input1724 input1717) := by
  unfold input1725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1724 output1717)).val
theorem output1725_def : output1725 = (.seq output1724 output1717) := by
  unfold output1725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1725_skip : Flapjack.WordAlloc.isSkip output1725 = false := by
  rw [output1725_def]
  conv => lhs; cbv
  try rfl
theorem node1725_eq : Flapjack.WordAlloc.removeDeadStructural input1725 value862 value1 value2 = (output1725, value5, value1) := by
  rw [input1725_def, output1725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1717_eq]
  try dsimp only
  rw [node1724_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value867 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4505 (Flapjack.WordLangAddr.addr 4509 0#64)))).val
theorem input1726_def : input1726 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4505 (Flapjack.WordLangAddr.addr 4509 0#64))) := by
  unfold input1726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4505 (Flapjack.WordLangAddr.addr 4509 0#64)))).val
theorem output1726_def : output1726 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4505 (Flapjack.WordLangAddr.addr 4509 0#64))) := by
  unfold output1726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1726_skip : Flapjack.WordAlloc.isSkip output1726 = false := by
  rw [output1726_def]
  conv => lhs; cbv
  try rfl
theorem node1726_eq : Flapjack.WordAlloc.removeDeadStructural input1726 value5 value1 value2 = (output1726, value867, value1) := by
  rw [input1726_def, output1726_def]
  try (conv => lhs; cbv)
  try rfl

def value868 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4509, 4497)])).val
theorem input1727_def : input1727 = (Flapjack.WordLangProgHOL.move 0 [(4509, 4497)]) := by
  unfold input1727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4509, 4497)])).val
theorem output1727_def : output1727 = (Flapjack.WordLangProgHOL.move 0 [(4509, 4497)]) := by
  unfold output1727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1727_skip : Flapjack.WordAlloc.isSkip output1727 = false := by
  rw [output1727_def]
  conv => lhs; cbv
  try rfl
theorem node1727_eq : Flapjack.WordAlloc.removeDeadStructural input1727 value867 value1 value2 = (output1727, value868, value1) := by
  rw [input1727_def, output1727_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1727 input1726)).val
theorem input1728_def : input1728 = (.seq input1727 input1726) := by
  unfold input1728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1727 output1726)).val
theorem output1728_def : output1728 = (.seq output1727 output1726) := by
  unfold output1728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1728_skip : Flapjack.WordAlloc.isSkip output1728 = false := by
  rw [output1728_def]
  conv => lhs; cbv
  try rfl
theorem node1728_eq : Flapjack.WordAlloc.removeDeadStructural input1728 value5 value1 value2 = (output1728, value868, value1) := by
  rw [input1728_def, output1728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1726_eq]
  try dsimp only
  rw [node1727_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value869 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4505 12990861760746396188#64))).val
theorem input1729_def : input1729 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4505 12990861760746396188#64)) := by
  unfold input1729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4505 12990861760746396188#64))).val
theorem output1729_def : output1729 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4505 12990861760746396188#64)) := by
  unfold output1729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1729_skip : Flapjack.WordAlloc.isSkip output1729 = false := by
  rw [output1729_def]
  conv => lhs; cbv
  try rfl
theorem node1729_eq : Flapjack.WordAlloc.removeDeadStructural input1729 value868 value1 value2 = (output1729, value869, value1) := by
  rw [input1729_def, output1729_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4501 12990861760746396188#64))).val
theorem input1730_def : input1730 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4501 12990861760746396188#64)) := by
  unfold input1730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1730_def : output1730 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1730_skip : Flapjack.WordAlloc.isSkip output1730 = true := by
  rw [output1730_def]
  conv => lhs; cbv
  try rfl
theorem node1730_eq : Flapjack.WordAlloc.removeDeadStructural input1730 value869 value1 value2 = (output1730, value869, value1) := by
  rw [input1730_def, output1730_def]
  try (conv => lhs; cbv)
  try rfl

def value870 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4497 4493 (Flapjack.WordRegImm.imm 1056#64))))).val
theorem input1731_def : input1731 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4497 4493 (Flapjack.WordRegImm.imm 1056#64)))) := by
  unfold input1731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4497 4493 (Flapjack.WordRegImm.imm 1056#64))))).val
theorem output1731_def : output1731 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4497 4493 (Flapjack.WordRegImm.imm 1056#64)))) := by
  unfold output1731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1731_skip : Flapjack.WordAlloc.isSkip output1731 = false := by
  rw [output1731_def]
  conv => lhs; cbv
  try rfl
theorem node1731_eq : Flapjack.WordAlloc.removeDeadStructural input1731 value869 value1 value2 = (output1731, value870, value1) := by
  rw [input1731_def, output1731_def]
  try (conv => lhs; cbv)
  try rfl

def value871 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4493 (Flapjack.WordLangAddr.addr 4489 18446744073709551520#64)))).val
theorem input1732_def : input1732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4493 (Flapjack.WordLangAddr.addr 4489 18446744073709551520#64))) := by
  unfold input1732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4493 (Flapjack.WordLangAddr.addr 4489 18446744073709551520#64)))).val
theorem output1732_def : output1732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4493 (Flapjack.WordLangAddr.addr 4489 18446744073709551520#64))) := by
  unfold output1732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1732_skip : Flapjack.WordAlloc.isSkip output1732 = false := by
  rw [output1732_def]
  conv => lhs; cbv
  try rfl
theorem node1732_eq : Flapjack.WordAlloc.removeDeadStructural input1732 value870 value1 value2 = (output1732, value871, value1) := by
  rw [input1732_def, output1732_def]
  try (conv => lhs; cbv)
  try rfl

def value872 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4489 4485)).val
theorem input1733_def : input1733 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4489 4485) := by
  unfold input1733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4489 4485)).val
theorem output1733_def : output1733 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4489 4485) := by
  unfold output1733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1733_skip : Flapjack.WordAlloc.isSkip output1733 = false := by
  rw [output1733_def]
  conv => lhs; cbv
  try rfl
theorem node1733_eq : Flapjack.WordAlloc.removeDeadStructural input1733 value871 value1 value2 = (output1733, value872, value1) := by
  rw [input1733_def, output1733_def]
  try (conv => lhs; cbv)
  try rfl

def value873 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4485 4481 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1734_def : input1734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4485 4481 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4485 4481 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1734_def : output1734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4485 4481 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1734_skip : Flapjack.WordAlloc.isSkip output1734 = false := by
  rw [output1734_def]
  conv => lhs; cbv
  try rfl
theorem node1734_eq : Flapjack.WordAlloc.removeDeadStructural input1734 value872 value1 value2 = (output1734, value873, value1) := by
  rw [input1734_def, output1734_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4481 Flapjack.WordStore.heapLength)).val
theorem input1735_def : input1735 = (Flapjack.WordLangProgHOL.get 4481 Flapjack.WordStore.heapLength) := by
  unfold input1735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4481 Flapjack.WordStore.heapLength)).val
theorem output1735_def : output1735 = (Flapjack.WordLangProgHOL.get 4481 Flapjack.WordStore.heapLength) := by
  unfold output1735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1735_skip : Flapjack.WordAlloc.isSkip output1735 = false := by
  rw [output1735_def]
  conv => lhs; cbv
  try rfl
theorem node1735_eq : Flapjack.WordAlloc.removeDeadStructural input1735 value873 value1 value2 = (output1735, value5, value1) := by
  rw [input1735_def, output1735_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1735 input1734)).val
theorem input1736_def : input1736 = (.seq input1735 input1734) := by
  unfold input1736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1735 output1734)).val
theorem output1736_def : output1736 = (.seq output1735 output1734) := by
  unfold output1736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1736_skip : Flapjack.WordAlloc.isSkip output1736 = false := by
  rw [output1736_def]
  conv => lhs; cbv
  try rfl
theorem node1736_eq : Flapjack.WordAlloc.removeDeadStructural input1736 value872 value1 value2 = (output1736, value5, value1) := by
  rw [input1736_def, output1736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1734_eq]
  try dsimp only
  rw [node1735_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1736 input1733)).val
theorem input1737_def : input1737 = (.seq input1736 input1733) := by
  unfold input1737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1736 output1733)).val
theorem output1737_def : output1737 = (.seq output1736 output1733) := by
  unfold output1737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1737_skip : Flapjack.WordAlloc.isSkip output1737 = false := by
  rw [output1737_def]
  conv => lhs; cbv
  try rfl
theorem node1737_eq : Flapjack.WordAlloc.removeDeadStructural input1737 value871 value1 value2 = (output1737, value5, value1) := by
  rw [input1737_def, output1737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1733_eq]
  try dsimp only
  rw [node1736_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1737 input1732)).val
theorem input1738_def : input1738 = (.seq input1737 input1732) := by
  unfold input1738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1737 output1732)).val
theorem output1738_def : output1738 = (.seq output1737 output1732) := by
  unfold output1738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1738_skip : Flapjack.WordAlloc.isSkip output1738 = false := by
  rw [output1738_def]
  conv => lhs; cbv
  try rfl
theorem node1738_eq : Flapjack.WordAlloc.removeDeadStructural input1738 value870 value1 value2 = (output1738, value5, value1) := by
  rw [input1738_def, output1738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1732_eq]
  try dsimp only
  rw [node1737_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1738 input1731)).val
theorem input1739_def : input1739 = (.seq input1738 input1731) := by
  unfold input1739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1738 output1731)).val
theorem output1739_def : output1739 = (.seq output1738 output1731) := by
  unfold output1739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1739_skip : Flapjack.WordAlloc.isSkip output1739 = false := by
  rw [output1739_def]
  conv => lhs; cbv
  try rfl
theorem node1739_eq : Flapjack.WordAlloc.removeDeadStructural input1739 value869 value1 value2 = (output1739, value5, value1) := by
  rw [input1739_def, output1739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1731_eq]
  try dsimp only
  rw [node1738_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value874 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4473 (Flapjack.WordLangAddr.addr 4477 0#64)))).val
theorem input1740_def : input1740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4473 (Flapjack.WordLangAddr.addr 4477 0#64))) := by
  unfold input1740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4473 (Flapjack.WordLangAddr.addr 4477 0#64)))).val
theorem output1740_def : output1740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4473 (Flapjack.WordLangAddr.addr 4477 0#64))) := by
  unfold output1740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1740_skip : Flapjack.WordAlloc.isSkip output1740 = false := by
  rw [output1740_def]
  conv => lhs; cbv
  try rfl
theorem node1740_eq : Flapjack.WordAlloc.removeDeadStructural input1740 value5 value1 value2 = (output1740, value874, value1) := by
  rw [input1740_def, output1740_def]
  try (conv => lhs; cbv)
  try rfl

def value875 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4477, 4465)])).val
theorem input1741_def : input1741 = (Flapjack.WordLangProgHOL.move 0 [(4477, 4465)]) := by
  unfold input1741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4477, 4465)])).val
theorem output1741_def : output1741 = (Flapjack.WordLangProgHOL.move 0 [(4477, 4465)]) := by
  unfold output1741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1741_skip : Flapjack.WordAlloc.isSkip output1741 = false := by
  rw [output1741_def]
  conv => lhs; cbv
  try rfl
theorem node1741_eq : Flapjack.WordAlloc.removeDeadStructural input1741 value874 value1 value2 = (output1741, value875, value1) := by
  rw [input1741_def, output1741_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1741 input1740)).val
theorem input1742_def : input1742 = (.seq input1741 input1740) := by
  unfold input1742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1741 output1740)).val
theorem output1742_def : output1742 = (.seq output1741 output1740) := by
  unfold output1742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1742_skip : Flapjack.WordAlloc.isSkip output1742 = false := by
  rw [output1742_def]
  conv => lhs; cbv
  try rfl
theorem node1742_eq : Flapjack.WordAlloc.removeDeadStructural input1742 value5 value1 value2 = (output1742, value875, value1) := by
  rw [input1742_def, output1742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1740_eq]
  try dsimp only
  rw [node1741_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value876 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4473 18384370464483103265#64))).val
theorem input1743_def : input1743 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4473 18384370464483103265#64)) := by
  unfold input1743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4473 18384370464483103265#64))).val
theorem output1743_def : output1743 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4473 18384370464483103265#64)) := by
  unfold output1743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1743_skip : Flapjack.WordAlloc.isSkip output1743 = false := by
  rw [output1743_def]
  conv => lhs; cbv
  try rfl
theorem node1743_eq : Flapjack.WordAlloc.removeDeadStructural input1743 value875 value1 value2 = (output1743, value876, value1) := by
  rw [input1743_def, output1743_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4469 18384370464483103265#64))).val
theorem input1744_def : input1744 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4469 18384370464483103265#64)) := by
  unfold input1744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1744_def : output1744 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1744_skip : Flapjack.WordAlloc.isSkip output1744 = true := by
  rw [output1744_def]
  conv => lhs; cbv
  try rfl
theorem node1744_eq : Flapjack.WordAlloc.removeDeadStructural input1744 value876 value1 value2 = (output1744, value876, value1) := by
  rw [input1744_def, output1744_def]
  try (conv => lhs; cbv)
  try rfl

def value877 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4465 4461 (Flapjack.WordRegImm.imm 1048#64))))).val
theorem input1745_def : input1745 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4465 4461 (Flapjack.WordRegImm.imm 1048#64)))) := by
  unfold input1745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4465 4461 (Flapjack.WordRegImm.imm 1048#64))))).val
theorem output1745_def : output1745 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4465 4461 (Flapjack.WordRegImm.imm 1048#64)))) := by
  unfold output1745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1745_skip : Flapjack.WordAlloc.isSkip output1745 = false := by
  rw [output1745_def]
  conv => lhs; cbv
  try rfl
theorem node1745_eq : Flapjack.WordAlloc.removeDeadStructural input1745 value876 value1 value2 = (output1745, value877, value1) := by
  rw [input1745_def, output1745_def]
  try (conv => lhs; cbv)
  try rfl

def value878 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4461 (Flapjack.WordLangAddr.addr 4457 18446744073709551520#64)))).val
theorem input1746_def : input1746 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4461 (Flapjack.WordLangAddr.addr 4457 18446744073709551520#64))) := by
  unfold input1746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4461 (Flapjack.WordLangAddr.addr 4457 18446744073709551520#64)))).val
theorem output1746_def : output1746 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4461 (Flapjack.WordLangAddr.addr 4457 18446744073709551520#64))) := by
  unfold output1746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1746_skip : Flapjack.WordAlloc.isSkip output1746 = false := by
  rw [output1746_def]
  conv => lhs; cbv
  try rfl
theorem node1746_eq : Flapjack.WordAlloc.removeDeadStructural input1746 value877 value1 value2 = (output1746, value878, value1) := by
  rw [input1746_def, output1746_def]
  try (conv => lhs; cbv)
  try rfl

def value879 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4457 4453)).val
theorem input1747_def : input1747 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4457 4453) := by
  unfold input1747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4457 4453)).val
theorem output1747_def : output1747 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4457 4453) := by
  unfold output1747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1747_skip : Flapjack.WordAlloc.isSkip output1747 = false := by
  rw [output1747_def]
  conv => lhs; cbv
  try rfl
theorem node1747_eq : Flapjack.WordAlloc.removeDeadStructural input1747 value878 value1 value2 = (output1747, value879, value1) := by
  rw [input1747_def, output1747_def]
  try (conv => lhs; cbv)
  try rfl

def value880 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4453 4449 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1748_def : input1748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4453 4449 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4453 4449 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1748_def : output1748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4453 4449 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1748_skip : Flapjack.WordAlloc.isSkip output1748 = false := by
  rw [output1748_def]
  conv => lhs; cbv
  try rfl
theorem node1748_eq : Flapjack.WordAlloc.removeDeadStructural input1748 value879 value1 value2 = (output1748, value880, value1) := by
  rw [input1748_def, output1748_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4449 Flapjack.WordStore.heapLength)).val
theorem input1749_def : input1749 = (Flapjack.WordLangProgHOL.get 4449 Flapjack.WordStore.heapLength) := by
  unfold input1749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4449 Flapjack.WordStore.heapLength)).val
theorem output1749_def : output1749 = (Flapjack.WordLangProgHOL.get 4449 Flapjack.WordStore.heapLength) := by
  unfold output1749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1749_skip : Flapjack.WordAlloc.isSkip output1749 = false := by
  rw [output1749_def]
  conv => lhs; cbv
  try rfl
theorem node1749_eq : Flapjack.WordAlloc.removeDeadStructural input1749 value880 value1 value2 = (output1749, value5, value1) := by
  rw [input1749_def, output1749_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1749 input1748)).val
theorem input1750_def : input1750 = (.seq input1749 input1748) := by
  unfold input1750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1749 output1748)).val
theorem output1750_def : output1750 = (.seq output1749 output1748) := by
  unfold output1750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1750_skip : Flapjack.WordAlloc.isSkip output1750 = false := by
  rw [output1750_def]
  conv => lhs; cbv
  try rfl
theorem node1750_eq : Flapjack.WordAlloc.removeDeadStructural input1750 value879 value1 value2 = (output1750, value5, value1) := by
  rw [input1750_def, output1750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1748_eq]
  try dsimp only
  rw [node1749_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1750 input1747)).val
theorem input1751_def : input1751 = (.seq input1750 input1747) := by
  unfold input1751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1750 output1747)).val
theorem output1751_def : output1751 = (.seq output1750 output1747) := by
  unfold output1751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1751_skip : Flapjack.WordAlloc.isSkip output1751 = false := by
  rw [output1751_def]
  conv => lhs; cbv
  try rfl
theorem node1751_eq : Flapjack.WordAlloc.removeDeadStructural input1751 value878 value1 value2 = (output1751, value5, value1) := by
  rw [input1751_def, output1751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1747_eq]
  try dsimp only
  rw [node1750_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1751 input1746)).val
theorem input1752_def : input1752 = (.seq input1751 input1746) := by
  unfold input1752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1751 output1746)).val
theorem output1752_def : output1752 = (.seq output1751 output1746) := by
  unfold output1752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1752_skip : Flapjack.WordAlloc.isSkip output1752 = false := by
  rw [output1752_def]
  conv => lhs; cbv
  try rfl
theorem node1752_eq : Flapjack.WordAlloc.removeDeadStructural input1752 value877 value1 value2 = (output1752, value5, value1) := by
  rw [input1752_def, output1752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1746_eq]
  try dsimp only
  rw [node1751_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1752 input1745)).val
theorem input1753_def : input1753 = (.seq input1752 input1745) := by
  unfold input1753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1752 output1745)).val
theorem output1753_def : output1753 = (.seq output1752 output1745) := by
  unfold output1753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1753_skip : Flapjack.WordAlloc.isSkip output1753 = false := by
  rw [output1753_def]
  conv => lhs; cbv
  try rfl
theorem node1753_eq : Flapjack.WordAlloc.removeDeadStructural input1753 value876 value1 value2 = (output1753, value5, value1) := by
  rw [input1753_def, output1753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1745_eq]
  try dsimp only
  rw [node1752_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value881 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4441 (Flapjack.WordLangAddr.addr 4445 0#64)))).val
theorem input1754_def : input1754 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4441 (Flapjack.WordLangAddr.addr 4445 0#64))) := by
  unfold input1754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4441 (Flapjack.WordLangAddr.addr 4445 0#64)))).val
theorem output1754_def : output1754 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4441 (Flapjack.WordLangAddr.addr 4445 0#64))) := by
  unfold output1754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1754_skip : Flapjack.WordAlloc.isSkip output1754 = false := by
  rw [output1754_def]
  conv => lhs; cbv
  try rfl
theorem node1754_eq : Flapjack.WordAlloc.removeDeadStructural input1754 value5 value1 value2 = (output1754, value881, value1) := by
  rw [input1754_def, output1754_def]
  try (conv => lhs; cbv)
  try rfl

def value882 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4445, 4433)])).val
theorem input1755_def : input1755 = (Flapjack.WordLangProgHOL.move 0 [(4445, 4433)]) := by
  unfold input1755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4445, 4433)])).val
theorem output1755_def : output1755 = (Flapjack.WordLangProgHOL.move 0 [(4445, 4433)]) := by
  unfold output1755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1755_skip : Flapjack.WordAlloc.isSkip output1755 = false := by
  rw [output1755_def]
  conv => lhs; cbv
  try rfl
theorem node1755_eq : Flapjack.WordAlloc.removeDeadStructural input1755 value881 value1 value2 = (output1755, value882, value1) := by
  rw [input1755_def, output1755_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1755 input1754)).val
theorem input1756_def : input1756 = (.seq input1755 input1754) := by
  unfold input1756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1755 output1754)).val
theorem output1756_def : output1756 = (.seq output1755 output1754) := by
  unfold output1756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1756_skip : Flapjack.WordAlloc.isSkip output1756 = false := by
  rw [output1756_def]
  conv => lhs; cbv
  try rfl
theorem node1756_eq : Flapjack.WordAlloc.removeDeadStructural input1756 value5 value1 value2 = (output1756, value882, value1) := by
  rw [input1756_def, output1756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1754_eq]
  try dsimp only
  rw [node1755_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value883 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4441 5119082511933781574#64))).val
theorem input1757_def : input1757 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4441 5119082511933781574#64)) := by
  unfold input1757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4441 5119082511933781574#64))).val
theorem output1757_def : output1757 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4441 5119082511933781574#64)) := by
  unfold output1757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1757_skip : Flapjack.WordAlloc.isSkip output1757 = false := by
  rw [output1757_def]
  conv => lhs; cbv
  try rfl
theorem node1757_eq : Flapjack.WordAlloc.removeDeadStructural input1757 value882 value1 value2 = (output1757, value883, value1) := by
  rw [input1757_def, output1757_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4437 5119082511933781574#64))).val
theorem input1758_def : input1758 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4437 5119082511933781574#64)) := by
  unfold input1758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1758_def : output1758 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1758_skip : Flapjack.WordAlloc.isSkip output1758 = true := by
  rw [output1758_def]
  conv => lhs; cbv
  try rfl
theorem node1758_eq : Flapjack.WordAlloc.removeDeadStructural input1758 value883 value1 value2 = (output1758, value883, value1) := by
  rw [input1758_def, output1758_def]
  try (conv => lhs; cbv)
  try rfl

def value884 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4433 4429 (Flapjack.WordRegImm.imm 1040#64))))).val
theorem input1759_def : input1759 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4433 4429 (Flapjack.WordRegImm.imm 1040#64)))) := by
  unfold input1759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4433 4429 (Flapjack.WordRegImm.imm 1040#64))))).val
theorem output1759_def : output1759 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4433 4429 (Flapjack.WordRegImm.imm 1040#64)))) := by
  unfold output1759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1759_skip : Flapjack.WordAlloc.isSkip output1759 = false := by
  rw [output1759_def]
  conv => lhs; cbv
  try rfl
theorem node1759_eq : Flapjack.WordAlloc.removeDeadStructural input1759 value883 value1 value2 = (output1759, value884, value1) := by
  rw [input1759_def, output1759_def]
  try (conv => lhs; cbv)
  try rfl

def value885 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4429 (Flapjack.WordLangAddr.addr 4425 18446744073709551520#64)))).val
theorem input1760_def : input1760 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4429 (Flapjack.WordLangAddr.addr 4425 18446744073709551520#64))) := by
  unfold input1760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4429 (Flapjack.WordLangAddr.addr 4425 18446744073709551520#64)))).val
theorem output1760_def : output1760 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4429 (Flapjack.WordLangAddr.addr 4425 18446744073709551520#64))) := by
  unfold output1760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1760_skip : Flapjack.WordAlloc.isSkip output1760 = false := by
  rw [output1760_def]
  conv => lhs; cbv
  try rfl
theorem node1760_eq : Flapjack.WordAlloc.removeDeadStructural input1760 value884 value1 value2 = (output1760, value885, value1) := by
  rw [input1760_def, output1760_def]
  try (conv => lhs; cbv)
  try rfl

def value886 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4425 4421)).val
theorem input1761_def : input1761 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4425 4421) := by
  unfold input1761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4425 4421)).val
theorem output1761_def : output1761 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4425 4421) := by
  unfold output1761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1761_skip : Flapjack.WordAlloc.isSkip output1761 = false := by
  rw [output1761_def]
  conv => lhs; cbv
  try rfl
theorem node1761_eq : Flapjack.WordAlloc.removeDeadStructural input1761 value885 value1 value2 = (output1761, value886, value1) := by
  rw [input1761_def, output1761_def]
  try (conv => lhs; cbv)
  try rfl

def value887 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4421 4417 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1762_def : input1762 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4421 4417 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4421 4417 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1762_def : output1762 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4421 4417 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1762_skip : Flapjack.WordAlloc.isSkip output1762 = false := by
  rw [output1762_def]
  conv => lhs; cbv
  try rfl
theorem node1762_eq : Flapjack.WordAlloc.removeDeadStructural input1762 value886 value1 value2 = (output1762, value887, value1) := by
  rw [input1762_def, output1762_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4417 Flapjack.WordStore.heapLength)).val
theorem input1763_def : input1763 = (Flapjack.WordLangProgHOL.get 4417 Flapjack.WordStore.heapLength) := by
  unfold input1763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4417 Flapjack.WordStore.heapLength)).val
theorem output1763_def : output1763 = (Flapjack.WordLangProgHOL.get 4417 Flapjack.WordStore.heapLength) := by
  unfold output1763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1763_skip : Flapjack.WordAlloc.isSkip output1763 = false := by
  rw [output1763_def]
  conv => lhs; cbv
  try rfl
theorem node1763_eq : Flapjack.WordAlloc.removeDeadStructural input1763 value887 value1 value2 = (output1763, value5, value1) := by
  rw [input1763_def, output1763_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1763 input1762)).val
theorem input1764_def : input1764 = (.seq input1763 input1762) := by
  unfold input1764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1763 output1762)).val
theorem output1764_def : output1764 = (.seq output1763 output1762) := by
  unfold output1764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1764_skip : Flapjack.WordAlloc.isSkip output1764 = false := by
  rw [output1764_def]
  conv => lhs; cbv
  try rfl
theorem node1764_eq : Flapjack.WordAlloc.removeDeadStructural input1764 value886 value1 value2 = (output1764, value5, value1) := by
  rw [input1764_def, output1764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1762_eq]
  try dsimp only
  rw [node1763_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1764 input1761)).val
theorem input1765_def : input1765 = (.seq input1764 input1761) := by
  unfold input1765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1764 output1761)).val
theorem output1765_def : output1765 = (.seq output1764 output1761) := by
  unfold output1765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1765_skip : Flapjack.WordAlloc.isSkip output1765 = false := by
  rw [output1765_def]
  conv => lhs; cbv
  try rfl
theorem node1765_eq : Flapjack.WordAlloc.removeDeadStructural input1765 value885 value1 value2 = (output1765, value5, value1) := by
  rw [input1765_def, output1765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1761_eq]
  try dsimp only
  rw [node1764_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1765 input1760)).val
theorem input1766_def : input1766 = (.seq input1765 input1760) := by
  unfold input1766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1765 output1760)).val
theorem output1766_def : output1766 = (.seq output1765 output1760) := by
  unfold output1766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1766_skip : Flapjack.WordAlloc.isSkip output1766 = false := by
  rw [output1766_def]
  conv => lhs; cbv
  try rfl
theorem node1766_eq : Flapjack.WordAlloc.removeDeadStructural input1766 value884 value1 value2 = (output1766, value5, value1) := by
  rw [input1766_def, output1766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1760_eq]
  try dsimp only
  rw [node1765_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1766 input1759)).val
theorem input1767_def : input1767 = (.seq input1766 input1759) := by
  unfold input1767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1766 output1759)).val
theorem output1767_def : output1767 = (.seq output1766 output1759) := by
  unfold output1767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1767_skip : Flapjack.WordAlloc.isSkip output1767 = false := by
  rw [output1767_def]
  conv => lhs; cbv
  try rfl
theorem node1767_eq : Flapjack.WordAlloc.removeDeadStructural input1767 value883 value1 value2 = (output1767, value5, value1) := by
  rw [input1767_def, output1767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1759_eq]
  try dsimp only
  rw [node1766_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value888 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4409 (Flapjack.WordLangAddr.addr 4413 0#64)))).val
theorem input1768_def : input1768 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4409 (Flapjack.WordLangAddr.addr 4413 0#64))) := by
  unfold input1768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4409 (Flapjack.WordLangAddr.addr 4413 0#64)))).val
theorem output1768_def : output1768 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4409 (Flapjack.WordLangAddr.addr 4413 0#64))) := by
  unfold output1768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1768_skip : Flapjack.WordAlloc.isSkip output1768 = false := by
  rw [output1768_def]
  conv => lhs; cbv
  try rfl
theorem node1768_eq : Flapjack.WordAlloc.removeDeadStructural input1768 value5 value1 value2 = (output1768, value888, value1) := by
  rw [input1768_def, output1768_def]
  try (conv => lhs; cbv)
  try rfl

def value889 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4413, 4401)])).val
theorem input1769_def : input1769 = (Flapjack.WordLangProgHOL.move 0 [(4413, 4401)]) := by
  unfold input1769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4413, 4401)])).val
theorem output1769_def : output1769 = (Flapjack.WordLangProgHOL.move 0 [(4413, 4401)]) := by
  unfold output1769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1769_skip : Flapjack.WordAlloc.isSkip output1769 = false := by
  rw [output1769_def]
  conv => lhs; cbv
  try rfl
theorem node1769_eq : Flapjack.WordAlloc.removeDeadStructural input1769 value888 value1 value2 = (output1769, value889, value1) := by
  rw [input1769_def, output1769_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1769 input1768)).val
theorem input1770_def : input1770 = (.seq input1769 input1768) := by
  unfold input1770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1769 output1768)).val
theorem output1770_def : output1770 = (.seq output1769 output1768) := by
  unfold output1770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1770_skip : Flapjack.WordAlloc.isSkip output1770 = false := by
  rw [output1770_def]
  conv => lhs; cbv
  try rfl
theorem node1770_eq : Flapjack.WordAlloc.removeDeadStructural input1770 value5 value1 value2 = (output1770, value889, value1) := by
  rw [input1770_def, output1770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1768_eq]
  try dsimp only
  rw [node1769_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value890 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4409 17533508449362819567#64))).val
theorem input1771_def : input1771 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4409 17533508449362819567#64)) := by
  unfold input1771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4409 17533508449362819567#64))).val
theorem output1771_def : output1771 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4409 17533508449362819567#64)) := by
  unfold output1771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1771_skip : Flapjack.WordAlloc.isSkip output1771 = false := by
  rw [output1771_def]
  conv => lhs; cbv
  try rfl
theorem node1771_eq : Flapjack.WordAlloc.removeDeadStructural input1771 value889 value1 value2 = (output1771, value890, value1) := by
  rw [input1771_def, output1771_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4405 17533508449362819567#64))).val
theorem input1772_def : input1772 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4405 17533508449362819567#64)) := by
  unfold input1772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1772_def : output1772 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1772_skip : Flapjack.WordAlloc.isSkip output1772 = true := by
  rw [output1772_def]
  conv => lhs; cbv
  try rfl
theorem node1772_eq : Flapjack.WordAlloc.removeDeadStructural input1772 value890 value1 value2 = (output1772, value890, value1) := by
  rw [input1772_def, output1772_def]
  try (conv => lhs; cbv)
  try rfl

def value891 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4401 4397 (Flapjack.WordRegImm.imm 1032#64))))).val
theorem input1773_def : input1773 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4401 4397 (Flapjack.WordRegImm.imm 1032#64)))) := by
  unfold input1773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4401 4397 (Flapjack.WordRegImm.imm 1032#64))))).val
theorem output1773_def : output1773 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4401 4397 (Flapjack.WordRegImm.imm 1032#64)))) := by
  unfold output1773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1773_skip : Flapjack.WordAlloc.isSkip output1773 = false := by
  rw [output1773_def]
  conv => lhs; cbv
  try rfl
theorem node1773_eq : Flapjack.WordAlloc.removeDeadStructural input1773 value890 value1 value2 = (output1773, value891, value1) := by
  rw [input1773_def, output1773_def]
  try (conv => lhs; cbv)
  try rfl

def value892 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4397 (Flapjack.WordLangAddr.addr 4393 18446744073709551520#64)))).val
theorem input1774_def : input1774 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4397 (Flapjack.WordLangAddr.addr 4393 18446744073709551520#64))) := by
  unfold input1774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4397 (Flapjack.WordLangAddr.addr 4393 18446744073709551520#64)))).val
theorem output1774_def : output1774 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4397 (Flapjack.WordLangAddr.addr 4393 18446744073709551520#64))) := by
  unfold output1774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1774_skip : Flapjack.WordAlloc.isSkip output1774 = false := by
  rw [output1774_def]
  conv => lhs; cbv
  try rfl
theorem node1774_eq : Flapjack.WordAlloc.removeDeadStructural input1774 value891 value1 value2 = (output1774, value892, value1) := by
  rw [input1774_def, output1774_def]
  try (conv => lhs; cbv)
  try rfl

def value893 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4393 4389)).val
theorem input1775_def : input1775 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4393 4389) := by
  unfold input1775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4393 4389)).val
theorem output1775_def : output1775 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4393 4389) := by
  unfold output1775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1775_skip : Flapjack.WordAlloc.isSkip output1775 = false := by
  rw [output1775_def]
  conv => lhs; cbv
  try rfl
theorem node1775_eq : Flapjack.WordAlloc.removeDeadStructural input1775 value892 value1 value2 = (output1775, value893, value1) := by
  rw [input1775_def, output1775_def]
  try (conv => lhs; cbv)
  try rfl

def value894 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4389 4385 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1776_def : input1776 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4389 4385 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4389 4385 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1776_def : output1776 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4389 4385 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1776_skip : Flapjack.WordAlloc.isSkip output1776 = false := by
  rw [output1776_def]
  conv => lhs; cbv
  try rfl
theorem node1776_eq : Flapjack.WordAlloc.removeDeadStructural input1776 value893 value1 value2 = (output1776, value894, value1) := by
  rw [input1776_def, output1776_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4385 Flapjack.WordStore.heapLength)).val
theorem input1777_def : input1777 = (Flapjack.WordLangProgHOL.get 4385 Flapjack.WordStore.heapLength) := by
  unfold input1777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4385 Flapjack.WordStore.heapLength)).val
theorem output1777_def : output1777 = (Flapjack.WordLangProgHOL.get 4385 Flapjack.WordStore.heapLength) := by
  unfold output1777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1777_skip : Flapjack.WordAlloc.isSkip output1777 = false := by
  rw [output1777_def]
  conv => lhs; cbv
  try rfl
theorem node1777_eq : Flapjack.WordAlloc.removeDeadStructural input1777 value894 value1 value2 = (output1777, value5, value1) := by
  rw [input1777_def, output1777_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1777 input1776)).val
theorem input1778_def : input1778 = (.seq input1777 input1776) := by
  unfold input1778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1777 output1776)).val
theorem output1778_def : output1778 = (.seq output1777 output1776) := by
  unfold output1778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1778_skip : Flapjack.WordAlloc.isSkip output1778 = false := by
  rw [output1778_def]
  conv => lhs; cbv
  try rfl
theorem node1778_eq : Flapjack.WordAlloc.removeDeadStructural input1778 value893 value1 value2 = (output1778, value5, value1) := by
  rw [input1778_def, output1778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1776_eq]
  try dsimp only
  rw [node1777_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1778 input1775)).val
theorem input1779_def : input1779 = (.seq input1778 input1775) := by
  unfold input1779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1778 output1775)).val
theorem output1779_def : output1779 = (.seq output1778 output1775) := by
  unfold output1779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1779_skip : Flapjack.WordAlloc.isSkip output1779 = false := by
  rw [output1779_def]
  conv => lhs; cbv
  try rfl
theorem node1779_eq : Flapjack.WordAlloc.removeDeadStructural input1779 value892 value1 value2 = (output1779, value5, value1) := by
  rw [input1779_def, output1779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1775_eq]
  try dsimp only
  rw [node1778_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1779 input1774)).val
theorem input1780_def : input1780 = (.seq input1779 input1774) := by
  unfold input1780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1779 output1774)).val
theorem output1780_def : output1780 = (.seq output1779 output1774) := by
  unfold output1780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1780_skip : Flapjack.WordAlloc.isSkip output1780 = false := by
  rw [output1780_def]
  conv => lhs; cbv
  try rfl
theorem node1780_eq : Flapjack.WordAlloc.removeDeadStructural input1780 value891 value1 value2 = (output1780, value5, value1) := by
  rw [input1780_def, output1780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1774_eq]
  try dsimp only
  rw [node1779_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1780 input1773)).val
theorem input1781_def : input1781 = (.seq input1780 input1773) := by
  unfold input1781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1780 output1773)).val
theorem output1781_def : output1781 = (.seq output1780 output1773) := by
  unfold output1781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1781_skip : Flapjack.WordAlloc.isSkip output1781 = false := by
  rw [output1781_def]
  conv => lhs; cbv
  try rfl
theorem node1781_eq : Flapjack.WordAlloc.removeDeadStructural input1781 value890 value1 value2 = (output1781, value5, value1) := by
  rw [input1781_def, output1781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1773_eq]
  try dsimp only
  rw [node1780_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value895 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4377 (Flapjack.WordLangAddr.addr 4381 0#64)))).val
theorem input1782_def : input1782 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4377 (Flapjack.WordLangAddr.addr 4381 0#64))) := by
  unfold input1782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4377 (Flapjack.WordLangAddr.addr 4381 0#64)))).val
theorem output1782_def : output1782 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4377 (Flapjack.WordLangAddr.addr 4381 0#64))) := by
  unfold output1782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1782_skip : Flapjack.WordAlloc.isSkip output1782 = false := by
  rw [output1782_def]
  conv => lhs; cbv
  try rfl
theorem node1782_eq : Flapjack.WordAlloc.removeDeadStructural input1782 value5 value1 value2 = (output1782, value895, value1) := by
  rw [input1782_def, output1782_def]
  try (conv => lhs; cbv)
  try rfl

def value896 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4381, 4369)])).val
theorem input1783_def : input1783 = (Flapjack.WordLangProgHOL.move 0 [(4381, 4369)]) := by
  unfold input1783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4381, 4369)])).val
theorem output1783_def : output1783 = (Flapjack.WordLangProgHOL.move 0 [(4381, 4369)]) := by
  unfold output1783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1783_skip : Flapjack.WordAlloc.isSkip output1783 = false := by
  rw [output1783_def]
  conv => lhs; cbv
  try rfl
theorem node1783_eq : Flapjack.WordAlloc.removeDeadStructural input1783 value895 value1 value2 = (output1783, value896, value1) := by
  rw [input1783_def, output1783_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1783 input1782)).val
theorem input1784_def : input1784 = (.seq input1783 input1782) := by
  unfold input1784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1783 output1782)).val
theorem output1784_def : output1784 = (.seq output1783 output1782) := by
  unfold output1784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1784_skip : Flapjack.WordAlloc.isSkip output1784 = false := by
  rw [output1784_def]
  conv => lhs; cbv
  try rfl
theorem node1784_eq : Flapjack.WordAlloc.removeDeadStructural input1784 value5 value1 value2 = (output1784, value896, value1) := by
  rw [input1784_def, output1784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1782_eq]
  try dsimp only
  rw [node1783_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value897 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4377 13682468819463763654#64))).val
theorem input1785_def : input1785 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4377 13682468819463763654#64)) := by
  unfold input1785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4377 13682468819463763654#64))).val
theorem output1785_def : output1785 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4377 13682468819463763654#64)) := by
  unfold output1785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1785_skip : Flapjack.WordAlloc.isSkip output1785 = false := by
  rw [output1785_def]
  conv => lhs; cbv
  try rfl
theorem node1785_eq : Flapjack.WordAlloc.removeDeadStructural input1785 value896 value1 value2 = (output1785, value897, value1) := by
  rw [input1785_def, output1785_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4373 13682468819463763654#64))).val
theorem input1786_def : input1786 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4373 13682468819463763654#64)) := by
  unfold input1786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1786_def : output1786 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1786_skip : Flapjack.WordAlloc.isSkip output1786 = true := by
  rw [output1786_def]
  conv => lhs; cbv
  try rfl
theorem node1786_eq : Flapjack.WordAlloc.removeDeadStructural input1786 value897 value1 value2 = (output1786, value897, value1) := by
  rw [input1786_def, output1786_def]
  try (conv => lhs; cbv)
  try rfl

def value898 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4369 4365 (Flapjack.WordRegImm.imm 1024#64))))).val
theorem input1787_def : input1787 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4369 4365 (Flapjack.WordRegImm.imm 1024#64)))) := by
  unfold input1787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4369 4365 (Flapjack.WordRegImm.imm 1024#64))))).val
theorem output1787_def : output1787 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4369 4365 (Flapjack.WordRegImm.imm 1024#64)))) := by
  unfold output1787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1787_skip : Flapjack.WordAlloc.isSkip output1787 = false := by
  rw [output1787_def]
  conv => lhs; cbv
  try rfl
theorem node1787_eq : Flapjack.WordAlloc.removeDeadStructural input1787 value897 value1 value2 = (output1787, value898, value1) := by
  rw [input1787_def, output1787_def]
  try (conv => lhs; cbv)
  try rfl

def value899 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4365 (Flapjack.WordLangAddr.addr 4361 18446744073709551520#64)))).val
theorem input1788_def : input1788 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4365 (Flapjack.WordLangAddr.addr 4361 18446744073709551520#64))) := by
  unfold input1788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4365 (Flapjack.WordLangAddr.addr 4361 18446744073709551520#64)))).val
theorem output1788_def : output1788 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4365 (Flapjack.WordLangAddr.addr 4361 18446744073709551520#64))) := by
  unfold output1788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1788_skip : Flapjack.WordAlloc.isSkip output1788 = false := by
  rw [output1788_def]
  conv => lhs; cbv
  try rfl
theorem node1788_eq : Flapjack.WordAlloc.removeDeadStructural input1788 value898 value1 value2 = (output1788, value899, value1) := by
  rw [input1788_def, output1788_def]
  try (conv => lhs; cbv)
  try rfl

def value900 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4361 4357)).val
theorem input1789_def : input1789 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4361 4357) := by
  unfold input1789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4361 4357)).val
theorem output1789_def : output1789 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4361 4357) := by
  unfold output1789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1789_skip : Flapjack.WordAlloc.isSkip output1789 = false := by
  rw [output1789_def]
  conv => lhs; cbv
  try rfl
theorem node1789_eq : Flapjack.WordAlloc.removeDeadStructural input1789 value899 value1 value2 = (output1789, value900, value1) := by
  rw [input1789_def, output1789_def]
  try (conv => lhs; cbv)
  try rfl

def value901 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4357 4353 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1790_def : input1790 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4357 4353 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4357 4353 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1790_def : output1790 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4357 4353 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1790_skip : Flapjack.WordAlloc.isSkip output1790 = false := by
  rw [output1790_def]
  conv => lhs; cbv
  try rfl
theorem node1790_eq : Flapjack.WordAlloc.removeDeadStructural input1790 value900 value1 value2 = (output1790, value901, value1) := by
  rw [input1790_def, output1790_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4353 Flapjack.WordStore.heapLength)).val
theorem input1791_def : input1791 = (Flapjack.WordLangProgHOL.get 4353 Flapjack.WordStore.heapLength) := by
  unfold input1791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 4353 Flapjack.WordStore.heapLength)).val
theorem output1791_def : output1791 = (Flapjack.WordLangProgHOL.get 4353 Flapjack.WordStore.heapLength) := by
  unfold output1791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1791_skip : Flapjack.WordAlloc.isSkip output1791 = false := by
  rw [output1791_def]
  conv => lhs; cbv
  try rfl
theorem node1791_eq : Flapjack.WordAlloc.removeDeadStructural input1791 value901 value1 value2 = (output1791, value5, value1) := by
  rw [input1791_def, output1791_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node1791_eq
end InitECandidate.Proofs.DeadStages240
