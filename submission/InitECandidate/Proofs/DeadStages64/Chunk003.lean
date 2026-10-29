import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages64.Chunk002
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
@[irreducible, cbv_opaque] def input768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input767 input766)).val
theorem input768_def : input768 = (.seq input767 input766) := by
  unfold input768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output767 output766)).val
theorem output768_def : output768 = (.seq output767 output766) := by
  unfold output768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output768_skip : Flapjack.WordAlloc.isSkip output768 = false := by
  rw [output768_def]
  kernel_rfl
theorem node768_eq : Flapjack.WordAlloc.removeDeadStructural input768 value387 value1 value2 = (output768, value4, value1) := by
  rw [input768_def, output768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node766_eq]
  dsimp only
  rw [node767_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output766_skip, output767_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input768 input765)).val
theorem input769_def : input769 = (.seq input768 input765) := by
  unfold input769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output768 output765)).val
theorem output769_def : output769 = (.seq output768 output765) := by
  unfold output769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output769_skip : Flapjack.WordAlloc.isSkip output769 = false := by
  rw [output769_def]
  kernel_rfl
theorem node769_eq : Flapjack.WordAlloc.removeDeadStructural input769 value386 value1 value2 = (output769, value4, value1) := by
  rw [input769_def, output769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node765_eq]
  dsimp only
  rw [node768_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output765_skip, output768_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input769 input764)).val
theorem input770_def : input770 = (.seq input769 input764) := by
  unfold input770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output769 output764)).val
theorem output770_def : output770 = (.seq output769 output764) := by
  unfold output770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output770_skip : Flapjack.WordAlloc.isSkip output770 = false := by
  rw [output770_def]
  kernel_rfl
theorem node770_eq : Flapjack.WordAlloc.removeDeadStructural input770 value385 value1 value2 = (output770, value4, value1) := by
  rw [input770_def, output770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node764_eq]
  dsimp only
  rw [node769_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output764_skip, output769_skip]
  kernel_rfl

def value389 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 817 (Flapjack.WordLangAddr.addr 821 0#64)))).val
theorem input771_def : input771 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 817 (Flapjack.WordLangAddr.addr 821 0#64))) := by
  unfold input771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 817 (Flapjack.WordLangAddr.addr 821 0#64)))).val
theorem output771_def : output771 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 817 (Flapjack.WordLangAddr.addr 821 0#64))) := by
  unfold output771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output771_skip : Flapjack.WordAlloc.isSkip output771 = false := by
  rw [output771_def]
  kernel_rfl
theorem node771_eq : Flapjack.WordAlloc.removeDeadStructural input771 value4 value1 value2 = (output771, value389, value1) := by
  rw [input771_def, output771_def]
  kernel_rfl

def value390 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(821, 809)])).val
theorem input772_def : input772 = (Flapjack.WordLangProgHOL.move 0 [(821, 809)]) := by
  unfold input772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(821, 809)])).val
theorem output772_def : output772 = (Flapjack.WordLangProgHOL.move 0 [(821, 809)]) := by
  unfold output772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output772_skip : Flapjack.WordAlloc.isSkip output772 = false := by
  rw [output772_def]
  kernel_rfl
theorem node772_eq : Flapjack.WordAlloc.removeDeadStructural input772 value389 value1 value2 = (output772, value390, value1) := by
  rw [input772_def, output772_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input772 input771)).val
theorem input773_def : input773 = (.seq input772 input771) := by
  unfold input773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output772 output771)).val
theorem output773_def : output773 = (.seq output772 output771) := by
  unfold output773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output773_skip : Flapjack.WordAlloc.isSkip output773 = false := by
  rw [output773_def]
  kernel_rfl
theorem node773_eq : Flapjack.WordAlloc.removeDeadStructural input773 value4 value1 value2 = (output773, value390, value1) := by
  rw [input773_def, output773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node771_eq]
  dsimp only
  rw [node772_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output771_skip, output772_skip]
  kernel_rfl

def value391 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 817 0#64))).val
theorem input774_def : input774 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 817 0#64)) := by
  unfold input774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 817 0#64))).val
theorem output774_def : output774 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 817 0#64)) := by
  unfold output774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output774_skip : Flapjack.WordAlloc.isSkip output774 = false := by
  rw [output774_def]
  kernel_rfl
theorem node774_eq : Flapjack.WordAlloc.removeDeadStructural input774 value390 value1 value2 = (output774, value391, value1) := by
  rw [input774_def, output774_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 813 0#64))).val
theorem input775_def : input775 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 813 0#64)) := by
  unfold input775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output775_def : output775 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output775_skip : Flapjack.WordAlloc.isSkip output775 = true := by
  rw [output775_def]
  kernel_rfl
theorem node775_eq : Flapjack.WordAlloc.removeDeadStructural input775 value391 value1 value2 = (output775, value391, value1) := by
  rw [input775_def, output775_def]
  kernel_rfl

def value392 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 809 805 (Flapjack.WordRegImm.imm 18446744073709551384#64))))).val
theorem input776_def : input776 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 809 805 (Flapjack.WordRegImm.imm 18446744073709551384#64)))) := by
  unfold input776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 809 805 (Flapjack.WordRegImm.imm 18446744073709551384#64))))).val
theorem output776_def : output776 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 809 805 (Flapjack.WordRegImm.imm 18446744073709551384#64)))) := by
  unfold output776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output776_skip : Flapjack.WordAlloc.isSkip output776 = false := by
  rw [output776_def]
  kernel_rfl
theorem node776_eq : Flapjack.WordAlloc.removeDeadStructural input776 value391 value1 value2 = (output776, value392, value1) := by
  rw [input776_def, output776_def]
  kernel_rfl

def value393 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 805 801)).val
theorem input777_def : input777 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 805 801) := by
  unfold input777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 805 801)).val
theorem output777_def : output777 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 805 801) := by
  unfold output777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output777_skip : Flapjack.WordAlloc.isSkip output777 = false := by
  rw [output777_def]
  kernel_rfl
theorem node777_eq : Flapjack.WordAlloc.removeDeadStructural input777 value392 value1 value2 = (output777, value393, value1) := by
  rw [input777_def, output777_def]
  kernel_rfl

def value394 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 801 797 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input778_def : input778 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 801 797 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 801 797 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output778_def : output778 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 801 797 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output778_skip : Flapjack.WordAlloc.isSkip output778 = false := by
  rw [output778_def]
  kernel_rfl
theorem node778_eq : Flapjack.WordAlloc.removeDeadStructural input778 value393 value1 value2 = (output778, value394, value1) := by
  rw [input778_def, output778_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 797 Flapjack.WordStore.heapLength)).val
theorem input779_def : input779 = (Flapjack.WordLangProgHOL.get 797 Flapjack.WordStore.heapLength) := by
  unfold input779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 797 Flapjack.WordStore.heapLength)).val
theorem output779_def : output779 = (Flapjack.WordLangProgHOL.get 797 Flapjack.WordStore.heapLength) := by
  unfold output779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output779_skip : Flapjack.WordAlloc.isSkip output779 = false := by
  rw [output779_def]
  kernel_rfl
theorem node779_eq : Flapjack.WordAlloc.removeDeadStructural input779 value394 value1 value2 = (output779, value4, value1) := by
  rw [input779_def, output779_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input779 input778)).val
theorem input780_def : input780 = (.seq input779 input778) := by
  unfold input780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output779 output778)).val
theorem output780_def : output780 = (.seq output779 output778) := by
  unfold output780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output780_skip : Flapjack.WordAlloc.isSkip output780 = false := by
  rw [output780_def]
  kernel_rfl
theorem node780_eq : Flapjack.WordAlloc.removeDeadStructural input780 value393 value1 value2 = (output780, value4, value1) := by
  rw [input780_def, output780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node778_eq]
  dsimp only
  rw [node779_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output778_skip, output779_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input780 input777)).val
theorem input781_def : input781 = (.seq input780 input777) := by
  unfold input781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output780 output777)).val
theorem output781_def : output781 = (.seq output780 output777) := by
  unfold output781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output781_skip : Flapjack.WordAlloc.isSkip output781 = false := by
  rw [output781_def]
  kernel_rfl
theorem node781_eq : Flapjack.WordAlloc.removeDeadStructural input781 value392 value1 value2 = (output781, value4, value1) := by
  rw [input781_def, output781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node777_eq]
  dsimp only
  rw [node780_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output777_skip, output780_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input781 input776)).val
theorem input782_def : input782 = (.seq input781 input776) := by
  unfold input782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output781 output776)).val
theorem output782_def : output782 = (.seq output781 output776) := by
  unfold output782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output782_skip : Flapjack.WordAlloc.isSkip output782 = false := by
  rw [output782_def]
  kernel_rfl
theorem node782_eq : Flapjack.WordAlloc.removeDeadStructural input782 value391 value1 value2 = (output782, value4, value1) := by
  rw [input782_def, output782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node776_eq]
  dsimp only
  rw [node781_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output776_skip, output781_skip]
  kernel_rfl

def value395 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 789 (Flapjack.WordLangAddr.addr 793 0#64)))).val
theorem input783_def : input783 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 789 (Flapjack.WordLangAddr.addr 793 0#64))) := by
  unfold input783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 789 (Flapjack.WordLangAddr.addr 793 0#64)))).val
theorem output783_def : output783 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 789 (Flapjack.WordLangAddr.addr 793 0#64))) := by
  unfold output783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output783_skip : Flapjack.WordAlloc.isSkip output783 = false := by
  rw [output783_def]
  kernel_rfl
theorem node783_eq : Flapjack.WordAlloc.removeDeadStructural input783 value4 value1 value2 = (output783, value395, value1) := by
  rw [input783_def, output783_def]
  kernel_rfl

def value396 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(793, 781)])).val
theorem input784_def : input784 = (Flapjack.WordLangProgHOL.move 0 [(793, 781)]) := by
  unfold input784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(793, 781)])).val
theorem output784_def : output784 = (Flapjack.WordLangProgHOL.move 0 [(793, 781)]) := by
  unfold output784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output784_skip : Flapjack.WordAlloc.isSkip output784 = false := by
  rw [output784_def]
  kernel_rfl
theorem node784_eq : Flapjack.WordAlloc.removeDeadStructural input784 value395 value1 value2 = (output784, value396, value1) := by
  rw [input784_def, output784_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input784 input783)).val
theorem input785_def : input785 = (.seq input784 input783) := by
  unfold input785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output784 output783)).val
theorem output785_def : output785 = (.seq output784 output783) := by
  unfold output785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output785_skip : Flapjack.WordAlloc.isSkip output785 = false := by
  rw [output785_def]
  kernel_rfl
theorem node785_eq : Flapjack.WordAlloc.removeDeadStructural input785 value4 value1 value2 = (output785, value396, value1) := by
  rw [input785_def, output785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node783_eq]
  dsimp only
  rw [node784_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output783_skip, output784_skip]
  kernel_rfl

def value397 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 789 0#64))).val
theorem input786_def : input786 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 789 0#64)) := by
  unfold input786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 789 0#64))).val
theorem output786_def : output786 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 789 0#64)) := by
  unfold output786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output786_skip : Flapjack.WordAlloc.isSkip output786 = false := by
  rw [output786_def]
  kernel_rfl
theorem node786_eq : Flapjack.WordAlloc.removeDeadStructural input786 value396 value1 value2 = (output786, value397, value1) := by
  rw [input786_def, output786_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 785 0#64))).val
theorem input787_def : input787 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 785 0#64)) := by
  unfold input787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output787_def : output787 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output787_skip : Flapjack.WordAlloc.isSkip output787 = true := by
  rw [output787_def]
  kernel_rfl
theorem node787_eq : Flapjack.WordAlloc.removeDeadStructural input787 value397 value1 value2 = (output787, value397, value1) := by
  rw [input787_def, output787_def]
  kernel_rfl

def value398 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 781 777 (Flapjack.WordRegImm.imm 18446744073709551392#64))))).val
theorem input788_def : input788 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 781 777 (Flapjack.WordRegImm.imm 18446744073709551392#64)))) := by
  unfold input788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 781 777 (Flapjack.WordRegImm.imm 18446744073709551392#64))))).val
theorem output788_def : output788 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 781 777 (Flapjack.WordRegImm.imm 18446744073709551392#64)))) := by
  unfold output788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output788_skip : Flapjack.WordAlloc.isSkip output788 = false := by
  rw [output788_def]
  kernel_rfl
theorem node788_eq : Flapjack.WordAlloc.removeDeadStructural input788 value397 value1 value2 = (output788, value398, value1) := by
  rw [input788_def, output788_def]
  kernel_rfl

def value399 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 777 773)).val
theorem input789_def : input789 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 777 773) := by
  unfold input789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 777 773)).val
theorem output789_def : output789 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 777 773) := by
  unfold output789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output789_skip : Flapjack.WordAlloc.isSkip output789 = false := by
  rw [output789_def]
  kernel_rfl
theorem node789_eq : Flapjack.WordAlloc.removeDeadStructural input789 value398 value1 value2 = (output789, value399, value1) := by
  rw [input789_def, output789_def]
  kernel_rfl

def value400 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 773 769 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input790_def : input790 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 773 769 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 773 769 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output790_def : output790 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 773 769 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output790_skip : Flapjack.WordAlloc.isSkip output790 = false := by
  rw [output790_def]
  kernel_rfl
theorem node790_eq : Flapjack.WordAlloc.removeDeadStructural input790 value399 value1 value2 = (output790, value400, value1) := by
  rw [input790_def, output790_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 769 Flapjack.WordStore.heapLength)).val
theorem input791_def : input791 = (Flapjack.WordLangProgHOL.get 769 Flapjack.WordStore.heapLength) := by
  unfold input791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 769 Flapjack.WordStore.heapLength)).val
theorem output791_def : output791 = (Flapjack.WordLangProgHOL.get 769 Flapjack.WordStore.heapLength) := by
  unfold output791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output791_skip : Flapjack.WordAlloc.isSkip output791 = false := by
  rw [output791_def]
  kernel_rfl
theorem node791_eq : Flapjack.WordAlloc.removeDeadStructural input791 value400 value1 value2 = (output791, value4, value1) := by
  rw [input791_def, output791_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input791 input790)).val
theorem input792_def : input792 = (.seq input791 input790) := by
  unfold input792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output791 output790)).val
theorem output792_def : output792 = (.seq output791 output790) := by
  unfold output792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output792_skip : Flapjack.WordAlloc.isSkip output792 = false := by
  rw [output792_def]
  kernel_rfl
theorem node792_eq : Flapjack.WordAlloc.removeDeadStructural input792 value399 value1 value2 = (output792, value4, value1) := by
  rw [input792_def, output792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node790_eq]
  dsimp only
  rw [node791_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output790_skip, output791_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input792 input789)).val
theorem input793_def : input793 = (.seq input792 input789) := by
  unfold input793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output792 output789)).val
theorem output793_def : output793 = (.seq output792 output789) := by
  unfold output793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output793_skip : Flapjack.WordAlloc.isSkip output793 = false := by
  rw [output793_def]
  kernel_rfl
theorem node793_eq : Flapjack.WordAlloc.removeDeadStructural input793 value398 value1 value2 = (output793, value4, value1) := by
  rw [input793_def, output793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node789_eq]
  dsimp only
  rw [node792_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output789_skip, output792_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input793 input788)).val
theorem input794_def : input794 = (.seq input793 input788) := by
  unfold input794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output793 output788)).val
theorem output794_def : output794 = (.seq output793 output788) := by
  unfold output794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output794_skip : Flapjack.WordAlloc.isSkip output794 = false := by
  rw [output794_def]
  kernel_rfl
theorem node794_eq : Flapjack.WordAlloc.removeDeadStructural input794 value397 value1 value2 = (output794, value4, value1) := by
  rw [input794_def, output794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node788_eq]
  dsimp only
  rw [node793_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output788_skip, output793_skip]
  kernel_rfl

def value401 : Flapjack.NumSet :=
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
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 761 (Flapjack.WordLangAddr.addr 765 0#64)))).val
theorem input795_def : input795 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 761 (Flapjack.WordLangAddr.addr 765 0#64))) := by
  unfold input795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 761 (Flapjack.WordLangAddr.addr 765 0#64)))).val
theorem output795_def : output795 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 761 (Flapjack.WordLangAddr.addr 765 0#64))) := by
  unfold output795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output795_skip : Flapjack.WordAlloc.isSkip output795 = false := by
  rw [output795_def]
  kernel_rfl
theorem node795_eq : Flapjack.WordAlloc.removeDeadStructural input795 value4 value1 value2 = (output795, value401, value1) := by
  rw [input795_def, output795_def]
  kernel_rfl

def value402 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(765, 753)])).val
theorem input796_def : input796 = (Flapjack.WordLangProgHOL.move 0 [(765, 753)]) := by
  unfold input796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(765, 753)])).val
theorem output796_def : output796 = (Flapjack.WordLangProgHOL.move 0 [(765, 753)]) := by
  unfold output796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output796_skip : Flapjack.WordAlloc.isSkip output796 = false := by
  rw [output796_def]
  kernel_rfl
theorem node796_eq : Flapjack.WordAlloc.removeDeadStructural input796 value401 value1 value2 = (output796, value402, value1) := by
  rw [input796_def, output796_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input796 input795)).val
theorem input797_def : input797 = (.seq input796 input795) := by
  unfold input797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output796 output795)).val
theorem output797_def : output797 = (.seq output796 output795) := by
  unfold output797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output797_skip : Flapjack.WordAlloc.isSkip output797 = false := by
  rw [output797_def]
  kernel_rfl
theorem node797_eq : Flapjack.WordAlloc.removeDeadStructural input797 value4 value1 value2 = (output797, value402, value1) := by
  rw [input797_def, output797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node795_eq]
  dsimp only
  rw [node796_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output795_skip, output796_skip]
  kernel_rfl

def value403 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 761 0#64))).val
theorem input798_def : input798 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 761 0#64)) := by
  unfold input798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 761 0#64))).val
theorem output798_def : output798 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 761 0#64)) := by
  unfold output798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output798_skip : Flapjack.WordAlloc.isSkip output798 = false := by
  rw [output798_def]
  kernel_rfl
theorem node798_eq : Flapjack.WordAlloc.removeDeadStructural input798 value402 value1 value2 = (output798, value403, value1) := by
  rw [input798_def, output798_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 757 0#64))).val
theorem input799_def : input799 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 757 0#64)) := by
  unfold input799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output799_def : output799 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output799_skip : Flapjack.WordAlloc.isSkip output799 = true := by
  rw [output799_def]
  kernel_rfl
theorem node799_eq : Flapjack.WordAlloc.removeDeadStructural input799 value403 value1 value2 = (output799, value403, value1) := by
  rw [input799_def, output799_def]
  kernel_rfl

def value404 : Flapjack.NumSet :=
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
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 753 749 (Flapjack.WordRegImm.imm 18446744073709551400#64))))).val
theorem input800_def : input800 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 753 749 (Flapjack.WordRegImm.imm 18446744073709551400#64)))) := by
  unfold input800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 753 749 (Flapjack.WordRegImm.imm 18446744073709551400#64))))).val
theorem output800_def : output800 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 753 749 (Flapjack.WordRegImm.imm 18446744073709551400#64)))) := by
  unfold output800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output800_skip : Flapjack.WordAlloc.isSkip output800 = false := by
  rw [output800_def]
  kernel_rfl
theorem node800_eq : Flapjack.WordAlloc.removeDeadStructural input800 value403 value1 value2 = (output800, value404, value1) := by
  rw [input800_def, output800_def]
  kernel_rfl

def value405 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 749 745)).val
theorem input801_def : input801 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 749 745) := by
  unfold input801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 749 745)).val
theorem output801_def : output801 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 749 745) := by
  unfold output801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output801_skip : Flapjack.WordAlloc.isSkip output801 = false := by
  rw [output801_def]
  kernel_rfl
theorem node801_eq : Flapjack.WordAlloc.removeDeadStructural input801 value404 value1 value2 = (output801, value405, value1) := by
  rw [input801_def, output801_def]
  kernel_rfl

def value406 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 745 741 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input802_def : input802 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 745 741 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 745 741 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output802_def : output802 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 745 741 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output802_skip : Flapjack.WordAlloc.isSkip output802 = false := by
  rw [output802_def]
  kernel_rfl
theorem node802_eq : Flapjack.WordAlloc.removeDeadStructural input802 value405 value1 value2 = (output802, value406, value1) := by
  rw [input802_def, output802_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 741 Flapjack.WordStore.heapLength)).val
theorem input803_def : input803 = (Flapjack.WordLangProgHOL.get 741 Flapjack.WordStore.heapLength) := by
  unfold input803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 741 Flapjack.WordStore.heapLength)).val
theorem output803_def : output803 = (Flapjack.WordLangProgHOL.get 741 Flapjack.WordStore.heapLength) := by
  unfold output803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output803_skip : Flapjack.WordAlloc.isSkip output803 = false := by
  rw [output803_def]
  kernel_rfl
theorem node803_eq : Flapjack.WordAlloc.removeDeadStructural input803 value406 value1 value2 = (output803, value4, value1) := by
  rw [input803_def, output803_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input803 input802)).val
theorem input804_def : input804 = (.seq input803 input802) := by
  unfold input804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output803 output802)).val
theorem output804_def : output804 = (.seq output803 output802) := by
  unfold output804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output804_skip : Flapjack.WordAlloc.isSkip output804 = false := by
  rw [output804_def]
  kernel_rfl
theorem node804_eq : Flapjack.WordAlloc.removeDeadStructural input804 value405 value1 value2 = (output804, value4, value1) := by
  rw [input804_def, output804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node802_eq]
  dsimp only
  rw [node803_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output802_skip, output803_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input804 input801)).val
theorem input805_def : input805 = (.seq input804 input801) := by
  unfold input805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output804 output801)).val
theorem output805_def : output805 = (.seq output804 output801) := by
  unfold output805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output805_skip : Flapjack.WordAlloc.isSkip output805 = false := by
  rw [output805_def]
  kernel_rfl
theorem node805_eq : Flapjack.WordAlloc.removeDeadStructural input805 value404 value1 value2 = (output805, value4, value1) := by
  rw [input805_def, output805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node801_eq]
  dsimp only
  rw [node804_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output801_skip, output804_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input805 input800)).val
theorem input806_def : input806 = (.seq input805 input800) := by
  unfold input806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output805 output800)).val
theorem output806_def : output806 = (.seq output805 output800) := by
  unfold output806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output806_skip : Flapjack.WordAlloc.isSkip output806 = false := by
  rw [output806_def]
  kernel_rfl
theorem node806_eq : Flapjack.WordAlloc.removeDeadStructural input806 value403 value1 value2 = (output806, value4, value1) := by
  rw [input806_def, output806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node800_eq]
  dsimp only
  rw [node805_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output800_skip, output805_skip]
  kernel_rfl

def value407 : Flapjack.NumSet :=
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
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 733 (Flapjack.WordLangAddr.addr 737 0#64)))).val
theorem input807_def : input807 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 733 (Flapjack.WordLangAddr.addr 737 0#64))) := by
  unfold input807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 733 (Flapjack.WordLangAddr.addr 737 0#64)))).val
theorem output807_def : output807 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 733 (Flapjack.WordLangAddr.addr 737 0#64))) := by
  unfold output807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output807_skip : Flapjack.WordAlloc.isSkip output807 = false := by
  rw [output807_def]
  kernel_rfl
theorem node807_eq : Flapjack.WordAlloc.removeDeadStructural input807 value4 value1 value2 = (output807, value407, value1) := by
  rw [input807_def, output807_def]
  kernel_rfl

def value408 : Flapjack.NumSet :=
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(737, 725)])).val
theorem input808_def : input808 = (Flapjack.WordLangProgHOL.move 0 [(737, 725)]) := by
  unfold input808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(737, 725)])).val
theorem output808_def : output808 = (Flapjack.WordLangProgHOL.move 0 [(737, 725)]) := by
  unfold output808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output808_skip : Flapjack.WordAlloc.isSkip output808 = false := by
  rw [output808_def]
  kernel_rfl
theorem node808_eq : Flapjack.WordAlloc.removeDeadStructural input808 value407 value1 value2 = (output808, value408, value1) := by
  rw [input808_def, output808_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input808 input807)).val
theorem input809_def : input809 = (.seq input808 input807) := by
  unfold input809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output808 output807)).val
theorem output809_def : output809 = (.seq output808 output807) := by
  unfold output809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output809_skip : Flapjack.WordAlloc.isSkip output809 = false := by
  rw [output809_def]
  kernel_rfl
theorem node809_eq : Flapjack.WordAlloc.removeDeadStructural input809 value4 value1 value2 = (output809, value408, value1) := by
  rw [input809_def, output809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node807_eq]
  dsimp only
  rw [node808_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output807_skip, output808_skip]
  kernel_rfl

def value409 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 0#64))).val
theorem input810_def : input810 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 0#64)) := by
  unfold input810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 0#64))).val
theorem output810_def : output810 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 733 0#64)) := by
  unfold output810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output810_skip : Flapjack.WordAlloc.isSkip output810 = false := by
  rw [output810_def]
  kernel_rfl
theorem node810_eq : Flapjack.WordAlloc.removeDeadStructural input810 value408 value1 value2 = (output810, value409, value1) := by
  rw [input810_def, output810_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 729 0#64))).val
theorem input811_def : input811 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 729 0#64)) := by
  unfold input811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output811_def : output811 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output811_skip : Flapjack.WordAlloc.isSkip output811 = true := by
  rw [output811_def]
  kernel_rfl
theorem node811_eq : Flapjack.WordAlloc.removeDeadStructural input811 value409 value1 value2 = (output811, value409, value1) := by
  rw [input811_def, output811_def]
  kernel_rfl

def value410 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 725 721 (Flapjack.WordRegImm.imm 18446744073709551408#64))))).val
theorem input812_def : input812 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 725 721 (Flapjack.WordRegImm.imm 18446744073709551408#64)))) := by
  unfold input812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 725 721 (Flapjack.WordRegImm.imm 18446744073709551408#64))))).val
theorem output812_def : output812 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 725 721 (Flapjack.WordRegImm.imm 18446744073709551408#64)))) := by
  unfold output812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output812_skip : Flapjack.WordAlloc.isSkip output812 = false := by
  rw [output812_def]
  kernel_rfl
theorem node812_eq : Flapjack.WordAlloc.removeDeadStructural input812 value409 value1 value2 = (output812, value410, value1) := by
  rw [input812_def, output812_def]
  kernel_rfl

def value411 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 721 717)).val
theorem input813_def : input813 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 721 717) := by
  unfold input813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 721 717)).val
theorem output813_def : output813 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 721 717) := by
  unfold output813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output813_skip : Flapjack.WordAlloc.isSkip output813 = false := by
  rw [output813_def]
  kernel_rfl
theorem node813_eq : Flapjack.WordAlloc.removeDeadStructural input813 value410 value1 value2 = (output813, value411, value1) := by
  rw [input813_def, output813_def]
  kernel_rfl

def value412 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 717 713 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input814_def : input814 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 717 713 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 717 713 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output814_def : output814 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 717 713 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output814_skip : Flapjack.WordAlloc.isSkip output814 = false := by
  rw [output814_def]
  kernel_rfl
theorem node814_eq : Flapjack.WordAlloc.removeDeadStructural input814 value411 value1 value2 = (output814, value412, value1) := by
  rw [input814_def, output814_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 713 Flapjack.WordStore.heapLength)).val
theorem input815_def : input815 = (Flapjack.WordLangProgHOL.get 713 Flapjack.WordStore.heapLength) := by
  unfold input815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 713 Flapjack.WordStore.heapLength)).val
theorem output815_def : output815 = (Flapjack.WordLangProgHOL.get 713 Flapjack.WordStore.heapLength) := by
  unfold output815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output815_skip : Flapjack.WordAlloc.isSkip output815 = false := by
  rw [output815_def]
  kernel_rfl
theorem node815_eq : Flapjack.WordAlloc.removeDeadStructural input815 value412 value1 value2 = (output815, value4, value1) := by
  rw [input815_def, output815_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input815 input814)).val
theorem input816_def : input816 = (.seq input815 input814) := by
  unfold input816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output815 output814)).val
theorem output816_def : output816 = (.seq output815 output814) := by
  unfold output816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output816_skip : Flapjack.WordAlloc.isSkip output816 = false := by
  rw [output816_def]
  kernel_rfl
theorem node816_eq : Flapjack.WordAlloc.removeDeadStructural input816 value411 value1 value2 = (output816, value4, value1) := by
  rw [input816_def, output816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node814_eq]
  dsimp only
  rw [node815_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output814_skip, output815_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input816 input813)).val
theorem input817_def : input817 = (.seq input816 input813) := by
  unfold input817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output816 output813)).val
theorem output817_def : output817 = (.seq output816 output813) := by
  unfold output817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output817_skip : Flapjack.WordAlloc.isSkip output817 = false := by
  rw [output817_def]
  kernel_rfl
theorem node817_eq : Flapjack.WordAlloc.removeDeadStructural input817 value410 value1 value2 = (output817, value4, value1) := by
  rw [input817_def, output817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node813_eq]
  dsimp only
  rw [node816_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output813_skip, output816_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input817 input812)).val
theorem input818_def : input818 = (.seq input817 input812) := by
  unfold input818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output817 output812)).val
theorem output818_def : output818 = (.seq output817 output812) := by
  unfold output818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output818_skip : Flapjack.WordAlloc.isSkip output818 = false := by
  rw [output818_def]
  kernel_rfl
theorem node818_eq : Flapjack.WordAlloc.removeDeadStructural input818 value409 value1 value2 = (output818, value4, value1) := by
  rw [input818_def, output818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node812_eq]
  dsimp only
  rw [node817_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output812_skip, output817_skip]
  kernel_rfl

def value413 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 705 (Flapjack.WordLangAddr.addr 709 0#64)))).val
theorem input819_def : input819 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 705 (Flapjack.WordLangAddr.addr 709 0#64))) := by
  unfold input819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 705 (Flapjack.WordLangAddr.addr 709 0#64)))).val
theorem output819_def : output819 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 705 (Flapjack.WordLangAddr.addr 709 0#64))) := by
  unfold output819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output819_skip : Flapjack.WordAlloc.isSkip output819 = false := by
  rw [output819_def]
  kernel_rfl
theorem node819_eq : Flapjack.WordAlloc.removeDeadStructural input819 value4 value1 value2 = (output819, value413, value1) := by
  rw [input819_def, output819_def]
  kernel_rfl

def value414 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(709, 697)])).val
theorem input820_def : input820 = (Flapjack.WordLangProgHOL.move 0 [(709, 697)]) := by
  unfold input820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(709, 697)])).val
theorem output820_def : output820 = (Flapjack.WordLangProgHOL.move 0 [(709, 697)]) := by
  unfold output820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output820_skip : Flapjack.WordAlloc.isSkip output820 = false := by
  rw [output820_def]
  kernel_rfl
theorem node820_eq : Flapjack.WordAlloc.removeDeadStructural input820 value413 value1 value2 = (output820, value414, value1) := by
  rw [input820_def, output820_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input820 input819)).val
theorem input821_def : input821 = (.seq input820 input819) := by
  unfold input821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output820 output819)).val
theorem output821_def : output821 = (.seq output820 output819) := by
  unfold output821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output821_skip : Flapjack.WordAlloc.isSkip output821 = false := by
  rw [output821_def]
  kernel_rfl
theorem node821_eq : Flapjack.WordAlloc.removeDeadStructural input821 value4 value1 value2 = (output821, value414, value1) := by
  rw [input821_def, output821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node819_eq]
  dsimp only
  rw [node820_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output819_skip, output820_skip]
  kernel_rfl

def value415 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 705 0#64))).val
theorem input822_def : input822 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 705 0#64)) := by
  unfold input822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 705 0#64))).val
theorem output822_def : output822 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 705 0#64)) := by
  unfold output822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output822_skip : Flapjack.WordAlloc.isSkip output822 = false := by
  rw [output822_def]
  kernel_rfl
theorem node822_eq : Flapjack.WordAlloc.removeDeadStructural input822 value414 value1 value2 = (output822, value415, value1) := by
  rw [input822_def, output822_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 701 0#64))).val
theorem input823_def : input823 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 701 0#64)) := by
  unfold input823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output823_def : output823 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output823_skip : Flapjack.WordAlloc.isSkip output823 = true := by
  rw [output823_def]
  kernel_rfl
theorem node823_eq : Flapjack.WordAlloc.removeDeadStructural input823 value415 value1 value2 = (output823, value415, value1) := by
  rw [input823_def, output823_def]
  kernel_rfl

def value416 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 697 693 (Flapjack.WordRegImm.imm 18446744073709551416#64))))).val
theorem input824_def : input824 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 697 693 (Flapjack.WordRegImm.imm 18446744073709551416#64)))) := by
  unfold input824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 697 693 (Flapjack.WordRegImm.imm 18446744073709551416#64))))).val
theorem output824_def : output824 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 697 693 (Flapjack.WordRegImm.imm 18446744073709551416#64)))) := by
  unfold output824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output824_skip : Flapjack.WordAlloc.isSkip output824 = false := by
  rw [output824_def]
  kernel_rfl
theorem node824_eq : Flapjack.WordAlloc.removeDeadStructural input824 value415 value1 value2 = (output824, value416, value1) := by
  rw [input824_def, output824_def]
  kernel_rfl

def value417 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 693 689)).val
theorem input825_def : input825 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 693 689) := by
  unfold input825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 693 689)).val
theorem output825_def : output825 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 693 689) := by
  unfold output825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output825_skip : Flapjack.WordAlloc.isSkip output825 = false := by
  rw [output825_def]
  kernel_rfl
theorem node825_eq : Flapjack.WordAlloc.removeDeadStructural input825 value416 value1 value2 = (output825, value417, value1) := by
  rw [input825_def, output825_def]
  kernel_rfl

def value418 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 689 685 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input826_def : input826 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 689 685 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 689 685 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output826_def : output826 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 689 685 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output826_skip : Flapjack.WordAlloc.isSkip output826 = false := by
  rw [output826_def]
  kernel_rfl
theorem node826_eq : Flapjack.WordAlloc.removeDeadStructural input826 value417 value1 value2 = (output826, value418, value1) := by
  rw [input826_def, output826_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 685 Flapjack.WordStore.heapLength)).val
theorem input827_def : input827 = (Flapjack.WordLangProgHOL.get 685 Flapjack.WordStore.heapLength) := by
  unfold input827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 685 Flapjack.WordStore.heapLength)).val
theorem output827_def : output827 = (Flapjack.WordLangProgHOL.get 685 Flapjack.WordStore.heapLength) := by
  unfold output827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output827_skip : Flapjack.WordAlloc.isSkip output827 = false := by
  rw [output827_def]
  kernel_rfl
theorem node827_eq : Flapjack.WordAlloc.removeDeadStructural input827 value418 value1 value2 = (output827, value4, value1) := by
  rw [input827_def, output827_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input827 input826)).val
theorem input828_def : input828 = (.seq input827 input826) := by
  unfold input828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output827 output826)).val
theorem output828_def : output828 = (.seq output827 output826) := by
  unfold output828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output828_skip : Flapjack.WordAlloc.isSkip output828 = false := by
  rw [output828_def]
  kernel_rfl
theorem node828_eq : Flapjack.WordAlloc.removeDeadStructural input828 value417 value1 value2 = (output828, value4, value1) := by
  rw [input828_def, output828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node826_eq]
  dsimp only
  rw [node827_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output826_skip, output827_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input828 input825)).val
theorem input829_def : input829 = (.seq input828 input825) := by
  unfold input829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output828 output825)).val
theorem output829_def : output829 = (.seq output828 output825) := by
  unfold output829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output829_skip : Flapjack.WordAlloc.isSkip output829 = false := by
  rw [output829_def]
  kernel_rfl
theorem node829_eq : Flapjack.WordAlloc.removeDeadStructural input829 value416 value1 value2 = (output829, value4, value1) := by
  rw [input829_def, output829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node825_eq]
  dsimp only
  rw [node828_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output825_skip, output828_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input829 input824)).val
theorem input830_def : input830 = (.seq input829 input824) := by
  unfold input830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output829 output824)).val
theorem output830_def : output830 = (.seq output829 output824) := by
  unfold output830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output830_skip : Flapjack.WordAlloc.isSkip output830 = false := by
  rw [output830_def]
  kernel_rfl
theorem node830_eq : Flapjack.WordAlloc.removeDeadStructural input830 value415 value1 value2 = (output830, value4, value1) := by
  rw [input830_def, output830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node824_eq]
  dsimp only
  rw [node829_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output824_skip, output829_skip]
  kernel_rfl

def value419 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 677 (Flapjack.WordLangAddr.addr 681 0#64)))).val
theorem input831_def : input831 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 677 (Flapjack.WordLangAddr.addr 681 0#64))) := by
  unfold input831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 677 (Flapjack.WordLangAddr.addr 681 0#64)))).val
theorem output831_def : output831 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 677 (Flapjack.WordLangAddr.addr 681 0#64))) := by
  unfold output831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output831_skip : Flapjack.WordAlloc.isSkip output831 = false := by
  rw [output831_def]
  kernel_rfl
theorem node831_eq : Flapjack.WordAlloc.removeDeadStructural input831 value4 value1 value2 = (output831, value419, value1) := by
  rw [input831_def, output831_def]
  kernel_rfl

def value420 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(681, 669)])).val
theorem input832_def : input832 = (Flapjack.WordLangProgHOL.move 0 [(681, 669)]) := by
  unfold input832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(681, 669)])).val
theorem output832_def : output832 = (Flapjack.WordLangProgHOL.move 0 [(681, 669)]) := by
  unfold output832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output832_skip : Flapjack.WordAlloc.isSkip output832 = false := by
  rw [output832_def]
  kernel_rfl
theorem node832_eq : Flapjack.WordAlloc.removeDeadStructural input832 value419 value1 value2 = (output832, value420, value1) := by
  rw [input832_def, output832_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input832 input831)).val
theorem input833_def : input833 = (.seq input832 input831) := by
  unfold input833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output832 output831)).val
theorem output833_def : output833 = (.seq output832 output831) := by
  unfold output833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output833_skip : Flapjack.WordAlloc.isSkip output833 = false := by
  rw [output833_def]
  kernel_rfl
theorem node833_eq : Flapjack.WordAlloc.removeDeadStructural input833 value4 value1 value2 = (output833, value420, value1) := by
  rw [input833_def, output833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node831_eq]
  dsimp only
  rw [node832_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output831_skip, output832_skip]
  kernel_rfl

def value421 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 677 0#64))).val
theorem input834_def : input834 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 677 0#64)) := by
  unfold input834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 677 0#64))).val
theorem output834_def : output834 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 677 0#64)) := by
  unfold output834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output834_skip : Flapjack.WordAlloc.isSkip output834 = false := by
  rw [output834_def]
  kernel_rfl
theorem node834_eq : Flapjack.WordAlloc.removeDeadStructural input834 value420 value1 value2 = (output834, value421, value1) := by
  rw [input834_def, output834_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 673 0#64))).val
theorem input835_def : input835 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 673 0#64)) := by
  unfold input835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output835_def : output835 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output835_skip : Flapjack.WordAlloc.isSkip output835 = true := by
  rw [output835_def]
  kernel_rfl
theorem node835_eq : Flapjack.WordAlloc.removeDeadStructural input835 value421 value1 value2 = (output835, value421, value1) := by
  rw [input835_def, output835_def]
  kernel_rfl

def value422 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 669 665 (Flapjack.WordRegImm.imm 18446744073709551424#64))))).val
theorem input836_def : input836 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 669 665 (Flapjack.WordRegImm.imm 18446744073709551424#64)))) := by
  unfold input836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 669 665 (Flapjack.WordRegImm.imm 18446744073709551424#64))))).val
theorem output836_def : output836 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 669 665 (Flapjack.WordRegImm.imm 18446744073709551424#64)))) := by
  unfold output836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output836_skip : Flapjack.WordAlloc.isSkip output836 = false := by
  rw [output836_def]
  kernel_rfl
theorem node836_eq : Flapjack.WordAlloc.removeDeadStructural input836 value421 value1 value2 = (output836, value422, value1) := by
  rw [input836_def, output836_def]
  kernel_rfl

def value423 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 665 661)).val
theorem input837_def : input837 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 665 661) := by
  unfold input837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 665 661)).val
theorem output837_def : output837 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 665 661) := by
  unfold output837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output837_skip : Flapjack.WordAlloc.isSkip output837 = false := by
  rw [output837_def]
  kernel_rfl
theorem node837_eq : Flapjack.WordAlloc.removeDeadStructural input837 value422 value1 value2 = (output837, value423, value1) := by
  rw [input837_def, output837_def]
  kernel_rfl

def value424 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 661 657 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input838_def : input838 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 661 657 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 661 657 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output838_def : output838 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 661 657 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output838_skip : Flapjack.WordAlloc.isSkip output838 = false := by
  rw [output838_def]
  kernel_rfl
theorem node838_eq : Flapjack.WordAlloc.removeDeadStructural input838 value423 value1 value2 = (output838, value424, value1) := by
  rw [input838_def, output838_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 657 Flapjack.WordStore.heapLength)).val
theorem input839_def : input839 = (Flapjack.WordLangProgHOL.get 657 Flapjack.WordStore.heapLength) := by
  unfold input839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 657 Flapjack.WordStore.heapLength)).val
theorem output839_def : output839 = (Flapjack.WordLangProgHOL.get 657 Flapjack.WordStore.heapLength) := by
  unfold output839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output839_skip : Flapjack.WordAlloc.isSkip output839 = false := by
  rw [output839_def]
  kernel_rfl
theorem node839_eq : Flapjack.WordAlloc.removeDeadStructural input839 value424 value1 value2 = (output839, value4, value1) := by
  rw [input839_def, output839_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input839 input838)).val
theorem input840_def : input840 = (.seq input839 input838) := by
  unfold input840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output839 output838)).val
theorem output840_def : output840 = (.seq output839 output838) := by
  unfold output840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output840_skip : Flapjack.WordAlloc.isSkip output840 = false := by
  rw [output840_def]
  kernel_rfl
theorem node840_eq : Flapjack.WordAlloc.removeDeadStructural input840 value423 value1 value2 = (output840, value4, value1) := by
  rw [input840_def, output840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node838_eq]
  dsimp only
  rw [node839_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output838_skip, output839_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input840 input837)).val
theorem input841_def : input841 = (.seq input840 input837) := by
  unfold input841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output840 output837)).val
theorem output841_def : output841 = (.seq output840 output837) := by
  unfold output841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output841_skip : Flapjack.WordAlloc.isSkip output841 = false := by
  rw [output841_def]
  kernel_rfl
theorem node841_eq : Flapjack.WordAlloc.removeDeadStructural input841 value422 value1 value2 = (output841, value4, value1) := by
  rw [input841_def, output841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node837_eq]
  dsimp only
  rw [node840_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output837_skip, output840_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input841 input836)).val
theorem input842_def : input842 = (.seq input841 input836) := by
  unfold input842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output841 output836)).val
theorem output842_def : output842 = (.seq output841 output836) := by
  unfold output842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output842_skip : Flapjack.WordAlloc.isSkip output842 = false := by
  rw [output842_def]
  kernel_rfl
theorem node842_eq : Flapjack.WordAlloc.removeDeadStructural input842 value421 value1 value2 = (output842, value4, value1) := by
  rw [input842_def, output842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node836_eq]
  dsimp only
  rw [node841_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output836_skip, output841_skip]
  kernel_rfl

def value425 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 649 (Flapjack.WordLangAddr.addr 653 0#64)))).val
theorem input843_def : input843 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 649 (Flapjack.WordLangAddr.addr 653 0#64))) := by
  unfold input843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 649 (Flapjack.WordLangAddr.addr 653 0#64)))).val
theorem output843_def : output843 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 649 (Flapjack.WordLangAddr.addr 653 0#64))) := by
  unfold output843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output843_skip : Flapjack.WordAlloc.isSkip output843 = false := by
  rw [output843_def]
  kernel_rfl
theorem node843_eq : Flapjack.WordAlloc.removeDeadStructural input843 value4 value1 value2 = (output843, value425, value1) := by
  rw [input843_def, output843_def]
  kernel_rfl

def value426 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(653, 641)])).val
theorem input844_def : input844 = (Flapjack.WordLangProgHOL.move 0 [(653, 641)]) := by
  unfold input844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(653, 641)])).val
theorem output844_def : output844 = (Flapjack.WordLangProgHOL.move 0 [(653, 641)]) := by
  unfold output844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output844_skip : Flapjack.WordAlloc.isSkip output844 = false := by
  rw [output844_def]
  kernel_rfl
theorem node844_eq : Flapjack.WordAlloc.removeDeadStructural input844 value425 value1 value2 = (output844, value426, value1) := by
  rw [input844_def, output844_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input844 input843)).val
theorem input845_def : input845 = (.seq input844 input843) := by
  unfold input845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output844 output843)).val
theorem output845_def : output845 = (.seq output844 output843) := by
  unfold output845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output845_skip : Flapjack.WordAlloc.isSkip output845 = false := by
  rw [output845_def]
  kernel_rfl
theorem node845_eq : Flapjack.WordAlloc.removeDeadStructural input845 value4 value1 value2 = (output845, value426, value1) := by
  rw [input845_def, output845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node843_eq]
  dsimp only
  rw [node844_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output843_skip, output844_skip]
  kernel_rfl

def value427 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 649 0#64))).val
theorem input846_def : input846 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 649 0#64)) := by
  unfold input846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 649 0#64))).val
theorem output846_def : output846 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 649 0#64)) := by
  unfold output846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output846_skip : Flapjack.WordAlloc.isSkip output846 = false := by
  rw [output846_def]
  kernel_rfl
theorem node846_eq : Flapjack.WordAlloc.removeDeadStructural input846 value426 value1 value2 = (output846, value427, value1) := by
  rw [input846_def, output846_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 645 0#64))).val
theorem input847_def : input847 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 645 0#64)) := by
  unfold input847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output847_def : output847 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output847_skip : Flapjack.WordAlloc.isSkip output847 = true := by
  rw [output847_def]
  kernel_rfl
theorem node847_eq : Flapjack.WordAlloc.removeDeadStructural input847 value427 value1 value2 = (output847, value427, value1) := by
  rw [input847_def, output847_def]
  kernel_rfl

def value428 : Flapjack.NumSet :=
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
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 641 637 (Flapjack.WordRegImm.imm 18446744073709551432#64))))).val
theorem input848_def : input848 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 641 637 (Flapjack.WordRegImm.imm 18446744073709551432#64)))) := by
  unfold input848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 641 637 (Flapjack.WordRegImm.imm 18446744073709551432#64))))).val
theorem output848_def : output848 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 641 637 (Flapjack.WordRegImm.imm 18446744073709551432#64)))) := by
  unfold output848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output848_skip : Flapjack.WordAlloc.isSkip output848 = false := by
  rw [output848_def]
  kernel_rfl
theorem node848_eq : Flapjack.WordAlloc.removeDeadStructural input848 value427 value1 value2 = (output848, value428, value1) := by
  rw [input848_def, output848_def]
  kernel_rfl

def value429 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 637 633)).val
theorem input849_def : input849 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 637 633) := by
  unfold input849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 637 633)).val
theorem output849_def : output849 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 637 633) := by
  unfold output849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output849_skip : Flapjack.WordAlloc.isSkip output849 = false := by
  rw [output849_def]
  kernel_rfl
theorem node849_eq : Flapjack.WordAlloc.removeDeadStructural input849 value428 value1 value2 = (output849, value429, value1) := by
  rw [input849_def, output849_def]
  kernel_rfl

def value430 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 633 629 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input850_def : input850 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 633 629 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 633 629 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output850_def : output850 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 633 629 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output850_skip : Flapjack.WordAlloc.isSkip output850 = false := by
  rw [output850_def]
  kernel_rfl
theorem node850_eq : Flapjack.WordAlloc.removeDeadStructural input850 value429 value1 value2 = (output850, value430, value1) := by
  rw [input850_def, output850_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 629 Flapjack.WordStore.heapLength)).val
theorem input851_def : input851 = (Flapjack.WordLangProgHOL.get 629 Flapjack.WordStore.heapLength) := by
  unfold input851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 629 Flapjack.WordStore.heapLength)).val
theorem output851_def : output851 = (Flapjack.WordLangProgHOL.get 629 Flapjack.WordStore.heapLength) := by
  unfold output851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output851_skip : Flapjack.WordAlloc.isSkip output851 = false := by
  rw [output851_def]
  kernel_rfl
theorem node851_eq : Flapjack.WordAlloc.removeDeadStructural input851 value430 value1 value2 = (output851, value4, value1) := by
  rw [input851_def, output851_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input851 input850)).val
theorem input852_def : input852 = (.seq input851 input850) := by
  unfold input852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output851 output850)).val
theorem output852_def : output852 = (.seq output851 output850) := by
  unfold output852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output852_skip : Flapjack.WordAlloc.isSkip output852 = false := by
  rw [output852_def]
  kernel_rfl
theorem node852_eq : Flapjack.WordAlloc.removeDeadStructural input852 value429 value1 value2 = (output852, value4, value1) := by
  rw [input852_def, output852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node850_eq]
  dsimp only
  rw [node851_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output850_skip, output851_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input852 input849)).val
theorem input853_def : input853 = (.seq input852 input849) := by
  unfold input853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output852 output849)).val
theorem output853_def : output853 = (.seq output852 output849) := by
  unfold output853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output853_skip : Flapjack.WordAlloc.isSkip output853 = false := by
  rw [output853_def]
  kernel_rfl
theorem node853_eq : Flapjack.WordAlloc.removeDeadStructural input853 value428 value1 value2 = (output853, value4, value1) := by
  rw [input853_def, output853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node849_eq]
  dsimp only
  rw [node852_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output849_skip, output852_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input853 input848)).val
theorem input854_def : input854 = (.seq input853 input848) := by
  unfold input854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output853 output848)).val
theorem output854_def : output854 = (.seq output853 output848) := by
  unfold output854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output854_skip : Flapjack.WordAlloc.isSkip output854 = false := by
  rw [output854_def]
  kernel_rfl
theorem node854_eq : Flapjack.WordAlloc.removeDeadStructural input854 value427 value1 value2 = (output854, value4, value1) := by
  rw [input854_def, output854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node848_eq]
  dsimp only
  rw [node853_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output848_skip, output853_skip]
  kernel_rfl

def value431 : Flapjack.NumSet :=
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
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 621 (Flapjack.WordLangAddr.addr 625 0#64)))).val
theorem input855_def : input855 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 621 (Flapjack.WordLangAddr.addr 625 0#64))) := by
  unfold input855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 621 (Flapjack.WordLangAddr.addr 625 0#64)))).val
theorem output855_def : output855 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 621 (Flapjack.WordLangAddr.addr 625 0#64))) := by
  unfold output855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output855_skip : Flapjack.WordAlloc.isSkip output855 = false := by
  rw [output855_def]
  kernel_rfl
theorem node855_eq : Flapjack.WordAlloc.removeDeadStructural input855 value4 value1 value2 = (output855, value431, value1) := by
  rw [input855_def, output855_def]
  kernel_rfl

def value432 : Flapjack.NumSet :=
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
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(625, 613)])).val
theorem input856_def : input856 = (Flapjack.WordLangProgHOL.move 0 [(625, 613)]) := by
  unfold input856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(625, 613)])).val
theorem output856_def : output856 = (Flapjack.WordLangProgHOL.move 0 [(625, 613)]) := by
  unfold output856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output856_skip : Flapjack.WordAlloc.isSkip output856 = false := by
  rw [output856_def]
  kernel_rfl
theorem node856_eq : Flapjack.WordAlloc.removeDeadStructural input856 value431 value1 value2 = (output856, value432, value1) := by
  rw [input856_def, output856_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input856 input855)).val
theorem input857_def : input857 = (.seq input856 input855) := by
  unfold input857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output856 output855)).val
theorem output857_def : output857 = (.seq output856 output855) := by
  unfold output857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output857_skip : Flapjack.WordAlloc.isSkip output857 = false := by
  rw [output857_def]
  kernel_rfl
theorem node857_eq : Flapjack.WordAlloc.removeDeadStructural input857 value4 value1 value2 = (output857, value432, value1) := by
  rw [input857_def, output857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node855_eq]
  dsimp only
  rw [node856_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output855_skip, output856_skip]
  kernel_rfl

def value433 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 621 0#64))).val
theorem input858_def : input858 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 621 0#64)) := by
  unfold input858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 621 0#64))).val
theorem output858_def : output858 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 621 0#64)) := by
  unfold output858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output858_skip : Flapjack.WordAlloc.isSkip output858 = false := by
  rw [output858_def]
  kernel_rfl
theorem node858_eq : Flapjack.WordAlloc.removeDeadStructural input858 value432 value1 value2 = (output858, value433, value1) := by
  rw [input858_def, output858_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 617 0#64))).val
theorem input859_def : input859 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 617 0#64)) := by
  unfold input859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output859_def : output859 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output859_skip : Flapjack.WordAlloc.isSkip output859 = true := by
  rw [output859_def]
  kernel_rfl
theorem node859_eq : Flapjack.WordAlloc.removeDeadStructural input859 value433 value1 value2 = (output859, value433, value1) := by
  rw [input859_def, output859_def]
  kernel_rfl

def value434 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 613 609 (Flapjack.WordRegImm.imm 18446744073709551440#64))))).val
theorem input860_def : input860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 613 609 (Flapjack.WordRegImm.imm 18446744073709551440#64)))) := by
  unfold input860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 613 609 (Flapjack.WordRegImm.imm 18446744073709551440#64))))).val
theorem output860_def : output860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 613 609 (Flapjack.WordRegImm.imm 18446744073709551440#64)))) := by
  unfold output860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output860_skip : Flapjack.WordAlloc.isSkip output860 = false := by
  rw [output860_def]
  kernel_rfl
theorem node860_eq : Flapjack.WordAlloc.removeDeadStructural input860 value433 value1 value2 = (output860, value434, value1) := by
  rw [input860_def, output860_def]
  kernel_rfl

def value435 : Flapjack.NumSet :=
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
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 609 605)).val
theorem input861_def : input861 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 609 605) := by
  unfold input861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 609 605)).val
theorem output861_def : output861 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 609 605) := by
  unfold output861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output861_skip : Flapjack.WordAlloc.isSkip output861 = false := by
  rw [output861_def]
  kernel_rfl
theorem node861_eq : Flapjack.WordAlloc.removeDeadStructural input861 value434 value1 value2 = (output861, value435, value1) := by
  rw [input861_def, output861_def]
  kernel_rfl

def value436 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 605 601 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input862_def : input862 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 605 601 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 605 601 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output862_def : output862 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 605 601 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output862_skip : Flapjack.WordAlloc.isSkip output862 = false := by
  rw [output862_def]
  kernel_rfl
theorem node862_eq : Flapjack.WordAlloc.removeDeadStructural input862 value435 value1 value2 = (output862, value436, value1) := by
  rw [input862_def, output862_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 601 Flapjack.WordStore.heapLength)).val
theorem input863_def : input863 = (Flapjack.WordLangProgHOL.get 601 Flapjack.WordStore.heapLength) := by
  unfold input863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 601 Flapjack.WordStore.heapLength)).val
theorem output863_def : output863 = (Flapjack.WordLangProgHOL.get 601 Flapjack.WordStore.heapLength) := by
  unfold output863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output863_skip : Flapjack.WordAlloc.isSkip output863 = false := by
  rw [output863_def]
  kernel_rfl
theorem node863_eq : Flapjack.WordAlloc.removeDeadStructural input863 value436 value1 value2 = (output863, value4, value1) := by
  rw [input863_def, output863_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input863 input862)).val
theorem input864_def : input864 = (.seq input863 input862) := by
  unfold input864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output863 output862)).val
theorem output864_def : output864 = (.seq output863 output862) := by
  unfold output864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output864_skip : Flapjack.WordAlloc.isSkip output864 = false := by
  rw [output864_def]
  kernel_rfl
theorem node864_eq : Flapjack.WordAlloc.removeDeadStructural input864 value435 value1 value2 = (output864, value4, value1) := by
  rw [input864_def, output864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node862_eq]
  dsimp only
  rw [node863_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output862_skip, output863_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input864 input861)).val
theorem input865_def : input865 = (.seq input864 input861) := by
  unfold input865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output864 output861)).val
theorem output865_def : output865 = (.seq output864 output861) := by
  unfold output865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output865_skip : Flapjack.WordAlloc.isSkip output865 = false := by
  rw [output865_def]
  kernel_rfl
theorem node865_eq : Flapjack.WordAlloc.removeDeadStructural input865 value434 value1 value2 = (output865, value4, value1) := by
  rw [input865_def, output865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node861_eq]
  dsimp only
  rw [node864_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output861_skip, output864_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input865 input860)).val
theorem input866_def : input866 = (.seq input865 input860) := by
  unfold input866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output865 output860)).val
theorem output866_def : output866 = (.seq output865 output860) := by
  unfold output866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output866_skip : Flapjack.WordAlloc.isSkip output866 = false := by
  rw [output866_def]
  kernel_rfl
theorem node866_eq : Flapjack.WordAlloc.removeDeadStructural input866 value433 value1 value2 = (output866, value4, value1) := by
  rw [input866_def, output866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node860_eq]
  dsimp only
  rw [node865_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output860_skip, output865_skip]
  kernel_rfl

def value437 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 593 (Flapjack.WordLangAddr.addr 597 0#64)))).val
theorem input867_def : input867 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 593 (Flapjack.WordLangAddr.addr 597 0#64))) := by
  unfold input867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 593 (Flapjack.WordLangAddr.addr 597 0#64)))).val
theorem output867_def : output867 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 593 (Flapjack.WordLangAddr.addr 597 0#64))) := by
  unfold output867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output867_skip : Flapjack.WordAlloc.isSkip output867 = false := by
  rw [output867_def]
  kernel_rfl
theorem node867_eq : Flapjack.WordAlloc.removeDeadStructural input867 value4 value1 value2 = (output867, value437, value1) := by
  rw [input867_def, output867_def]
  kernel_rfl

def value438 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(597, 585)])).val
theorem input868_def : input868 = (Flapjack.WordLangProgHOL.move 0 [(597, 585)]) := by
  unfold input868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(597, 585)])).val
theorem output868_def : output868 = (Flapjack.WordLangProgHOL.move 0 [(597, 585)]) := by
  unfold output868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output868_skip : Flapjack.WordAlloc.isSkip output868 = false := by
  rw [output868_def]
  kernel_rfl
theorem node868_eq : Flapjack.WordAlloc.removeDeadStructural input868 value437 value1 value2 = (output868, value438, value1) := by
  rw [input868_def, output868_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input868 input867)).val
theorem input869_def : input869 = (.seq input868 input867) := by
  unfold input869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output868 output867)).val
theorem output869_def : output869 = (.seq output868 output867) := by
  unfold output869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output869_skip : Flapjack.WordAlloc.isSkip output869 = false := by
  rw [output869_def]
  kernel_rfl
theorem node869_eq : Flapjack.WordAlloc.removeDeadStructural input869 value4 value1 value2 = (output869, value438, value1) := by
  rw [input869_def, output869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node867_eq]
  dsimp only
  rw [node868_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output867_skip, output868_skip]
  kernel_rfl

def value439 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64))).val
theorem input870_def : input870 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64)) := by
  unfold input870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64))).val
theorem output870_def : output870 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64)) := by
  unfold output870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output870_skip : Flapjack.WordAlloc.isSkip output870 = false := by
  rw [output870_def]
  kernel_rfl
theorem node870_eq : Flapjack.WordAlloc.removeDeadStructural input870 value438 value1 value2 = (output870, value439, value1) := by
  rw [input870_def, output870_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 589 0#64))).val
theorem input871_def : input871 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 589 0#64)) := by
  unfold input871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output871_def : output871 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output871_skip : Flapjack.WordAlloc.isSkip output871 = true := by
  rw [output871_def]
  kernel_rfl
theorem node871_eq : Flapjack.WordAlloc.removeDeadStructural input871 value439 value1 value2 = (output871, value439, value1) := by
  rw [input871_def, output871_def]
  kernel_rfl

def value440 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 585 581 (Flapjack.WordRegImm.imm 18446744073709551448#64))))).val
theorem input872_def : input872 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 585 581 (Flapjack.WordRegImm.imm 18446744073709551448#64)))) := by
  unfold input872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 585 581 (Flapjack.WordRegImm.imm 18446744073709551448#64))))).val
theorem output872_def : output872 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 585 581 (Flapjack.WordRegImm.imm 18446744073709551448#64)))) := by
  unfold output872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output872_skip : Flapjack.WordAlloc.isSkip output872 = false := by
  rw [output872_def]
  kernel_rfl
theorem node872_eq : Flapjack.WordAlloc.removeDeadStructural input872 value439 value1 value2 = (output872, value440, value1) := by
  rw [input872_def, output872_def]
  kernel_rfl

def value441 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 581 577)).val
theorem input873_def : input873 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 581 577) := by
  unfold input873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 581 577)).val
theorem output873_def : output873 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 581 577) := by
  unfold output873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output873_skip : Flapjack.WordAlloc.isSkip output873 = false := by
  rw [output873_def]
  kernel_rfl
theorem node873_eq : Flapjack.WordAlloc.removeDeadStructural input873 value440 value1 value2 = (output873, value441, value1) := by
  rw [input873_def, output873_def]
  kernel_rfl

def value442 : Flapjack.NumSet :=
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
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 577 573 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input874_def : input874 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 577 573 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 577 573 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output874_def : output874 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 577 573 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output874_skip : Flapjack.WordAlloc.isSkip output874 = false := by
  rw [output874_def]
  kernel_rfl
theorem node874_eq : Flapjack.WordAlloc.removeDeadStructural input874 value441 value1 value2 = (output874, value442, value1) := by
  rw [input874_def, output874_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 573 Flapjack.WordStore.heapLength)).val
theorem input875_def : input875 = (Flapjack.WordLangProgHOL.get 573 Flapjack.WordStore.heapLength) := by
  unfold input875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 573 Flapjack.WordStore.heapLength)).val
theorem output875_def : output875 = (Flapjack.WordLangProgHOL.get 573 Flapjack.WordStore.heapLength) := by
  unfold output875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output875_skip : Flapjack.WordAlloc.isSkip output875 = false := by
  rw [output875_def]
  kernel_rfl
theorem node875_eq : Flapjack.WordAlloc.removeDeadStructural input875 value442 value1 value2 = (output875, value4, value1) := by
  rw [input875_def, output875_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input875 input874)).val
theorem input876_def : input876 = (.seq input875 input874) := by
  unfold input876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output875 output874)).val
theorem output876_def : output876 = (.seq output875 output874) := by
  unfold output876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output876_skip : Flapjack.WordAlloc.isSkip output876 = false := by
  rw [output876_def]
  kernel_rfl
theorem node876_eq : Flapjack.WordAlloc.removeDeadStructural input876 value441 value1 value2 = (output876, value4, value1) := by
  rw [input876_def, output876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node874_eq]
  dsimp only
  rw [node875_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output874_skip, output875_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input876 input873)).val
theorem input877_def : input877 = (.seq input876 input873) := by
  unfold input877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output876 output873)).val
theorem output877_def : output877 = (.seq output876 output873) := by
  unfold output877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output877_skip : Flapjack.WordAlloc.isSkip output877 = false := by
  rw [output877_def]
  kernel_rfl
theorem node877_eq : Flapjack.WordAlloc.removeDeadStructural input877 value440 value1 value2 = (output877, value4, value1) := by
  rw [input877_def, output877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node873_eq]
  dsimp only
  rw [node876_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output873_skip, output876_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input877 input872)).val
theorem input878_def : input878 = (.seq input877 input872) := by
  unfold input878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output877 output872)).val
theorem output878_def : output878 = (.seq output877 output872) := by
  unfold output878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output878_skip : Flapjack.WordAlloc.isSkip output878 = false := by
  rw [output878_def]
  kernel_rfl
theorem node878_eq : Flapjack.WordAlloc.removeDeadStructural input878 value439 value1 value2 = (output878, value4, value1) := by
  rw [input878_def, output878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node872_eq]
  dsimp only
  rw [node877_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output872_skip, output877_skip]
  kernel_rfl

def value443 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 565 (Flapjack.WordLangAddr.addr 569 0#64)))).val
theorem input879_def : input879 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 565 (Flapjack.WordLangAddr.addr 569 0#64))) := by
  unfold input879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 565 (Flapjack.WordLangAddr.addr 569 0#64)))).val
theorem output879_def : output879 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 565 (Flapjack.WordLangAddr.addr 569 0#64))) := by
  unfold output879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output879_skip : Flapjack.WordAlloc.isSkip output879 = false := by
  rw [output879_def]
  kernel_rfl
theorem node879_eq : Flapjack.WordAlloc.removeDeadStructural input879 value4 value1 value2 = (output879, value443, value1) := by
  rw [input879_def, output879_def]
  kernel_rfl

def value444 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(569, 557)])).val
theorem input880_def : input880 = (Flapjack.WordLangProgHOL.move 0 [(569, 557)]) := by
  unfold input880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(569, 557)])).val
theorem output880_def : output880 = (Flapjack.WordLangProgHOL.move 0 [(569, 557)]) := by
  unfold output880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output880_skip : Flapjack.WordAlloc.isSkip output880 = false := by
  rw [output880_def]
  kernel_rfl
theorem node880_eq : Flapjack.WordAlloc.removeDeadStructural input880 value443 value1 value2 = (output880, value444, value1) := by
  rw [input880_def, output880_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input880 input879)).val
theorem input881_def : input881 = (.seq input880 input879) := by
  unfold input881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output880 output879)).val
theorem output881_def : output881 = (.seq output880 output879) := by
  unfold output881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output881_skip : Flapjack.WordAlloc.isSkip output881 = false := by
  rw [output881_def]
  kernel_rfl
theorem node881_eq : Flapjack.WordAlloc.removeDeadStructural input881 value4 value1 value2 = (output881, value444, value1) := by
  rw [input881_def, output881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node879_eq]
  dsimp only
  rw [node880_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output879_skip, output880_skip]
  kernel_rfl

def value445 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 565 0#64))).val
theorem input882_def : input882 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 565 0#64)) := by
  unfold input882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 565 0#64))).val
theorem output882_def : output882 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 565 0#64)) := by
  unfold output882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output882_skip : Flapjack.WordAlloc.isSkip output882 = false := by
  rw [output882_def]
  kernel_rfl
theorem node882_eq : Flapjack.WordAlloc.removeDeadStructural input882 value444 value1 value2 = (output882, value445, value1) := by
  rw [input882_def, output882_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 561 0#64))).val
theorem input883_def : input883 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 561 0#64)) := by
  unfold input883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output883_def : output883 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output883_skip : Flapjack.WordAlloc.isSkip output883 = true := by
  rw [output883_def]
  kernel_rfl
theorem node883_eq : Flapjack.WordAlloc.removeDeadStructural input883 value445 value1 value2 = (output883, value445, value1) := by
  rw [input883_def, output883_def]
  kernel_rfl

def value446 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 557 553 (Flapjack.WordRegImm.imm 18446744073709551456#64))))).val
theorem input884_def : input884 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 557 553 (Flapjack.WordRegImm.imm 18446744073709551456#64)))) := by
  unfold input884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 557 553 (Flapjack.WordRegImm.imm 18446744073709551456#64))))).val
theorem output884_def : output884 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 557 553 (Flapjack.WordRegImm.imm 18446744073709551456#64)))) := by
  unfold output884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output884_skip : Flapjack.WordAlloc.isSkip output884 = false := by
  rw [output884_def]
  kernel_rfl
theorem node884_eq : Flapjack.WordAlloc.removeDeadStructural input884 value445 value1 value2 = (output884, value446, value1) := by
  rw [input884_def, output884_def]
  kernel_rfl

def value447 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 553 549)).val
theorem input885_def : input885 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 553 549) := by
  unfold input885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 553 549)).val
theorem output885_def : output885 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 553 549) := by
  unfold output885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output885_skip : Flapjack.WordAlloc.isSkip output885 = false := by
  rw [output885_def]
  kernel_rfl
theorem node885_eq : Flapjack.WordAlloc.removeDeadStructural input885 value446 value1 value2 = (output885, value447, value1) := by
  rw [input885_def, output885_def]
  kernel_rfl

def value448 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 549 545 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input886_def : input886 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 549 545 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 549 545 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output886_def : output886 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 549 545 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output886_skip : Flapjack.WordAlloc.isSkip output886 = false := by
  rw [output886_def]
  kernel_rfl
theorem node886_eq : Flapjack.WordAlloc.removeDeadStructural input886 value447 value1 value2 = (output886, value448, value1) := by
  rw [input886_def, output886_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 545 Flapjack.WordStore.heapLength)).val
theorem input887_def : input887 = (Flapjack.WordLangProgHOL.get 545 Flapjack.WordStore.heapLength) := by
  unfold input887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 545 Flapjack.WordStore.heapLength)).val
theorem output887_def : output887 = (Flapjack.WordLangProgHOL.get 545 Flapjack.WordStore.heapLength) := by
  unfold output887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output887_skip : Flapjack.WordAlloc.isSkip output887 = false := by
  rw [output887_def]
  kernel_rfl
theorem node887_eq : Flapjack.WordAlloc.removeDeadStructural input887 value448 value1 value2 = (output887, value4, value1) := by
  rw [input887_def, output887_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input887 input886)).val
theorem input888_def : input888 = (.seq input887 input886) := by
  unfold input888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output887 output886)).val
theorem output888_def : output888 = (.seq output887 output886) := by
  unfold output888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output888_skip : Flapjack.WordAlloc.isSkip output888 = false := by
  rw [output888_def]
  kernel_rfl
theorem node888_eq : Flapjack.WordAlloc.removeDeadStructural input888 value447 value1 value2 = (output888, value4, value1) := by
  rw [input888_def, output888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node886_eq]
  dsimp only
  rw [node887_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output886_skip, output887_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input888 input885)).val
theorem input889_def : input889 = (.seq input888 input885) := by
  unfold input889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output888 output885)).val
theorem output889_def : output889 = (.seq output888 output885) := by
  unfold output889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output889_skip : Flapjack.WordAlloc.isSkip output889 = false := by
  rw [output889_def]
  kernel_rfl
theorem node889_eq : Flapjack.WordAlloc.removeDeadStructural input889 value446 value1 value2 = (output889, value4, value1) := by
  rw [input889_def, output889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node885_eq]
  dsimp only
  rw [node888_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output885_skip, output888_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input889 input884)).val
theorem input890_def : input890 = (.seq input889 input884) := by
  unfold input890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output889 output884)).val
theorem output890_def : output890 = (.seq output889 output884) := by
  unfold output890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output890_skip : Flapjack.WordAlloc.isSkip output890 = false := by
  rw [output890_def]
  kernel_rfl
theorem node890_eq : Flapjack.WordAlloc.removeDeadStructural input890 value445 value1 value2 = (output890, value4, value1) := by
  rw [input890_def, output890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node884_eq]
  dsimp only
  rw [node889_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output884_skip, output889_skip]
  kernel_rfl

def value449 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 537 (Flapjack.WordLangAddr.addr 541 0#64)))).val
theorem input891_def : input891 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 537 (Flapjack.WordLangAddr.addr 541 0#64))) := by
  unfold input891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 537 (Flapjack.WordLangAddr.addr 541 0#64)))).val
theorem output891_def : output891 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 537 (Flapjack.WordLangAddr.addr 541 0#64))) := by
  unfold output891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output891_skip : Flapjack.WordAlloc.isSkip output891 = false := by
  rw [output891_def]
  kernel_rfl
theorem node891_eq : Flapjack.WordAlloc.removeDeadStructural input891 value4 value1 value2 = (output891, value449, value1) := by
  rw [input891_def, output891_def]
  kernel_rfl

def value450 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(541, 529)])).val
theorem input892_def : input892 = (Flapjack.WordLangProgHOL.move 0 [(541, 529)]) := by
  unfold input892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(541, 529)])).val
theorem output892_def : output892 = (Flapjack.WordLangProgHOL.move 0 [(541, 529)]) := by
  unfold output892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output892_skip : Flapjack.WordAlloc.isSkip output892 = false := by
  rw [output892_def]
  kernel_rfl
theorem node892_eq : Flapjack.WordAlloc.removeDeadStructural input892 value449 value1 value2 = (output892, value450, value1) := by
  rw [input892_def, output892_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input892 input891)).val
theorem input893_def : input893 = (.seq input892 input891) := by
  unfold input893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output892 output891)).val
theorem output893_def : output893 = (.seq output892 output891) := by
  unfold output893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output893_skip : Flapjack.WordAlloc.isSkip output893 = false := by
  rw [output893_def]
  kernel_rfl
theorem node893_eq : Flapjack.WordAlloc.removeDeadStructural input893 value4 value1 value2 = (output893, value450, value1) := by
  rw [input893_def, output893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node891_eq]
  dsimp only
  rw [node892_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output891_skip, output892_skip]
  kernel_rfl

def value451 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 0#64))).val
theorem input894_def : input894 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 0#64)) := by
  unfold input894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 0#64))).val
theorem output894_def : output894 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 537 0#64)) := by
  unfold output894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output894_skip : Flapjack.WordAlloc.isSkip output894 = false := by
  rw [output894_def]
  kernel_rfl
theorem node894_eq : Flapjack.WordAlloc.removeDeadStructural input894 value450 value1 value2 = (output894, value451, value1) := by
  rw [input894_def, output894_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 533 0#64))).val
theorem input895_def : input895 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 533 0#64)) := by
  unfold input895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output895_def : output895 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output895_skip : Flapjack.WordAlloc.isSkip output895 = true := by
  rw [output895_def]
  kernel_rfl
theorem node895_eq : Flapjack.WordAlloc.removeDeadStructural input895 value451 value1 value2 = (output895, value451, value1) := by
  rw [input895_def, output895_def]
  kernel_rfl

def value452 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 529 525 (Flapjack.WordRegImm.imm 18446744073709551464#64))))).val
theorem input896_def : input896 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 529 525 (Flapjack.WordRegImm.imm 18446744073709551464#64)))) := by
  unfold input896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 529 525 (Flapjack.WordRegImm.imm 18446744073709551464#64))))).val
theorem output896_def : output896 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 529 525 (Flapjack.WordRegImm.imm 18446744073709551464#64)))) := by
  unfold output896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output896_skip : Flapjack.WordAlloc.isSkip output896 = false := by
  rw [output896_def]
  kernel_rfl
theorem node896_eq : Flapjack.WordAlloc.removeDeadStructural input896 value451 value1 value2 = (output896, value452, value1) := by
  rw [input896_def, output896_def]
  kernel_rfl

def value453 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 525 521)).val
theorem input897_def : input897 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 525 521) := by
  unfold input897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 525 521)).val
theorem output897_def : output897 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 525 521) := by
  unfold output897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output897_skip : Flapjack.WordAlloc.isSkip output897 = false := by
  rw [output897_def]
  kernel_rfl
theorem node897_eq : Flapjack.WordAlloc.removeDeadStructural input897 value452 value1 value2 = (output897, value453, value1) := by
  rw [input897_def, output897_def]
  kernel_rfl

def value454 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 521 517 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input898_def : input898 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 521 517 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 521 517 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output898_def : output898 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 521 517 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output898_skip : Flapjack.WordAlloc.isSkip output898 = false := by
  rw [output898_def]
  kernel_rfl
theorem node898_eq : Flapjack.WordAlloc.removeDeadStructural input898 value453 value1 value2 = (output898, value454, value1) := by
  rw [input898_def, output898_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 517 Flapjack.WordStore.heapLength)).val
theorem input899_def : input899 = (Flapjack.WordLangProgHOL.get 517 Flapjack.WordStore.heapLength) := by
  unfold input899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 517 Flapjack.WordStore.heapLength)).val
theorem output899_def : output899 = (Flapjack.WordLangProgHOL.get 517 Flapjack.WordStore.heapLength) := by
  unfold output899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output899_skip : Flapjack.WordAlloc.isSkip output899 = false := by
  rw [output899_def]
  kernel_rfl
theorem node899_eq : Flapjack.WordAlloc.removeDeadStructural input899 value454 value1 value2 = (output899, value4, value1) := by
  rw [input899_def, output899_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input899 input898)).val
theorem input900_def : input900 = (.seq input899 input898) := by
  unfold input900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output899 output898)).val
theorem output900_def : output900 = (.seq output899 output898) := by
  unfold output900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output900_skip : Flapjack.WordAlloc.isSkip output900 = false := by
  rw [output900_def]
  kernel_rfl
theorem node900_eq : Flapjack.WordAlloc.removeDeadStructural input900 value453 value1 value2 = (output900, value4, value1) := by
  rw [input900_def, output900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node898_eq]
  dsimp only
  rw [node899_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output898_skip, output899_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input900 input897)).val
theorem input901_def : input901 = (.seq input900 input897) := by
  unfold input901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output900 output897)).val
theorem output901_def : output901 = (.seq output900 output897) := by
  unfold output901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output901_skip : Flapjack.WordAlloc.isSkip output901 = false := by
  rw [output901_def]
  kernel_rfl
theorem node901_eq : Flapjack.WordAlloc.removeDeadStructural input901 value452 value1 value2 = (output901, value4, value1) := by
  rw [input901_def, output901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node897_eq]
  dsimp only
  rw [node900_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output897_skip, output900_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input901 input896)).val
theorem input902_def : input902 = (.seq input901 input896) := by
  unfold input902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output901 output896)).val
theorem output902_def : output902 = (.seq output901 output896) := by
  unfold output902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output902_skip : Flapjack.WordAlloc.isSkip output902 = false := by
  rw [output902_def]
  kernel_rfl
theorem node902_eq : Flapjack.WordAlloc.removeDeadStructural input902 value451 value1 value2 = (output902, value4, value1) := by
  rw [input902_def, output902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node896_eq]
  dsimp only
  rw [node901_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output896_skip, output901_skip]
  kernel_rfl

def value455 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 509 (Flapjack.WordLangAddr.addr 513 0#64)))).val
theorem input903_def : input903 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 509 (Flapjack.WordLangAddr.addr 513 0#64))) := by
  unfold input903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 509 (Flapjack.WordLangAddr.addr 513 0#64)))).val
theorem output903_def : output903 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 509 (Flapjack.WordLangAddr.addr 513 0#64))) := by
  unfold output903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output903_skip : Flapjack.WordAlloc.isSkip output903 = false := by
  rw [output903_def]
  kernel_rfl
theorem node903_eq : Flapjack.WordAlloc.removeDeadStructural input903 value4 value1 value2 = (output903, value455, value1) := by
  rw [input903_def, output903_def]
  kernel_rfl

def value456 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(513, 501)])).val
theorem input904_def : input904 = (Flapjack.WordLangProgHOL.move 0 [(513, 501)]) := by
  unfold input904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(513, 501)])).val
theorem output904_def : output904 = (Flapjack.WordLangProgHOL.move 0 [(513, 501)]) := by
  unfold output904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output904_skip : Flapjack.WordAlloc.isSkip output904 = false := by
  rw [output904_def]
  kernel_rfl
theorem node904_eq : Flapjack.WordAlloc.removeDeadStructural input904 value455 value1 value2 = (output904, value456, value1) := by
  rw [input904_def, output904_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input904 input903)).val
theorem input905_def : input905 = (.seq input904 input903) := by
  unfold input905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output904 output903)).val
theorem output905_def : output905 = (.seq output904 output903) := by
  unfold output905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output905_skip : Flapjack.WordAlloc.isSkip output905 = false := by
  rw [output905_def]
  kernel_rfl
theorem node905_eq : Flapjack.WordAlloc.removeDeadStructural input905 value4 value1 value2 = (output905, value456, value1) := by
  rw [input905_def, output905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node903_eq]
  dsimp only
  rw [node904_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output903_skip, output904_skip]
  kernel_rfl

def value457 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 509 0#64))).val
theorem input906_def : input906 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 509 0#64)) := by
  unfold input906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 509 0#64))).val
theorem output906_def : output906 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 509 0#64)) := by
  unfold output906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output906_skip : Flapjack.WordAlloc.isSkip output906 = false := by
  rw [output906_def]
  kernel_rfl
theorem node906_eq : Flapjack.WordAlloc.removeDeadStructural input906 value456 value1 value2 = (output906, value457, value1) := by
  rw [input906_def, output906_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 505 0#64))).val
theorem input907_def : input907 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 505 0#64)) := by
  unfold input907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output907_def : output907 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output907_skip : Flapjack.WordAlloc.isSkip output907 = true := by
  rw [output907_def]
  kernel_rfl
theorem node907_eq : Flapjack.WordAlloc.removeDeadStructural input907 value457 value1 value2 = (output907, value457, value1) := by
  rw [input907_def, output907_def]
  kernel_rfl

def value458 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 501 497 (Flapjack.WordRegImm.imm 18446744073709551472#64))))).val
theorem input908_def : input908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 501 497 (Flapjack.WordRegImm.imm 18446744073709551472#64)))) := by
  unfold input908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 501 497 (Flapjack.WordRegImm.imm 18446744073709551472#64))))).val
theorem output908_def : output908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 501 497 (Flapjack.WordRegImm.imm 18446744073709551472#64)))) := by
  unfold output908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output908_skip : Flapjack.WordAlloc.isSkip output908 = false := by
  rw [output908_def]
  kernel_rfl
theorem node908_eq : Flapjack.WordAlloc.removeDeadStructural input908 value457 value1 value2 = (output908, value458, value1) := by
  rw [input908_def, output908_def]
  kernel_rfl

def value459 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 497 493)).val
theorem input909_def : input909 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 497 493) := by
  unfold input909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 497 493)).val
theorem output909_def : output909 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 497 493) := by
  unfold output909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output909_skip : Flapjack.WordAlloc.isSkip output909 = false := by
  rw [output909_def]
  kernel_rfl
theorem node909_eq : Flapjack.WordAlloc.removeDeadStructural input909 value458 value1 value2 = (output909, value459, value1) := by
  rw [input909_def, output909_def]
  kernel_rfl

def value460 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 493 489 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input910_def : input910 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 493 489 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 493 489 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output910_def : output910 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 493 489 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output910_skip : Flapjack.WordAlloc.isSkip output910 = false := by
  rw [output910_def]
  kernel_rfl
theorem node910_eq : Flapjack.WordAlloc.removeDeadStructural input910 value459 value1 value2 = (output910, value460, value1) := by
  rw [input910_def, output910_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 489 Flapjack.WordStore.heapLength)).val
theorem input911_def : input911 = (Flapjack.WordLangProgHOL.get 489 Flapjack.WordStore.heapLength) := by
  unfold input911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 489 Flapjack.WordStore.heapLength)).val
theorem output911_def : output911 = (Flapjack.WordLangProgHOL.get 489 Flapjack.WordStore.heapLength) := by
  unfold output911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output911_skip : Flapjack.WordAlloc.isSkip output911 = false := by
  rw [output911_def]
  kernel_rfl
theorem node911_eq : Flapjack.WordAlloc.removeDeadStructural input911 value460 value1 value2 = (output911, value4, value1) := by
  rw [input911_def, output911_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input911 input910)).val
theorem input912_def : input912 = (.seq input911 input910) := by
  unfold input912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output911 output910)).val
theorem output912_def : output912 = (.seq output911 output910) := by
  unfold output912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output912_skip : Flapjack.WordAlloc.isSkip output912 = false := by
  rw [output912_def]
  kernel_rfl
theorem node912_eq : Flapjack.WordAlloc.removeDeadStructural input912 value459 value1 value2 = (output912, value4, value1) := by
  rw [input912_def, output912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node910_eq]
  dsimp only
  rw [node911_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output910_skip, output911_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input912 input909)).val
theorem input913_def : input913 = (.seq input912 input909) := by
  unfold input913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output912 output909)).val
theorem output913_def : output913 = (.seq output912 output909) := by
  unfold output913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output913_skip : Flapjack.WordAlloc.isSkip output913 = false := by
  rw [output913_def]
  kernel_rfl
theorem node913_eq : Flapjack.WordAlloc.removeDeadStructural input913 value458 value1 value2 = (output913, value4, value1) := by
  rw [input913_def, output913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node909_eq]
  dsimp only
  rw [node912_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output909_skip, output912_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input913 input908)).val
theorem input914_def : input914 = (.seq input913 input908) := by
  unfold input914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output913 output908)).val
theorem output914_def : output914 = (.seq output913 output908) := by
  unfold output914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output914_skip : Flapjack.WordAlloc.isSkip output914 = false := by
  rw [output914_def]
  kernel_rfl
theorem node914_eq : Flapjack.WordAlloc.removeDeadStructural input914 value457 value1 value2 = (output914, value4, value1) := by
  rw [input914_def, output914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node908_eq]
  dsimp only
  rw [node913_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output908_skip, output913_skip]
  kernel_rfl

def value461 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 481 (Flapjack.WordLangAddr.addr 485 0#64)))).val
theorem input915_def : input915 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 481 (Flapjack.WordLangAddr.addr 485 0#64))) := by
  unfold input915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 481 (Flapjack.WordLangAddr.addr 485 0#64)))).val
theorem output915_def : output915 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 481 (Flapjack.WordLangAddr.addr 485 0#64))) := by
  unfold output915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output915_skip : Flapjack.WordAlloc.isSkip output915 = false := by
  rw [output915_def]
  kernel_rfl
theorem node915_eq : Flapjack.WordAlloc.removeDeadStructural input915 value4 value1 value2 = (output915, value461, value1) := by
  rw [input915_def, output915_def]
  kernel_rfl

def value462 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(485, 473)])).val
theorem input916_def : input916 = (Flapjack.WordLangProgHOL.move 0 [(485, 473)]) := by
  unfold input916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(485, 473)])).val
theorem output916_def : output916 = (Flapjack.WordLangProgHOL.move 0 [(485, 473)]) := by
  unfold output916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output916_skip : Flapjack.WordAlloc.isSkip output916 = false := by
  rw [output916_def]
  kernel_rfl
theorem node916_eq : Flapjack.WordAlloc.removeDeadStructural input916 value461 value1 value2 = (output916, value462, value1) := by
  rw [input916_def, output916_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input916 input915)).val
theorem input917_def : input917 = (.seq input916 input915) := by
  unfold input917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output916 output915)).val
theorem output917_def : output917 = (.seq output916 output915) := by
  unfold output917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output917_skip : Flapjack.WordAlloc.isSkip output917 = false := by
  rw [output917_def]
  kernel_rfl
theorem node917_eq : Flapjack.WordAlloc.removeDeadStructural input917 value4 value1 value2 = (output917, value462, value1) := by
  rw [input917_def, output917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node915_eq]
  dsimp only
  rw [node916_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output915_skip, output916_skip]
  kernel_rfl

def value463 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 0#64))).val
theorem input918_def : input918 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 0#64)) := by
  unfold input918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 0#64))).val
theorem output918_def : output918 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 0#64)) := by
  unfold output918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output918_skip : Flapjack.WordAlloc.isSkip output918 = false := by
  rw [output918_def]
  kernel_rfl
theorem node918_eq : Flapjack.WordAlloc.removeDeadStructural input918 value462 value1 value2 = (output918, value463, value1) := by
  rw [input918_def, output918_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 477 0#64))).val
theorem input919_def : input919 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 477 0#64)) := by
  unfold input919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output919_def : output919 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output919_skip : Flapjack.WordAlloc.isSkip output919 = true := by
  rw [output919_def]
  kernel_rfl
theorem node919_eq : Flapjack.WordAlloc.removeDeadStructural input919 value463 value1 value2 = (output919, value463, value1) := by
  rw [input919_def, output919_def]
  kernel_rfl

def value464 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 473 469 (Flapjack.WordRegImm.imm 18446744073709551480#64))))).val
theorem input920_def : input920 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 473 469 (Flapjack.WordRegImm.imm 18446744073709551480#64)))) := by
  unfold input920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 473 469 (Flapjack.WordRegImm.imm 18446744073709551480#64))))).val
theorem output920_def : output920 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 473 469 (Flapjack.WordRegImm.imm 18446744073709551480#64)))) := by
  unfold output920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output920_skip : Flapjack.WordAlloc.isSkip output920 = false := by
  rw [output920_def]
  kernel_rfl
theorem node920_eq : Flapjack.WordAlloc.removeDeadStructural input920 value463 value1 value2 = (output920, value464, value1) := by
  rw [input920_def, output920_def]
  kernel_rfl

def value465 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 469 465)).val
theorem input921_def : input921 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 469 465) := by
  unfold input921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 469 465)).val
theorem output921_def : output921 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 469 465) := by
  unfold output921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output921_skip : Flapjack.WordAlloc.isSkip output921 = false := by
  rw [output921_def]
  kernel_rfl
theorem node921_eq : Flapjack.WordAlloc.removeDeadStructural input921 value464 value1 value2 = (output921, value465, value1) := by
  rw [input921_def, output921_def]
  kernel_rfl

def value466 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 465 461 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input922_def : input922 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 465 461 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 465 461 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output922_def : output922 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 465 461 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output922_skip : Flapjack.WordAlloc.isSkip output922 = false := by
  rw [output922_def]
  kernel_rfl
theorem node922_eq : Flapjack.WordAlloc.removeDeadStructural input922 value465 value1 value2 = (output922, value466, value1) := by
  rw [input922_def, output922_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 461 Flapjack.WordStore.heapLength)).val
theorem input923_def : input923 = (Flapjack.WordLangProgHOL.get 461 Flapjack.WordStore.heapLength) := by
  unfold input923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 461 Flapjack.WordStore.heapLength)).val
theorem output923_def : output923 = (Flapjack.WordLangProgHOL.get 461 Flapjack.WordStore.heapLength) := by
  unfold output923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output923_skip : Flapjack.WordAlloc.isSkip output923 = false := by
  rw [output923_def]
  kernel_rfl
theorem node923_eq : Flapjack.WordAlloc.removeDeadStructural input923 value466 value1 value2 = (output923, value4, value1) := by
  rw [input923_def, output923_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input923 input922)).val
theorem input924_def : input924 = (.seq input923 input922) := by
  unfold input924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output923 output922)).val
theorem output924_def : output924 = (.seq output923 output922) := by
  unfold output924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output924_skip : Flapjack.WordAlloc.isSkip output924 = false := by
  rw [output924_def]
  kernel_rfl
theorem node924_eq : Flapjack.WordAlloc.removeDeadStructural input924 value465 value1 value2 = (output924, value4, value1) := by
  rw [input924_def, output924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node922_eq]
  dsimp only
  rw [node923_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output922_skip, output923_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input924 input921)).val
theorem input925_def : input925 = (.seq input924 input921) := by
  unfold input925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output924 output921)).val
theorem output925_def : output925 = (.seq output924 output921) := by
  unfold output925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output925_skip : Flapjack.WordAlloc.isSkip output925 = false := by
  rw [output925_def]
  kernel_rfl
theorem node925_eq : Flapjack.WordAlloc.removeDeadStructural input925 value464 value1 value2 = (output925, value4, value1) := by
  rw [input925_def, output925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node921_eq]
  dsimp only
  rw [node924_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output921_skip, output924_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input925 input920)).val
theorem input926_def : input926 = (.seq input925 input920) := by
  unfold input926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output925 output920)).val
theorem output926_def : output926 = (.seq output925 output920) := by
  unfold output926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output926_skip : Flapjack.WordAlloc.isSkip output926 = false := by
  rw [output926_def]
  kernel_rfl
theorem node926_eq : Flapjack.WordAlloc.removeDeadStructural input926 value463 value1 value2 = (output926, value4, value1) := by
  rw [input926_def, output926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node920_eq]
  dsimp only
  rw [node925_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output920_skip, output925_skip]
  kernel_rfl

def value467 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 453 (Flapjack.WordLangAddr.addr 457 0#64)))).val
theorem input927_def : input927 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 453 (Flapjack.WordLangAddr.addr 457 0#64))) := by
  unfold input927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 453 (Flapjack.WordLangAddr.addr 457 0#64)))).val
theorem output927_def : output927 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 453 (Flapjack.WordLangAddr.addr 457 0#64))) := by
  unfold output927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output927_skip : Flapjack.WordAlloc.isSkip output927 = false := by
  rw [output927_def]
  kernel_rfl
theorem node927_eq : Flapjack.WordAlloc.removeDeadStructural input927 value4 value1 value2 = (output927, value467, value1) := by
  rw [input927_def, output927_def]
  kernel_rfl

def value468 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(457, 445)])).val
theorem input928_def : input928 = (Flapjack.WordLangProgHOL.move 0 [(457, 445)]) := by
  unfold input928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(457, 445)])).val
theorem output928_def : output928 = (Flapjack.WordLangProgHOL.move 0 [(457, 445)]) := by
  unfold output928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output928_skip : Flapjack.WordAlloc.isSkip output928 = false := by
  rw [output928_def]
  kernel_rfl
theorem node928_eq : Flapjack.WordAlloc.removeDeadStructural input928 value467 value1 value2 = (output928, value468, value1) := by
  rw [input928_def, output928_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input928 input927)).val
theorem input929_def : input929 = (.seq input928 input927) := by
  unfold input929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output928 output927)).val
theorem output929_def : output929 = (.seq output928 output927) := by
  unfold output929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output929_skip : Flapjack.WordAlloc.isSkip output929 = false := by
  rw [output929_def]
  kernel_rfl
theorem node929_eq : Flapjack.WordAlloc.removeDeadStructural input929 value4 value1 value2 = (output929, value468, value1) := by
  rw [input929_def, output929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node927_eq]
  dsimp only
  rw [node928_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output927_skip, output928_skip]
  kernel_rfl

def value469 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 453 0#64))).val
theorem input930_def : input930 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 453 0#64)) := by
  unfold input930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 453 0#64))).val
theorem output930_def : output930 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 453 0#64)) := by
  unfold output930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output930_skip : Flapjack.WordAlloc.isSkip output930 = false := by
  rw [output930_def]
  kernel_rfl
theorem node930_eq : Flapjack.WordAlloc.removeDeadStructural input930 value468 value1 value2 = (output930, value469, value1) := by
  rw [input930_def, output930_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 0#64))).val
theorem input931_def : input931 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 0#64)) := by
  unfold input931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output931_def : output931 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output931_skip : Flapjack.WordAlloc.isSkip output931 = true := by
  rw [output931_def]
  kernel_rfl
theorem node931_eq : Flapjack.WordAlloc.removeDeadStructural input931 value469 value1 value2 = (output931, value469, value1) := by
  rw [input931_def, output931_def]
  kernel_rfl

def value470 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 445 441 (Flapjack.WordRegImm.imm 18446744073709551488#64))))).val
theorem input932_def : input932 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 445 441 (Flapjack.WordRegImm.imm 18446744073709551488#64)))) := by
  unfold input932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 445 441 (Flapjack.WordRegImm.imm 18446744073709551488#64))))).val
theorem output932_def : output932 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 445 441 (Flapjack.WordRegImm.imm 18446744073709551488#64)))) := by
  unfold output932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output932_skip : Flapjack.WordAlloc.isSkip output932 = false := by
  rw [output932_def]
  kernel_rfl
theorem node932_eq : Flapjack.WordAlloc.removeDeadStructural input932 value469 value1 value2 = (output932, value470, value1) := by
  rw [input932_def, output932_def]
  kernel_rfl

def value471 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 441 437)).val
theorem input933_def : input933 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 441 437) := by
  unfold input933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 441 437)).val
theorem output933_def : output933 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 441 437) := by
  unfold output933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output933_skip : Flapjack.WordAlloc.isSkip output933 = false := by
  rw [output933_def]
  kernel_rfl
theorem node933_eq : Flapjack.WordAlloc.removeDeadStructural input933 value470 value1 value2 = (output933, value471, value1) := by
  rw [input933_def, output933_def]
  kernel_rfl

def value472 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 437 433 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input934_def : input934 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 437 433 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 437 433 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output934_def : output934 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 437 433 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output934_skip : Flapjack.WordAlloc.isSkip output934 = false := by
  rw [output934_def]
  kernel_rfl
theorem node934_eq : Flapjack.WordAlloc.removeDeadStructural input934 value471 value1 value2 = (output934, value472, value1) := by
  rw [input934_def, output934_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 433 Flapjack.WordStore.heapLength)).val
theorem input935_def : input935 = (Flapjack.WordLangProgHOL.get 433 Flapjack.WordStore.heapLength) := by
  unfold input935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 433 Flapjack.WordStore.heapLength)).val
theorem output935_def : output935 = (Flapjack.WordLangProgHOL.get 433 Flapjack.WordStore.heapLength) := by
  unfold output935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output935_skip : Flapjack.WordAlloc.isSkip output935 = false := by
  rw [output935_def]
  kernel_rfl
theorem node935_eq : Flapjack.WordAlloc.removeDeadStructural input935 value472 value1 value2 = (output935, value4, value1) := by
  rw [input935_def, output935_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input935 input934)).val
theorem input936_def : input936 = (.seq input935 input934) := by
  unfold input936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output935 output934)).val
theorem output936_def : output936 = (.seq output935 output934) := by
  unfold output936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output936_skip : Flapjack.WordAlloc.isSkip output936 = false := by
  rw [output936_def]
  kernel_rfl
theorem node936_eq : Flapjack.WordAlloc.removeDeadStructural input936 value471 value1 value2 = (output936, value4, value1) := by
  rw [input936_def, output936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node934_eq]
  dsimp only
  rw [node935_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output934_skip, output935_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input936 input933)).val
theorem input937_def : input937 = (.seq input936 input933) := by
  unfold input937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output936 output933)).val
theorem output937_def : output937 = (.seq output936 output933) := by
  unfold output937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output937_skip : Flapjack.WordAlloc.isSkip output937 = false := by
  rw [output937_def]
  kernel_rfl
theorem node937_eq : Flapjack.WordAlloc.removeDeadStructural input937 value470 value1 value2 = (output937, value4, value1) := by
  rw [input937_def, output937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node933_eq]
  dsimp only
  rw [node936_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output933_skip, output936_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input937 input932)).val
theorem input938_def : input938 = (.seq input937 input932) := by
  unfold input938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output937 output932)).val
theorem output938_def : output938 = (.seq output937 output932) := by
  unfold output938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output938_skip : Flapjack.WordAlloc.isSkip output938 = false := by
  rw [output938_def]
  kernel_rfl
theorem node938_eq : Flapjack.WordAlloc.removeDeadStructural input938 value469 value1 value2 = (output938, value4, value1) := by
  rw [input938_def, output938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node932_eq]
  dsimp only
  rw [node937_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output932_skip, output937_skip]
  kernel_rfl

def value473 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 425 (Flapjack.WordLangAddr.addr 429 0#64)))).val
theorem input939_def : input939 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 425 (Flapjack.WordLangAddr.addr 429 0#64))) := by
  unfold input939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 425 (Flapjack.WordLangAddr.addr 429 0#64)))).val
theorem output939_def : output939 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 425 (Flapjack.WordLangAddr.addr 429 0#64))) := by
  unfold output939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output939_skip : Flapjack.WordAlloc.isSkip output939 = false := by
  rw [output939_def]
  kernel_rfl
theorem node939_eq : Flapjack.WordAlloc.removeDeadStructural input939 value4 value1 value2 = (output939, value473, value1) := by
  rw [input939_def, output939_def]
  kernel_rfl

def value474 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(429, 417)])).val
theorem input940_def : input940 = (Flapjack.WordLangProgHOL.move 0 [(429, 417)]) := by
  unfold input940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(429, 417)])).val
theorem output940_def : output940 = (Flapjack.WordLangProgHOL.move 0 [(429, 417)]) := by
  unfold output940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output940_skip : Flapjack.WordAlloc.isSkip output940 = false := by
  rw [output940_def]
  kernel_rfl
theorem node940_eq : Flapjack.WordAlloc.removeDeadStructural input940 value473 value1 value2 = (output940, value474, value1) := by
  rw [input940_def, output940_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input940 input939)).val
theorem input941_def : input941 = (.seq input940 input939) := by
  unfold input941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output940 output939)).val
theorem output941_def : output941 = (.seq output940 output939) := by
  unfold output941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output941_skip : Flapjack.WordAlloc.isSkip output941 = false := by
  rw [output941_def]
  kernel_rfl
theorem node941_eq : Flapjack.WordAlloc.removeDeadStructural input941 value4 value1 value2 = (output941, value474, value1) := by
  rw [input941_def, output941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node939_eq]
  dsimp only
  rw [node940_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output939_skip, output940_skip]
  kernel_rfl

def value475 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 425 0#64))).val
theorem input942_def : input942 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 425 0#64)) := by
  unfold input942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 425 0#64))).val
theorem output942_def : output942 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 425 0#64)) := by
  unfold output942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output942_skip : Flapjack.WordAlloc.isSkip output942 = false := by
  rw [output942_def]
  kernel_rfl
theorem node942_eq : Flapjack.WordAlloc.removeDeadStructural input942 value474 value1 value2 = (output942, value475, value1) := by
  rw [input942_def, output942_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 421 0#64))).val
theorem input943_def : input943 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 421 0#64)) := by
  unfold input943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output943_def : output943 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output943_skip : Flapjack.WordAlloc.isSkip output943 = true := by
  rw [output943_def]
  kernel_rfl
theorem node943_eq : Flapjack.WordAlloc.removeDeadStructural input943 value475 value1 value2 = (output943, value475, value1) := by
  rw [input943_def, output943_def]
  kernel_rfl

def value476 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 417 413 (Flapjack.WordRegImm.imm 18446744073709551496#64))))).val
theorem input944_def : input944 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 417 413 (Flapjack.WordRegImm.imm 18446744073709551496#64)))) := by
  unfold input944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 417 413 (Flapjack.WordRegImm.imm 18446744073709551496#64))))).val
theorem output944_def : output944 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 417 413 (Flapjack.WordRegImm.imm 18446744073709551496#64)))) := by
  unfold output944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output944_skip : Flapjack.WordAlloc.isSkip output944 = false := by
  rw [output944_def]
  kernel_rfl
theorem node944_eq : Flapjack.WordAlloc.removeDeadStructural input944 value475 value1 value2 = (output944, value476, value1) := by
  rw [input944_def, output944_def]
  kernel_rfl

def value477 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 413 409)).val
theorem input945_def : input945 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 413 409) := by
  unfold input945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 413 409)).val
theorem output945_def : output945 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 413 409) := by
  unfold output945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output945_skip : Flapjack.WordAlloc.isSkip output945 = false := by
  rw [output945_def]
  kernel_rfl
theorem node945_eq : Flapjack.WordAlloc.removeDeadStructural input945 value476 value1 value2 = (output945, value477, value1) := by
  rw [input945_def, output945_def]
  kernel_rfl

def value478 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 409 405 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input946_def : input946 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 409 405 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 409 405 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output946_def : output946 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 409 405 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output946_skip : Flapjack.WordAlloc.isSkip output946 = false := by
  rw [output946_def]
  kernel_rfl
theorem node946_eq : Flapjack.WordAlloc.removeDeadStructural input946 value477 value1 value2 = (output946, value478, value1) := by
  rw [input946_def, output946_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 405 Flapjack.WordStore.heapLength)).val
theorem input947_def : input947 = (Flapjack.WordLangProgHOL.get 405 Flapjack.WordStore.heapLength) := by
  unfold input947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 405 Flapjack.WordStore.heapLength)).val
theorem output947_def : output947 = (Flapjack.WordLangProgHOL.get 405 Flapjack.WordStore.heapLength) := by
  unfold output947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output947_skip : Flapjack.WordAlloc.isSkip output947 = false := by
  rw [output947_def]
  kernel_rfl
theorem node947_eq : Flapjack.WordAlloc.removeDeadStructural input947 value478 value1 value2 = (output947, value4, value1) := by
  rw [input947_def, output947_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input947 input946)).val
theorem input948_def : input948 = (.seq input947 input946) := by
  unfold input948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output947 output946)).val
theorem output948_def : output948 = (.seq output947 output946) := by
  unfold output948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output948_skip : Flapjack.WordAlloc.isSkip output948 = false := by
  rw [output948_def]
  kernel_rfl
theorem node948_eq : Flapjack.WordAlloc.removeDeadStructural input948 value477 value1 value2 = (output948, value4, value1) := by
  rw [input948_def, output948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node946_eq]
  dsimp only
  rw [node947_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output946_skip, output947_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input948 input945)).val
theorem input949_def : input949 = (.seq input948 input945) := by
  unfold input949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output948 output945)).val
theorem output949_def : output949 = (.seq output948 output945) := by
  unfold output949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output949_skip : Flapjack.WordAlloc.isSkip output949 = false := by
  rw [output949_def]
  kernel_rfl
theorem node949_eq : Flapjack.WordAlloc.removeDeadStructural input949 value476 value1 value2 = (output949, value4, value1) := by
  rw [input949_def, output949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node945_eq]
  dsimp only
  rw [node948_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output945_skip, output948_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input949 input944)).val
theorem input950_def : input950 = (.seq input949 input944) := by
  unfold input950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output949 output944)).val
theorem output950_def : output950 = (.seq output949 output944) := by
  unfold output950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output950_skip : Flapjack.WordAlloc.isSkip output950 = false := by
  rw [output950_def]
  kernel_rfl
theorem node950_eq : Flapjack.WordAlloc.removeDeadStructural input950 value475 value1 value2 = (output950, value4, value1) := by
  rw [input950_def, output950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node944_eq]
  dsimp only
  rw [node949_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output944_skip, output949_skip]
  kernel_rfl

def value479 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 397 (Flapjack.WordLangAddr.addr 401 0#64)))).val
theorem input951_def : input951 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 397 (Flapjack.WordLangAddr.addr 401 0#64))) := by
  unfold input951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 397 (Flapjack.WordLangAddr.addr 401 0#64)))).val
theorem output951_def : output951 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 397 (Flapjack.WordLangAddr.addr 401 0#64))) := by
  unfold output951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output951_skip : Flapjack.WordAlloc.isSkip output951 = false := by
  rw [output951_def]
  kernel_rfl
theorem node951_eq : Flapjack.WordAlloc.removeDeadStructural input951 value4 value1 value2 = (output951, value479, value1) := by
  rw [input951_def, output951_def]
  kernel_rfl

def value480 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(401, 389)])).val
theorem input952_def : input952 = (Flapjack.WordLangProgHOL.move 0 [(401, 389)]) := by
  unfold input952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(401, 389)])).val
theorem output952_def : output952 = (Flapjack.WordLangProgHOL.move 0 [(401, 389)]) := by
  unfold output952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output952_skip : Flapjack.WordAlloc.isSkip output952 = false := by
  rw [output952_def]
  kernel_rfl
theorem node952_eq : Flapjack.WordAlloc.removeDeadStructural input952 value479 value1 value2 = (output952, value480, value1) := by
  rw [input952_def, output952_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input952 input951)).val
theorem input953_def : input953 = (.seq input952 input951) := by
  unfold input953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output952 output951)).val
theorem output953_def : output953 = (.seq output952 output951) := by
  unfold output953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output953_skip : Flapjack.WordAlloc.isSkip output953 = false := by
  rw [output953_def]
  kernel_rfl
theorem node953_eq : Flapjack.WordAlloc.removeDeadStructural input953 value4 value1 value2 = (output953, value480, value1) := by
  rw [input953_def, output953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node951_eq]
  dsimp only
  rw [node952_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output951_skip, output952_skip]
  kernel_rfl

def value481 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 397 0#64))).val
theorem input954_def : input954 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 397 0#64)) := by
  unfold input954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 397 0#64))).val
theorem output954_def : output954 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 397 0#64)) := by
  unfold output954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output954_skip : Flapjack.WordAlloc.isSkip output954 = false := by
  rw [output954_def]
  kernel_rfl
theorem node954_eq : Flapjack.WordAlloc.removeDeadStructural input954 value480 value1 value2 = (output954, value481, value1) := by
  rw [input954_def, output954_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 393 0#64))).val
theorem input955_def : input955 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 393 0#64)) := by
  unfold input955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output955_def : output955 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output955_skip : Flapjack.WordAlloc.isSkip output955 = true := by
  rw [output955_def]
  kernel_rfl
theorem node955_eq : Flapjack.WordAlloc.removeDeadStructural input955 value481 value1 value2 = (output955, value481, value1) := by
  rw [input955_def, output955_def]
  kernel_rfl

def value482 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 389 385 (Flapjack.WordRegImm.imm 18446744073709551504#64))))).val
theorem input956_def : input956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 389 385 (Flapjack.WordRegImm.imm 18446744073709551504#64)))) := by
  unfold input956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 389 385 (Flapjack.WordRegImm.imm 18446744073709551504#64))))).val
theorem output956_def : output956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 389 385 (Flapjack.WordRegImm.imm 18446744073709551504#64)))) := by
  unfold output956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output956_skip : Flapjack.WordAlloc.isSkip output956 = false := by
  rw [output956_def]
  kernel_rfl
theorem node956_eq : Flapjack.WordAlloc.removeDeadStructural input956 value481 value1 value2 = (output956, value482, value1) := by
  rw [input956_def, output956_def]
  kernel_rfl

def value483 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 385 381)).val
theorem input957_def : input957 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 385 381) := by
  unfold input957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 385 381)).val
theorem output957_def : output957 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 385 381) := by
  unfold output957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output957_skip : Flapjack.WordAlloc.isSkip output957 = false := by
  rw [output957_def]
  kernel_rfl
theorem node957_eq : Flapjack.WordAlloc.removeDeadStructural input957 value482 value1 value2 = (output957, value483, value1) := by
  rw [input957_def, output957_def]
  kernel_rfl

def value484 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 381 377 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input958_def : input958 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 381 377 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 381 377 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output958_def : output958 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 381 377 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output958_skip : Flapjack.WordAlloc.isSkip output958 = false := by
  rw [output958_def]
  kernel_rfl
theorem node958_eq : Flapjack.WordAlloc.removeDeadStructural input958 value483 value1 value2 = (output958, value484, value1) := by
  rw [input958_def, output958_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 377 Flapjack.WordStore.heapLength)).val
theorem input959_def : input959 = (Flapjack.WordLangProgHOL.get 377 Flapjack.WordStore.heapLength) := by
  unfold input959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 377 Flapjack.WordStore.heapLength)).val
theorem output959_def : output959 = (Flapjack.WordLangProgHOL.get 377 Flapjack.WordStore.heapLength) := by
  unfold output959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output959_skip : Flapjack.WordAlloc.isSkip output959 = false := by
  rw [output959_def]
  kernel_rfl
theorem node959_eq : Flapjack.WordAlloc.removeDeadStructural input959 value484 value1 value2 = (output959, value4, value1) := by
  rw [input959_def, output959_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input959 input958)).val
theorem input960_def : input960 = (.seq input959 input958) := by
  unfold input960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output959 output958)).val
theorem output960_def : output960 = (.seq output959 output958) := by
  unfold output960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output960_skip : Flapjack.WordAlloc.isSkip output960 = false := by
  rw [output960_def]
  kernel_rfl
theorem node960_eq : Flapjack.WordAlloc.removeDeadStructural input960 value483 value1 value2 = (output960, value4, value1) := by
  rw [input960_def, output960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node958_eq]
  dsimp only
  rw [node959_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output958_skip, output959_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input960 input957)).val
theorem input961_def : input961 = (.seq input960 input957) := by
  unfold input961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output960 output957)).val
theorem output961_def : output961 = (.seq output960 output957) := by
  unfold output961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output961_skip : Flapjack.WordAlloc.isSkip output961 = false := by
  rw [output961_def]
  kernel_rfl
theorem node961_eq : Flapjack.WordAlloc.removeDeadStructural input961 value482 value1 value2 = (output961, value4, value1) := by
  rw [input961_def, output961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node957_eq]
  dsimp only
  rw [node960_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output957_skip, output960_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input961 input956)).val
theorem input962_def : input962 = (.seq input961 input956) := by
  unfold input962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output961 output956)).val
theorem output962_def : output962 = (.seq output961 output956) := by
  unfold output962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output962_skip : Flapjack.WordAlloc.isSkip output962 = false := by
  rw [output962_def]
  kernel_rfl
theorem node962_eq : Flapjack.WordAlloc.removeDeadStructural input962 value481 value1 value2 = (output962, value4, value1) := by
  rw [input962_def, output962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node956_eq]
  dsimp only
  rw [node961_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output956_skip, output961_skip]
  kernel_rfl

def value485 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 369 (Flapjack.WordLangAddr.addr 373 0#64)))).val
theorem input963_def : input963 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 369 (Flapjack.WordLangAddr.addr 373 0#64))) := by
  unfold input963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 369 (Flapjack.WordLangAddr.addr 373 0#64)))).val
theorem output963_def : output963 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 369 (Flapjack.WordLangAddr.addr 373 0#64))) := by
  unfold output963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output963_skip : Flapjack.WordAlloc.isSkip output963 = false := by
  rw [output963_def]
  kernel_rfl
theorem node963_eq : Flapjack.WordAlloc.removeDeadStructural input963 value4 value1 value2 = (output963, value485, value1) := by
  rw [input963_def, output963_def]
  kernel_rfl

def value486 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(373, 361)])).val
theorem input964_def : input964 = (Flapjack.WordLangProgHOL.move 0 [(373, 361)]) := by
  unfold input964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(373, 361)])).val
theorem output964_def : output964 = (Flapjack.WordLangProgHOL.move 0 [(373, 361)]) := by
  unfold output964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output964_skip : Flapjack.WordAlloc.isSkip output964 = false := by
  rw [output964_def]
  kernel_rfl
theorem node964_eq : Flapjack.WordAlloc.removeDeadStructural input964 value485 value1 value2 = (output964, value486, value1) := by
  rw [input964_def, output964_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input964 input963)).val
theorem input965_def : input965 = (.seq input964 input963) := by
  unfold input965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output964 output963)).val
theorem output965_def : output965 = (.seq output964 output963) := by
  unfold output965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output965_skip : Flapjack.WordAlloc.isSkip output965 = false := by
  rw [output965_def]
  kernel_rfl
theorem node965_eq : Flapjack.WordAlloc.removeDeadStructural input965 value4 value1 value2 = (output965, value486, value1) := by
  rw [input965_def, output965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node963_eq]
  dsimp only
  rw [node964_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output963_skip, output964_skip]
  kernel_rfl

def value487 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 0#64))).val
theorem input966_def : input966 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 0#64)) := by
  unfold input966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 0#64))).val
theorem output966_def : output966 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 0#64)) := by
  unfold output966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output966_skip : Flapjack.WordAlloc.isSkip output966 = false := by
  rw [output966_def]
  kernel_rfl
theorem node966_eq : Flapjack.WordAlloc.removeDeadStructural input966 value486 value1 value2 = (output966, value487, value1) := by
  rw [input966_def, output966_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 365 0#64))).val
theorem input967_def : input967 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 365 0#64)) := by
  unfold input967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output967_def : output967 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output967_skip : Flapjack.WordAlloc.isSkip output967 = true := by
  rw [output967_def]
  kernel_rfl
theorem node967_eq : Flapjack.WordAlloc.removeDeadStructural input967 value487 value1 value2 = (output967, value487, value1) := by
  rw [input967_def, output967_def]
  kernel_rfl

def value488 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 361 357 (Flapjack.WordRegImm.imm 18446744073709551512#64))))).val
theorem input968_def : input968 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 361 357 (Flapjack.WordRegImm.imm 18446744073709551512#64)))) := by
  unfold input968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 361 357 (Flapjack.WordRegImm.imm 18446744073709551512#64))))).val
theorem output968_def : output968 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 361 357 (Flapjack.WordRegImm.imm 18446744073709551512#64)))) := by
  unfold output968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output968_skip : Flapjack.WordAlloc.isSkip output968 = false := by
  rw [output968_def]
  kernel_rfl
theorem node968_eq : Flapjack.WordAlloc.removeDeadStructural input968 value487 value1 value2 = (output968, value488, value1) := by
  rw [input968_def, output968_def]
  kernel_rfl

def value489 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 357 353)).val
theorem input969_def : input969 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 357 353) := by
  unfold input969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 357 353)).val
theorem output969_def : output969 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 357 353) := by
  unfold output969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output969_skip : Flapjack.WordAlloc.isSkip output969 = false := by
  rw [output969_def]
  kernel_rfl
theorem node969_eq : Flapjack.WordAlloc.removeDeadStructural input969 value488 value1 value2 = (output969, value489, value1) := by
  rw [input969_def, output969_def]
  kernel_rfl

def value490 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 353 349 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input970_def : input970 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 353 349 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 353 349 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output970_def : output970 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 353 349 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output970_skip : Flapjack.WordAlloc.isSkip output970 = false := by
  rw [output970_def]
  kernel_rfl
theorem node970_eq : Flapjack.WordAlloc.removeDeadStructural input970 value489 value1 value2 = (output970, value490, value1) := by
  rw [input970_def, output970_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 349 Flapjack.WordStore.heapLength)).val
theorem input971_def : input971 = (Flapjack.WordLangProgHOL.get 349 Flapjack.WordStore.heapLength) := by
  unfold input971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 349 Flapjack.WordStore.heapLength)).val
theorem output971_def : output971 = (Flapjack.WordLangProgHOL.get 349 Flapjack.WordStore.heapLength) := by
  unfold output971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output971_skip : Flapjack.WordAlloc.isSkip output971 = false := by
  rw [output971_def]
  kernel_rfl
theorem node971_eq : Flapjack.WordAlloc.removeDeadStructural input971 value490 value1 value2 = (output971, value4, value1) := by
  rw [input971_def, output971_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input971 input970)).val
theorem input972_def : input972 = (.seq input971 input970) := by
  unfold input972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output971 output970)).val
theorem output972_def : output972 = (.seq output971 output970) := by
  unfold output972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output972_skip : Flapjack.WordAlloc.isSkip output972 = false := by
  rw [output972_def]
  kernel_rfl
theorem node972_eq : Flapjack.WordAlloc.removeDeadStructural input972 value489 value1 value2 = (output972, value4, value1) := by
  rw [input972_def, output972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node970_eq]
  dsimp only
  rw [node971_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output970_skip, output971_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input972 input969)).val
theorem input973_def : input973 = (.seq input972 input969) := by
  unfold input973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output972 output969)).val
theorem output973_def : output973 = (.seq output972 output969) := by
  unfold output973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output973_skip : Flapjack.WordAlloc.isSkip output973 = false := by
  rw [output973_def]
  kernel_rfl
theorem node973_eq : Flapjack.WordAlloc.removeDeadStructural input973 value488 value1 value2 = (output973, value4, value1) := by
  rw [input973_def, output973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node969_eq]
  dsimp only
  rw [node972_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output969_skip, output972_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input973 input968)).val
theorem input974_def : input974 = (.seq input973 input968) := by
  unfold input974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output973 output968)).val
theorem output974_def : output974 = (.seq output973 output968) := by
  unfold output974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output974_skip : Flapjack.WordAlloc.isSkip output974 = false := by
  rw [output974_def]
  kernel_rfl
theorem node974_eq : Flapjack.WordAlloc.removeDeadStructural input974 value487 value1 value2 = (output974, value4, value1) := by
  rw [input974_def, output974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node968_eq]
  dsimp only
  rw [node973_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output968_skip, output973_skip]
  kernel_rfl

def value491 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 341 (Flapjack.WordLangAddr.addr 345 0#64)))).val
theorem input975_def : input975 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 341 (Flapjack.WordLangAddr.addr 345 0#64))) := by
  unfold input975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 341 (Flapjack.WordLangAddr.addr 345 0#64)))).val
theorem output975_def : output975 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 341 (Flapjack.WordLangAddr.addr 345 0#64))) := by
  unfold output975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output975_skip : Flapjack.WordAlloc.isSkip output975 = false := by
  rw [output975_def]
  kernel_rfl
theorem node975_eq : Flapjack.WordAlloc.removeDeadStructural input975 value4 value1 value2 = (output975, value491, value1) := by
  rw [input975_def, output975_def]
  kernel_rfl

def value492 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(345, 333)])).val
theorem input976_def : input976 = (Flapjack.WordLangProgHOL.move 0 [(345, 333)]) := by
  unfold input976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(345, 333)])).val
theorem output976_def : output976 = (Flapjack.WordLangProgHOL.move 0 [(345, 333)]) := by
  unfold output976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output976_skip : Flapjack.WordAlloc.isSkip output976 = false := by
  rw [output976_def]
  kernel_rfl
theorem node976_eq : Flapjack.WordAlloc.removeDeadStructural input976 value491 value1 value2 = (output976, value492, value1) := by
  rw [input976_def, output976_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input976 input975)).val
theorem input977_def : input977 = (.seq input976 input975) := by
  unfold input977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output976 output975)).val
theorem output977_def : output977 = (.seq output976 output975) := by
  unfold output977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output977_skip : Flapjack.WordAlloc.isSkip output977 = false := by
  rw [output977_def]
  kernel_rfl
theorem node977_eq : Flapjack.WordAlloc.removeDeadStructural input977 value4 value1 value2 = (output977, value492, value1) := by
  rw [input977_def, output977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node975_eq]
  dsimp only
  rw [node976_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output975_skip, output976_skip]
  kernel_rfl

def value493 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 341 0#64))).val
theorem input978_def : input978 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 341 0#64)) := by
  unfold input978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 341 0#64))).val
theorem output978_def : output978 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 341 0#64)) := by
  unfold output978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output978_skip : Flapjack.WordAlloc.isSkip output978 = false := by
  rw [output978_def]
  kernel_rfl
theorem node978_eq : Flapjack.WordAlloc.removeDeadStructural input978 value492 value1 value2 = (output978, value493, value1) := by
  rw [input978_def, output978_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 0#64))).val
theorem input979_def : input979 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 0#64)) := by
  unfold input979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output979_def : output979 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output979_skip : Flapjack.WordAlloc.isSkip output979 = true := by
  rw [output979_def]
  kernel_rfl
theorem node979_eq : Flapjack.WordAlloc.removeDeadStructural input979 value493 value1 value2 = (output979, value493, value1) := by
  rw [input979_def, output979_def]
  kernel_rfl

def value494 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 333 329 (Flapjack.WordRegImm.imm 18446744073709551520#64))))).val
theorem input980_def : input980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 333 329 (Flapjack.WordRegImm.imm 18446744073709551520#64)))) := by
  unfold input980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 333 329 (Flapjack.WordRegImm.imm 18446744073709551520#64))))).val
theorem output980_def : output980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 333 329 (Flapjack.WordRegImm.imm 18446744073709551520#64)))) := by
  unfold output980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output980_skip : Flapjack.WordAlloc.isSkip output980 = false := by
  rw [output980_def]
  kernel_rfl
theorem node980_eq : Flapjack.WordAlloc.removeDeadStructural input980 value493 value1 value2 = (output980, value494, value1) := by
  rw [input980_def, output980_def]
  kernel_rfl

def value495 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 329 325)).val
theorem input981_def : input981 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 329 325) := by
  unfold input981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 329 325)).val
theorem output981_def : output981 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 329 325) := by
  unfold output981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output981_skip : Flapjack.WordAlloc.isSkip output981 = false := by
  rw [output981_def]
  kernel_rfl
theorem node981_eq : Flapjack.WordAlloc.removeDeadStructural input981 value494 value1 value2 = (output981, value495, value1) := by
  rw [input981_def, output981_def]
  kernel_rfl

def value496 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 325 321 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input982_def : input982 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 325 321 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 325 321 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output982_def : output982 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 325 321 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output982_skip : Flapjack.WordAlloc.isSkip output982 = false := by
  rw [output982_def]
  kernel_rfl
theorem node982_eq : Flapjack.WordAlloc.removeDeadStructural input982 value495 value1 value2 = (output982, value496, value1) := by
  rw [input982_def, output982_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 321 Flapjack.WordStore.heapLength)).val
theorem input983_def : input983 = (Flapjack.WordLangProgHOL.get 321 Flapjack.WordStore.heapLength) := by
  unfold input983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 321 Flapjack.WordStore.heapLength)).val
theorem output983_def : output983 = (Flapjack.WordLangProgHOL.get 321 Flapjack.WordStore.heapLength) := by
  unfold output983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output983_skip : Flapjack.WordAlloc.isSkip output983 = false := by
  rw [output983_def]
  kernel_rfl
theorem node983_eq : Flapjack.WordAlloc.removeDeadStructural input983 value496 value1 value2 = (output983, value4, value1) := by
  rw [input983_def, output983_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input983 input982)).val
theorem input984_def : input984 = (.seq input983 input982) := by
  unfold input984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output983 output982)).val
theorem output984_def : output984 = (.seq output983 output982) := by
  unfold output984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output984_skip : Flapjack.WordAlloc.isSkip output984 = false := by
  rw [output984_def]
  kernel_rfl
theorem node984_eq : Flapjack.WordAlloc.removeDeadStructural input984 value495 value1 value2 = (output984, value4, value1) := by
  rw [input984_def, output984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node982_eq]
  dsimp only
  rw [node983_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output982_skip, output983_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input984 input981)).val
theorem input985_def : input985 = (.seq input984 input981) := by
  unfold input985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output984 output981)).val
theorem output985_def : output985 = (.seq output984 output981) := by
  unfold output985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output985_skip : Flapjack.WordAlloc.isSkip output985 = false := by
  rw [output985_def]
  kernel_rfl
theorem node985_eq : Flapjack.WordAlloc.removeDeadStructural input985 value494 value1 value2 = (output985, value4, value1) := by
  rw [input985_def, output985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node981_eq]
  dsimp only
  rw [node984_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output981_skip, output984_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input985 input980)).val
theorem input986_def : input986 = (.seq input985 input980) := by
  unfold input986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output985 output980)).val
theorem output986_def : output986 = (.seq output985 output980) := by
  unfold output986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output986_skip : Flapjack.WordAlloc.isSkip output986 = false := by
  rw [output986_def]
  kernel_rfl
theorem node986_eq : Flapjack.WordAlloc.removeDeadStructural input986 value493 value1 value2 = (output986, value4, value1) := by
  rw [input986_def, output986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node980_eq]
  dsimp only
  rw [node985_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output980_skip, output985_skip]
  kernel_rfl

def value497 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 313 (Flapjack.WordLangAddr.addr 317 0#64)))).val
theorem input987_def : input987 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 313 (Flapjack.WordLangAddr.addr 317 0#64))) := by
  unfold input987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 313 (Flapjack.WordLangAddr.addr 317 0#64)))).val
theorem output987_def : output987 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 313 (Flapjack.WordLangAddr.addr 317 0#64))) := by
  unfold output987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output987_skip : Flapjack.WordAlloc.isSkip output987 = false := by
  rw [output987_def]
  kernel_rfl
theorem node987_eq : Flapjack.WordAlloc.removeDeadStructural input987 value4 value1 value2 = (output987, value497, value1) := by
  rw [input987_def, output987_def]
  kernel_rfl

def value498 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(317, 305)])).val
theorem input988_def : input988 = (Flapjack.WordLangProgHOL.move 0 [(317, 305)]) := by
  unfold input988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(317, 305)])).val
theorem output988_def : output988 = (Flapjack.WordLangProgHOL.move 0 [(317, 305)]) := by
  unfold output988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output988_skip : Flapjack.WordAlloc.isSkip output988 = false := by
  rw [output988_def]
  kernel_rfl
theorem node988_eq : Flapjack.WordAlloc.removeDeadStructural input988 value497 value1 value2 = (output988, value498, value1) := by
  rw [input988_def, output988_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input988 input987)).val
theorem input989_def : input989 = (.seq input988 input987) := by
  unfold input989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output988 output987)).val
theorem output989_def : output989 = (.seq output988 output987) := by
  unfold output989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output989_skip : Flapjack.WordAlloc.isSkip output989 = false := by
  rw [output989_def]
  kernel_rfl
theorem node989_eq : Flapjack.WordAlloc.removeDeadStructural input989 value4 value1 value2 = (output989, value498, value1) := by
  rw [input989_def, output989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node987_eq]
  dsimp only
  rw [node988_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output987_skip, output988_skip]
  kernel_rfl

def value499 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64))).val
theorem input990_def : input990 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64)) := by
  unfold input990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64))).val
theorem output990_def : output990 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 313 0#64)) := by
  unfold output990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output990_skip : Flapjack.WordAlloc.isSkip output990 = false := by
  rw [output990_def]
  kernel_rfl
theorem node990_eq : Flapjack.WordAlloc.removeDeadStructural input990 value498 value1 value2 = (output990, value499, value1) := by
  rw [input990_def, output990_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 309 0#64))).val
theorem input991_def : input991 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 309 0#64)) := by
  unfold input991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output991_def : output991 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output991_skip : Flapjack.WordAlloc.isSkip output991 = true := by
  rw [output991_def]
  kernel_rfl
theorem node991_eq : Flapjack.WordAlloc.removeDeadStructural input991 value499 value1 value2 = (output991, value499, value1) := by
  rw [input991_def, output991_def]
  kernel_rfl

def value500 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 305 301 (Flapjack.WordRegImm.imm 18446744073709551528#64))))).val
theorem input992_def : input992 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 305 301 (Flapjack.WordRegImm.imm 18446744073709551528#64)))) := by
  unfold input992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 305 301 (Flapjack.WordRegImm.imm 18446744073709551528#64))))).val
theorem output992_def : output992 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 305 301 (Flapjack.WordRegImm.imm 18446744073709551528#64)))) := by
  unfold output992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output992_skip : Flapjack.WordAlloc.isSkip output992 = false := by
  rw [output992_def]
  kernel_rfl
theorem node992_eq : Flapjack.WordAlloc.removeDeadStructural input992 value499 value1 value2 = (output992, value500, value1) := by
  rw [input992_def, output992_def]
  kernel_rfl

def value501 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 301 297)).val
theorem input993_def : input993 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 301 297) := by
  unfold input993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 301 297)).val
theorem output993_def : output993 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 301 297) := by
  unfold output993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output993_skip : Flapjack.WordAlloc.isSkip output993 = false := by
  rw [output993_def]
  kernel_rfl
theorem node993_eq : Flapjack.WordAlloc.removeDeadStructural input993 value500 value1 value2 = (output993, value501, value1) := by
  rw [input993_def, output993_def]
  kernel_rfl

def value502 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 297 293 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input994_def : input994 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 297 293 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 297 293 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output994_def : output994 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 297 293 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output994_skip : Flapjack.WordAlloc.isSkip output994 = false := by
  rw [output994_def]
  kernel_rfl
theorem node994_eq : Flapjack.WordAlloc.removeDeadStructural input994 value501 value1 value2 = (output994, value502, value1) := by
  rw [input994_def, output994_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 293 Flapjack.WordStore.heapLength)).val
theorem input995_def : input995 = (Flapjack.WordLangProgHOL.get 293 Flapjack.WordStore.heapLength) := by
  unfold input995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 293 Flapjack.WordStore.heapLength)).val
theorem output995_def : output995 = (Flapjack.WordLangProgHOL.get 293 Flapjack.WordStore.heapLength) := by
  unfold output995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output995_skip : Flapjack.WordAlloc.isSkip output995 = false := by
  rw [output995_def]
  kernel_rfl
theorem node995_eq : Flapjack.WordAlloc.removeDeadStructural input995 value502 value1 value2 = (output995, value4, value1) := by
  rw [input995_def, output995_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input995 input994)).val
theorem input996_def : input996 = (.seq input995 input994) := by
  unfold input996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output995 output994)).val
theorem output996_def : output996 = (.seq output995 output994) := by
  unfold output996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output996_skip : Flapjack.WordAlloc.isSkip output996 = false := by
  rw [output996_def]
  kernel_rfl
theorem node996_eq : Flapjack.WordAlloc.removeDeadStructural input996 value501 value1 value2 = (output996, value4, value1) := by
  rw [input996_def, output996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node994_eq]
  dsimp only
  rw [node995_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output994_skip, output995_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input996 input993)).val
theorem input997_def : input997 = (.seq input996 input993) := by
  unfold input997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output996 output993)).val
theorem output997_def : output997 = (.seq output996 output993) := by
  unfold output997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output997_skip : Flapjack.WordAlloc.isSkip output997 = false := by
  rw [output997_def]
  kernel_rfl
theorem node997_eq : Flapjack.WordAlloc.removeDeadStructural input997 value500 value1 value2 = (output997, value4, value1) := by
  rw [input997_def, output997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node993_eq]
  dsimp only
  rw [node996_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output993_skip, output996_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input997 input992)).val
theorem input998_def : input998 = (.seq input997 input992) := by
  unfold input998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output997 output992)).val
theorem output998_def : output998 = (.seq output997 output992) := by
  unfold output998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output998_skip : Flapjack.WordAlloc.isSkip output998 = false := by
  rw [output998_def]
  kernel_rfl
theorem node998_eq : Flapjack.WordAlloc.removeDeadStructural input998 value499 value1 value2 = (output998, value4, value1) := by
  rw [input998_def, output998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node992_eq]
  dsimp only
  rw [node997_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output992_skip, output997_skip]
  kernel_rfl

def value503 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 285 (Flapjack.WordLangAddr.addr 289 0#64)))).val
theorem input999_def : input999 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 285 (Flapjack.WordLangAddr.addr 289 0#64))) := by
  unfold input999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 285 (Flapjack.WordLangAddr.addr 289 0#64)))).val
theorem output999_def : output999 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 285 (Flapjack.WordLangAddr.addr 289 0#64))) := by
  unfold output999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output999_skip : Flapjack.WordAlloc.isSkip output999 = false := by
  rw [output999_def]
  kernel_rfl
theorem node999_eq : Flapjack.WordAlloc.removeDeadStructural input999 value4 value1 value2 = (output999, value503, value1) := by
  rw [input999_def, output999_def]
  kernel_rfl

def value504 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(289, 277)])).val
theorem input1000_def : input1000 = (Flapjack.WordLangProgHOL.move 0 [(289, 277)]) := by
  unfold input1000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(289, 277)])).val
theorem output1000_def : output1000 = (Flapjack.WordLangProgHOL.move 0 [(289, 277)]) := by
  unfold output1000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1000_skip : Flapjack.WordAlloc.isSkip output1000 = false := by
  rw [output1000_def]
  kernel_rfl
theorem node1000_eq : Flapjack.WordAlloc.removeDeadStructural input1000 value503 value1 value2 = (output1000, value504, value1) := by
  rw [input1000_def, output1000_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input1001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1000 input999)).val
theorem input1001_def : input1001 = (.seq input1000 input999) := by
  unfold input1001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1000 output999)).val
theorem output1001_def : output1001 = (.seq output1000 output999) := by
  unfold output1001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1001_skip : Flapjack.WordAlloc.isSkip output1001 = false := by
  rw [output1001_def]
  kernel_rfl
theorem node1001_eq : Flapjack.WordAlloc.removeDeadStructural input1001 value4 value1 value2 = (output1001, value504, value1) := by
  rw [input1001_def, output1001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node999_eq]
  dsimp only
  rw [node1000_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output999_skip, output1000_skip]
  kernel_rfl

def value505 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 0#64))).val
theorem input1002_def : input1002 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 0#64)) := by
  unfold input1002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 0#64))).val
theorem output1002_def : output1002 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 0#64)) := by
  unfold output1002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1002_skip : Flapjack.WordAlloc.isSkip output1002 = false := by
  rw [output1002_def]
  kernel_rfl
theorem node1002_eq : Flapjack.WordAlloc.removeDeadStructural input1002 value504 value1 value2 = (output1002, value505, value1) := by
  rw [input1002_def, output1002_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input1003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 0#64))).val
theorem input1003_def : input1003 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 0#64)) := by
  unfold input1003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1003_def : output1003 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1003_skip : Flapjack.WordAlloc.isSkip output1003 = true := by
  rw [output1003_def]
  kernel_rfl
theorem node1003_eq : Flapjack.WordAlloc.removeDeadStructural input1003 value505 value1 value2 = (output1003, value505, value1) := by
  rw [input1003_def, output1003_def]
  kernel_rfl

def value506 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 277 273 (Flapjack.WordRegImm.imm 18446744073709551536#64))))).val
theorem input1004_def : input1004 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 277 273 (Flapjack.WordRegImm.imm 18446744073709551536#64)))) := by
  unfold input1004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 277 273 (Flapjack.WordRegImm.imm 18446744073709551536#64))))).val
theorem output1004_def : output1004 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 277 273 (Flapjack.WordRegImm.imm 18446744073709551536#64)))) := by
  unfold output1004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1004_skip : Flapjack.WordAlloc.isSkip output1004 = false := by
  rw [output1004_def]
  kernel_rfl
theorem node1004_eq : Flapjack.WordAlloc.removeDeadStructural input1004 value505 value1 value2 = (output1004, value506, value1) := by
  rw [input1004_def, output1004_def]
  kernel_rfl

def value507 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 273 269)).val
theorem input1005_def : input1005 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 273 269) := by
  unfold input1005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 273 269)).val
theorem output1005_def : output1005 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 273 269) := by
  unfold output1005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1005_skip : Flapjack.WordAlloc.isSkip output1005 = false := by
  rw [output1005_def]
  kernel_rfl
theorem node1005_eq : Flapjack.WordAlloc.removeDeadStructural input1005 value506 value1 value2 = (output1005, value507, value1) := by
  rw [input1005_def, output1005_def]
  kernel_rfl

def value508 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 269 265 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1006_def : input1006 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 269 265 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 269 265 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1006_def : output1006 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 269 265 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1006_skip : Flapjack.WordAlloc.isSkip output1006 = false := by
  rw [output1006_def]
  kernel_rfl
theorem node1006_eq : Flapjack.WordAlloc.removeDeadStructural input1006 value507 value1 value2 = (output1006, value508, value1) := by
  rw [input1006_def, output1006_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input1007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 265 Flapjack.WordStore.heapLength)).val
theorem input1007_def : input1007 = (Flapjack.WordLangProgHOL.get 265 Flapjack.WordStore.heapLength) := by
  unfold input1007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 265 Flapjack.WordStore.heapLength)).val
theorem output1007_def : output1007 = (Flapjack.WordLangProgHOL.get 265 Flapjack.WordStore.heapLength) := by
  unfold output1007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1007_skip : Flapjack.WordAlloc.isSkip output1007 = false := by
  rw [output1007_def]
  kernel_rfl
theorem node1007_eq : Flapjack.WordAlloc.removeDeadStructural input1007 value508 value1 value2 = (output1007, value4, value1) := by
  rw [input1007_def, output1007_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input1008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1007 input1006)).val
theorem input1008_def : input1008 = (.seq input1007 input1006) := by
  unfold input1008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1007 output1006)).val
theorem output1008_def : output1008 = (.seq output1007 output1006) := by
  unfold output1008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1008_skip : Flapjack.WordAlloc.isSkip output1008 = false := by
  rw [output1008_def]
  kernel_rfl
theorem node1008_eq : Flapjack.WordAlloc.removeDeadStructural input1008 value507 value1 value2 = (output1008, value4, value1) := by
  rw [input1008_def, output1008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1006_eq]
  dsimp only
  rw [node1007_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1006_skip, output1007_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input1009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1008 input1005)).val
theorem input1009_def : input1009 = (.seq input1008 input1005) := by
  unfold input1009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1008 output1005)).val
theorem output1009_def : output1009 = (.seq output1008 output1005) := by
  unfold output1009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1009_skip : Flapjack.WordAlloc.isSkip output1009 = false := by
  rw [output1009_def]
  kernel_rfl
theorem node1009_eq : Flapjack.WordAlloc.removeDeadStructural input1009 value506 value1 value2 = (output1009, value4, value1) := by
  rw [input1009_def, output1009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1005_eq]
  dsimp only
  rw [node1008_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1005_skip, output1008_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input1010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1009 input1004)).val
theorem input1010_def : input1010 = (.seq input1009 input1004) := by
  unfold input1010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1009 output1004)).val
theorem output1010_def : output1010 = (.seq output1009 output1004) := by
  unfold output1010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1010_skip : Flapjack.WordAlloc.isSkip output1010 = false := by
  rw [output1010_def]
  kernel_rfl
theorem node1010_eq : Flapjack.WordAlloc.removeDeadStructural input1010 value505 value1 value2 = (output1010, value4, value1) := by
  rw [input1010_def, output1010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1004_eq]
  dsimp only
  rw [node1009_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1004_skip, output1009_skip]
  kernel_rfl

def value509 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 257 (Flapjack.WordLangAddr.addr 261 0#64)))).val
theorem input1011_def : input1011 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 257 (Flapjack.WordLangAddr.addr 261 0#64))) := by
  unfold input1011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 257 (Flapjack.WordLangAddr.addr 261 0#64)))).val
theorem output1011_def : output1011 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 257 (Flapjack.WordLangAddr.addr 261 0#64))) := by
  unfold output1011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1011_skip : Flapjack.WordAlloc.isSkip output1011 = false := by
  rw [output1011_def]
  kernel_rfl
theorem node1011_eq : Flapjack.WordAlloc.removeDeadStructural input1011 value4 value1 value2 = (output1011, value509, value1) := by
  rw [input1011_def, output1011_def]
  kernel_rfl

def value510 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(261, 249)])).val
theorem input1012_def : input1012 = (Flapjack.WordLangProgHOL.move 0 [(261, 249)]) := by
  unfold input1012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(261, 249)])).val
theorem output1012_def : output1012 = (Flapjack.WordLangProgHOL.move 0 [(261, 249)]) := by
  unfold output1012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1012_skip : Flapjack.WordAlloc.isSkip output1012 = false := by
  rw [output1012_def]
  kernel_rfl
theorem node1012_eq : Flapjack.WordAlloc.removeDeadStructural input1012 value509 value1 value2 = (output1012, value510, value1) := by
  rw [input1012_def, output1012_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input1013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1012 input1011)).val
theorem input1013_def : input1013 = (.seq input1012 input1011) := by
  unfold input1013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1012 output1011)).val
theorem output1013_def : output1013 = (.seq output1012 output1011) := by
  unfold output1013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1013_skip : Flapjack.WordAlloc.isSkip output1013 = false := by
  rw [output1013_def]
  kernel_rfl
theorem node1013_eq : Flapjack.WordAlloc.removeDeadStructural input1013 value4 value1 value2 = (output1013, value510, value1) := by
  rw [input1013_def, output1013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1011_eq]
  dsimp only
  rw [node1012_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1011_skip, output1012_skip]
  kernel_rfl

def value511 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64))).val
theorem input1014_def : input1014 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64)) := by
  unfold input1014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64))).val
theorem output1014_def : output1014 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 257 0#64)) := by
  unfold output1014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1014_skip : Flapjack.WordAlloc.isSkip output1014 = false := by
  rw [output1014_def]
  kernel_rfl
theorem node1014_eq : Flapjack.WordAlloc.removeDeadStructural input1014 value510 value1 value2 = (output1014, value511, value1) := by
  rw [input1014_def, output1014_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input1015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 0#64))).val
theorem input1015_def : input1015 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 0#64)) := by
  unfold input1015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1015_def : output1015 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1015_skip : Flapjack.WordAlloc.isSkip output1015 = true := by
  rw [output1015_def]
  kernel_rfl
theorem node1015_eq : Flapjack.WordAlloc.removeDeadStructural input1015 value511 value1 value2 = (output1015, value511, value1) := by
  rw [input1015_def, output1015_def]
  kernel_rfl

def value512 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 249 245 (Flapjack.WordRegImm.imm 18446744073709551544#64))))).val
theorem input1016_def : input1016 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 249 245 (Flapjack.WordRegImm.imm 18446744073709551544#64)))) := by
  unfold input1016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 249 245 (Flapjack.WordRegImm.imm 18446744073709551544#64))))).val
theorem output1016_def : output1016 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 249 245 (Flapjack.WordRegImm.imm 18446744073709551544#64)))) := by
  unfold output1016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1016_skip : Flapjack.WordAlloc.isSkip output1016 = false := by
  rw [output1016_def]
  kernel_rfl
theorem node1016_eq : Flapjack.WordAlloc.removeDeadStructural input1016 value511 value1 value2 = (output1016, value512, value1) := by
  rw [input1016_def, output1016_def]
  kernel_rfl

def value513 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 245 241)).val
theorem input1017_def : input1017 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 245 241) := by
  unfold input1017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 245 241)).val
theorem output1017_def : output1017 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 245 241) := by
  unfold output1017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1017_skip : Flapjack.WordAlloc.isSkip output1017 = false := by
  rw [output1017_def]
  kernel_rfl
theorem node1017_eq : Flapjack.WordAlloc.removeDeadStructural input1017 value512 value1 value2 = (output1017, value513, value1) := by
  rw [input1017_def, output1017_def]
  kernel_rfl

def value514 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 241 237 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1018_def : input1018 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 241 237 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 241 237 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1018_def : output1018 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 241 237 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1018_skip : Flapjack.WordAlloc.isSkip output1018 = false := by
  rw [output1018_def]
  kernel_rfl
theorem node1018_eq : Flapjack.WordAlloc.removeDeadStructural input1018 value513 value1 value2 = (output1018, value514, value1) := by
  rw [input1018_def, output1018_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input1019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 237 Flapjack.WordStore.heapLength)).val
theorem input1019_def : input1019 = (Flapjack.WordLangProgHOL.get 237 Flapjack.WordStore.heapLength) := by
  unfold input1019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 237 Flapjack.WordStore.heapLength)).val
theorem output1019_def : output1019 = (Flapjack.WordLangProgHOL.get 237 Flapjack.WordStore.heapLength) := by
  unfold output1019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1019_skip : Flapjack.WordAlloc.isSkip output1019 = false := by
  rw [output1019_def]
  kernel_rfl
theorem node1019_eq : Flapjack.WordAlloc.removeDeadStructural input1019 value514 value1 value2 = (output1019, value4, value1) := by
  rw [input1019_def, output1019_def]
  kernel_rfl

@[irreducible, cbv_opaque] def input1020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1019 input1018)).val
theorem input1020_def : input1020 = (.seq input1019 input1018) := by
  unfold input1020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1019 output1018)).val
theorem output1020_def : output1020 = (.seq output1019 output1018) := by
  unfold output1020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1020_skip : Flapjack.WordAlloc.isSkip output1020 = false := by
  rw [output1020_def]
  kernel_rfl
theorem node1020_eq : Flapjack.WordAlloc.removeDeadStructural input1020 value513 value1 value2 = (output1020, value4, value1) := by
  rw [input1020_def, output1020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1018_eq]
  dsimp only
  rw [node1019_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1018_skip, output1019_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input1021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1020 input1017)).val
theorem input1021_def : input1021 = (.seq input1020 input1017) := by
  unfold input1021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1020 output1017)).val
theorem output1021_def : output1021 = (.seq output1020 output1017) := by
  unfold output1021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1021_skip : Flapjack.WordAlloc.isSkip output1021 = false := by
  rw [output1021_def]
  kernel_rfl
theorem node1021_eq : Flapjack.WordAlloc.removeDeadStructural input1021 value512 value1 value2 = (output1021, value4, value1) := by
  rw [input1021_def, output1021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1017_eq]
  dsimp only
  rw [node1020_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1017_skip, output1020_skip]
  kernel_rfl

@[irreducible, cbv_opaque] def input1022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1021 input1016)).val
theorem input1022_def : input1022 = (.seq input1021 input1016) := by
  unfold input1022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1021 output1016)).val
theorem output1022_def : output1022 = (.seq output1021 output1016) := by
  unfold output1022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1022_skip : Flapjack.WordAlloc.isSkip output1022 = false := by
  rw [output1022_def]
  kernel_rfl
theorem node1022_eq : Flapjack.WordAlloc.removeDeadStructural input1022 value511 value1 value2 = (output1022, value4, value1) := by
  rw [input1022_def, output1022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1016_eq]
  dsimp only
  rw [node1021_eq]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1016_skip, output1021_skip]
  kernel_rfl

def value515 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 229 (Flapjack.WordLangAddr.addr 233 0#64)))).val
theorem input1023_def : input1023 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 229 (Flapjack.WordLangAddr.addr 233 0#64))) := by
  unfold input1023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 229 (Flapjack.WordLangAddr.addr 233 0#64)))).val
theorem output1023_def : output1023 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 229 (Flapjack.WordLangAddr.addr 233 0#64))) := by
  unfold output1023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1023_skip : Flapjack.WordAlloc.isSkip output1023 = false := by
  rw [output1023_def]
  kernel_rfl
theorem node1023_eq : Flapjack.WordAlloc.removeDeadStructural input1023 value4 value1 value2 = (output1023, value515, value1) := by
  rw [input1023_def, output1023_def]
  kernel_rfl

#print axioms node1023_eq
end InitECandidate.Proofs.DeadStages64
