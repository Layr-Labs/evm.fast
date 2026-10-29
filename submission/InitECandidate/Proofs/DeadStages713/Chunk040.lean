import InitECandidate.Proofs.DeadStages713.Chunk039
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input10240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8181 10776056440809943711#64))).val
theorem input10240_def : input10240 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8181 10776056440809943711#64)) := by
  unfold input10240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10240_def : output10240 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10240_skip : Flapjack.WordAlloc.isSkip output10240 = true := by
  rw [output10240_def]
  conv => lhs; cbv
  try rfl
theorem node10240_eq : Flapjack.WordAlloc.removeDeadStructural input10240 value5124 value1 value2 = (output10240, value5124, value1) := by
  rw [input10240_def, output10240_def]
  try (conv => lhs; cbv)
  try rfl

def value5125 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8177 8173 (Flapjack.WordRegImm.imm 2008#64))))).val
theorem input10241_def : input10241 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8177 8173 (Flapjack.WordRegImm.imm 2008#64)))) := by
  unfold input10241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8177 8173 (Flapjack.WordRegImm.imm 2008#64))))).val
theorem output10241_def : output10241 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8177 8173 (Flapjack.WordRegImm.imm 2008#64)))) := by
  unfold output10241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10241_skip : Flapjack.WordAlloc.isSkip output10241 = false := by
  rw [output10241_def]
  conv => lhs; cbv
  try rfl
theorem node10241_eq : Flapjack.WordAlloc.removeDeadStructural input10241 value5124 value1 value2 = (output10241, value5125, value1) := by
  rw [input10241_def, output10241_def]
  try (conv => lhs; cbv)
  try rfl

def value5126 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8173 (Flapjack.WordLangAddr.addr 8169 18446744073709551104#64)))).val
theorem input10242_def : input10242 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8173 (Flapjack.WordLangAddr.addr 8169 18446744073709551104#64))) := by
  unfold input10242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8173 (Flapjack.WordLangAddr.addr 8169 18446744073709551104#64)))).val
theorem output10242_def : output10242 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8173 (Flapjack.WordLangAddr.addr 8169 18446744073709551104#64))) := by
  unfold output10242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10242_skip : Flapjack.WordAlloc.isSkip output10242 = false := by
  rw [output10242_def]
  conv => lhs; cbv
  try rfl
theorem node10242_eq : Flapjack.WordAlloc.removeDeadStructural input10242 value5125 value1 value2 = (output10242, value5126, value1) := by
  rw [input10242_def, output10242_def]
  try (conv => lhs; cbv)
  try rfl

def value5127 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8169 8165)).val
theorem input10243_def : input10243 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8169 8165) := by
  unfold input10243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8169 8165)).val
theorem output10243_def : output10243 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8169 8165) := by
  unfold output10243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10243_skip : Flapjack.WordAlloc.isSkip output10243 = false := by
  rw [output10243_def]
  conv => lhs; cbv
  try rfl
theorem node10243_eq : Flapjack.WordAlloc.removeDeadStructural input10243 value5126 value1 value2 = (output10243, value5127, value1) := by
  rw [input10243_def, output10243_def]
  try (conv => lhs; cbv)
  try rfl

def value5128 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8165 8161 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10244_def : input10244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8165 8161 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8165 8161 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10244_def : output10244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8165 8161 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10244_skip : Flapjack.WordAlloc.isSkip output10244 = false := by
  rw [output10244_def]
  conv => lhs; cbv
  try rfl
theorem node10244_eq : Flapjack.WordAlloc.removeDeadStructural input10244 value5127 value1 value2 = (output10244, value5128, value1) := by
  rw [input10244_def, output10244_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8161 Flapjack.WordStore.heapLength)).val
theorem input10245_def : input10245 = (Flapjack.WordLangProgHOL.get 8161 Flapjack.WordStore.heapLength) := by
  unfold input10245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8161 Flapjack.WordStore.heapLength)).val
theorem output10245_def : output10245 = (Flapjack.WordLangProgHOL.get 8161 Flapjack.WordStore.heapLength) := by
  unfold output10245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10245_skip : Flapjack.WordAlloc.isSkip output10245 = false := by
  rw [output10245_def]
  conv => lhs; cbv
  try rfl
theorem node10245_eq : Flapjack.WordAlloc.removeDeadStructural input10245 value5128 value1 value2 = (output10245, value5, value1) := by
  rw [input10245_def, output10245_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10245 input10244)).val
theorem input10246_def : input10246 = (.seq input10245 input10244) := by
  unfold input10246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10245 output10244)).val
theorem output10246_def : output10246 = (.seq output10245 output10244) := by
  unfold output10246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10246_skip : Flapjack.WordAlloc.isSkip output10246 = false := by
  rw [output10246_def]
  conv => lhs; cbv
  try rfl
theorem node10246_eq : Flapjack.WordAlloc.removeDeadStructural input10246 value5127 value1 value2 = (output10246, value5, value1) := by
  rw [input10246_def, output10246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10244_eq]
  dsimp only
  rw [node10245_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10246 input10243)).val
theorem input10247_def : input10247 = (.seq input10246 input10243) := by
  unfold input10247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10246 output10243)).val
theorem output10247_def : output10247 = (.seq output10246 output10243) := by
  unfold output10247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10247_skip : Flapjack.WordAlloc.isSkip output10247 = false := by
  rw [output10247_def]
  conv => lhs; cbv
  try rfl
theorem node10247_eq : Flapjack.WordAlloc.removeDeadStructural input10247 value5126 value1 value2 = (output10247, value5, value1) := by
  rw [input10247_def, output10247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10243_eq]
  dsimp only
  rw [node10246_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10247 input10242)).val
theorem input10248_def : input10248 = (.seq input10247 input10242) := by
  unfold input10248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10247 output10242)).val
theorem output10248_def : output10248 = (.seq output10247 output10242) := by
  unfold output10248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10248_skip : Flapjack.WordAlloc.isSkip output10248 = false := by
  rw [output10248_def]
  conv => lhs; cbv
  try rfl
theorem node10248_eq : Flapjack.WordAlloc.removeDeadStructural input10248 value5125 value1 value2 = (output10248, value5, value1) := by
  rw [input10248_def, output10248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10242_eq]
  dsimp only
  rw [node10247_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10248 input10241)).val
theorem input10249_def : input10249 = (.seq input10248 input10241) := by
  unfold input10249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10248 output10241)).val
theorem output10249_def : output10249 = (.seq output10248 output10241) := by
  unfold output10249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10249_skip : Flapjack.WordAlloc.isSkip output10249 = false := by
  rw [output10249_def]
  conv => lhs; cbv
  try rfl
theorem node10249_eq : Flapjack.WordAlloc.removeDeadStructural input10249 value5124 value1 value2 = (output10249, value5, value1) := by
  rw [input10249_def, output10249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10241_eq]
  dsimp only
  rw [node10248_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5129 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8153 (Flapjack.WordLangAddr.addr 8157 0#64)))).val
theorem input10250_def : input10250 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8153 (Flapjack.WordLangAddr.addr 8157 0#64))) := by
  unfold input10250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8153 (Flapjack.WordLangAddr.addr 8157 0#64)))).val
theorem output10250_def : output10250 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8153 (Flapjack.WordLangAddr.addr 8157 0#64))) := by
  unfold output10250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10250_skip : Flapjack.WordAlloc.isSkip output10250 = false := by
  rw [output10250_def]
  conv => lhs; cbv
  try rfl
theorem node10250_eq : Flapjack.WordAlloc.removeDeadStructural input10250 value5 value1 value2 = (output10250, value5129, value1) := by
  rw [input10250_def, output10250_def]
  try (conv => lhs; cbv)
  try rfl

def value5130 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8157, 8145)])).val
theorem input10251_def : input10251 = (Flapjack.WordLangProgHOL.move 0 [(8157, 8145)]) := by
  unfold input10251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8157, 8145)])).val
theorem output10251_def : output10251 = (Flapjack.WordLangProgHOL.move 0 [(8157, 8145)]) := by
  unfold output10251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10251_skip : Flapjack.WordAlloc.isSkip output10251 = false := by
  rw [output10251_def]
  conv => lhs; cbv
  try rfl
theorem node10251_eq : Flapjack.WordAlloc.removeDeadStructural input10251 value5129 value1 value2 = (output10251, value5130, value1) := by
  rw [input10251_def, output10251_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10251 input10250)).val
theorem input10252_def : input10252 = (.seq input10251 input10250) := by
  unfold input10252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10251 output10250)).val
theorem output10252_def : output10252 = (.seq output10251 output10250) := by
  unfold output10252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10252_skip : Flapjack.WordAlloc.isSkip output10252 = false := by
  rw [output10252_def]
  conv => lhs; cbv
  try rfl
theorem node10252_eq : Flapjack.WordAlloc.removeDeadStructural input10252 value5 value1 value2 = (output10252, value5130, value1) := by
  rw [input10252_def, output10252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10250_eq]
  dsimp only
  rw [node10251_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5131 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8153 16147550488514976944#64))).val
theorem input10253_def : input10253 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8153 16147550488514976944#64)) := by
  unfold input10253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8153 16147550488514976944#64))).val
theorem output10253_def : output10253 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8153 16147550488514976944#64)) := by
  unfold output10253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10253_skip : Flapjack.WordAlloc.isSkip output10253 = false := by
  rw [output10253_def]
  conv => lhs; cbv
  try rfl
theorem node10253_eq : Flapjack.WordAlloc.removeDeadStructural input10253 value5130 value1 value2 = (output10253, value5131, value1) := by
  rw [input10253_def, output10253_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8149 16147550488514976944#64))).val
theorem input10254_def : input10254 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8149 16147550488514976944#64)) := by
  unfold input10254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10254_def : output10254 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10254_skip : Flapjack.WordAlloc.isSkip output10254 = true := by
  rw [output10254_def]
  conv => lhs; cbv
  try rfl
theorem node10254_eq : Flapjack.WordAlloc.removeDeadStructural input10254 value5131 value1 value2 = (output10254, value5131, value1) := by
  rw [input10254_def, output10254_def]
  try (conv => lhs; cbv)
  try rfl

def value5132 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8145 8141 (Flapjack.WordRegImm.imm 2000#64))))).val
theorem input10255_def : input10255 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8145 8141 (Flapjack.WordRegImm.imm 2000#64)))) := by
  unfold input10255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8145 8141 (Flapjack.WordRegImm.imm 2000#64))))).val
theorem output10255_def : output10255 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8145 8141 (Flapjack.WordRegImm.imm 2000#64)))) := by
  unfold output10255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10255_skip : Flapjack.WordAlloc.isSkip output10255 = false := by
  rw [output10255_def]
  conv => lhs; cbv
  try rfl
theorem node10255_eq : Flapjack.WordAlloc.removeDeadStructural input10255 value5131 value1 value2 = (output10255, value5132, value1) := by
  rw [input10255_def, output10255_def]
  try (conv => lhs; cbv)
  try rfl

def value5133 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8141 (Flapjack.WordLangAddr.addr 8137 18446744073709551104#64)))).val
theorem input10256_def : input10256 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8141 (Flapjack.WordLangAddr.addr 8137 18446744073709551104#64))) := by
  unfold input10256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8141 (Flapjack.WordLangAddr.addr 8137 18446744073709551104#64)))).val
theorem output10256_def : output10256 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8141 (Flapjack.WordLangAddr.addr 8137 18446744073709551104#64))) := by
  unfold output10256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10256_skip : Flapjack.WordAlloc.isSkip output10256 = false := by
  rw [output10256_def]
  conv => lhs; cbv
  try rfl
theorem node10256_eq : Flapjack.WordAlloc.removeDeadStructural input10256 value5132 value1 value2 = (output10256, value5133, value1) := by
  rw [input10256_def, output10256_def]
  try (conv => lhs; cbv)
  try rfl

def value5134 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8137 8133)).val
theorem input10257_def : input10257 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8137 8133) := by
  unfold input10257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8137 8133)).val
theorem output10257_def : output10257 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8137 8133) := by
  unfold output10257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10257_skip : Flapjack.WordAlloc.isSkip output10257 = false := by
  rw [output10257_def]
  conv => lhs; cbv
  try rfl
theorem node10257_eq : Flapjack.WordAlloc.removeDeadStructural input10257 value5133 value1 value2 = (output10257, value5134, value1) := by
  rw [input10257_def, output10257_def]
  try (conv => lhs; cbv)
  try rfl

def value5135 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8133 8129 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10258_def : input10258 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8133 8129 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8133 8129 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10258_def : output10258 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8133 8129 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10258_skip : Flapjack.WordAlloc.isSkip output10258 = false := by
  rw [output10258_def]
  conv => lhs; cbv
  try rfl
theorem node10258_eq : Flapjack.WordAlloc.removeDeadStructural input10258 value5134 value1 value2 = (output10258, value5135, value1) := by
  rw [input10258_def, output10258_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8129 Flapjack.WordStore.heapLength)).val
theorem input10259_def : input10259 = (Flapjack.WordLangProgHOL.get 8129 Flapjack.WordStore.heapLength) := by
  unfold input10259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8129 Flapjack.WordStore.heapLength)).val
theorem output10259_def : output10259 = (Flapjack.WordLangProgHOL.get 8129 Flapjack.WordStore.heapLength) := by
  unfold output10259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10259_skip : Flapjack.WordAlloc.isSkip output10259 = false := by
  rw [output10259_def]
  conv => lhs; cbv
  try rfl
theorem node10259_eq : Flapjack.WordAlloc.removeDeadStructural input10259 value5135 value1 value2 = (output10259, value5, value1) := by
  rw [input10259_def, output10259_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10259 input10258)).val
theorem input10260_def : input10260 = (.seq input10259 input10258) := by
  unfold input10260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10259 output10258)).val
theorem output10260_def : output10260 = (.seq output10259 output10258) := by
  unfold output10260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10260_skip : Flapjack.WordAlloc.isSkip output10260 = false := by
  rw [output10260_def]
  conv => lhs; cbv
  try rfl
theorem node10260_eq : Flapjack.WordAlloc.removeDeadStructural input10260 value5134 value1 value2 = (output10260, value5, value1) := by
  rw [input10260_def, output10260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10258_eq]
  dsimp only
  rw [node10259_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10260 input10257)).val
theorem input10261_def : input10261 = (.seq input10260 input10257) := by
  unfold input10261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10260 output10257)).val
theorem output10261_def : output10261 = (.seq output10260 output10257) := by
  unfold output10261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10261_skip : Flapjack.WordAlloc.isSkip output10261 = false := by
  rw [output10261_def]
  conv => lhs; cbv
  try rfl
theorem node10261_eq : Flapjack.WordAlloc.removeDeadStructural input10261 value5133 value1 value2 = (output10261, value5, value1) := by
  rw [input10261_def, output10261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10257_eq]
  dsimp only
  rw [node10260_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10261 input10256)).val
theorem input10262_def : input10262 = (.seq input10261 input10256) := by
  unfold input10262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10261 output10256)).val
theorem output10262_def : output10262 = (.seq output10261 output10256) := by
  unfold output10262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10262_skip : Flapjack.WordAlloc.isSkip output10262 = false := by
  rw [output10262_def]
  conv => lhs; cbv
  try rfl
theorem node10262_eq : Flapjack.WordAlloc.removeDeadStructural input10262 value5132 value1 value2 = (output10262, value5, value1) := by
  rw [input10262_def, output10262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10256_eq]
  dsimp only
  rw [node10261_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10262 input10255)).val
theorem input10263_def : input10263 = (.seq input10262 input10255) := by
  unfold input10263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10262 output10255)).val
theorem output10263_def : output10263 = (.seq output10262 output10255) := by
  unfold output10263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10263_skip : Flapjack.WordAlloc.isSkip output10263 = false := by
  rw [output10263_def]
  conv => lhs; cbv
  try rfl
theorem node10263_eq : Flapjack.WordAlloc.removeDeadStructural input10263 value5131 value1 value2 = (output10263, value5, value1) := by
  rw [input10263_def, output10263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10255_eq]
  dsimp only
  rw [node10262_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5136 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8121 (Flapjack.WordLangAddr.addr 8125 0#64)))).val
theorem input10264_def : input10264 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8121 (Flapjack.WordLangAddr.addr 8125 0#64))) := by
  unfold input10264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8121 (Flapjack.WordLangAddr.addr 8125 0#64)))).val
theorem output10264_def : output10264 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8121 (Flapjack.WordLangAddr.addr 8125 0#64))) := by
  unfold output10264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10264_skip : Flapjack.WordAlloc.isSkip output10264 = false := by
  rw [output10264_def]
  conv => lhs; cbv
  try rfl
theorem node10264_eq : Flapjack.WordAlloc.removeDeadStructural input10264 value5 value1 value2 = (output10264, value5136, value1) := by
  rw [input10264_def, output10264_def]
  try (conv => lhs; cbv)
  try rfl

def value5137 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8125, 8113)])).val
theorem input10265_def : input10265 = (Flapjack.WordLangProgHOL.move 0 [(8125, 8113)]) := by
  unfold input10265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8125, 8113)])).val
theorem output10265_def : output10265 = (Flapjack.WordLangProgHOL.move 0 [(8125, 8113)]) := by
  unfold output10265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10265_skip : Flapjack.WordAlloc.isSkip output10265 = false := by
  rw [output10265_def]
  conv => lhs; cbv
  try rfl
theorem node10265_eq : Flapjack.WordAlloc.removeDeadStructural input10265 value5136 value1 value2 = (output10265, value5137, value1) := by
  rw [input10265_def, output10265_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10265 input10264)).val
theorem input10266_def : input10266 = (.seq input10265 input10264) := by
  unfold input10266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10265 output10264)).val
theorem output10266_def : output10266 = (.seq output10265 output10264) := by
  unfold output10266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10266_skip : Flapjack.WordAlloc.isSkip output10266 = false := by
  rw [output10266_def]
  conv => lhs; cbv
  try rfl
theorem node10266_eq : Flapjack.WordAlloc.removeDeadStructural input10266 value5 value1 value2 = (output10266, value5137, value1) := by
  rw [input10266_def, output10266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10264_eq]
  dsimp only
  rw [node10265_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5138 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8121 1668951808976071471#64))).val
theorem input10267_def : input10267 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8121 1668951808976071471#64)) := by
  unfold input10267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8121 1668951808976071471#64))).val
theorem output10267_def : output10267 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8121 1668951808976071471#64)) := by
  unfold output10267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10267_skip : Flapjack.WordAlloc.isSkip output10267 = false := by
  rw [output10267_def]
  conv => lhs; cbv
  try rfl
theorem node10267_eq : Flapjack.WordAlloc.removeDeadStructural input10267 value5137 value1 value2 = (output10267, value5138, value1) := by
  rw [input10267_def, output10267_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8117 1668951808976071471#64))).val
theorem input10268_def : input10268 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8117 1668951808976071471#64)) := by
  unfold input10268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10268_def : output10268 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10268_skip : Flapjack.WordAlloc.isSkip output10268 = true := by
  rw [output10268_def]
  conv => lhs; cbv
  try rfl
theorem node10268_eq : Flapjack.WordAlloc.removeDeadStructural input10268 value5138 value1 value2 = (output10268, value5138, value1) := by
  rw [input10268_def, output10268_def]
  try (conv => lhs; cbv)
  try rfl

def value5139 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8113 8109 (Flapjack.WordRegImm.imm 1992#64))))).val
theorem input10269_def : input10269 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8113 8109 (Flapjack.WordRegImm.imm 1992#64)))) := by
  unfold input10269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8113 8109 (Flapjack.WordRegImm.imm 1992#64))))).val
theorem output10269_def : output10269 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8113 8109 (Flapjack.WordRegImm.imm 1992#64)))) := by
  unfold output10269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10269_skip : Flapjack.WordAlloc.isSkip output10269 = false := by
  rw [output10269_def]
  conv => lhs; cbv
  try rfl
theorem node10269_eq : Flapjack.WordAlloc.removeDeadStructural input10269 value5138 value1 value2 = (output10269, value5139, value1) := by
  rw [input10269_def, output10269_def]
  try (conv => lhs; cbv)
  try rfl

def value5140 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8109 (Flapjack.WordLangAddr.addr 8105 18446744073709551104#64)))).val
theorem input10270_def : input10270 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8109 (Flapjack.WordLangAddr.addr 8105 18446744073709551104#64))) := by
  unfold input10270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8109 (Flapjack.WordLangAddr.addr 8105 18446744073709551104#64)))).val
theorem output10270_def : output10270 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8109 (Flapjack.WordLangAddr.addr 8105 18446744073709551104#64))) := by
  unfold output10270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10270_skip : Flapjack.WordAlloc.isSkip output10270 = false := by
  rw [output10270_def]
  conv => lhs; cbv
  try rfl
theorem node10270_eq : Flapjack.WordAlloc.removeDeadStructural input10270 value5139 value1 value2 = (output10270, value5140, value1) := by
  rw [input10270_def, output10270_def]
  try (conv => lhs; cbv)
  try rfl

def value5141 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8105 8101)).val
theorem input10271_def : input10271 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8105 8101) := by
  unfold input10271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8105 8101)).val
theorem output10271_def : output10271 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8105 8101) := by
  unfold output10271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10271_skip : Flapjack.WordAlloc.isSkip output10271 = false := by
  rw [output10271_def]
  conv => lhs; cbv
  try rfl
theorem node10271_eq : Flapjack.WordAlloc.removeDeadStructural input10271 value5140 value1 value2 = (output10271, value5141, value1) := by
  rw [input10271_def, output10271_def]
  try (conv => lhs; cbv)
  try rfl

def value5142 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8101 8097 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10272_def : input10272 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8101 8097 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8101 8097 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10272_def : output10272 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8101 8097 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10272_skip : Flapjack.WordAlloc.isSkip output10272 = false := by
  rw [output10272_def]
  conv => lhs; cbv
  try rfl
theorem node10272_eq : Flapjack.WordAlloc.removeDeadStructural input10272 value5141 value1 value2 = (output10272, value5142, value1) := by
  rw [input10272_def, output10272_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8097 Flapjack.WordStore.heapLength)).val
theorem input10273_def : input10273 = (Flapjack.WordLangProgHOL.get 8097 Flapjack.WordStore.heapLength) := by
  unfold input10273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8097 Flapjack.WordStore.heapLength)).val
theorem output10273_def : output10273 = (Flapjack.WordLangProgHOL.get 8097 Flapjack.WordStore.heapLength) := by
  unfold output10273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10273_skip : Flapjack.WordAlloc.isSkip output10273 = false := by
  rw [output10273_def]
  conv => lhs; cbv
  try rfl
theorem node10273_eq : Flapjack.WordAlloc.removeDeadStructural input10273 value5142 value1 value2 = (output10273, value5, value1) := by
  rw [input10273_def, output10273_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10273 input10272)).val
theorem input10274_def : input10274 = (.seq input10273 input10272) := by
  unfold input10274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10273 output10272)).val
theorem output10274_def : output10274 = (.seq output10273 output10272) := by
  unfold output10274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10274_skip : Flapjack.WordAlloc.isSkip output10274 = false := by
  rw [output10274_def]
  conv => lhs; cbv
  try rfl
theorem node10274_eq : Flapjack.WordAlloc.removeDeadStructural input10274 value5141 value1 value2 = (output10274, value5, value1) := by
  rw [input10274_def, output10274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10272_eq]
  dsimp only
  rw [node10273_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10274 input10271)).val
theorem input10275_def : input10275 = (.seq input10274 input10271) := by
  unfold input10275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10274 output10271)).val
theorem output10275_def : output10275 = (.seq output10274 output10271) := by
  unfold output10275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10275_skip : Flapjack.WordAlloc.isSkip output10275 = false := by
  rw [output10275_def]
  conv => lhs; cbv
  try rfl
theorem node10275_eq : Flapjack.WordAlloc.removeDeadStructural input10275 value5140 value1 value2 = (output10275, value5, value1) := by
  rw [input10275_def, output10275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10271_eq]
  dsimp only
  rw [node10274_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10275 input10270)).val
theorem input10276_def : input10276 = (.seq input10275 input10270) := by
  unfold input10276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10275 output10270)).val
theorem output10276_def : output10276 = (.seq output10275 output10270) := by
  unfold output10276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10276_skip : Flapjack.WordAlloc.isSkip output10276 = false := by
  rw [output10276_def]
  conv => lhs; cbv
  try rfl
theorem node10276_eq : Flapjack.WordAlloc.removeDeadStructural input10276 value5139 value1 value2 = (output10276, value5, value1) := by
  rw [input10276_def, output10276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10270_eq]
  dsimp only
  rw [node10275_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10276 input10269)).val
theorem input10277_def : input10277 = (.seq input10276 input10269) := by
  unfold input10277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10276 output10269)).val
theorem output10277_def : output10277 = (.seq output10276 output10269) := by
  unfold output10277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10277_skip : Flapjack.WordAlloc.isSkip output10277 = false := by
  rw [output10277_def]
  conv => lhs; cbv
  try rfl
theorem node10277_eq : Flapjack.WordAlloc.removeDeadStructural input10277 value5138 value1 value2 = (output10277, value5, value1) := by
  rw [input10277_def, output10277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10269_eq]
  dsimp only
  rw [node10276_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5143 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8089 (Flapjack.WordLangAddr.addr 8093 0#64)))).val
theorem input10278_def : input10278 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8089 (Flapjack.WordLangAddr.addr 8093 0#64))) := by
  unfold input10278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8089 (Flapjack.WordLangAddr.addr 8093 0#64)))).val
theorem output10278_def : output10278 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8089 (Flapjack.WordLangAddr.addr 8093 0#64))) := by
  unfold output10278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10278_skip : Flapjack.WordAlloc.isSkip output10278 = false := by
  rw [output10278_def]
  conv => lhs; cbv
  try rfl
theorem node10278_eq : Flapjack.WordAlloc.removeDeadStructural input10278 value5 value1 value2 = (output10278, value5143, value1) := by
  rw [input10278_def, output10278_def]
  try (conv => lhs; cbv)
  try rfl

def value5144 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8093, 8081)])).val
theorem input10279_def : input10279 = (Flapjack.WordLangProgHOL.move 0 [(8093, 8081)]) := by
  unfold input10279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8093, 8081)])).val
theorem output10279_def : output10279 = (Flapjack.WordLangProgHOL.move 0 [(8093, 8081)]) := by
  unfold output10279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10279_skip : Flapjack.WordAlloc.isSkip output10279 = false := by
  rw [output10279_def]
  conv => lhs; cbv
  try rfl
theorem node10279_eq : Flapjack.WordAlloc.removeDeadStructural input10279 value5143 value1 value2 = (output10279, value5144, value1) := by
  rw [input10279_def, output10279_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10279 input10278)).val
theorem input10280_def : input10280 = (.seq input10279 input10278) := by
  unfold input10280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10279 output10278)).val
theorem output10280_def : output10280 = (.seq output10279 output10278) := by
  unfold output10280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10280_skip : Flapjack.WordAlloc.isSkip output10280 = false := by
  rw [output10280_def]
  conv => lhs; cbv
  try rfl
theorem node10280_eq : Flapjack.WordAlloc.removeDeadStructural input10280 value5 value1 value2 = (output10280, value5144, value1) := by
  rw [input10280_def, output10280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10278_eq]
  dsimp only
  rw [node10279_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5145 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8089 398773841247578140#64))).val
theorem input10281_def : input10281 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8089 398773841247578140#64)) := by
  unfold input10281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8089 398773841247578140#64))).val
theorem output10281_def : output10281 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8089 398773841247578140#64)) := by
  unfold output10281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10281_skip : Flapjack.WordAlloc.isSkip output10281 = false := by
  rw [output10281_def]
  conv => lhs; cbv
  try rfl
theorem node10281_eq : Flapjack.WordAlloc.removeDeadStructural input10281 value5144 value1 value2 = (output10281, value5145, value1) := by
  rw [input10281_def, output10281_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8085 398773841247578140#64))).val
theorem input10282_def : input10282 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8085 398773841247578140#64)) := by
  unfold input10282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10282_def : output10282 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10282_skip : Flapjack.WordAlloc.isSkip output10282 = true := by
  rw [output10282_def]
  conv => lhs; cbv
  try rfl
theorem node10282_eq : Flapjack.WordAlloc.removeDeadStructural input10282 value5145 value1 value2 = (output10282, value5145, value1) := by
  rw [input10282_def, output10282_def]
  try (conv => lhs; cbv)
  try rfl

def value5146 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8081 8077 (Flapjack.WordRegImm.imm 1984#64))))).val
theorem input10283_def : input10283 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8081 8077 (Flapjack.WordRegImm.imm 1984#64)))) := by
  unfold input10283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8081 8077 (Flapjack.WordRegImm.imm 1984#64))))).val
theorem output10283_def : output10283 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8081 8077 (Flapjack.WordRegImm.imm 1984#64)))) := by
  unfold output10283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10283_skip : Flapjack.WordAlloc.isSkip output10283 = false := by
  rw [output10283_def]
  conv => lhs; cbv
  try rfl
theorem node10283_eq : Flapjack.WordAlloc.removeDeadStructural input10283 value5145 value1 value2 = (output10283, value5146, value1) := by
  rw [input10283_def, output10283_def]
  try (conv => lhs; cbv)
  try rfl

def value5147 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8077 (Flapjack.WordLangAddr.addr 8073 18446744073709551104#64)))).val
theorem input10284_def : input10284 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8077 (Flapjack.WordLangAddr.addr 8073 18446744073709551104#64))) := by
  unfold input10284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8077 (Flapjack.WordLangAddr.addr 8073 18446744073709551104#64)))).val
theorem output10284_def : output10284 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8077 (Flapjack.WordLangAddr.addr 8073 18446744073709551104#64))) := by
  unfold output10284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10284_skip : Flapjack.WordAlloc.isSkip output10284 = false := by
  rw [output10284_def]
  conv => lhs; cbv
  try rfl
theorem node10284_eq : Flapjack.WordAlloc.removeDeadStructural input10284 value5146 value1 value2 = (output10284, value5147, value1) := by
  rw [input10284_def, output10284_def]
  try (conv => lhs; cbv)
  try rfl

def value5148 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8073 8069)).val
theorem input10285_def : input10285 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8073 8069) := by
  unfold input10285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8073 8069)).val
theorem output10285_def : output10285 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8073 8069) := by
  unfold output10285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10285_skip : Flapjack.WordAlloc.isSkip output10285 = false := by
  rw [output10285_def]
  conv => lhs; cbv
  try rfl
theorem node10285_eq : Flapjack.WordAlloc.removeDeadStructural input10285 value5147 value1 value2 = (output10285, value5148, value1) := by
  rw [input10285_def, output10285_def]
  try (conv => lhs; cbv)
  try rfl

def value5149 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8069 8065 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10286_def : input10286 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8069 8065 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8069 8065 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10286_def : output10286 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8069 8065 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10286_skip : Flapjack.WordAlloc.isSkip output10286 = false := by
  rw [output10286_def]
  conv => lhs; cbv
  try rfl
theorem node10286_eq : Flapjack.WordAlloc.removeDeadStructural input10286 value5148 value1 value2 = (output10286, value5149, value1) := by
  rw [input10286_def, output10286_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8065 Flapjack.WordStore.heapLength)).val
theorem input10287_def : input10287 = (Flapjack.WordLangProgHOL.get 8065 Flapjack.WordStore.heapLength) := by
  unfold input10287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8065 Flapjack.WordStore.heapLength)).val
theorem output10287_def : output10287 = (Flapjack.WordLangProgHOL.get 8065 Flapjack.WordStore.heapLength) := by
  unfold output10287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10287_skip : Flapjack.WordAlloc.isSkip output10287 = false := by
  rw [output10287_def]
  conv => lhs; cbv
  try rfl
theorem node10287_eq : Flapjack.WordAlloc.removeDeadStructural input10287 value5149 value1 value2 = (output10287, value5, value1) := by
  rw [input10287_def, output10287_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10287 input10286)).val
theorem input10288_def : input10288 = (.seq input10287 input10286) := by
  unfold input10288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10287 output10286)).val
theorem output10288_def : output10288 = (.seq output10287 output10286) := by
  unfold output10288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10288_skip : Flapjack.WordAlloc.isSkip output10288 = false := by
  rw [output10288_def]
  conv => lhs; cbv
  try rfl
theorem node10288_eq : Flapjack.WordAlloc.removeDeadStructural input10288 value5148 value1 value2 = (output10288, value5, value1) := by
  rw [input10288_def, output10288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10286_eq]
  dsimp only
  rw [node10287_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10288 input10285)).val
theorem input10289_def : input10289 = (.seq input10288 input10285) := by
  unfold input10289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10288 output10285)).val
theorem output10289_def : output10289 = (.seq output10288 output10285) := by
  unfold output10289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10289_skip : Flapjack.WordAlloc.isSkip output10289 = false := by
  rw [output10289_def]
  conv => lhs; cbv
  try rfl
theorem node10289_eq : Flapjack.WordAlloc.removeDeadStructural input10289 value5147 value1 value2 = (output10289, value5, value1) := by
  rw [input10289_def, output10289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10285_eq]
  dsimp only
  rw [node10288_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10289 input10284)).val
theorem input10290_def : input10290 = (.seq input10289 input10284) := by
  unfold input10290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10289 output10284)).val
theorem output10290_def : output10290 = (.seq output10289 output10284) := by
  unfold output10290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10290_skip : Flapjack.WordAlloc.isSkip output10290 = false := by
  rw [output10290_def]
  conv => lhs; cbv
  try rfl
theorem node10290_eq : Flapjack.WordAlloc.removeDeadStructural input10290 value5146 value1 value2 = (output10290, value5, value1) := by
  rw [input10290_def, output10290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10284_eq]
  dsimp only
  rw [node10289_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10290 input10283)).val
theorem input10291_def : input10291 = (.seq input10290 input10283) := by
  unfold input10291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10290 output10283)).val
theorem output10291_def : output10291 = (.seq output10290 output10283) := by
  unfold output10291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10291_skip : Flapjack.WordAlloc.isSkip output10291 = false := by
  rw [output10291_def]
  conv => lhs; cbv
  try rfl
theorem node10291_eq : Flapjack.WordAlloc.removeDeadStructural input10291 value5145 value1 value2 = (output10291, value5, value1) := by
  rw [input10291_def, output10291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10283_eq]
  dsimp only
  rw [node10290_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5150 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8057 (Flapjack.WordLangAddr.addr 8061 0#64)))).val
theorem input10292_def : input10292 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8057 (Flapjack.WordLangAddr.addr 8061 0#64))) := by
  unfold input10292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8057 (Flapjack.WordLangAddr.addr 8061 0#64)))).val
theorem output10292_def : output10292 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8057 (Flapjack.WordLangAddr.addr 8061 0#64))) := by
  unfold output10292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10292_skip : Flapjack.WordAlloc.isSkip output10292 = false := by
  rw [output10292_def]
  conv => lhs; cbv
  try rfl
theorem node10292_eq : Flapjack.WordAlloc.removeDeadStructural input10292 value5 value1 value2 = (output10292, value5150, value1) := by
  rw [input10292_def, output10292_def]
  try (conv => lhs; cbv)
  try rfl

def value5151 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8061, 8049)])).val
theorem input10293_def : input10293 = (Flapjack.WordLangProgHOL.move 0 [(8061, 8049)]) := by
  unfold input10293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8061, 8049)])).val
theorem output10293_def : output10293 = (Flapjack.WordLangProgHOL.move 0 [(8061, 8049)]) := by
  unfold output10293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10293_skip : Flapjack.WordAlloc.isSkip output10293 = false := by
  rw [output10293_def]
  conv => lhs; cbv
  try rfl
theorem node10293_eq : Flapjack.WordAlloc.removeDeadStructural input10293 value5150 value1 value2 = (output10293, value5151, value1) := by
  rw [input10293_def, output10293_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10293 input10292)).val
theorem input10294_def : input10294 = (.seq input10293 input10292) := by
  unfold input10294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10293 output10292)).val
theorem output10294_def : output10294 = (.seq output10293 output10292) := by
  unfold output10294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10294_skip : Flapjack.WordAlloc.isSkip output10294 = false := by
  rw [output10294_def]
  conv => lhs; cbv
  try rfl
theorem node10294_eq : Flapjack.WordAlloc.removeDeadStructural input10294 value5 value1 value2 = (output10294, value5151, value1) := by
  rw [input10294_def, output10294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10292_eq]
  dsimp only
  rw [node10293_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5152 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8057 8941869963990959127#64))).val
theorem input10295_def : input10295 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8057 8941869963990959127#64)) := by
  unfold input10295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8057 8941869963990959127#64))).val
theorem output10295_def : output10295 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8057 8941869963990959127#64)) := by
  unfold output10295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10295_skip : Flapjack.WordAlloc.isSkip output10295 = false := by
  rw [output10295_def]
  conv => lhs; cbv
  try rfl
theorem node10295_eq : Flapjack.WordAlloc.removeDeadStructural input10295 value5151 value1 value2 = (output10295, value5152, value1) := by
  rw [input10295_def, output10295_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8053 8941869963990959127#64))).val
theorem input10296_def : input10296 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8053 8941869963990959127#64)) := by
  unfold input10296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10296_def : output10296 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10296_skip : Flapjack.WordAlloc.isSkip output10296 = true := by
  rw [output10296_def]
  conv => lhs; cbv
  try rfl
theorem node10296_eq : Flapjack.WordAlloc.removeDeadStructural input10296 value5152 value1 value2 = (output10296, value5152, value1) := by
  rw [input10296_def, output10296_def]
  try (conv => lhs; cbv)
  try rfl

def value5153 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8049 8045 (Flapjack.WordRegImm.imm 1976#64))))).val
theorem input10297_def : input10297 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8049 8045 (Flapjack.WordRegImm.imm 1976#64)))) := by
  unfold input10297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8049 8045 (Flapjack.WordRegImm.imm 1976#64))))).val
theorem output10297_def : output10297 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8049 8045 (Flapjack.WordRegImm.imm 1976#64)))) := by
  unfold output10297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10297_skip : Flapjack.WordAlloc.isSkip output10297 = false := by
  rw [output10297_def]
  conv => lhs; cbv
  try rfl
theorem node10297_eq : Flapjack.WordAlloc.removeDeadStructural input10297 value5152 value1 value2 = (output10297, value5153, value1) := by
  rw [input10297_def, output10297_def]
  try (conv => lhs; cbv)
  try rfl

def value5154 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8045 (Flapjack.WordLangAddr.addr 8041 18446744073709551104#64)))).val
theorem input10298_def : input10298 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8045 (Flapjack.WordLangAddr.addr 8041 18446744073709551104#64))) := by
  unfold input10298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8045 (Flapjack.WordLangAddr.addr 8041 18446744073709551104#64)))).val
theorem output10298_def : output10298 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8045 (Flapjack.WordLangAddr.addr 8041 18446744073709551104#64))) := by
  unfold output10298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10298_skip : Flapjack.WordAlloc.isSkip output10298 = false := by
  rw [output10298_def]
  conv => lhs; cbv
  try rfl
theorem node10298_eq : Flapjack.WordAlloc.removeDeadStructural input10298 value5153 value1 value2 = (output10298, value5154, value1) := by
  rw [input10298_def, output10298_def]
  try (conv => lhs; cbv)
  try rfl

def value5155 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8041 8037)).val
theorem input10299_def : input10299 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8041 8037) := by
  unfold input10299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8041 8037)).val
theorem output10299_def : output10299 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8041 8037) := by
  unfold output10299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10299_skip : Flapjack.WordAlloc.isSkip output10299 = false := by
  rw [output10299_def]
  conv => lhs; cbv
  try rfl
theorem node10299_eq : Flapjack.WordAlloc.removeDeadStructural input10299 value5154 value1 value2 = (output10299, value5155, value1) := by
  rw [input10299_def, output10299_def]
  try (conv => lhs; cbv)
  try rfl

def value5156 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8037 8033 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10300_def : input10300 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8037 8033 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8037 8033 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10300_def : output10300 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8037 8033 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10300_skip : Flapjack.WordAlloc.isSkip output10300 = false := by
  rw [output10300_def]
  conv => lhs; cbv
  try rfl
theorem node10300_eq : Flapjack.WordAlloc.removeDeadStructural input10300 value5155 value1 value2 = (output10300, value5156, value1) := by
  rw [input10300_def, output10300_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8033 Flapjack.WordStore.heapLength)).val
theorem input10301_def : input10301 = (Flapjack.WordLangProgHOL.get 8033 Flapjack.WordStore.heapLength) := by
  unfold input10301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8033 Flapjack.WordStore.heapLength)).val
theorem output10301_def : output10301 = (Flapjack.WordLangProgHOL.get 8033 Flapjack.WordStore.heapLength) := by
  unfold output10301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10301_skip : Flapjack.WordAlloc.isSkip output10301 = false := by
  rw [output10301_def]
  conv => lhs; cbv
  try rfl
theorem node10301_eq : Flapjack.WordAlloc.removeDeadStructural input10301 value5156 value1 value2 = (output10301, value5, value1) := by
  rw [input10301_def, output10301_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10301 input10300)).val
theorem input10302_def : input10302 = (.seq input10301 input10300) := by
  unfold input10302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10301 output10300)).val
theorem output10302_def : output10302 = (.seq output10301 output10300) := by
  unfold output10302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10302_skip : Flapjack.WordAlloc.isSkip output10302 = false := by
  rw [output10302_def]
  conv => lhs; cbv
  try rfl
theorem node10302_eq : Flapjack.WordAlloc.removeDeadStructural input10302 value5155 value1 value2 = (output10302, value5, value1) := by
  rw [input10302_def, output10302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10300_eq]
  dsimp only
  rw [node10301_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10302 input10299)).val
theorem input10303_def : input10303 = (.seq input10302 input10299) := by
  unfold input10303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10302 output10299)).val
theorem output10303_def : output10303 = (.seq output10302 output10299) := by
  unfold output10303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10303_skip : Flapjack.WordAlloc.isSkip output10303 = false := by
  rw [output10303_def]
  conv => lhs; cbv
  try rfl
theorem node10303_eq : Flapjack.WordAlloc.removeDeadStructural input10303 value5154 value1 value2 = (output10303, value5, value1) := by
  rw [input10303_def, output10303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10299_eq]
  dsimp only
  rw [node10302_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10303 input10298)).val
theorem input10304_def : input10304 = (.seq input10303 input10298) := by
  unfold input10304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10303 output10298)).val
theorem output10304_def : output10304 = (.seq output10303 output10298) := by
  unfold output10304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10304_skip : Flapjack.WordAlloc.isSkip output10304 = false := by
  rw [output10304_def]
  conv => lhs; cbv
  try rfl
theorem node10304_eq : Flapjack.WordAlloc.removeDeadStructural input10304 value5153 value1 value2 = (output10304, value5, value1) := by
  rw [input10304_def, output10304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10298_eq]
  dsimp only
  rw [node10303_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10304 input10297)).val
theorem input10305_def : input10305 = (.seq input10304 input10297) := by
  unfold input10305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10304 output10297)).val
theorem output10305_def : output10305 = (.seq output10304 output10297) := by
  unfold output10305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10305_skip : Flapjack.WordAlloc.isSkip output10305 = false := by
  rw [output10305_def]
  conv => lhs; cbv
  try rfl
theorem node10305_eq : Flapjack.WordAlloc.removeDeadStructural input10305 value5152 value1 value2 = (output10305, value5, value1) := by
  rw [input10305_def, output10305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10297_eq]
  dsimp only
  rw [node10304_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5157 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8025 (Flapjack.WordLangAddr.addr 8029 0#64)))).val
theorem input10306_def : input10306 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8025 (Flapjack.WordLangAddr.addr 8029 0#64))) := by
  unfold input10306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8025 (Flapjack.WordLangAddr.addr 8029 0#64)))).val
theorem output10306_def : output10306 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8025 (Flapjack.WordLangAddr.addr 8029 0#64))) := by
  unfold output10306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10306_skip : Flapjack.WordAlloc.isSkip output10306 = false := by
  rw [output10306_def]
  conv => lhs; cbv
  try rfl
theorem node10306_eq : Flapjack.WordAlloc.removeDeadStructural input10306 value5 value1 value2 = (output10306, value5157, value1) := by
  rw [input10306_def, output10306_def]
  try (conv => lhs; cbv)
  try rfl

def value5158 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8029, 8017)])).val
theorem input10307_def : input10307 = (Flapjack.WordLangProgHOL.move 0 [(8029, 8017)]) := by
  unfold input10307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8029, 8017)])).val
theorem output10307_def : output10307 = (Flapjack.WordLangProgHOL.move 0 [(8029, 8017)]) := by
  unfold output10307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10307_skip : Flapjack.WordAlloc.isSkip output10307 = false := by
  rw [output10307_def]
  conv => lhs; cbv
  try rfl
theorem node10307_eq : Flapjack.WordAlloc.removeDeadStructural input10307 value5157 value1 value2 = (output10307, value5158, value1) := by
  rw [input10307_def, output10307_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10307 input10306)).val
theorem input10308_def : input10308 = (.seq input10307 input10306) := by
  unfold input10308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10307 output10306)).val
theorem output10308_def : output10308 = (.seq output10307 output10306) := by
  unfold output10308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10308_skip : Flapjack.WordAlloc.isSkip output10308 = false := by
  rw [output10308_def]
  conv => lhs; cbv
  try rfl
theorem node10308_eq : Flapjack.WordAlloc.removeDeadStructural input10308 value5 value1 value2 = (output10308, value5158, value1) := by
  rw [input10308_def, output10308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10306_eq]
  dsimp only
  rw [node10307_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5159 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8025 17682789360670468203#64))).val
theorem input10309_def : input10309 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8025 17682789360670468203#64)) := by
  unfold input10309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8025 17682789360670468203#64))).val
theorem output10309_def : output10309 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8025 17682789360670468203#64)) := by
  unfold output10309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10309_skip : Flapjack.WordAlloc.isSkip output10309 = false := by
  rw [output10309_def]
  conv => lhs; cbv
  try rfl
theorem node10309_eq : Flapjack.WordAlloc.removeDeadStructural input10309 value5158 value1 value2 = (output10309, value5159, value1) := by
  rw [input10309_def, output10309_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8021 17682789360670468203#64))).val
theorem input10310_def : input10310 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8021 17682789360670468203#64)) := by
  unfold input10310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10310_def : output10310 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10310_skip : Flapjack.WordAlloc.isSkip output10310 = true := by
  rw [output10310_def]
  conv => lhs; cbv
  try rfl
theorem node10310_eq : Flapjack.WordAlloc.removeDeadStructural input10310 value5159 value1 value2 = (output10310, value5159, value1) := by
  rw [input10310_def, output10310_def]
  try (conv => lhs; cbv)
  try rfl

def value5160 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8017 8013 (Flapjack.WordRegImm.imm 1968#64))))).val
theorem input10311_def : input10311 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8017 8013 (Flapjack.WordRegImm.imm 1968#64)))) := by
  unfold input10311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8017 8013 (Flapjack.WordRegImm.imm 1968#64))))).val
theorem output10311_def : output10311 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8017 8013 (Flapjack.WordRegImm.imm 1968#64)))) := by
  unfold output10311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10311_skip : Flapjack.WordAlloc.isSkip output10311 = false := by
  rw [output10311_def]
  conv => lhs; cbv
  try rfl
theorem node10311_eq : Flapjack.WordAlloc.removeDeadStructural input10311 value5159 value1 value2 = (output10311, value5160, value1) := by
  rw [input10311_def, output10311_def]
  try (conv => lhs; cbv)
  try rfl

def value5161 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8013 (Flapjack.WordLangAddr.addr 8009 18446744073709551104#64)))).val
theorem input10312_def : input10312 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8013 (Flapjack.WordLangAddr.addr 8009 18446744073709551104#64))) := by
  unfold input10312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8013 (Flapjack.WordLangAddr.addr 8009 18446744073709551104#64)))).val
theorem output10312_def : output10312 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8013 (Flapjack.WordLangAddr.addr 8009 18446744073709551104#64))) := by
  unfold output10312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10312_skip : Flapjack.WordAlloc.isSkip output10312 = false := by
  rw [output10312_def]
  conv => lhs; cbv
  try rfl
theorem node10312_eq : Flapjack.WordAlloc.removeDeadStructural input10312 value5160 value1 value2 = (output10312, value5161, value1) := by
  rw [input10312_def, output10312_def]
  try (conv => lhs; cbv)
  try rfl

def value5162 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8009 8005)).val
theorem input10313_def : input10313 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8009 8005) := by
  unfold input10313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8009 8005)).val
theorem output10313_def : output10313 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8009 8005) := by
  unfold output10313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10313_skip : Flapjack.WordAlloc.isSkip output10313 = false := by
  rw [output10313_def]
  conv => lhs; cbv
  try rfl
theorem node10313_eq : Flapjack.WordAlloc.removeDeadStructural input10313 value5161 value1 value2 = (output10313, value5162, value1) := by
  rw [input10313_def, output10313_def]
  try (conv => lhs; cbv)
  try rfl

def value5163 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8005 8001 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10314_def : input10314 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8005 8001 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8005 8001 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10314_def : output10314 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8005 8001 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10314_skip : Flapjack.WordAlloc.isSkip output10314 = false := by
  rw [output10314_def]
  conv => lhs; cbv
  try rfl
theorem node10314_eq : Flapjack.WordAlloc.removeDeadStructural input10314 value5162 value1 value2 = (output10314, value5163, value1) := by
  rw [input10314_def, output10314_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8001 Flapjack.WordStore.heapLength)).val
theorem input10315_def : input10315 = (Flapjack.WordLangProgHOL.get 8001 Flapjack.WordStore.heapLength) := by
  unfold input10315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8001 Flapjack.WordStore.heapLength)).val
theorem output10315_def : output10315 = (Flapjack.WordLangProgHOL.get 8001 Flapjack.WordStore.heapLength) := by
  unfold output10315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10315_skip : Flapjack.WordAlloc.isSkip output10315 = false := by
  rw [output10315_def]
  conv => lhs; cbv
  try rfl
theorem node10315_eq : Flapjack.WordAlloc.removeDeadStructural input10315 value5163 value1 value2 = (output10315, value5, value1) := by
  rw [input10315_def, output10315_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10315 input10314)).val
theorem input10316_def : input10316 = (.seq input10315 input10314) := by
  unfold input10316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10315 output10314)).val
theorem output10316_def : output10316 = (.seq output10315 output10314) := by
  unfold output10316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10316_skip : Flapjack.WordAlloc.isSkip output10316 = false := by
  rw [output10316_def]
  conv => lhs; cbv
  try rfl
theorem node10316_eq : Flapjack.WordAlloc.removeDeadStructural input10316 value5162 value1 value2 = (output10316, value5, value1) := by
  rw [input10316_def, output10316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10314_eq]
  dsimp only
  rw [node10315_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10316 input10313)).val
theorem input10317_def : input10317 = (.seq input10316 input10313) := by
  unfold input10317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10316 output10313)).val
theorem output10317_def : output10317 = (.seq output10316 output10313) := by
  unfold output10317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10317_skip : Flapjack.WordAlloc.isSkip output10317 = false := by
  rw [output10317_def]
  conv => lhs; cbv
  try rfl
theorem node10317_eq : Flapjack.WordAlloc.removeDeadStructural input10317 value5161 value1 value2 = (output10317, value5, value1) := by
  rw [input10317_def, output10317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10313_eq]
  dsimp only
  rw [node10316_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10317 input10312)).val
theorem input10318_def : input10318 = (.seq input10317 input10312) := by
  unfold input10318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10317 output10312)).val
theorem output10318_def : output10318 = (.seq output10317 output10312) := by
  unfold output10318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10318_skip : Flapjack.WordAlloc.isSkip output10318 = false := by
  rw [output10318_def]
  conv => lhs; cbv
  try rfl
theorem node10318_eq : Flapjack.WordAlloc.removeDeadStructural input10318 value5160 value1 value2 = (output10318, value5, value1) := by
  rw [input10318_def, output10318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10312_eq]
  dsimp only
  rw [node10317_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10318 input10311)).val
theorem input10319_def : input10319 = (.seq input10318 input10311) := by
  unfold input10319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10318 output10311)).val
theorem output10319_def : output10319 = (.seq output10318 output10311) := by
  unfold output10319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10319_skip : Flapjack.WordAlloc.isSkip output10319 = false := by
  rw [output10319_def]
  conv => lhs; cbv
  try rfl
theorem node10319_eq : Flapjack.WordAlloc.removeDeadStructural input10319 value5159 value1 value2 = (output10319, value5, value1) := by
  rw [input10319_def, output10319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10311_eq]
  dsimp only
  rw [node10318_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5164 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7993 (Flapjack.WordLangAddr.addr 7997 0#64)))).val
theorem input10320_def : input10320 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7993 (Flapjack.WordLangAddr.addr 7997 0#64))) := by
  unfold input10320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7993 (Flapjack.WordLangAddr.addr 7997 0#64)))).val
theorem output10320_def : output10320 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7993 (Flapjack.WordLangAddr.addr 7997 0#64))) := by
  unfold output10320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10320_skip : Flapjack.WordAlloc.isSkip output10320 = false := by
  rw [output10320_def]
  conv => lhs; cbv
  try rfl
theorem node10320_eq : Flapjack.WordAlloc.removeDeadStructural input10320 value5 value1 value2 = (output10320, value5164, value1) := by
  rw [input10320_def, output10320_def]
  try (conv => lhs; cbv)
  try rfl

def value5165 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7997, 7985)])).val
theorem input10321_def : input10321 = (Flapjack.WordLangProgHOL.move 0 [(7997, 7985)]) := by
  unfold input10321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7997, 7985)])).val
theorem output10321_def : output10321 = (Flapjack.WordLangProgHOL.move 0 [(7997, 7985)]) := by
  unfold output10321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10321_skip : Flapjack.WordAlloc.isSkip output10321 = false := by
  rw [output10321_def]
  conv => lhs; cbv
  try rfl
theorem node10321_eq : Flapjack.WordAlloc.removeDeadStructural input10321 value5164 value1 value2 = (output10321, value5165, value1) := by
  rw [input10321_def, output10321_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10321 input10320)).val
theorem input10322_def : input10322 = (.seq input10321 input10320) := by
  unfold input10322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10321 output10320)).val
theorem output10322_def : output10322 = (.seq output10321 output10320) := by
  unfold output10322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10322_skip : Flapjack.WordAlloc.isSkip output10322 = false := by
  rw [output10322_def]
  conv => lhs; cbv
  try rfl
theorem node10322_eq : Flapjack.WordAlloc.removeDeadStructural input10322 value5 value1 value2 = (output10322, value5165, value1) := by
  rw [input10322_def, output10322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10320_eq]
  dsimp only
  rw [node10321_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5166 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7993 5204176168283587414#64))).val
theorem input10323_def : input10323 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7993 5204176168283587414#64)) := by
  unfold input10323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7993 5204176168283587414#64))).val
theorem output10323_def : output10323 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7993 5204176168283587414#64)) := by
  unfold output10323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10323_skip : Flapjack.WordAlloc.isSkip output10323 = false := by
  rw [output10323_def]
  conv => lhs; cbv
  try rfl
theorem node10323_eq : Flapjack.WordAlloc.removeDeadStructural input10323 value5165 value1 value2 = (output10323, value5166, value1) := by
  rw [input10323_def, output10323_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7989 5204176168283587414#64))).val
theorem input10324_def : input10324 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7989 5204176168283587414#64)) := by
  unfold input10324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10324_def : output10324 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10324_skip : Flapjack.WordAlloc.isSkip output10324 = true := by
  rw [output10324_def]
  conv => lhs; cbv
  try rfl
theorem node10324_eq : Flapjack.WordAlloc.removeDeadStructural input10324 value5166 value1 value2 = (output10324, value5166, value1) := by
  rw [input10324_def, output10324_def]
  try (conv => lhs; cbv)
  try rfl

def value5167 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7985 7981 (Flapjack.WordRegImm.imm 1960#64))))).val
theorem input10325_def : input10325 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7985 7981 (Flapjack.WordRegImm.imm 1960#64)))) := by
  unfold input10325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7985 7981 (Flapjack.WordRegImm.imm 1960#64))))).val
theorem output10325_def : output10325 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7985 7981 (Flapjack.WordRegImm.imm 1960#64)))) := by
  unfold output10325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10325_skip : Flapjack.WordAlloc.isSkip output10325 = false := by
  rw [output10325_def]
  conv => lhs; cbv
  try rfl
theorem node10325_eq : Flapjack.WordAlloc.removeDeadStructural input10325 value5166 value1 value2 = (output10325, value5167, value1) := by
  rw [input10325_def, output10325_def]
  try (conv => lhs; cbv)
  try rfl

def value5168 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7981 (Flapjack.WordLangAddr.addr 7977 18446744073709551104#64)))).val
theorem input10326_def : input10326 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7981 (Flapjack.WordLangAddr.addr 7977 18446744073709551104#64))) := by
  unfold input10326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7981 (Flapjack.WordLangAddr.addr 7977 18446744073709551104#64)))).val
theorem output10326_def : output10326 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7981 (Flapjack.WordLangAddr.addr 7977 18446744073709551104#64))) := by
  unfold output10326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10326_skip : Flapjack.WordAlloc.isSkip output10326 = false := by
  rw [output10326_def]
  conv => lhs; cbv
  try rfl
theorem node10326_eq : Flapjack.WordAlloc.removeDeadStructural input10326 value5167 value1 value2 = (output10326, value5168, value1) := by
  rw [input10326_def, output10326_def]
  try (conv => lhs; cbv)
  try rfl

def value5169 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7977 7973)).val
theorem input10327_def : input10327 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7977 7973) := by
  unfold input10327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7977 7973)).val
theorem output10327_def : output10327 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7977 7973) := by
  unfold output10327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10327_skip : Flapjack.WordAlloc.isSkip output10327 = false := by
  rw [output10327_def]
  conv => lhs; cbv
  try rfl
theorem node10327_eq : Flapjack.WordAlloc.removeDeadStructural input10327 value5168 value1 value2 = (output10327, value5169, value1) := by
  rw [input10327_def, output10327_def]
  try (conv => lhs; cbv)
  try rfl

def value5170 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7973 7969 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10328_def : input10328 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7973 7969 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7973 7969 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10328_def : output10328 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7973 7969 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10328_skip : Flapjack.WordAlloc.isSkip output10328 = false := by
  rw [output10328_def]
  conv => lhs; cbv
  try rfl
theorem node10328_eq : Flapjack.WordAlloc.removeDeadStructural input10328 value5169 value1 value2 = (output10328, value5170, value1) := by
  rw [input10328_def, output10328_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7969 Flapjack.WordStore.heapLength)).val
theorem input10329_def : input10329 = (Flapjack.WordLangProgHOL.get 7969 Flapjack.WordStore.heapLength) := by
  unfold input10329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7969 Flapjack.WordStore.heapLength)).val
theorem output10329_def : output10329 = (Flapjack.WordLangProgHOL.get 7969 Flapjack.WordStore.heapLength) := by
  unfold output10329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10329_skip : Flapjack.WordAlloc.isSkip output10329 = false := by
  rw [output10329_def]
  conv => lhs; cbv
  try rfl
theorem node10329_eq : Flapjack.WordAlloc.removeDeadStructural input10329 value5170 value1 value2 = (output10329, value5, value1) := by
  rw [input10329_def, output10329_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10329 input10328)).val
theorem input10330_def : input10330 = (.seq input10329 input10328) := by
  unfold input10330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10329 output10328)).val
theorem output10330_def : output10330 = (.seq output10329 output10328) := by
  unfold output10330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10330_skip : Flapjack.WordAlloc.isSkip output10330 = false := by
  rw [output10330_def]
  conv => lhs; cbv
  try rfl
theorem node10330_eq : Flapjack.WordAlloc.removeDeadStructural input10330 value5169 value1 value2 = (output10330, value5, value1) := by
  rw [input10330_def, output10330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10328_eq]
  dsimp only
  rw [node10329_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10330 input10327)).val
theorem input10331_def : input10331 = (.seq input10330 input10327) := by
  unfold input10331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10330 output10327)).val
theorem output10331_def : output10331 = (.seq output10330 output10327) := by
  unfold output10331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10331_skip : Flapjack.WordAlloc.isSkip output10331 = false := by
  rw [output10331_def]
  conv => lhs; cbv
  try rfl
theorem node10331_eq : Flapjack.WordAlloc.removeDeadStructural input10331 value5168 value1 value2 = (output10331, value5, value1) := by
  rw [input10331_def, output10331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10327_eq]
  dsimp only
  rw [node10330_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10331 input10326)).val
theorem input10332_def : input10332 = (.seq input10331 input10326) := by
  unfold input10332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10331 output10326)).val
theorem output10332_def : output10332 = (.seq output10331 output10326) := by
  unfold output10332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10332_skip : Flapjack.WordAlloc.isSkip output10332 = false := by
  rw [output10332_def]
  conv => lhs; cbv
  try rfl
theorem node10332_eq : Flapjack.WordAlloc.removeDeadStructural input10332 value5167 value1 value2 = (output10332, value5, value1) := by
  rw [input10332_def, output10332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10326_eq]
  dsimp only
  rw [node10331_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10332 input10325)).val
theorem input10333_def : input10333 = (.seq input10332 input10325) := by
  unfold input10333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10332 output10325)).val
theorem output10333_def : output10333 = (.seq output10332 output10325) := by
  unfold output10333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10333_skip : Flapjack.WordAlloc.isSkip output10333 = false := by
  rw [output10333_def]
  conv => lhs; cbv
  try rfl
theorem node10333_eq : Flapjack.WordAlloc.removeDeadStructural input10333 value5166 value1 value2 = (output10333, value5, value1) := by
  rw [input10333_def, output10333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10325_eq]
  dsimp only
  rw [node10332_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5171 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7961 (Flapjack.WordLangAddr.addr 7965 0#64)))).val
theorem input10334_def : input10334 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7961 (Flapjack.WordLangAddr.addr 7965 0#64))) := by
  unfold input10334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7961 (Flapjack.WordLangAddr.addr 7965 0#64)))).val
theorem output10334_def : output10334 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7961 (Flapjack.WordLangAddr.addr 7965 0#64))) := by
  unfold output10334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10334_skip : Flapjack.WordAlloc.isSkip output10334 = false := by
  rw [output10334_def]
  conv => lhs; cbv
  try rfl
theorem node10334_eq : Flapjack.WordAlloc.removeDeadStructural input10334 value5 value1 value2 = (output10334, value5171, value1) := by
  rw [input10334_def, output10334_def]
  try (conv => lhs; cbv)
  try rfl

def value5172 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7965, 7953)])).val
theorem input10335_def : input10335 = (Flapjack.WordLangProgHOL.move 0 [(7965, 7953)]) := by
  unfold input10335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7965, 7953)])).val
theorem output10335_def : output10335 = (Flapjack.WordLangProgHOL.move 0 [(7965, 7953)]) := by
  unfold output10335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10335_skip : Flapjack.WordAlloc.isSkip output10335 = false := by
  rw [output10335_def]
  conv => lhs; cbv
  try rfl
theorem node10335_eq : Flapjack.WordAlloc.removeDeadStructural input10335 value5171 value1 value2 = (output10335, value5172, value1) := by
  rw [input10335_def, output10335_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10335 input10334)).val
theorem input10336_def : input10336 = (.seq input10335 input10334) := by
  unfold input10336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10335 output10334)).val
theorem output10336_def : output10336 = (.seq output10335 output10334) := by
  unfold output10336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10336_skip : Flapjack.WordAlloc.isSkip output10336 = false := by
  rw [output10336_def]
  conv => lhs; cbv
  try rfl
theorem node10336_eq : Flapjack.WordAlloc.removeDeadStructural input10336 value5 value1 value2 = (output10336, value5172, value1) := by
  rw [input10336_def, output10336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10334_eq]
  dsimp only
  rw [node10335_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5173 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7961 16732261237459223483#64))).val
theorem input10337_def : input10337 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7961 16732261237459223483#64)) := by
  unfold input10337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7961 16732261237459223483#64))).val
theorem output10337_def : output10337 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7961 16732261237459223483#64)) := by
  unfold output10337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10337_skip : Flapjack.WordAlloc.isSkip output10337 = false := by
  rw [output10337_def]
  conv => lhs; cbv
  try rfl
theorem node10337_eq : Flapjack.WordAlloc.removeDeadStructural input10337 value5172 value1 value2 = (output10337, value5173, value1) := by
  rw [input10337_def, output10337_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7957 16732261237459223483#64))).val
theorem input10338_def : input10338 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7957 16732261237459223483#64)) := by
  unfold input10338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10338_def : output10338 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10338_skip : Flapjack.WordAlloc.isSkip output10338 = true := by
  rw [output10338_def]
  conv => lhs; cbv
  try rfl
theorem node10338_eq : Flapjack.WordAlloc.removeDeadStructural input10338 value5173 value1 value2 = (output10338, value5173, value1) := by
  rw [input10338_def, output10338_def]
  try (conv => lhs; cbv)
  try rfl

def value5174 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7953 7949 (Flapjack.WordRegImm.imm 1952#64))))).val
theorem input10339_def : input10339 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7953 7949 (Flapjack.WordRegImm.imm 1952#64)))) := by
  unfold input10339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7953 7949 (Flapjack.WordRegImm.imm 1952#64))))).val
theorem output10339_def : output10339 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7953 7949 (Flapjack.WordRegImm.imm 1952#64)))) := by
  unfold output10339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10339_skip : Flapjack.WordAlloc.isSkip output10339 = false := by
  rw [output10339_def]
  conv => lhs; cbv
  try rfl
theorem node10339_eq : Flapjack.WordAlloc.removeDeadStructural input10339 value5173 value1 value2 = (output10339, value5174, value1) := by
  rw [input10339_def, output10339_def]
  try (conv => lhs; cbv)
  try rfl

def value5175 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7949 (Flapjack.WordLangAddr.addr 7945 18446744073709551104#64)))).val
theorem input10340_def : input10340 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7949 (Flapjack.WordLangAddr.addr 7945 18446744073709551104#64))) := by
  unfold input10340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7949 (Flapjack.WordLangAddr.addr 7945 18446744073709551104#64)))).val
theorem output10340_def : output10340 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7949 (Flapjack.WordLangAddr.addr 7945 18446744073709551104#64))) := by
  unfold output10340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10340_skip : Flapjack.WordAlloc.isSkip output10340 = false := by
  rw [output10340_def]
  conv => lhs; cbv
  try rfl
theorem node10340_eq : Flapjack.WordAlloc.removeDeadStructural input10340 value5174 value1 value2 = (output10340, value5175, value1) := by
  rw [input10340_def, output10340_def]
  try (conv => lhs; cbv)
  try rfl

def value5176 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7945 7941)).val
theorem input10341_def : input10341 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7945 7941) := by
  unfold input10341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7945 7941)).val
theorem output10341_def : output10341 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7945 7941) := by
  unfold output10341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10341_skip : Flapjack.WordAlloc.isSkip output10341 = false := by
  rw [output10341_def]
  conv => lhs; cbv
  try rfl
theorem node10341_eq : Flapjack.WordAlloc.removeDeadStructural input10341 value5175 value1 value2 = (output10341, value5176, value1) := by
  rw [input10341_def, output10341_def]
  try (conv => lhs; cbv)
  try rfl

def value5177 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7941 7937 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10342_def : input10342 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7941 7937 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7941 7937 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10342_def : output10342 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7941 7937 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10342_skip : Flapjack.WordAlloc.isSkip output10342 = false := by
  rw [output10342_def]
  conv => lhs; cbv
  try rfl
theorem node10342_eq : Flapjack.WordAlloc.removeDeadStructural input10342 value5176 value1 value2 = (output10342, value5177, value1) := by
  rw [input10342_def, output10342_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7937 Flapjack.WordStore.heapLength)).val
theorem input10343_def : input10343 = (Flapjack.WordLangProgHOL.get 7937 Flapjack.WordStore.heapLength) := by
  unfold input10343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7937 Flapjack.WordStore.heapLength)).val
theorem output10343_def : output10343 = (Flapjack.WordLangProgHOL.get 7937 Flapjack.WordStore.heapLength) := by
  unfold output10343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10343_skip : Flapjack.WordAlloc.isSkip output10343 = false := by
  rw [output10343_def]
  conv => lhs; cbv
  try rfl
theorem node10343_eq : Flapjack.WordAlloc.removeDeadStructural input10343 value5177 value1 value2 = (output10343, value5, value1) := by
  rw [input10343_def, output10343_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10343 input10342)).val
theorem input10344_def : input10344 = (.seq input10343 input10342) := by
  unfold input10344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10343 output10342)).val
theorem output10344_def : output10344 = (.seq output10343 output10342) := by
  unfold output10344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10344_skip : Flapjack.WordAlloc.isSkip output10344 = false := by
  rw [output10344_def]
  conv => lhs; cbv
  try rfl
theorem node10344_eq : Flapjack.WordAlloc.removeDeadStructural input10344 value5176 value1 value2 = (output10344, value5, value1) := by
  rw [input10344_def, output10344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10342_eq]
  dsimp only
  rw [node10343_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10344 input10341)).val
theorem input10345_def : input10345 = (.seq input10344 input10341) := by
  unfold input10345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10344 output10341)).val
theorem output10345_def : output10345 = (.seq output10344 output10341) := by
  unfold output10345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10345_skip : Flapjack.WordAlloc.isSkip output10345 = false := by
  rw [output10345_def]
  conv => lhs; cbv
  try rfl
theorem node10345_eq : Flapjack.WordAlloc.removeDeadStructural input10345 value5175 value1 value2 = (output10345, value5, value1) := by
  rw [input10345_def, output10345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10341_eq]
  dsimp only
  rw [node10344_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10345 input10340)).val
theorem input10346_def : input10346 = (.seq input10345 input10340) := by
  unfold input10346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10345 output10340)).val
theorem output10346_def : output10346 = (.seq output10345 output10340) := by
  unfold output10346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10346_skip : Flapjack.WordAlloc.isSkip output10346 = false := by
  rw [output10346_def]
  conv => lhs; cbv
  try rfl
theorem node10346_eq : Flapjack.WordAlloc.removeDeadStructural input10346 value5174 value1 value2 = (output10346, value5, value1) := by
  rw [input10346_def, output10346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10340_eq]
  dsimp only
  rw [node10345_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10346 input10339)).val
theorem input10347_def : input10347 = (.seq input10346 input10339) := by
  unfold input10347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10346 output10339)).val
theorem output10347_def : output10347 = (.seq output10346 output10339) := by
  unfold output10347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10347_skip : Flapjack.WordAlloc.isSkip output10347 = false := by
  rw [output10347_def]
  conv => lhs; cbv
  try rfl
theorem node10347_eq : Flapjack.WordAlloc.removeDeadStructural input10347 value5173 value1 value2 = (output10347, value5, value1) := by
  rw [input10347_def, output10347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10339_eq]
  dsimp only
  rw [node10346_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5178 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7929 (Flapjack.WordLangAddr.addr 7933 0#64)))).val
theorem input10348_def : input10348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7929 (Flapjack.WordLangAddr.addr 7933 0#64))) := by
  unfold input10348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7929 (Flapjack.WordLangAddr.addr 7933 0#64)))).val
theorem output10348_def : output10348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7929 (Flapjack.WordLangAddr.addr 7933 0#64))) := by
  unfold output10348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10348_skip : Flapjack.WordAlloc.isSkip output10348 = false := by
  rw [output10348_def]
  conv => lhs; cbv
  try rfl
theorem node10348_eq : Flapjack.WordAlloc.removeDeadStructural input10348 value5 value1 value2 = (output10348, value5178, value1) := by
  rw [input10348_def, output10348_def]
  try (conv => lhs; cbv)
  try rfl

def value5179 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7933, 7921)])).val
theorem input10349_def : input10349 = (Flapjack.WordLangProgHOL.move 0 [(7933, 7921)]) := by
  unfold input10349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7933, 7921)])).val
theorem output10349_def : output10349 = (Flapjack.WordLangProgHOL.move 0 [(7933, 7921)]) := by
  unfold output10349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10349_skip : Flapjack.WordAlloc.isSkip output10349 = false := by
  rw [output10349_def]
  conv => lhs; cbv
  try rfl
theorem node10349_eq : Flapjack.WordAlloc.removeDeadStructural input10349 value5178 value1 value2 = (output10349, value5179, value1) := by
  rw [input10349_def, output10349_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10349 input10348)).val
theorem input10350_def : input10350 = (.seq input10349 input10348) := by
  unfold input10350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10349 output10348)).val
theorem output10350_def : output10350 = (.seq output10349 output10348) := by
  unfold output10350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10350_skip : Flapjack.WordAlloc.isSkip output10350 = false := by
  rw [output10350_def]
  conv => lhs; cbv
  try rfl
theorem node10350_eq : Flapjack.WordAlloc.removeDeadStructural input10350 value5 value1 value2 = (output10350, value5179, value1) := by
  rw [input10350_def, output10350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10348_eq]
  dsimp only
  rw [node10349_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5180 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7929 1270119733718627136#64))).val
theorem input10351_def : input10351 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7929 1270119733718627136#64)) := by
  unfold input10351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7929 1270119733718627136#64))).val
theorem output10351_def : output10351 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7929 1270119733718627136#64)) := by
  unfold output10351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10351_skip : Flapjack.WordAlloc.isSkip output10351 = false := by
  rw [output10351_def]
  conv => lhs; cbv
  try rfl
theorem node10351_eq : Flapjack.WordAlloc.removeDeadStructural input10351 value5179 value1 value2 = (output10351, value5180, value1) := by
  rw [input10351_def, output10351_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7925 1270119733718627136#64))).val
theorem input10352_def : input10352 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7925 1270119733718627136#64)) := by
  unfold input10352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10352_def : output10352 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10352_skip : Flapjack.WordAlloc.isSkip output10352 = true := by
  rw [output10352_def]
  conv => lhs; cbv
  try rfl
theorem node10352_eq : Flapjack.WordAlloc.removeDeadStructural input10352 value5180 value1 value2 = (output10352, value5180, value1) := by
  rw [input10352_def, output10352_def]
  try (conv => lhs; cbv)
  try rfl

def value5181 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7921 7917 (Flapjack.WordRegImm.imm 1944#64))))).val
theorem input10353_def : input10353 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7921 7917 (Flapjack.WordRegImm.imm 1944#64)))) := by
  unfold input10353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7921 7917 (Flapjack.WordRegImm.imm 1944#64))))).val
theorem output10353_def : output10353 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7921 7917 (Flapjack.WordRegImm.imm 1944#64)))) := by
  unfold output10353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10353_skip : Flapjack.WordAlloc.isSkip output10353 = false := by
  rw [output10353_def]
  conv => lhs; cbv
  try rfl
theorem node10353_eq : Flapjack.WordAlloc.removeDeadStructural input10353 value5180 value1 value2 = (output10353, value5181, value1) := by
  rw [input10353_def, output10353_def]
  try (conv => lhs; cbv)
  try rfl

def value5182 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7917 (Flapjack.WordLangAddr.addr 7913 18446744073709551104#64)))).val
theorem input10354_def : input10354 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7917 (Flapjack.WordLangAddr.addr 7913 18446744073709551104#64))) := by
  unfold input10354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7917 (Flapjack.WordLangAddr.addr 7913 18446744073709551104#64)))).val
theorem output10354_def : output10354 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7917 (Flapjack.WordLangAddr.addr 7913 18446744073709551104#64))) := by
  unfold output10354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10354_skip : Flapjack.WordAlloc.isSkip output10354 = false := by
  rw [output10354_def]
  conv => lhs; cbv
  try rfl
theorem node10354_eq : Flapjack.WordAlloc.removeDeadStructural input10354 value5181 value1 value2 = (output10354, value5182, value1) := by
  rw [input10354_def, output10354_def]
  try (conv => lhs; cbv)
  try rfl

def value5183 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7913 7909)).val
theorem input10355_def : input10355 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7913 7909) := by
  unfold input10355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7913 7909)).val
theorem output10355_def : output10355 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7913 7909) := by
  unfold output10355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10355_skip : Flapjack.WordAlloc.isSkip output10355 = false := by
  rw [output10355_def]
  conv => lhs; cbv
  try rfl
theorem node10355_eq : Flapjack.WordAlloc.removeDeadStructural input10355 value5182 value1 value2 = (output10355, value5183, value1) := by
  rw [input10355_def, output10355_def]
  try (conv => lhs; cbv)
  try rfl

def value5184 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7909 7905 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10356_def : input10356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7909 7905 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7909 7905 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10356_def : output10356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7909 7905 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10356_skip : Flapjack.WordAlloc.isSkip output10356 = false := by
  rw [output10356_def]
  conv => lhs; cbv
  try rfl
theorem node10356_eq : Flapjack.WordAlloc.removeDeadStructural input10356 value5183 value1 value2 = (output10356, value5184, value1) := by
  rw [input10356_def, output10356_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7905 Flapjack.WordStore.heapLength)).val
theorem input10357_def : input10357 = (Flapjack.WordLangProgHOL.get 7905 Flapjack.WordStore.heapLength) := by
  unfold input10357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7905 Flapjack.WordStore.heapLength)).val
theorem output10357_def : output10357 = (Flapjack.WordLangProgHOL.get 7905 Flapjack.WordStore.heapLength) := by
  unfold output10357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10357_skip : Flapjack.WordAlloc.isSkip output10357 = false := by
  rw [output10357_def]
  conv => lhs; cbv
  try rfl
theorem node10357_eq : Flapjack.WordAlloc.removeDeadStructural input10357 value5184 value1 value2 = (output10357, value5, value1) := by
  rw [input10357_def, output10357_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10357 input10356)).val
theorem input10358_def : input10358 = (.seq input10357 input10356) := by
  unfold input10358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10357 output10356)).val
theorem output10358_def : output10358 = (.seq output10357 output10356) := by
  unfold output10358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10358_skip : Flapjack.WordAlloc.isSkip output10358 = false := by
  rw [output10358_def]
  conv => lhs; cbv
  try rfl
theorem node10358_eq : Flapjack.WordAlloc.removeDeadStructural input10358 value5183 value1 value2 = (output10358, value5, value1) := by
  rw [input10358_def, output10358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10356_eq]
  dsimp only
  rw [node10357_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10358 input10355)).val
theorem input10359_def : input10359 = (.seq input10358 input10355) := by
  unfold input10359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10358 output10355)).val
theorem output10359_def : output10359 = (.seq output10358 output10355) := by
  unfold output10359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10359_skip : Flapjack.WordAlloc.isSkip output10359 = false := by
  rw [output10359_def]
  conv => lhs; cbv
  try rfl
theorem node10359_eq : Flapjack.WordAlloc.removeDeadStructural input10359 value5182 value1 value2 = (output10359, value5, value1) := by
  rw [input10359_def, output10359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10355_eq]
  dsimp only
  rw [node10358_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10359 input10354)).val
theorem input10360_def : input10360 = (.seq input10359 input10354) := by
  unfold input10360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10359 output10354)).val
theorem output10360_def : output10360 = (.seq output10359 output10354) := by
  unfold output10360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10360_skip : Flapjack.WordAlloc.isSkip output10360 = false := by
  rw [output10360_def]
  conv => lhs; cbv
  try rfl
theorem node10360_eq : Flapjack.WordAlloc.removeDeadStructural input10360 value5181 value1 value2 = (output10360, value5, value1) := by
  rw [input10360_def, output10360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10354_eq]
  dsimp only
  rw [node10359_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10360 input10353)).val
theorem input10361_def : input10361 = (.seq input10360 input10353) := by
  unfold input10361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10360 output10353)).val
theorem output10361_def : output10361 = (.seq output10360 output10353) := by
  unfold output10361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10361_skip : Flapjack.WordAlloc.isSkip output10361 = false := by
  rw [output10361_def]
  conv => lhs; cbv
  try rfl
theorem node10361_eq : Flapjack.WordAlloc.removeDeadStructural input10361 value5180 value1 value2 = (output10361, value5, value1) := by
  rw [input10361_def, output10361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10353_eq]
  dsimp only
  rw [node10360_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5185 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7897 (Flapjack.WordLangAddr.addr 7901 0#64)))).val
theorem input10362_def : input10362 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7897 (Flapjack.WordLangAddr.addr 7901 0#64))) := by
  unfold input10362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7897 (Flapjack.WordLangAddr.addr 7901 0#64)))).val
theorem output10362_def : output10362 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7897 (Flapjack.WordLangAddr.addr 7901 0#64))) := by
  unfold output10362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10362_skip : Flapjack.WordAlloc.isSkip output10362 = false := by
  rw [output10362_def]
  conv => lhs; cbv
  try rfl
theorem node10362_eq : Flapjack.WordAlloc.removeDeadStructural input10362 value5 value1 value2 = (output10362, value5185, value1) := by
  rw [input10362_def, output10362_def]
  try (conv => lhs; cbv)
  try rfl

def value5186 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7901, 7889)])).val
theorem input10363_def : input10363 = (Flapjack.WordLangProgHOL.move 0 [(7901, 7889)]) := by
  unfold input10363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7901, 7889)])).val
theorem output10363_def : output10363 = (Flapjack.WordLangProgHOL.move 0 [(7901, 7889)]) := by
  unfold output10363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10363_skip : Flapjack.WordAlloc.isSkip output10363 = false := by
  rw [output10363_def]
  conv => lhs; cbv
  try rfl
theorem node10363_eq : Flapjack.WordAlloc.removeDeadStructural input10363 value5185 value1 value2 = (output10363, value5186, value1) := by
  rw [input10363_def, output10363_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10363 input10362)).val
theorem input10364_def : input10364 = (.seq input10363 input10362) := by
  unfold input10364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10363 output10362)).val
theorem output10364_def : output10364 = (.seq output10363 output10362) := by
  unfold output10364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10364_skip : Flapjack.WordAlloc.isSkip output10364 = false := by
  rw [output10364_def]
  conv => lhs; cbv
  try rfl
theorem node10364_eq : Flapjack.WordAlloc.removeDeadStructural input10364 value5 value1 value2 = (output10364, value5186, value1) := by
  rw [input10364_def, output10364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10362_eq]
  dsimp only
  rw [node10363_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5187 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7897 13261148298159854981#64))).val
theorem input10365_def : input10365 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7897 13261148298159854981#64)) := by
  unfold input10365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7897 13261148298159854981#64))).val
theorem output10365_def : output10365 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7897 13261148298159854981#64)) := by
  unfold output10365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10365_skip : Flapjack.WordAlloc.isSkip output10365 = false := by
  rw [output10365_def]
  conv => lhs; cbv
  try rfl
theorem node10365_eq : Flapjack.WordAlloc.removeDeadStructural input10365 value5186 value1 value2 = (output10365, value5187, value1) := by
  rw [input10365_def, output10365_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7893 13261148298159854981#64))).val
theorem input10366_def : input10366 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7893 13261148298159854981#64)) := by
  unfold input10366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10366_def : output10366 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10366_skip : Flapjack.WordAlloc.isSkip output10366 = true := by
  rw [output10366_def]
  conv => lhs; cbv
  try rfl
theorem node10366_eq : Flapjack.WordAlloc.removeDeadStructural input10366 value5187 value1 value2 = (output10366, value5187, value1) := by
  rw [input10366_def, output10366_def]
  try (conv => lhs; cbv)
  try rfl

def value5188 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7889 7885 (Flapjack.WordRegImm.imm 1936#64))))).val
theorem input10367_def : input10367 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7889 7885 (Flapjack.WordRegImm.imm 1936#64)))) := by
  unfold input10367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7889 7885 (Flapjack.WordRegImm.imm 1936#64))))).val
theorem output10367_def : output10367 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7889 7885 (Flapjack.WordRegImm.imm 1936#64)))) := by
  unfold output10367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10367_skip : Flapjack.WordAlloc.isSkip output10367 = false := by
  rw [output10367_def]
  conv => lhs; cbv
  try rfl
theorem node10367_eq : Flapjack.WordAlloc.removeDeadStructural input10367 value5187 value1 value2 = (output10367, value5188, value1) := by
  rw [input10367_def, output10367_def]
  try (conv => lhs; cbv)
  try rfl

def value5189 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7885 (Flapjack.WordLangAddr.addr 7881 18446744073709551104#64)))).val
theorem input10368_def : input10368 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7885 (Flapjack.WordLangAddr.addr 7881 18446744073709551104#64))) := by
  unfold input10368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7885 (Flapjack.WordLangAddr.addr 7881 18446744073709551104#64)))).val
theorem output10368_def : output10368 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7885 (Flapjack.WordLangAddr.addr 7881 18446744073709551104#64))) := by
  unfold output10368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10368_skip : Flapjack.WordAlloc.isSkip output10368 = false := by
  rw [output10368_def]
  conv => lhs; cbv
  try rfl
theorem node10368_eq : Flapjack.WordAlloc.removeDeadStructural input10368 value5188 value1 value2 = (output10368, value5189, value1) := by
  rw [input10368_def, output10368_def]
  try (conv => lhs; cbv)
  try rfl

def value5190 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7881 7877)).val
theorem input10369_def : input10369 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7881 7877) := by
  unfold input10369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7881 7877)).val
theorem output10369_def : output10369 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7881 7877) := by
  unfold output10369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10369_skip : Flapjack.WordAlloc.isSkip output10369 = false := by
  rw [output10369_def]
  conv => lhs; cbv
  try rfl
theorem node10369_eq : Flapjack.WordAlloc.removeDeadStructural input10369 value5189 value1 value2 = (output10369, value5190, value1) := by
  rw [input10369_def, output10369_def]
  try (conv => lhs; cbv)
  try rfl

def value5191 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7877 7873 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10370_def : input10370 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7877 7873 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7877 7873 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10370_def : output10370 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7877 7873 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10370_skip : Flapjack.WordAlloc.isSkip output10370 = false := by
  rw [output10370_def]
  conv => lhs; cbv
  try rfl
theorem node10370_eq : Flapjack.WordAlloc.removeDeadStructural input10370 value5190 value1 value2 = (output10370, value5191, value1) := by
  rw [input10370_def, output10370_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7873 Flapjack.WordStore.heapLength)).val
theorem input10371_def : input10371 = (Flapjack.WordLangProgHOL.get 7873 Flapjack.WordStore.heapLength) := by
  unfold input10371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7873 Flapjack.WordStore.heapLength)).val
theorem output10371_def : output10371 = (Flapjack.WordLangProgHOL.get 7873 Flapjack.WordStore.heapLength) := by
  unfold output10371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10371_skip : Flapjack.WordAlloc.isSkip output10371 = false := by
  rw [output10371_def]
  conv => lhs; cbv
  try rfl
theorem node10371_eq : Flapjack.WordAlloc.removeDeadStructural input10371 value5191 value1 value2 = (output10371, value5, value1) := by
  rw [input10371_def, output10371_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10371 input10370)).val
theorem input10372_def : input10372 = (.seq input10371 input10370) := by
  unfold input10372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10371 output10370)).val
theorem output10372_def : output10372 = (.seq output10371 output10370) := by
  unfold output10372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10372_skip : Flapjack.WordAlloc.isSkip output10372 = false := by
  rw [output10372_def]
  conv => lhs; cbv
  try rfl
theorem node10372_eq : Flapjack.WordAlloc.removeDeadStructural input10372 value5190 value1 value2 = (output10372, value5, value1) := by
  rw [input10372_def, output10372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10370_eq]
  dsimp only
  rw [node10371_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10372 input10369)).val
theorem input10373_def : input10373 = (.seq input10372 input10369) := by
  unfold input10373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10372 output10369)).val
theorem output10373_def : output10373 = (.seq output10372 output10369) := by
  unfold output10373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10373_skip : Flapjack.WordAlloc.isSkip output10373 = false := by
  rw [output10373_def]
  conv => lhs; cbv
  try rfl
theorem node10373_eq : Flapjack.WordAlloc.removeDeadStructural input10373 value5189 value1 value2 = (output10373, value5, value1) := by
  rw [input10373_def, output10373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10369_eq]
  dsimp only
  rw [node10372_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10373 input10368)).val
theorem input10374_def : input10374 = (.seq input10373 input10368) := by
  unfold input10374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10373 output10368)).val
theorem output10374_def : output10374 = (.seq output10373 output10368) := by
  unfold output10374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10374_skip : Flapjack.WordAlloc.isSkip output10374 = false := by
  rw [output10374_def]
  conv => lhs; cbv
  try rfl
theorem node10374_eq : Flapjack.WordAlloc.removeDeadStructural input10374 value5188 value1 value2 = (output10374, value5, value1) := by
  rw [input10374_def, output10374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10368_eq]
  dsimp only
  rw [node10373_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10374 input10367)).val
theorem input10375_def : input10375 = (.seq input10374 input10367) := by
  unfold input10375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10374 output10367)).val
theorem output10375_def : output10375 = (.seq output10374 output10367) := by
  unfold output10375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10375_skip : Flapjack.WordAlloc.isSkip output10375 = false := by
  rw [output10375_def]
  conv => lhs; cbv
  try rfl
theorem node10375_eq : Flapjack.WordAlloc.removeDeadStructural input10375 value5187 value1 value2 = (output10375, value5, value1) := by
  rw [input10375_def, output10375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10367_eq]
  dsimp only
  rw [node10374_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5192 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7865 (Flapjack.WordLangAddr.addr 7869 0#64)))).val
theorem input10376_def : input10376 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7865 (Flapjack.WordLangAddr.addr 7869 0#64))) := by
  unfold input10376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7865 (Flapjack.WordLangAddr.addr 7869 0#64)))).val
theorem output10376_def : output10376 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7865 (Flapjack.WordLangAddr.addr 7869 0#64))) := by
  unfold output10376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10376_skip : Flapjack.WordAlloc.isSkip output10376 = false := by
  rw [output10376_def]
  conv => lhs; cbv
  try rfl
theorem node10376_eq : Flapjack.WordAlloc.removeDeadStructural input10376 value5 value1 value2 = (output10376, value5192, value1) := by
  rw [input10376_def, output10376_def]
  try (conv => lhs; cbv)
  try rfl

def value5193 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7869, 7857)])).val
theorem input10377_def : input10377 = (Flapjack.WordLangProgHOL.move 0 [(7869, 7857)]) := by
  unfold input10377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7869, 7857)])).val
theorem output10377_def : output10377 = (Flapjack.WordLangProgHOL.move 0 [(7869, 7857)]) := by
  unfold output10377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10377_skip : Flapjack.WordAlloc.isSkip output10377 = false := by
  rw [output10377_def]
  conv => lhs; cbv
  try rfl
theorem node10377_eq : Flapjack.WordAlloc.removeDeadStructural input10377 value5192 value1 value2 = (output10377, value5193, value1) := by
  rw [input10377_def, output10377_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10377 input10376)).val
theorem input10378_def : input10378 = (.seq input10377 input10376) := by
  unfold input10378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10377 output10376)).val
theorem output10378_def : output10378 = (.seq output10377 output10376) := by
  unfold output10378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10378_skip : Flapjack.WordAlloc.isSkip output10378 = false := by
  rw [output10378_def]
  conv => lhs; cbv
  try rfl
theorem node10378_eq : Flapjack.WordAlloc.removeDeadStructural input10378 value5 value1 value2 = (output10378, value5193, value1) := by
  rw [input10378_def, output10378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10376_eq]
  dsimp only
  rw [node10377_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5194 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7865 7723742117508874335#64))).val
theorem input10379_def : input10379 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7865 7723742117508874335#64)) := by
  unfold input10379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7865 7723742117508874335#64))).val
theorem output10379_def : output10379 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7865 7723742117508874335#64)) := by
  unfold output10379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10379_skip : Flapjack.WordAlloc.isSkip output10379 = false := by
  rw [output10379_def]
  conv => lhs; cbv
  try rfl
theorem node10379_eq : Flapjack.WordAlloc.removeDeadStructural input10379 value5193 value1 value2 = (output10379, value5194, value1) := by
  rw [input10379_def, output10379_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7861 7723742117508874335#64))).val
theorem input10380_def : input10380 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7861 7723742117508874335#64)) := by
  unfold input10380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10380_def : output10380 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10380_skip : Flapjack.WordAlloc.isSkip output10380 = true := by
  rw [output10380_def]
  conv => lhs; cbv
  try rfl
theorem node10380_eq : Flapjack.WordAlloc.removeDeadStructural input10380 value5194 value1 value2 = (output10380, value5194, value1) := by
  rw [input10380_def, output10380_def]
  try (conv => lhs; cbv)
  try rfl

def value5195 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7857 7853 (Flapjack.WordRegImm.imm 1928#64))))).val
theorem input10381_def : input10381 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7857 7853 (Flapjack.WordRegImm.imm 1928#64)))) := by
  unfold input10381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7857 7853 (Flapjack.WordRegImm.imm 1928#64))))).val
theorem output10381_def : output10381 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7857 7853 (Flapjack.WordRegImm.imm 1928#64)))) := by
  unfold output10381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10381_skip : Flapjack.WordAlloc.isSkip output10381 = false := by
  rw [output10381_def]
  conv => lhs; cbv
  try rfl
theorem node10381_eq : Flapjack.WordAlloc.removeDeadStructural input10381 value5194 value1 value2 = (output10381, value5195, value1) := by
  rw [input10381_def, output10381_def]
  try (conv => lhs; cbv)
  try rfl

def value5196 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7853 (Flapjack.WordLangAddr.addr 7849 18446744073709551104#64)))).val
theorem input10382_def : input10382 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7853 (Flapjack.WordLangAddr.addr 7849 18446744073709551104#64))) := by
  unfold input10382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7853 (Flapjack.WordLangAddr.addr 7849 18446744073709551104#64)))).val
theorem output10382_def : output10382 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7853 (Flapjack.WordLangAddr.addr 7849 18446744073709551104#64))) := by
  unfold output10382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10382_skip : Flapjack.WordAlloc.isSkip output10382 = false := by
  rw [output10382_def]
  conv => lhs; cbv
  try rfl
theorem node10382_eq : Flapjack.WordAlloc.removeDeadStructural input10382 value5195 value1 value2 = (output10382, value5196, value1) := by
  rw [input10382_def, output10382_def]
  try (conv => lhs; cbv)
  try rfl

def value5197 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7849 7845)).val
theorem input10383_def : input10383 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7849 7845) := by
  unfold input10383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7849 7845)).val
theorem output10383_def : output10383 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7849 7845) := by
  unfold output10383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10383_skip : Flapjack.WordAlloc.isSkip output10383 = false := by
  rw [output10383_def]
  conv => lhs; cbv
  try rfl
theorem node10383_eq : Flapjack.WordAlloc.removeDeadStructural input10383 value5196 value1 value2 = (output10383, value5197, value1) := by
  rw [input10383_def, output10383_def]
  try (conv => lhs; cbv)
  try rfl

def value5198 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7845 7841 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10384_def : input10384 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7845 7841 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7845 7841 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10384_def : output10384 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7845 7841 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10384_skip : Flapjack.WordAlloc.isSkip output10384 = false := by
  rw [output10384_def]
  conv => lhs; cbv
  try rfl
theorem node10384_eq : Flapjack.WordAlloc.removeDeadStructural input10384 value5197 value1 value2 = (output10384, value5198, value1) := by
  rw [input10384_def, output10384_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7841 Flapjack.WordStore.heapLength)).val
theorem input10385_def : input10385 = (Flapjack.WordLangProgHOL.get 7841 Flapjack.WordStore.heapLength) := by
  unfold input10385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7841 Flapjack.WordStore.heapLength)).val
theorem output10385_def : output10385 = (Flapjack.WordLangProgHOL.get 7841 Flapjack.WordStore.heapLength) := by
  unfold output10385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10385_skip : Flapjack.WordAlloc.isSkip output10385 = false := by
  rw [output10385_def]
  conv => lhs; cbv
  try rfl
theorem node10385_eq : Flapjack.WordAlloc.removeDeadStructural input10385 value5198 value1 value2 = (output10385, value5, value1) := by
  rw [input10385_def, output10385_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10385 input10384)).val
theorem input10386_def : input10386 = (.seq input10385 input10384) := by
  unfold input10386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10385 output10384)).val
theorem output10386_def : output10386 = (.seq output10385 output10384) := by
  unfold output10386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10386_skip : Flapjack.WordAlloc.isSkip output10386 = false := by
  rw [output10386_def]
  conv => lhs; cbv
  try rfl
theorem node10386_eq : Flapjack.WordAlloc.removeDeadStructural input10386 value5197 value1 value2 = (output10386, value5, value1) := by
  rw [input10386_def, output10386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10384_eq]
  dsimp only
  rw [node10385_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10386 input10383)).val
theorem input10387_def : input10387 = (.seq input10386 input10383) := by
  unfold input10387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10386 output10383)).val
theorem output10387_def : output10387 = (.seq output10386 output10383) := by
  unfold output10387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10387_skip : Flapjack.WordAlloc.isSkip output10387 = false := by
  rw [output10387_def]
  conv => lhs; cbv
  try rfl
theorem node10387_eq : Flapjack.WordAlloc.removeDeadStructural input10387 value5196 value1 value2 = (output10387, value5, value1) := by
  rw [input10387_def, output10387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10383_eq]
  dsimp only
  rw [node10386_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10387 input10382)).val
theorem input10388_def : input10388 = (.seq input10387 input10382) := by
  unfold input10388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10387 output10382)).val
theorem output10388_def : output10388 = (.seq output10387 output10382) := by
  unfold output10388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10388_skip : Flapjack.WordAlloc.isSkip output10388 = false := by
  rw [output10388_def]
  conv => lhs; cbv
  try rfl
theorem node10388_eq : Flapjack.WordAlloc.removeDeadStructural input10388 value5195 value1 value2 = (output10388, value5, value1) := by
  rw [input10388_def, output10388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10382_eq]
  dsimp only
  rw [node10387_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10388 input10381)).val
theorem input10389_def : input10389 = (.seq input10388 input10381) := by
  unfold input10389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10388 output10381)).val
theorem output10389_def : output10389 = (.seq output10388 output10381) := by
  unfold output10389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10389_skip : Flapjack.WordAlloc.isSkip output10389 = false := by
  rw [output10389_def]
  conv => lhs; cbv
  try rfl
theorem node10389_eq : Flapjack.WordAlloc.removeDeadStructural input10389 value5194 value1 value2 = (output10389, value5, value1) := by
  rw [input10389_def, output10389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10381_eq]
  dsimp only
  rw [node10388_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5199 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7833 (Flapjack.WordLangAddr.addr 7837 0#64)))).val
theorem input10390_def : input10390 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7833 (Flapjack.WordLangAddr.addr 7837 0#64))) := by
  unfold input10390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7833 (Flapjack.WordLangAddr.addr 7837 0#64)))).val
theorem output10390_def : output10390 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7833 (Flapjack.WordLangAddr.addr 7837 0#64))) := by
  unfold output10390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10390_skip : Flapjack.WordAlloc.isSkip output10390 = false := by
  rw [output10390_def]
  conv => lhs; cbv
  try rfl
theorem node10390_eq : Flapjack.WordAlloc.removeDeadStructural input10390 value5 value1 value2 = (output10390, value5199, value1) := by
  rw [input10390_def, output10390_def]
  try (conv => lhs; cbv)
  try rfl

def value5200 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7837, 7825)])).val
theorem input10391_def : input10391 = (Flapjack.WordLangProgHOL.move 0 [(7837, 7825)]) := by
  unfold input10391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7837, 7825)])).val
theorem output10391_def : output10391 = (Flapjack.WordLangProgHOL.move 0 [(7837, 7825)]) := by
  unfold output10391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10391_skip : Flapjack.WordAlloc.isSkip output10391 = false := by
  rw [output10391_def]
  conv => lhs; cbv
  try rfl
theorem node10391_eq : Flapjack.WordAlloc.removeDeadStructural input10391 value5199 value1 value2 = (output10391, value5200, value1) := by
  rw [input10391_def, output10391_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10391 input10390)).val
theorem input10392_def : input10392 = (.seq input10391 input10390) := by
  unfold input10392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10391 output10390)).val
theorem output10392_def : output10392 = (.seq output10391 output10390) := by
  unfold output10392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10392_skip : Flapjack.WordAlloc.isSkip output10392 = false := by
  rw [output10392_def]
  conv => lhs; cbv
  try rfl
theorem node10392_eq : Flapjack.WordAlloc.removeDeadStructural input10392 value5 value1 value2 = (output10392, value5200, value1) := by
  rw [input10392_def, output10392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10390_eq]
  dsimp only
  rw [node10391_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5201 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7833 17465657917644792520#64))).val
theorem input10393_def : input10393 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7833 17465657917644792520#64)) := by
  unfold input10393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7833 17465657917644792520#64))).val
theorem output10393_def : output10393 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7833 17465657917644792520#64)) := by
  unfold output10393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10393_skip : Flapjack.WordAlloc.isSkip output10393 = false := by
  rw [output10393_def]
  conv => lhs; cbv
  try rfl
theorem node10393_eq : Flapjack.WordAlloc.removeDeadStructural input10393 value5200 value1 value2 = (output10393, value5201, value1) := by
  rw [input10393_def, output10393_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7829 17465657917644792520#64))).val
theorem input10394_def : input10394 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7829 17465657917644792520#64)) := by
  unfold input10394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10394_def : output10394 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10394_skip : Flapjack.WordAlloc.isSkip output10394 = true := by
  rw [output10394_def]
  conv => lhs; cbv
  try rfl
theorem node10394_eq : Flapjack.WordAlloc.removeDeadStructural input10394 value5201 value1 value2 = (output10394, value5201, value1) := by
  rw [input10394_def, output10394_def]
  try (conv => lhs; cbv)
  try rfl

def value5202 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7825 7821 (Flapjack.WordRegImm.imm 1920#64))))).val
theorem input10395_def : input10395 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7825 7821 (Flapjack.WordRegImm.imm 1920#64)))) := by
  unfold input10395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7825 7821 (Flapjack.WordRegImm.imm 1920#64))))).val
theorem output10395_def : output10395 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7825 7821 (Flapjack.WordRegImm.imm 1920#64)))) := by
  unfold output10395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10395_skip : Flapjack.WordAlloc.isSkip output10395 = false := by
  rw [output10395_def]
  conv => lhs; cbv
  try rfl
theorem node10395_eq : Flapjack.WordAlloc.removeDeadStructural input10395 value5201 value1 value2 = (output10395, value5202, value1) := by
  rw [input10395_def, output10395_def]
  try (conv => lhs; cbv)
  try rfl

def value5203 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7821 (Flapjack.WordLangAddr.addr 7817 18446744073709551104#64)))).val
theorem input10396_def : input10396 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7821 (Flapjack.WordLangAddr.addr 7817 18446744073709551104#64))) := by
  unfold input10396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7821 (Flapjack.WordLangAddr.addr 7817 18446744073709551104#64)))).val
theorem output10396_def : output10396 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7821 (Flapjack.WordLangAddr.addr 7817 18446744073709551104#64))) := by
  unfold output10396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10396_skip : Flapjack.WordAlloc.isSkip output10396 = false := by
  rw [output10396_def]
  conv => lhs; cbv
  try rfl
theorem node10396_eq : Flapjack.WordAlloc.removeDeadStructural input10396 value5202 value1 value2 = (output10396, value5203, value1) := by
  rw [input10396_def, output10396_def]
  try (conv => lhs; cbv)
  try rfl

def value5204 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7817 7813)).val
theorem input10397_def : input10397 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7817 7813) := by
  unfold input10397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7817 7813)).val
theorem output10397_def : output10397 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7817 7813) := by
  unfold output10397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10397_skip : Flapjack.WordAlloc.isSkip output10397 = false := by
  rw [output10397_def]
  conv => lhs; cbv
  try rfl
theorem node10397_eq : Flapjack.WordAlloc.removeDeadStructural input10397 value5203 value1 value2 = (output10397, value5204, value1) := by
  rw [input10397_def, output10397_def]
  try (conv => lhs; cbv)
  try rfl

def value5205 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7813 7809 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10398_def : input10398 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7813 7809 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7813 7809 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10398_def : output10398 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7813 7809 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10398_skip : Flapjack.WordAlloc.isSkip output10398 = false := by
  rw [output10398_def]
  conv => lhs; cbv
  try rfl
theorem node10398_eq : Flapjack.WordAlloc.removeDeadStructural input10398 value5204 value1 value2 = (output10398, value5205, value1) := by
  rw [input10398_def, output10398_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7809 Flapjack.WordStore.heapLength)).val
theorem input10399_def : input10399 = (Flapjack.WordLangProgHOL.get 7809 Flapjack.WordStore.heapLength) := by
  unfold input10399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7809 Flapjack.WordStore.heapLength)).val
theorem output10399_def : output10399 = (Flapjack.WordLangProgHOL.get 7809 Flapjack.WordStore.heapLength) := by
  unfold output10399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10399_skip : Flapjack.WordAlloc.isSkip output10399 = false := by
  rw [output10399_def]
  conv => lhs; cbv
  try rfl
theorem node10399_eq : Flapjack.WordAlloc.removeDeadStructural input10399 value5205 value1 value2 = (output10399, value5, value1) := by
  rw [input10399_def, output10399_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10399 input10398)).val
theorem input10400_def : input10400 = (.seq input10399 input10398) := by
  unfold input10400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10399 output10398)).val
theorem output10400_def : output10400 = (.seq output10399 output10398) := by
  unfold output10400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10400_skip : Flapjack.WordAlloc.isSkip output10400 = false := by
  rw [output10400_def]
  conv => lhs; cbv
  try rfl
theorem node10400_eq : Flapjack.WordAlloc.removeDeadStructural input10400 value5204 value1 value2 = (output10400, value5, value1) := by
  rw [input10400_def, output10400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10398_eq]
  dsimp only
  rw [node10399_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10400 input10397)).val
theorem input10401_def : input10401 = (.seq input10400 input10397) := by
  unfold input10401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10400 output10397)).val
theorem output10401_def : output10401 = (.seq output10400 output10397) := by
  unfold output10401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10401_skip : Flapjack.WordAlloc.isSkip output10401 = false := by
  rw [output10401_def]
  conv => lhs; cbv
  try rfl
theorem node10401_eq : Flapjack.WordAlloc.removeDeadStructural input10401 value5203 value1 value2 = (output10401, value5, value1) := by
  rw [input10401_def, output10401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10397_eq]
  dsimp only
  rw [node10400_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10401 input10396)).val
theorem input10402_def : input10402 = (.seq input10401 input10396) := by
  unfold input10402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10401 output10396)).val
theorem output10402_def : output10402 = (.seq output10401 output10396) := by
  unfold output10402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10402_skip : Flapjack.WordAlloc.isSkip output10402 = false := by
  rw [output10402_def]
  conv => lhs; cbv
  try rfl
theorem node10402_eq : Flapjack.WordAlloc.removeDeadStructural input10402 value5202 value1 value2 = (output10402, value5, value1) := by
  rw [input10402_def, output10402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10396_eq]
  dsimp only
  rw [node10401_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10402 input10395)).val
theorem input10403_def : input10403 = (.seq input10402 input10395) := by
  unfold input10403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10402 output10395)).val
theorem output10403_def : output10403 = (.seq output10402 output10395) := by
  unfold output10403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10403_skip : Flapjack.WordAlloc.isSkip output10403 = false := by
  rw [output10403_def]
  conv => lhs; cbv
  try rfl
theorem node10403_eq : Flapjack.WordAlloc.removeDeadStructural input10403 value5201 value1 value2 = (output10403, value5, value1) := by
  rw [input10403_def, output10403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10395_eq]
  dsimp only
  rw [node10402_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5206 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7801 (Flapjack.WordLangAddr.addr 7805 0#64)))).val
theorem input10404_def : input10404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7801 (Flapjack.WordLangAddr.addr 7805 0#64))) := by
  unfold input10404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7801 (Flapjack.WordLangAddr.addr 7805 0#64)))).val
theorem output10404_def : output10404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7801 (Flapjack.WordLangAddr.addr 7805 0#64))) := by
  unfold output10404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10404_skip : Flapjack.WordAlloc.isSkip output10404 = false := by
  rw [output10404_def]
  conv => lhs; cbv
  try rfl
theorem node10404_eq : Flapjack.WordAlloc.removeDeadStructural input10404 value5 value1 value2 = (output10404, value5206, value1) := by
  rw [input10404_def, output10404_def]
  try (conv => lhs; cbv)
  try rfl

def value5207 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7805, 7793)])).val
theorem input10405_def : input10405 = (Flapjack.WordLangProgHOL.move 0 [(7805, 7793)]) := by
  unfold input10405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7805, 7793)])).val
theorem output10405_def : output10405 = (Flapjack.WordLangProgHOL.move 0 [(7805, 7793)]) := by
  unfold output10405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10405_skip : Flapjack.WordAlloc.isSkip output10405 = false := by
  rw [output10405_def]
  conv => lhs; cbv
  try rfl
theorem node10405_eq : Flapjack.WordAlloc.removeDeadStructural input10405 value5206 value1 value2 = (output10405, value5207, value1) := by
  rw [input10405_def, output10405_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10405 input10404)).val
theorem input10406_def : input10406 = (.seq input10405 input10404) := by
  unfold input10406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10405 output10404)).val
theorem output10406_def : output10406 = (.seq output10405 output10404) := by
  unfold output10406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10406_skip : Flapjack.WordAlloc.isSkip output10406 = false := by
  rw [output10406_def]
  conv => lhs; cbv
  try rfl
theorem node10406_eq : Flapjack.WordAlloc.removeDeadStructural input10406 value5 value1 value2 = (output10406, value5207, value1) := by
  rw [input10406_def, output10406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10404_eq]
  dsimp only
  rw [node10405_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5208 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7801 6201670911048166766#64))).val
theorem input10407_def : input10407 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7801 6201670911048166766#64)) := by
  unfold input10407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7801 6201670911048166766#64))).val
theorem output10407_def : output10407 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7801 6201670911048166766#64)) := by
  unfold output10407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10407_skip : Flapjack.WordAlloc.isSkip output10407 = false := by
  rw [output10407_def]
  conv => lhs; cbv
  try rfl
theorem node10407_eq : Flapjack.WordAlloc.removeDeadStructural input10407 value5207 value1 value2 = (output10407, value5208, value1) := by
  rw [input10407_def, output10407_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7797 6201670911048166766#64))).val
theorem input10408_def : input10408 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7797 6201670911048166766#64)) := by
  unfold input10408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10408_def : output10408 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10408_skip : Flapjack.WordAlloc.isSkip output10408 = true := by
  rw [output10408_def]
  conv => lhs; cbv
  try rfl
theorem node10408_eq : Flapjack.WordAlloc.removeDeadStructural input10408 value5208 value1 value2 = (output10408, value5208, value1) := by
  rw [input10408_def, output10408_def]
  try (conv => lhs; cbv)
  try rfl

def value5209 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7793 7789 (Flapjack.WordRegImm.imm 1912#64))))).val
theorem input10409_def : input10409 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7793 7789 (Flapjack.WordRegImm.imm 1912#64)))) := by
  unfold input10409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7793 7789 (Flapjack.WordRegImm.imm 1912#64))))).val
theorem output10409_def : output10409 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7793 7789 (Flapjack.WordRegImm.imm 1912#64)))) := by
  unfold output10409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10409_skip : Flapjack.WordAlloc.isSkip output10409 = false := by
  rw [output10409_def]
  conv => lhs; cbv
  try rfl
theorem node10409_eq : Flapjack.WordAlloc.removeDeadStructural input10409 value5208 value1 value2 = (output10409, value5209, value1) := by
  rw [input10409_def, output10409_def]
  try (conv => lhs; cbv)
  try rfl

def value5210 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7789 (Flapjack.WordLangAddr.addr 7785 18446744073709551104#64)))).val
theorem input10410_def : input10410 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7789 (Flapjack.WordLangAddr.addr 7785 18446744073709551104#64))) := by
  unfold input10410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7789 (Flapjack.WordLangAddr.addr 7785 18446744073709551104#64)))).val
theorem output10410_def : output10410 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7789 (Flapjack.WordLangAddr.addr 7785 18446744073709551104#64))) := by
  unfold output10410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10410_skip : Flapjack.WordAlloc.isSkip output10410 = false := by
  rw [output10410_def]
  conv => lhs; cbv
  try rfl
theorem node10410_eq : Flapjack.WordAlloc.removeDeadStructural input10410 value5209 value1 value2 = (output10410, value5210, value1) := by
  rw [input10410_def, output10410_def]
  try (conv => lhs; cbv)
  try rfl

def value5211 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7785 7781)).val
theorem input10411_def : input10411 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7785 7781) := by
  unfold input10411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7785 7781)).val
theorem output10411_def : output10411 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7785 7781) := by
  unfold output10411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10411_skip : Flapjack.WordAlloc.isSkip output10411 = false := by
  rw [output10411_def]
  conv => lhs; cbv
  try rfl
theorem node10411_eq : Flapjack.WordAlloc.removeDeadStructural input10411 value5210 value1 value2 = (output10411, value5211, value1) := by
  rw [input10411_def, output10411_def]
  try (conv => lhs; cbv)
  try rfl

def value5212 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7781 7777 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10412_def : input10412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7781 7777 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7781 7777 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10412_def : output10412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7781 7777 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10412_skip : Flapjack.WordAlloc.isSkip output10412 = false := by
  rw [output10412_def]
  conv => lhs; cbv
  try rfl
theorem node10412_eq : Flapjack.WordAlloc.removeDeadStructural input10412 value5211 value1 value2 = (output10412, value5212, value1) := by
  rw [input10412_def, output10412_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7777 Flapjack.WordStore.heapLength)).val
theorem input10413_def : input10413 = (Flapjack.WordLangProgHOL.get 7777 Flapjack.WordStore.heapLength) := by
  unfold input10413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7777 Flapjack.WordStore.heapLength)).val
theorem output10413_def : output10413 = (Flapjack.WordLangProgHOL.get 7777 Flapjack.WordStore.heapLength) := by
  unfold output10413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10413_skip : Flapjack.WordAlloc.isSkip output10413 = false := by
  rw [output10413_def]
  conv => lhs; cbv
  try rfl
theorem node10413_eq : Flapjack.WordAlloc.removeDeadStructural input10413 value5212 value1 value2 = (output10413, value5, value1) := by
  rw [input10413_def, output10413_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10413 input10412)).val
theorem input10414_def : input10414 = (.seq input10413 input10412) := by
  unfold input10414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10413 output10412)).val
theorem output10414_def : output10414 = (.seq output10413 output10412) := by
  unfold output10414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10414_skip : Flapjack.WordAlloc.isSkip output10414 = false := by
  rw [output10414_def]
  conv => lhs; cbv
  try rfl
theorem node10414_eq : Flapjack.WordAlloc.removeDeadStructural input10414 value5211 value1 value2 = (output10414, value5, value1) := by
  rw [input10414_def, output10414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10412_eq]
  dsimp only
  rw [node10413_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10414 input10411)).val
theorem input10415_def : input10415 = (.seq input10414 input10411) := by
  unfold input10415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10414 output10411)).val
theorem output10415_def : output10415 = (.seq output10414 output10411) := by
  unfold output10415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10415_skip : Flapjack.WordAlloc.isSkip output10415 = false := by
  rw [output10415_def]
  conv => lhs; cbv
  try rfl
theorem node10415_eq : Flapjack.WordAlloc.removeDeadStructural input10415 value5210 value1 value2 = (output10415, value5, value1) := by
  rw [input10415_def, output10415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10411_eq]
  dsimp only
  rw [node10414_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10415 input10410)).val
theorem input10416_def : input10416 = (.seq input10415 input10410) := by
  unfold input10416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10415 output10410)).val
theorem output10416_def : output10416 = (.seq output10415 output10410) := by
  unfold output10416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10416_skip : Flapjack.WordAlloc.isSkip output10416 = false := by
  rw [output10416_def]
  conv => lhs; cbv
  try rfl
theorem node10416_eq : Flapjack.WordAlloc.removeDeadStructural input10416 value5209 value1 value2 = (output10416, value5, value1) := by
  rw [input10416_def, output10416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10410_eq]
  dsimp only
  rw [node10415_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10416 input10409)).val
theorem input10417_def : input10417 = (.seq input10416 input10409) := by
  unfold input10417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10416 output10409)).val
theorem output10417_def : output10417 = (.seq output10416 output10409) := by
  unfold output10417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10417_skip : Flapjack.WordAlloc.isSkip output10417 = false := by
  rw [output10417_def]
  conv => lhs; cbv
  try rfl
theorem node10417_eq : Flapjack.WordAlloc.removeDeadStructural input10417 value5208 value1 value2 = (output10417, value5, value1) := by
  rw [input10417_def, output10417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10409_eq]
  dsimp only
  rw [node10416_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5213 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7769 (Flapjack.WordLangAddr.addr 7773 0#64)))).val
theorem input10418_def : input10418 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7769 (Flapjack.WordLangAddr.addr 7773 0#64))) := by
  unfold input10418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7769 (Flapjack.WordLangAddr.addr 7773 0#64)))).val
theorem output10418_def : output10418 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7769 (Flapjack.WordLangAddr.addr 7773 0#64))) := by
  unfold output10418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10418_skip : Flapjack.WordAlloc.isSkip output10418 = false := by
  rw [output10418_def]
  conv => lhs; cbv
  try rfl
theorem node10418_eq : Flapjack.WordAlloc.removeDeadStructural input10418 value5 value1 value2 = (output10418, value5213, value1) := by
  rw [input10418_def, output10418_def]
  try (conv => lhs; cbv)
  try rfl

def value5214 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7773, 7761)])).val
theorem input10419_def : input10419 = (Flapjack.WordLangProgHOL.move 0 [(7773, 7761)]) := by
  unfold input10419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7773, 7761)])).val
theorem output10419_def : output10419 = (Flapjack.WordLangProgHOL.move 0 [(7773, 7761)]) := by
  unfold output10419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10419_skip : Flapjack.WordAlloc.isSkip output10419 = false := by
  rw [output10419_def]
  conv => lhs; cbv
  try rfl
theorem node10419_eq : Flapjack.WordAlloc.removeDeadStructural input10419 value5213 value1 value2 = (output10419, value5214, value1) := by
  rw [input10419_def, output10419_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10419 input10418)).val
theorem input10420_def : input10420 = (.seq input10419 input10418) := by
  unfold input10420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10419 output10418)).val
theorem output10420_def : output10420 = (.seq output10419 output10418) := by
  unfold output10420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10420_skip : Flapjack.WordAlloc.isSkip output10420 = false := by
  rw [output10420_def]
  conv => lhs; cbv
  try rfl
theorem node10420_eq : Flapjack.WordAlloc.removeDeadStructural input10420 value5 value1 value2 = (output10420, value5214, value1) := by
  rw [input10420_def, output10420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10418_eq]
  dsimp only
  rw [node10419_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5215 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7769 12586459670690286007#64))).val
theorem input10421_def : input10421 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7769 12586459670690286007#64)) := by
  unfold input10421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7769 12586459670690286007#64))).val
theorem output10421_def : output10421 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7769 12586459670690286007#64)) := by
  unfold output10421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10421_skip : Flapjack.WordAlloc.isSkip output10421 = false := by
  rw [output10421_def]
  conv => lhs; cbv
  try rfl
theorem node10421_eq : Flapjack.WordAlloc.removeDeadStructural input10421 value5214 value1 value2 = (output10421, value5215, value1) := by
  rw [input10421_def, output10421_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7765 12586459670690286007#64))).val
theorem input10422_def : input10422 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7765 12586459670690286007#64)) := by
  unfold input10422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10422_def : output10422 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10422_skip : Flapjack.WordAlloc.isSkip output10422 = true := by
  rw [output10422_def]
  conv => lhs; cbv
  try rfl
theorem node10422_eq : Flapjack.WordAlloc.removeDeadStructural input10422 value5215 value1 value2 = (output10422, value5215, value1) := by
  rw [input10422_def, output10422_def]
  try (conv => lhs; cbv)
  try rfl

def value5216 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7761 7757 (Flapjack.WordRegImm.imm 1904#64))))).val
theorem input10423_def : input10423 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7761 7757 (Flapjack.WordRegImm.imm 1904#64)))) := by
  unfold input10423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7761 7757 (Flapjack.WordRegImm.imm 1904#64))))).val
theorem output10423_def : output10423 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7761 7757 (Flapjack.WordRegImm.imm 1904#64)))) := by
  unfold output10423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10423_skip : Flapjack.WordAlloc.isSkip output10423 = false := by
  rw [output10423_def]
  conv => lhs; cbv
  try rfl
theorem node10423_eq : Flapjack.WordAlloc.removeDeadStructural input10423 value5215 value1 value2 = (output10423, value5216, value1) := by
  rw [input10423_def, output10423_def]
  try (conv => lhs; cbv)
  try rfl

def value5217 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7757 (Flapjack.WordLangAddr.addr 7753 18446744073709551104#64)))).val
theorem input10424_def : input10424 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7757 (Flapjack.WordLangAddr.addr 7753 18446744073709551104#64))) := by
  unfold input10424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7757 (Flapjack.WordLangAddr.addr 7753 18446744073709551104#64)))).val
theorem output10424_def : output10424 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7757 (Flapjack.WordLangAddr.addr 7753 18446744073709551104#64))) := by
  unfold output10424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10424_skip : Flapjack.WordAlloc.isSkip output10424 = false := by
  rw [output10424_def]
  conv => lhs; cbv
  try rfl
theorem node10424_eq : Flapjack.WordAlloc.removeDeadStructural input10424 value5216 value1 value2 = (output10424, value5217, value1) := by
  rw [input10424_def, output10424_def]
  try (conv => lhs; cbv)
  try rfl

def value5218 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7753 7749)).val
theorem input10425_def : input10425 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7753 7749) := by
  unfold input10425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7753 7749)).val
theorem output10425_def : output10425 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7753 7749) := by
  unfold output10425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10425_skip : Flapjack.WordAlloc.isSkip output10425 = false := by
  rw [output10425_def]
  conv => lhs; cbv
  try rfl
theorem node10425_eq : Flapjack.WordAlloc.removeDeadStructural input10425 value5217 value1 value2 = (output10425, value5218, value1) := by
  rw [input10425_def, output10425_def]
  try (conv => lhs; cbv)
  try rfl

def value5219 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7749 7745 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10426_def : input10426 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7749 7745 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7749 7745 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10426_def : output10426 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7749 7745 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10426_skip : Flapjack.WordAlloc.isSkip output10426 = false := by
  rw [output10426_def]
  conv => lhs; cbv
  try rfl
theorem node10426_eq : Flapjack.WordAlloc.removeDeadStructural input10426 value5218 value1 value2 = (output10426, value5219, value1) := by
  rw [input10426_def, output10426_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7745 Flapjack.WordStore.heapLength)).val
theorem input10427_def : input10427 = (Flapjack.WordLangProgHOL.get 7745 Flapjack.WordStore.heapLength) := by
  unfold input10427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7745 Flapjack.WordStore.heapLength)).val
theorem output10427_def : output10427 = (Flapjack.WordLangProgHOL.get 7745 Flapjack.WordStore.heapLength) := by
  unfold output10427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10427_skip : Flapjack.WordAlloc.isSkip output10427 = false := by
  rw [output10427_def]
  conv => lhs; cbv
  try rfl
theorem node10427_eq : Flapjack.WordAlloc.removeDeadStructural input10427 value5219 value1 value2 = (output10427, value5, value1) := by
  rw [input10427_def, output10427_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10427 input10426)).val
theorem input10428_def : input10428 = (.seq input10427 input10426) := by
  unfold input10428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10427 output10426)).val
theorem output10428_def : output10428 = (.seq output10427 output10426) := by
  unfold output10428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10428_skip : Flapjack.WordAlloc.isSkip output10428 = false := by
  rw [output10428_def]
  conv => lhs; cbv
  try rfl
theorem node10428_eq : Flapjack.WordAlloc.removeDeadStructural input10428 value5218 value1 value2 = (output10428, value5, value1) := by
  rw [input10428_def, output10428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10426_eq]
  dsimp only
  rw [node10427_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10428 input10425)).val
theorem input10429_def : input10429 = (.seq input10428 input10425) := by
  unfold input10429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10428 output10425)).val
theorem output10429_def : output10429 = (.seq output10428 output10425) := by
  unfold output10429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10429_skip : Flapjack.WordAlloc.isSkip output10429 = false := by
  rw [output10429_def]
  conv => lhs; cbv
  try rfl
theorem node10429_eq : Flapjack.WordAlloc.removeDeadStructural input10429 value5217 value1 value2 = (output10429, value5, value1) := by
  rw [input10429_def, output10429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10425_eq]
  dsimp only
  rw [node10428_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10429 input10424)).val
theorem input10430_def : input10430 = (.seq input10429 input10424) := by
  unfold input10430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10429 output10424)).val
theorem output10430_def : output10430 = (.seq output10429 output10424) := by
  unfold output10430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10430_skip : Flapjack.WordAlloc.isSkip output10430 = false := by
  rw [output10430_def]
  conv => lhs; cbv
  try rfl
theorem node10430_eq : Flapjack.WordAlloc.removeDeadStructural input10430 value5216 value1 value2 = (output10430, value5, value1) := by
  rw [input10430_def, output10430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10424_eq]
  dsimp only
  rw [node10429_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10430 input10423)).val
theorem input10431_def : input10431 = (.seq input10430 input10423) := by
  unfold input10431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10430 output10423)).val
theorem output10431_def : output10431 = (.seq output10430 output10423) := by
  unfold output10431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10431_skip : Flapjack.WordAlloc.isSkip output10431 = false := by
  rw [output10431_def]
  conv => lhs; cbv
  try rfl
theorem node10431_eq : Flapjack.WordAlloc.removeDeadStructural input10431 value5215 value1 value2 = (output10431, value5, value1) := by
  rw [input10431_def, output10431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10423_eq]
  dsimp only
  rw [node10430_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5220 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7737 (Flapjack.WordLangAddr.addr 7741 0#64)))).val
theorem input10432_def : input10432 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7737 (Flapjack.WordLangAddr.addr 7741 0#64))) := by
  unfold input10432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7737 (Flapjack.WordLangAddr.addr 7741 0#64)))).val
theorem output10432_def : output10432 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7737 (Flapjack.WordLangAddr.addr 7741 0#64))) := by
  unfold output10432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10432_skip : Flapjack.WordAlloc.isSkip output10432 = false := by
  rw [output10432_def]
  conv => lhs; cbv
  try rfl
theorem node10432_eq : Flapjack.WordAlloc.removeDeadStructural input10432 value5 value1 value2 = (output10432, value5220, value1) := by
  rw [input10432_def, output10432_def]
  try (conv => lhs; cbv)
  try rfl

def value5221 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7741, 7729)])).val
theorem input10433_def : input10433 = (Flapjack.WordLangProgHOL.move 0 [(7741, 7729)]) := by
  unfold input10433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7741, 7729)])).val
theorem output10433_def : output10433 = (Flapjack.WordLangProgHOL.move 0 [(7741, 7729)]) := by
  unfold output10433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10433_skip : Flapjack.WordAlloc.isSkip output10433 = false := by
  rw [output10433_def]
  conv => lhs; cbv
  try rfl
theorem node10433_eq : Flapjack.WordAlloc.removeDeadStructural input10433 value5220 value1 value2 = (output10433, value5221, value1) := by
  rw [input10433_def, output10433_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10433 input10432)).val
theorem input10434_def : input10434 = (.seq input10433 input10432) := by
  unfold input10434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10433 output10432)).val
theorem output10434_def : output10434 = (.seq output10433 output10432) := by
  unfold output10434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10434_skip : Flapjack.WordAlloc.isSkip output10434 = false := by
  rw [output10434_def]
  conv => lhs; cbv
  try rfl
theorem node10434_eq : Flapjack.WordAlloc.removeDeadStructural input10434 value5 value1 value2 = (output10434, value5221, value1) := by
  rw [input10434_def, output10434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10432_eq]
  dsimp only
  rw [node10433_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5222 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7737 276559961644294862#64))).val
theorem input10435_def : input10435 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7737 276559961644294862#64)) := by
  unfold input10435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7737 276559961644294862#64))).val
theorem output10435_def : output10435 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7737 276559961644294862#64)) := by
  unfold output10435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10435_skip : Flapjack.WordAlloc.isSkip output10435 = false := by
  rw [output10435_def]
  conv => lhs; cbv
  try rfl
theorem node10435_eq : Flapjack.WordAlloc.removeDeadStructural input10435 value5221 value1 value2 = (output10435, value5222, value1) := by
  rw [input10435_def, output10435_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7733 276559961644294862#64))).val
theorem input10436_def : input10436 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7733 276559961644294862#64)) := by
  unfold input10436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10436_def : output10436 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10436_skip : Flapjack.WordAlloc.isSkip output10436 = true := by
  rw [output10436_def]
  conv => lhs; cbv
  try rfl
theorem node10436_eq : Flapjack.WordAlloc.removeDeadStructural input10436 value5222 value1 value2 = (output10436, value5222, value1) := by
  rw [input10436_def, output10436_def]
  try (conv => lhs; cbv)
  try rfl

def value5223 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7729 7725 (Flapjack.WordRegImm.imm 1896#64))))).val
theorem input10437_def : input10437 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7729 7725 (Flapjack.WordRegImm.imm 1896#64)))) := by
  unfold input10437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7729 7725 (Flapjack.WordRegImm.imm 1896#64))))).val
theorem output10437_def : output10437 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7729 7725 (Flapjack.WordRegImm.imm 1896#64)))) := by
  unfold output10437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10437_skip : Flapjack.WordAlloc.isSkip output10437 = false := by
  rw [output10437_def]
  conv => lhs; cbv
  try rfl
theorem node10437_eq : Flapjack.WordAlloc.removeDeadStructural input10437 value5222 value1 value2 = (output10437, value5223, value1) := by
  rw [input10437_def, output10437_def]
  try (conv => lhs; cbv)
  try rfl

def value5224 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7725 (Flapjack.WordLangAddr.addr 7721 18446744073709551104#64)))).val
theorem input10438_def : input10438 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7725 (Flapjack.WordLangAddr.addr 7721 18446744073709551104#64))) := by
  unfold input10438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7725 (Flapjack.WordLangAddr.addr 7721 18446744073709551104#64)))).val
theorem output10438_def : output10438 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7725 (Flapjack.WordLangAddr.addr 7721 18446744073709551104#64))) := by
  unfold output10438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10438_skip : Flapjack.WordAlloc.isSkip output10438 = false := by
  rw [output10438_def]
  conv => lhs; cbv
  try rfl
theorem node10438_eq : Flapjack.WordAlloc.removeDeadStructural input10438 value5223 value1 value2 = (output10438, value5224, value1) := by
  rw [input10438_def, output10438_def]
  try (conv => lhs; cbv)
  try rfl

def value5225 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7721 7717)).val
theorem input10439_def : input10439 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7721 7717) := by
  unfold input10439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7721 7717)).val
theorem output10439_def : output10439 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7721 7717) := by
  unfold output10439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10439_skip : Flapjack.WordAlloc.isSkip output10439 = false := by
  rw [output10439_def]
  conv => lhs; cbv
  try rfl
theorem node10439_eq : Flapjack.WordAlloc.removeDeadStructural input10439 value5224 value1 value2 = (output10439, value5225, value1) := by
  rw [input10439_def, output10439_def]
  try (conv => lhs; cbv)
  try rfl

def value5226 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7717 7713 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10440_def : input10440 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7717 7713 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7717 7713 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10440_def : output10440 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7717 7713 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10440_skip : Flapjack.WordAlloc.isSkip output10440 = false := by
  rw [output10440_def]
  conv => lhs; cbv
  try rfl
theorem node10440_eq : Flapjack.WordAlloc.removeDeadStructural input10440 value5225 value1 value2 = (output10440, value5226, value1) := by
  rw [input10440_def, output10440_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7713 Flapjack.WordStore.heapLength)).val
theorem input10441_def : input10441 = (Flapjack.WordLangProgHOL.get 7713 Flapjack.WordStore.heapLength) := by
  unfold input10441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7713 Flapjack.WordStore.heapLength)).val
theorem output10441_def : output10441 = (Flapjack.WordLangProgHOL.get 7713 Flapjack.WordStore.heapLength) := by
  unfold output10441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10441_skip : Flapjack.WordAlloc.isSkip output10441 = false := by
  rw [output10441_def]
  conv => lhs; cbv
  try rfl
theorem node10441_eq : Flapjack.WordAlloc.removeDeadStructural input10441 value5226 value1 value2 = (output10441, value5, value1) := by
  rw [input10441_def, output10441_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10441 input10440)).val
theorem input10442_def : input10442 = (.seq input10441 input10440) := by
  unfold input10442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10441 output10440)).val
theorem output10442_def : output10442 = (.seq output10441 output10440) := by
  unfold output10442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10442_skip : Flapjack.WordAlloc.isSkip output10442 = false := by
  rw [output10442_def]
  conv => lhs; cbv
  try rfl
theorem node10442_eq : Flapjack.WordAlloc.removeDeadStructural input10442 value5225 value1 value2 = (output10442, value5, value1) := by
  rw [input10442_def, output10442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10440_eq]
  dsimp only
  rw [node10441_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10442 input10439)).val
theorem input10443_def : input10443 = (.seq input10442 input10439) := by
  unfold input10443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10442 output10439)).val
theorem output10443_def : output10443 = (.seq output10442 output10439) := by
  unfold output10443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10443_skip : Flapjack.WordAlloc.isSkip output10443 = false := by
  rw [output10443_def]
  conv => lhs; cbv
  try rfl
theorem node10443_eq : Flapjack.WordAlloc.removeDeadStructural input10443 value5224 value1 value2 = (output10443, value5, value1) := by
  rw [input10443_def, output10443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10439_eq]
  dsimp only
  rw [node10442_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10443 input10438)).val
theorem input10444_def : input10444 = (.seq input10443 input10438) := by
  unfold input10444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10443 output10438)).val
theorem output10444_def : output10444 = (.seq output10443 output10438) := by
  unfold output10444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10444_skip : Flapjack.WordAlloc.isSkip output10444 = false := by
  rw [output10444_def]
  conv => lhs; cbv
  try rfl
theorem node10444_eq : Flapjack.WordAlloc.removeDeadStructural input10444 value5223 value1 value2 = (output10444, value5, value1) := by
  rw [input10444_def, output10444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10438_eq]
  dsimp only
  rw [node10443_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10444 input10437)).val
theorem input10445_def : input10445 = (.seq input10444 input10437) := by
  unfold input10445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10444 output10437)).val
theorem output10445_def : output10445 = (.seq output10444 output10437) := by
  unfold output10445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10445_skip : Flapjack.WordAlloc.isSkip output10445 = false := by
  rw [output10445_def]
  conv => lhs; cbv
  try rfl
theorem node10445_eq : Flapjack.WordAlloc.removeDeadStructural input10445 value5222 value1 value2 = (output10445, value5, value1) := by
  rw [input10445_def, output10445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10437_eq]
  dsimp only
  rw [node10444_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5227 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7705 (Flapjack.WordLangAddr.addr 7709 0#64)))).val
theorem input10446_def : input10446 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7705 (Flapjack.WordLangAddr.addr 7709 0#64))) := by
  unfold input10446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7705 (Flapjack.WordLangAddr.addr 7709 0#64)))).val
theorem output10446_def : output10446 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7705 (Flapjack.WordLangAddr.addr 7709 0#64))) := by
  unfold output10446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10446_skip : Flapjack.WordAlloc.isSkip output10446 = false := by
  rw [output10446_def]
  conv => lhs; cbv
  try rfl
theorem node10446_eq : Flapjack.WordAlloc.removeDeadStructural input10446 value5 value1 value2 = (output10446, value5227, value1) := by
  rw [input10446_def, output10446_def]
  try (conv => lhs; cbv)
  try rfl

def value5228 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7709, 7697)])).val
theorem input10447_def : input10447 = (Flapjack.WordLangProgHOL.move 0 [(7709, 7697)]) := by
  unfold input10447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7709, 7697)])).val
theorem output10447_def : output10447 = (Flapjack.WordLangProgHOL.move 0 [(7709, 7697)]) := by
  unfold output10447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10447_skip : Flapjack.WordAlloc.isSkip output10447 = false := by
  rw [output10447_def]
  conv => lhs; cbv
  try rfl
theorem node10447_eq : Flapjack.WordAlloc.removeDeadStructural input10447 value5227 value1 value2 = (output10447, value5228, value1) := by
  rw [input10447_def, output10447_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10447 input10446)).val
theorem input10448_def : input10448 = (.seq input10447 input10446) := by
  unfold input10448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10447 output10446)).val
theorem output10448_def : output10448 = (.seq output10447 output10446) := by
  unfold output10448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10448_skip : Flapjack.WordAlloc.isSkip output10448 = false := by
  rw [output10448_def]
  conv => lhs; cbv
  try rfl
theorem node10448_eq : Flapjack.WordAlloc.removeDeadStructural input10448 value5 value1 value2 = (output10448, value5228, value1) := by
  rw [input10448_def, output10448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10446_eq]
  dsimp only
  rw [node10447_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5229 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7705 18010667617739806336#64))).val
theorem input10449_def : input10449 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7705 18010667617739806336#64)) := by
  unfold input10449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7705 18010667617739806336#64))).val
theorem output10449_def : output10449 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7705 18010667617739806336#64)) := by
  unfold output10449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10449_skip : Flapjack.WordAlloc.isSkip output10449 = false := by
  rw [output10449_def]
  conv => lhs; cbv
  try rfl
theorem node10449_eq : Flapjack.WordAlloc.removeDeadStructural input10449 value5228 value1 value2 = (output10449, value5229, value1) := by
  rw [input10449_def, output10449_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7701 18010667617739806336#64))).val
theorem input10450_def : input10450 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7701 18010667617739806336#64)) := by
  unfold input10450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10450_def : output10450 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10450_skip : Flapjack.WordAlloc.isSkip output10450 = true := by
  rw [output10450_def]
  conv => lhs; cbv
  try rfl
theorem node10450_eq : Flapjack.WordAlloc.removeDeadStructural input10450 value5229 value1 value2 = (output10450, value5229, value1) := by
  rw [input10450_def, output10450_def]
  try (conv => lhs; cbv)
  try rfl

def value5230 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7697 7693 (Flapjack.WordRegImm.imm 1888#64))))).val
theorem input10451_def : input10451 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7697 7693 (Flapjack.WordRegImm.imm 1888#64)))) := by
  unfold input10451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7697 7693 (Flapjack.WordRegImm.imm 1888#64))))).val
theorem output10451_def : output10451 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7697 7693 (Flapjack.WordRegImm.imm 1888#64)))) := by
  unfold output10451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10451_skip : Flapjack.WordAlloc.isSkip output10451 = false := by
  rw [output10451_def]
  conv => lhs; cbv
  try rfl
theorem node10451_eq : Flapjack.WordAlloc.removeDeadStructural input10451 value5229 value1 value2 = (output10451, value5230, value1) := by
  rw [input10451_def, output10451_def]
  try (conv => lhs; cbv)
  try rfl

def value5231 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7693 (Flapjack.WordLangAddr.addr 7689 18446744073709551104#64)))).val
theorem input10452_def : input10452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7693 (Flapjack.WordLangAddr.addr 7689 18446744073709551104#64))) := by
  unfold input10452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7693 (Flapjack.WordLangAddr.addr 7689 18446744073709551104#64)))).val
theorem output10452_def : output10452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7693 (Flapjack.WordLangAddr.addr 7689 18446744073709551104#64))) := by
  unfold output10452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10452_skip : Flapjack.WordAlloc.isSkip output10452 = false := by
  rw [output10452_def]
  conv => lhs; cbv
  try rfl
theorem node10452_eq : Flapjack.WordAlloc.removeDeadStructural input10452 value5230 value1 value2 = (output10452, value5231, value1) := by
  rw [input10452_def, output10452_def]
  try (conv => lhs; cbv)
  try rfl

def value5232 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7689 7685)).val
theorem input10453_def : input10453 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7689 7685) := by
  unfold input10453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7689 7685)).val
theorem output10453_def : output10453 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7689 7685) := by
  unfold output10453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10453_skip : Flapjack.WordAlloc.isSkip output10453 = false := by
  rw [output10453_def]
  conv => lhs; cbv
  try rfl
theorem node10453_eq : Flapjack.WordAlloc.removeDeadStructural input10453 value5231 value1 value2 = (output10453, value5232, value1) := by
  rw [input10453_def, output10453_def]
  try (conv => lhs; cbv)
  try rfl

def value5233 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7685 7681 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10454_def : input10454 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7685 7681 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7685 7681 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10454_def : output10454 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7685 7681 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10454_skip : Flapjack.WordAlloc.isSkip output10454 = false := by
  rw [output10454_def]
  conv => lhs; cbv
  try rfl
theorem node10454_eq : Flapjack.WordAlloc.removeDeadStructural input10454 value5232 value1 value2 = (output10454, value5233, value1) := by
  rw [input10454_def, output10454_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7681 Flapjack.WordStore.heapLength)).val
theorem input10455_def : input10455 = (Flapjack.WordLangProgHOL.get 7681 Flapjack.WordStore.heapLength) := by
  unfold input10455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7681 Flapjack.WordStore.heapLength)).val
theorem output10455_def : output10455 = (Flapjack.WordLangProgHOL.get 7681 Flapjack.WordStore.heapLength) := by
  unfold output10455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10455_skip : Flapjack.WordAlloc.isSkip output10455 = false := by
  rw [output10455_def]
  conv => lhs; cbv
  try rfl
theorem node10455_eq : Flapjack.WordAlloc.removeDeadStructural input10455 value5233 value1 value2 = (output10455, value5, value1) := by
  rw [input10455_def, output10455_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10455 input10454)).val
theorem input10456_def : input10456 = (.seq input10455 input10454) := by
  unfold input10456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10455 output10454)).val
theorem output10456_def : output10456 = (.seq output10455 output10454) := by
  unfold output10456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10456_skip : Flapjack.WordAlloc.isSkip output10456 = false := by
  rw [output10456_def]
  conv => lhs; cbv
  try rfl
theorem node10456_eq : Flapjack.WordAlloc.removeDeadStructural input10456 value5232 value1 value2 = (output10456, value5, value1) := by
  rw [input10456_def, output10456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10454_eq]
  dsimp only
  rw [node10455_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10456 input10453)).val
theorem input10457_def : input10457 = (.seq input10456 input10453) := by
  unfold input10457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10456 output10453)).val
theorem output10457_def : output10457 = (.seq output10456 output10453) := by
  unfold output10457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10457_skip : Flapjack.WordAlloc.isSkip output10457 = false := by
  rw [output10457_def]
  conv => lhs; cbv
  try rfl
theorem node10457_eq : Flapjack.WordAlloc.removeDeadStructural input10457 value5231 value1 value2 = (output10457, value5, value1) := by
  rw [input10457_def, output10457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10453_eq]
  dsimp only
  rw [node10456_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10457 input10452)).val
theorem input10458_def : input10458 = (.seq input10457 input10452) := by
  unfold input10458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10457 output10452)).val
theorem output10458_def : output10458 = (.seq output10457 output10452) := by
  unfold output10458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10458_skip : Flapjack.WordAlloc.isSkip output10458 = false := by
  rw [output10458_def]
  conv => lhs; cbv
  try rfl
theorem node10458_eq : Flapjack.WordAlloc.removeDeadStructural input10458 value5230 value1 value2 = (output10458, value5, value1) := by
  rw [input10458_def, output10458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10452_eq]
  dsimp only
  rw [node10457_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10458 input10451)).val
theorem input10459_def : input10459 = (.seq input10458 input10451) := by
  unfold input10459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10458 output10451)).val
theorem output10459_def : output10459 = (.seq output10458 output10451) := by
  unfold output10459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10459_skip : Flapjack.WordAlloc.isSkip output10459 = false := by
  rw [output10459_def]
  conv => lhs; cbv
  try rfl
theorem node10459_eq : Flapjack.WordAlloc.removeDeadStructural input10459 value5229 value1 value2 = (output10459, value5, value1) := by
  rw [input10459_def, output10459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10451_eq]
  dsimp only
  rw [node10458_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5234 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7673 (Flapjack.WordLangAddr.addr 7677 0#64)))).val
theorem input10460_def : input10460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7673 (Flapjack.WordLangAddr.addr 7677 0#64))) := by
  unfold input10460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7673 (Flapjack.WordLangAddr.addr 7677 0#64)))).val
theorem output10460_def : output10460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7673 (Flapjack.WordLangAddr.addr 7677 0#64))) := by
  unfold output10460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10460_skip : Flapjack.WordAlloc.isSkip output10460 = false := by
  rw [output10460_def]
  conv => lhs; cbv
  try rfl
theorem node10460_eq : Flapjack.WordAlloc.removeDeadStructural input10460 value5 value1 value2 = (output10460, value5234, value1) := by
  rw [input10460_def, output10460_def]
  try (conv => lhs; cbv)
  try rfl

def value5235 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7677, 7665)])).val
theorem input10461_def : input10461 = (Flapjack.WordLangProgHOL.move 0 [(7677, 7665)]) := by
  unfold input10461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7677, 7665)])).val
theorem output10461_def : output10461 = (Flapjack.WordLangProgHOL.move 0 [(7677, 7665)]) := by
  unfold output10461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10461_skip : Flapjack.WordAlloc.isSkip output10461 = false := by
  rw [output10461_def]
  conv => lhs; cbv
  try rfl
theorem node10461_eq : Flapjack.WordAlloc.removeDeadStructural input10461 value5234 value1 value2 = (output10461, value5235, value1) := by
  rw [input10461_def, output10461_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10461 input10460)).val
theorem input10462_def : input10462 = (.seq input10461 input10460) := by
  unfold input10462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10461 output10460)).val
theorem output10462_def : output10462 = (.seq output10461 output10460) := by
  unfold output10462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10462_skip : Flapjack.WordAlloc.isSkip output10462 = false := by
  rw [output10462_def]
  conv => lhs; cbv
  try rfl
theorem node10462_eq : Flapjack.WordAlloc.removeDeadStructural input10462 value5 value1 value2 = (output10462, value5235, value1) := by
  rw [input10462_def, output10462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10460_eq]
  dsimp only
  rw [node10461_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5236 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7673 7731696418485440718#64))).val
theorem input10463_def : input10463 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7673 7731696418485440718#64)) := by
  unfold input10463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7673 7731696418485440718#64))).val
theorem output10463_def : output10463 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7673 7731696418485440718#64)) := by
  unfold output10463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10463_skip : Flapjack.WordAlloc.isSkip output10463 = false := by
  rw [output10463_def]
  conv => lhs; cbv
  try rfl
theorem node10463_eq : Flapjack.WordAlloc.removeDeadStructural input10463 value5235 value1 value2 = (output10463, value5236, value1) := by
  rw [input10463_def, output10463_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7669 7731696418485440718#64))).val
theorem input10464_def : input10464 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7669 7731696418485440718#64)) := by
  unfold input10464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10464_def : output10464 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10464_skip : Flapjack.WordAlloc.isSkip output10464 = true := by
  rw [output10464_def]
  conv => lhs; cbv
  try rfl
theorem node10464_eq : Flapjack.WordAlloc.removeDeadStructural input10464 value5236 value1 value2 = (output10464, value5236, value1) := by
  rw [input10464_def, output10464_def]
  try (conv => lhs; cbv)
  try rfl

def value5237 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7665 7661 (Flapjack.WordRegImm.imm 1880#64))))).val
theorem input10465_def : input10465 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7665 7661 (Flapjack.WordRegImm.imm 1880#64)))) := by
  unfold input10465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7665 7661 (Flapjack.WordRegImm.imm 1880#64))))).val
theorem output10465_def : output10465 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7665 7661 (Flapjack.WordRegImm.imm 1880#64)))) := by
  unfold output10465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10465_skip : Flapjack.WordAlloc.isSkip output10465 = false := by
  rw [output10465_def]
  conv => lhs; cbv
  try rfl
theorem node10465_eq : Flapjack.WordAlloc.removeDeadStructural input10465 value5236 value1 value2 = (output10465, value5237, value1) := by
  rw [input10465_def, output10465_def]
  try (conv => lhs; cbv)
  try rfl

def value5238 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7661 (Flapjack.WordLangAddr.addr 7657 18446744073709551104#64)))).val
theorem input10466_def : input10466 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7661 (Flapjack.WordLangAddr.addr 7657 18446744073709551104#64))) := by
  unfold input10466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7661 (Flapjack.WordLangAddr.addr 7657 18446744073709551104#64)))).val
theorem output10466_def : output10466 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7661 (Flapjack.WordLangAddr.addr 7657 18446744073709551104#64))) := by
  unfold output10466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10466_skip : Flapjack.WordAlloc.isSkip output10466 = false := by
  rw [output10466_def]
  conv => lhs; cbv
  try rfl
theorem node10466_eq : Flapjack.WordAlloc.removeDeadStructural input10466 value5237 value1 value2 = (output10466, value5238, value1) := by
  rw [input10466_def, output10466_def]
  try (conv => lhs; cbv)
  try rfl

def value5239 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7657 7653)).val
theorem input10467_def : input10467 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7657 7653) := by
  unfold input10467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7657 7653)).val
theorem output10467_def : output10467 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7657 7653) := by
  unfold output10467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10467_skip : Flapjack.WordAlloc.isSkip output10467 = false := by
  rw [output10467_def]
  conv => lhs; cbv
  try rfl
theorem node10467_eq : Flapjack.WordAlloc.removeDeadStructural input10467 value5238 value1 value2 = (output10467, value5239, value1) := by
  rw [input10467_def, output10467_def]
  try (conv => lhs; cbv)
  try rfl

def value5240 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7653 7649 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10468_def : input10468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7653 7649 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7653 7649 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10468_def : output10468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7653 7649 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10468_skip : Flapjack.WordAlloc.isSkip output10468 = false := by
  rw [output10468_def]
  conv => lhs; cbv
  try rfl
theorem node10468_eq : Flapjack.WordAlloc.removeDeadStructural input10468 value5239 value1 value2 = (output10468, value5240, value1) := by
  rw [input10468_def, output10468_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7649 Flapjack.WordStore.heapLength)).val
theorem input10469_def : input10469 = (Flapjack.WordLangProgHOL.get 7649 Flapjack.WordStore.heapLength) := by
  unfold input10469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7649 Flapjack.WordStore.heapLength)).val
theorem output10469_def : output10469 = (Flapjack.WordLangProgHOL.get 7649 Flapjack.WordStore.heapLength) := by
  unfold output10469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10469_skip : Flapjack.WordAlloc.isSkip output10469 = false := by
  rw [output10469_def]
  conv => lhs; cbv
  try rfl
theorem node10469_eq : Flapjack.WordAlloc.removeDeadStructural input10469 value5240 value1 value2 = (output10469, value5, value1) := by
  rw [input10469_def, output10469_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10469 input10468)).val
theorem input10470_def : input10470 = (.seq input10469 input10468) := by
  unfold input10470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10469 output10468)).val
theorem output10470_def : output10470 = (.seq output10469 output10468) := by
  unfold output10470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10470_skip : Flapjack.WordAlloc.isSkip output10470 = false := by
  rw [output10470_def]
  conv => lhs; cbv
  try rfl
theorem node10470_eq : Flapjack.WordAlloc.removeDeadStructural input10470 value5239 value1 value2 = (output10470, value5, value1) := by
  rw [input10470_def, output10470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10468_eq]
  dsimp only
  rw [node10469_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10470 input10467)).val
theorem input10471_def : input10471 = (.seq input10470 input10467) := by
  unfold input10471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10470 output10467)).val
theorem output10471_def : output10471 = (.seq output10470 output10467) := by
  unfold output10471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10471_skip : Flapjack.WordAlloc.isSkip output10471 = false := by
  rw [output10471_def]
  conv => lhs; cbv
  try rfl
theorem node10471_eq : Flapjack.WordAlloc.removeDeadStructural input10471 value5238 value1 value2 = (output10471, value5, value1) := by
  rw [input10471_def, output10471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10467_eq]
  dsimp only
  rw [node10470_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10471 input10466)).val
theorem input10472_def : input10472 = (.seq input10471 input10466) := by
  unfold input10472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10471 output10466)).val
theorem output10472_def : output10472 = (.seq output10471 output10466) := by
  unfold output10472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10472_skip : Flapjack.WordAlloc.isSkip output10472 = false := by
  rw [output10472_def]
  conv => lhs; cbv
  try rfl
theorem node10472_eq : Flapjack.WordAlloc.removeDeadStructural input10472 value5237 value1 value2 = (output10472, value5, value1) := by
  rw [input10472_def, output10472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10466_eq]
  dsimp only
  rw [node10471_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10472 input10465)).val
theorem input10473_def : input10473 = (.seq input10472 input10465) := by
  unfold input10473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10472 output10465)).val
theorem output10473_def : output10473 = (.seq output10472 output10465) := by
  unfold output10473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10473_skip : Flapjack.WordAlloc.isSkip output10473 = false := by
  rw [output10473_def]
  conv => lhs; cbv
  try rfl
theorem node10473_eq : Flapjack.WordAlloc.removeDeadStructural input10473 value5236 value1 value2 = (output10473, value5, value1) := by
  rw [input10473_def, output10473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10465_eq]
  dsimp only
  rw [node10472_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5241 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7641 (Flapjack.WordLangAddr.addr 7645 0#64)))).val
theorem input10474_def : input10474 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7641 (Flapjack.WordLangAddr.addr 7645 0#64))) := by
  unfold input10474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7641 (Flapjack.WordLangAddr.addr 7645 0#64)))).val
theorem output10474_def : output10474 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7641 (Flapjack.WordLangAddr.addr 7645 0#64))) := by
  unfold output10474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10474_skip : Flapjack.WordAlloc.isSkip output10474 = false := by
  rw [output10474_def]
  conv => lhs; cbv
  try rfl
theorem node10474_eq : Flapjack.WordAlloc.removeDeadStructural input10474 value5 value1 value2 = (output10474, value5241, value1) := by
  rw [input10474_def, output10474_def]
  try (conv => lhs; cbv)
  try rfl

def value5242 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7645, 7633)])).val
theorem input10475_def : input10475 = (Flapjack.WordLangProgHOL.move 0 [(7645, 7633)]) := by
  unfold input10475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7645, 7633)])).val
theorem output10475_def : output10475 = (Flapjack.WordLangProgHOL.move 0 [(7645, 7633)]) := by
  unfold output10475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10475_skip : Flapjack.WordAlloc.isSkip output10475 = false := by
  rw [output10475_def]
  conv => lhs; cbv
  try rfl
theorem node10475_eq : Flapjack.WordAlloc.removeDeadStructural input10475 value5241 value1 value2 = (output10475, value5242, value1) := by
  rw [input10475_def, output10475_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10475 input10474)).val
theorem input10476_def : input10476 = (.seq input10475 input10474) := by
  unfold input10476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10475 output10474)).val
theorem output10476_def : output10476 = (.seq output10475 output10474) := by
  unfold output10476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10476_skip : Flapjack.WordAlloc.isSkip output10476 = false := by
  rw [output10476_def]
  conv => lhs; cbv
  try rfl
theorem node10476_eq : Flapjack.WordAlloc.removeDeadStructural input10476 value5 value1 value2 = (output10476, value5242, value1) := by
  rw [input10476_def, output10476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10474_eq]
  dsimp only
  rw [node10475_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5243 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7641 8623975380491602827#64))).val
theorem input10477_def : input10477 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7641 8623975380491602827#64)) := by
  unfold input10477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7641 8623975380491602827#64))).val
theorem output10477_def : output10477 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7641 8623975380491602827#64)) := by
  unfold output10477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10477_skip : Flapjack.WordAlloc.isSkip output10477 = false := by
  rw [output10477_def]
  conv => lhs; cbv
  try rfl
theorem node10477_eq : Flapjack.WordAlloc.removeDeadStructural input10477 value5242 value1 value2 = (output10477, value5243, value1) := by
  rw [input10477_def, output10477_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7637 8623975380491602827#64))).val
theorem input10478_def : input10478 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7637 8623975380491602827#64)) := by
  unfold input10478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10478_def : output10478 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10478_skip : Flapjack.WordAlloc.isSkip output10478 = true := by
  rw [output10478_def]
  conv => lhs; cbv
  try rfl
theorem node10478_eq : Flapjack.WordAlloc.removeDeadStructural input10478 value5243 value1 value2 = (output10478, value5243, value1) := by
  rw [input10478_def, output10478_def]
  try (conv => lhs; cbv)
  try rfl

def value5244 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7633 7629 (Flapjack.WordRegImm.imm 1872#64))))).val
theorem input10479_def : input10479 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7633 7629 (Flapjack.WordRegImm.imm 1872#64)))) := by
  unfold input10479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7633 7629 (Flapjack.WordRegImm.imm 1872#64))))).val
theorem output10479_def : output10479 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7633 7629 (Flapjack.WordRegImm.imm 1872#64)))) := by
  unfold output10479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10479_skip : Flapjack.WordAlloc.isSkip output10479 = false := by
  rw [output10479_def]
  conv => lhs; cbv
  try rfl
theorem node10479_eq : Flapjack.WordAlloc.removeDeadStructural input10479 value5243 value1 value2 = (output10479, value5244, value1) := by
  rw [input10479_def, output10479_def]
  try (conv => lhs; cbv)
  try rfl

def value5245 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7629 (Flapjack.WordLangAddr.addr 7625 18446744073709551104#64)))).val
theorem input10480_def : input10480 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7629 (Flapjack.WordLangAddr.addr 7625 18446744073709551104#64))) := by
  unfold input10480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7629 (Flapjack.WordLangAddr.addr 7625 18446744073709551104#64)))).val
theorem output10480_def : output10480 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7629 (Flapjack.WordLangAddr.addr 7625 18446744073709551104#64))) := by
  unfold output10480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10480_skip : Flapjack.WordAlloc.isSkip output10480 = false := by
  rw [output10480_def]
  conv => lhs; cbv
  try rfl
theorem node10480_eq : Flapjack.WordAlloc.removeDeadStructural input10480 value5244 value1 value2 = (output10480, value5245, value1) := by
  rw [input10480_def, output10480_def]
  try (conv => lhs; cbv)
  try rfl

def value5246 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7625 7621)).val
theorem input10481_def : input10481 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7625 7621) := by
  unfold input10481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7625 7621)).val
theorem output10481_def : output10481 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7625 7621) := by
  unfold output10481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10481_skip : Flapjack.WordAlloc.isSkip output10481 = false := by
  rw [output10481_def]
  conv => lhs; cbv
  try rfl
theorem node10481_eq : Flapjack.WordAlloc.removeDeadStructural input10481 value5245 value1 value2 = (output10481, value5246, value1) := by
  rw [input10481_def, output10481_def]
  try (conv => lhs; cbv)
  try rfl

def value5247 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7621 7617 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10482_def : input10482 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7621 7617 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7621 7617 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10482_def : output10482 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7621 7617 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10482_skip : Flapjack.WordAlloc.isSkip output10482 = false := by
  rw [output10482_def]
  conv => lhs; cbv
  try rfl
theorem node10482_eq : Flapjack.WordAlloc.removeDeadStructural input10482 value5246 value1 value2 = (output10482, value5247, value1) := by
  rw [input10482_def, output10482_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7617 Flapjack.WordStore.heapLength)).val
theorem input10483_def : input10483 = (Flapjack.WordLangProgHOL.get 7617 Flapjack.WordStore.heapLength) := by
  unfold input10483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 7617 Flapjack.WordStore.heapLength)).val
theorem output10483_def : output10483 = (Flapjack.WordLangProgHOL.get 7617 Flapjack.WordStore.heapLength) := by
  unfold output10483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10483_skip : Flapjack.WordAlloc.isSkip output10483 = false := by
  rw [output10483_def]
  conv => lhs; cbv
  try rfl
theorem node10483_eq : Flapjack.WordAlloc.removeDeadStructural input10483 value5247 value1 value2 = (output10483, value5, value1) := by
  rw [input10483_def, output10483_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10483 input10482)).val
theorem input10484_def : input10484 = (.seq input10483 input10482) := by
  unfold input10484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10483 output10482)).val
theorem output10484_def : output10484 = (.seq output10483 output10482) := by
  unfold output10484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10484_skip : Flapjack.WordAlloc.isSkip output10484 = false := by
  rw [output10484_def]
  conv => lhs; cbv
  try rfl
theorem node10484_eq : Flapjack.WordAlloc.removeDeadStructural input10484 value5246 value1 value2 = (output10484, value5, value1) := by
  rw [input10484_def, output10484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10482_eq]
  dsimp only
  rw [node10483_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10484 input10481)).val
theorem input10485_def : input10485 = (.seq input10484 input10481) := by
  unfold input10485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10484 output10481)).val
theorem output10485_def : output10485 = (.seq output10484 output10481) := by
  unfold output10485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10485_skip : Flapjack.WordAlloc.isSkip output10485 = false := by
  rw [output10485_def]
  conv => lhs; cbv
  try rfl
theorem node10485_eq : Flapjack.WordAlloc.removeDeadStructural input10485 value5245 value1 value2 = (output10485, value5, value1) := by
  rw [input10485_def, output10485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10481_eq]
  dsimp only
  rw [node10484_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10485 input10480)).val
theorem input10486_def : input10486 = (.seq input10485 input10480) := by
  unfold input10486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10485 output10480)).val
theorem output10486_def : output10486 = (.seq output10485 output10480) := by
  unfold output10486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10486_skip : Flapjack.WordAlloc.isSkip output10486 = false := by
  rw [output10486_def]
  conv => lhs; cbv
  try rfl
theorem node10486_eq : Flapjack.WordAlloc.removeDeadStructural input10486 value5244 value1 value2 = (output10486, value5, value1) := by
  rw [input10486_def, output10486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10480_eq]
  dsimp only
  rw [node10485_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10486 input10479)).val
theorem input10487_def : input10487 = (.seq input10486 input10479) := by
  unfold input10487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10486 output10479)).val
theorem output10487_def : output10487 = (.seq output10486 output10479) := by
  unfold output10487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10487_skip : Flapjack.WordAlloc.isSkip output10487 = false := by
  rw [output10487_def]
  conv => lhs; cbv
  try rfl
theorem node10487_eq : Flapjack.WordAlloc.removeDeadStructural input10487 value5243 value1 value2 = (output10487, value5, value1) := by
  rw [input10487_def, output10487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10479_eq]
  dsimp only
  rw [node10486_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5248 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7609 (Flapjack.WordLangAddr.addr 7613 0#64)))).val
theorem input10488_def : input10488 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7609 (Flapjack.WordLangAddr.addr 7613 0#64))) := by
  unfold input10488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7609 (Flapjack.WordLangAddr.addr 7613 0#64)))).val
theorem output10488_def : output10488 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 7609 (Flapjack.WordLangAddr.addr 7613 0#64))) := by
  unfold output10488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10488_skip : Flapjack.WordAlloc.isSkip output10488 = false := by
  rw [output10488_def]
  conv => lhs; cbv
  try rfl
theorem node10488_eq : Flapjack.WordAlloc.removeDeadStructural input10488 value5 value1 value2 = (output10488, value5248, value1) := by
  rw [input10488_def, output10488_def]
  try (conv => lhs; cbv)
  try rfl

def value5249 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7613, 7601)])).val
theorem input10489_def : input10489 = (Flapjack.WordLangProgHOL.move 0 [(7613, 7601)]) := by
  unfold input10489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7613, 7601)])).val
theorem output10489_def : output10489 = (Flapjack.WordLangProgHOL.move 0 [(7613, 7601)]) := by
  unfold output10489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10489_skip : Flapjack.WordAlloc.isSkip output10489 = false := by
  rw [output10489_def]
  conv => lhs; cbv
  try rfl
theorem node10489_eq : Flapjack.WordAlloc.removeDeadStructural input10489 value5248 value1 value2 = (output10489, value5249, value1) := by
  rw [input10489_def, output10489_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10489 input10488)).val
theorem input10490_def : input10490 = (.seq input10489 input10488) := by
  unfold input10490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10489 output10488)).val
theorem output10490_def : output10490 = (.seq output10489 output10488) := by
  unfold output10490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10490_skip : Flapjack.WordAlloc.isSkip output10490 = false := by
  rw [output10490_def]
  conv => lhs; cbv
  try rfl
theorem node10490_eq : Flapjack.WordAlloc.removeDeadStructural input10490 value5 value1 value2 = (output10490, value5249, value1) := by
  rw [input10490_def, output10490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10488_eq]
  dsimp only
  rw [node10489_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5250 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7609 9962099387040634336#64))).val
theorem input10491_def : input10491 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7609 9962099387040634336#64)) := by
  unfold input10491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7609 9962099387040634336#64))).val
theorem output10491_def : output10491 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7609 9962099387040634336#64)) := by
  unfold output10491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10491_skip : Flapjack.WordAlloc.isSkip output10491 = false := by
  rw [output10491_def]
  conv => lhs; cbv
  try rfl
theorem node10491_eq : Flapjack.WordAlloc.removeDeadStructural input10491 value5249 value1 value2 = (output10491, value5250, value1) := by
  rw [input10491_def, output10491_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7605 9962099387040634336#64))).val
theorem input10492_def : input10492 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7605 9962099387040634336#64)) := by
  unfold input10492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10492_def : output10492 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10492_skip : Flapjack.WordAlloc.isSkip output10492 = true := by
  rw [output10492_def]
  conv => lhs; cbv
  try rfl
theorem node10492_eq : Flapjack.WordAlloc.removeDeadStructural input10492 value5250 value1 value2 = (output10492, value5250, value1) := by
  rw [input10492_def, output10492_def]
  try (conv => lhs; cbv)
  try rfl

def value5251 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7601 7597 (Flapjack.WordRegImm.imm 1864#64))))).val
theorem input10493_def : input10493 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7601 7597 (Flapjack.WordRegImm.imm 1864#64)))) := by
  unfold input10493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7601 7597 (Flapjack.WordRegImm.imm 1864#64))))).val
theorem output10493_def : output10493 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 7601 7597 (Flapjack.WordRegImm.imm 1864#64)))) := by
  unfold output10493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10493_skip : Flapjack.WordAlloc.isSkip output10493 = false := by
  rw [output10493_def]
  conv => lhs; cbv
  try rfl
theorem node10493_eq : Flapjack.WordAlloc.removeDeadStructural input10493 value5250 value1 value2 = (output10493, value5251, value1) := by
  rw [input10493_def, output10493_def]
  try (conv => lhs; cbv)
  try rfl

def value5252 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7597 (Flapjack.WordLangAddr.addr 7593 18446744073709551104#64)))).val
theorem input10494_def : input10494 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7597 (Flapjack.WordLangAddr.addr 7593 18446744073709551104#64))) := by
  unfold input10494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7597 (Flapjack.WordLangAddr.addr 7593 18446744073709551104#64)))).val
theorem output10494_def : output10494 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 7597 (Flapjack.WordLangAddr.addr 7593 18446744073709551104#64))) := by
  unfold output10494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10494_skip : Flapjack.WordAlloc.isSkip output10494 = false := by
  rw [output10494_def]
  conv => lhs; cbv
  try rfl
theorem node10494_eq : Flapjack.WordAlloc.removeDeadStructural input10494 value5251 value1 value2 = (output10494, value5252, value1) := by
  rw [input10494_def, output10494_def]
  try (conv => lhs; cbv)
  try rfl

def value5253 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7593 7589)).val
theorem input10495_def : input10495 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7593 7589) := by
  unfold input10495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7593 7589)).val
theorem output10495_def : output10495 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7593 7589) := by
  unfold output10495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10495_skip : Flapjack.WordAlloc.isSkip output10495 = false := by
  rw [output10495_def]
  conv => lhs; cbv
  try rfl
theorem node10495_eq : Flapjack.WordAlloc.removeDeadStructural input10495 value5252 value1 value2 = (output10495, value5253, value1) := by
  rw [input10495_def, output10495_def]
  try (conv => lhs; cbv)
  try rfl

def value5254 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

#print axioms node10495_eq
end InitECandidate.Proofs.DeadStages713
