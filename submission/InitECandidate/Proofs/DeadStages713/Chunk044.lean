import InitECandidate.Proofs.DeadStages713.Chunk043
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input11264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5837 (Flapjack.WordLangAddr.addr 5833 18446744073709551104#64)))).val
theorem input11264_def : input11264 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5837 (Flapjack.WordLangAddr.addr 5833 18446744073709551104#64))) := by
  unfold input11264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5837 (Flapjack.WordLangAddr.addr 5833 18446744073709551104#64)))).val
theorem output11264_def : output11264 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5837 (Flapjack.WordLangAddr.addr 5833 18446744073709551104#64))) := by
  unfold output11264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11264_skip : Flapjack.WordAlloc.isSkip output11264 = false := by
  rw [output11264_def]
  conv => lhs; cbv
  try rfl
theorem node11264_eq : Flapjack.WordAlloc.removeDeadStructural input11264 value5636 value1 value2 = (output11264, value5637, value1) := by
  rw [input11264_def, output11264_def]
  try (conv => lhs; cbv)
  try rfl

def value5638 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5833 5829)).val
theorem input11265_def : input11265 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5833 5829) := by
  unfold input11265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5833 5829)).val
theorem output11265_def : output11265 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5833 5829) := by
  unfold output11265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11265_skip : Flapjack.WordAlloc.isSkip output11265 = false := by
  rw [output11265_def]
  conv => lhs; cbv
  try rfl
theorem node11265_eq : Flapjack.WordAlloc.removeDeadStructural input11265 value5637 value1 value2 = (output11265, value5638, value1) := by
  rw [input11265_def, output11265_def]
  try (conv => lhs; cbv)
  try rfl

def value5639 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5829 5825 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11266_def : input11266 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5829 5825 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5829 5825 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11266_def : output11266 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5829 5825 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11266_skip : Flapjack.WordAlloc.isSkip output11266 = false := by
  rw [output11266_def]
  conv => lhs; cbv
  try rfl
theorem node11266_eq : Flapjack.WordAlloc.removeDeadStructural input11266 value5638 value1 value2 = (output11266, value5639, value1) := by
  rw [input11266_def, output11266_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5825 Flapjack.WordStore.heapLength)).val
theorem input11267_def : input11267 = (Flapjack.WordLangProgHOL.get 5825 Flapjack.WordStore.heapLength) := by
  unfold input11267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5825 Flapjack.WordStore.heapLength)).val
theorem output11267_def : output11267 = (Flapjack.WordLangProgHOL.get 5825 Flapjack.WordStore.heapLength) := by
  unfold output11267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11267_skip : Flapjack.WordAlloc.isSkip output11267 = false := by
  rw [output11267_def]
  conv => lhs; cbv
  try rfl
theorem node11267_eq : Flapjack.WordAlloc.removeDeadStructural input11267 value5639 value1 value2 = (output11267, value5, value1) := by
  rw [input11267_def, output11267_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11267 input11266)).val
theorem input11268_def : input11268 = (.seq input11267 input11266) := by
  unfold input11268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11267 output11266)).val
theorem output11268_def : output11268 = (.seq output11267 output11266) := by
  unfold output11268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11268_skip : Flapjack.WordAlloc.isSkip output11268 = false := by
  rw [output11268_def]
  conv => lhs; cbv
  try rfl
theorem node11268_eq : Flapjack.WordAlloc.removeDeadStructural input11268 value5638 value1 value2 = (output11268, value5, value1) := by
  rw [input11268_def, output11268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11266_eq]
  dsimp only
  rw [node11267_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11268 input11265)).val
theorem input11269_def : input11269 = (.seq input11268 input11265) := by
  unfold input11269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11268 output11265)).val
theorem output11269_def : output11269 = (.seq output11268 output11265) := by
  unfold output11269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11269_skip : Flapjack.WordAlloc.isSkip output11269 = false := by
  rw [output11269_def]
  conv => lhs; cbv
  try rfl
theorem node11269_eq : Flapjack.WordAlloc.removeDeadStructural input11269 value5637 value1 value2 = (output11269, value5, value1) := by
  rw [input11269_def, output11269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11265_eq]
  dsimp only
  rw [node11268_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11269 input11264)).val
theorem input11270_def : input11270 = (.seq input11269 input11264) := by
  unfold input11270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11269 output11264)).val
theorem output11270_def : output11270 = (.seq output11269 output11264) := by
  unfold output11270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11270_skip : Flapjack.WordAlloc.isSkip output11270 = false := by
  rw [output11270_def]
  conv => lhs; cbv
  try rfl
theorem node11270_eq : Flapjack.WordAlloc.removeDeadStructural input11270 value5636 value1 value2 = (output11270, value5, value1) := by
  rw [input11270_def, output11270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11264_eq]
  dsimp only
  rw [node11269_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11270 input11263)).val
theorem input11271_def : input11271 = (.seq input11270 input11263) := by
  unfold input11271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11270 output11263)).val
theorem output11271_def : output11271 = (.seq output11270 output11263) := by
  unfold output11271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11271_skip : Flapjack.WordAlloc.isSkip output11271 = false := by
  rw [output11271_def]
  conv => lhs; cbv
  try rfl
theorem node11271_eq : Flapjack.WordAlloc.removeDeadStructural input11271 value5635 value1 value2 = (output11271, value5, value1) := by
  rw [input11271_def, output11271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11263_eq]
  dsimp only
  rw [node11270_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5640 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5817 (Flapjack.WordLangAddr.addr 5821 0#64)))).val
theorem input11272_def : input11272 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5817 (Flapjack.WordLangAddr.addr 5821 0#64))) := by
  unfold input11272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5817 (Flapjack.WordLangAddr.addr 5821 0#64)))).val
theorem output11272_def : output11272 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5817 (Flapjack.WordLangAddr.addr 5821 0#64))) := by
  unfold output11272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11272_skip : Flapjack.WordAlloc.isSkip output11272 = false := by
  rw [output11272_def]
  conv => lhs; cbv
  try rfl
theorem node11272_eq : Flapjack.WordAlloc.removeDeadStructural input11272 value5 value1 value2 = (output11272, value5640, value1) := by
  rw [input11272_def, output11272_def]
  try (conv => lhs; cbv)
  try rfl

def value5641 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5821, 5809)])).val
theorem input11273_def : input11273 = (Flapjack.WordLangProgHOL.move 0 [(5821, 5809)]) := by
  unfold input11273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5821, 5809)])).val
theorem output11273_def : output11273 = (Flapjack.WordLangProgHOL.move 0 [(5821, 5809)]) := by
  unfold output11273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11273_skip : Flapjack.WordAlloc.isSkip output11273 = false := by
  rw [output11273_def]
  conv => lhs; cbv
  try rfl
theorem node11273_eq : Flapjack.WordAlloc.removeDeadStructural input11273 value5640 value1 value2 = (output11273, value5641, value1) := by
  rw [input11273_def, output11273_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11273 input11272)).val
theorem input11274_def : input11274 = (.seq input11273 input11272) := by
  unfold input11274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11273 output11272)).val
theorem output11274_def : output11274 = (.seq output11273 output11272) := by
  unfold output11274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11274_skip : Flapjack.WordAlloc.isSkip output11274 = false := by
  rw [output11274_def]
  conv => lhs; cbv
  try rfl
theorem node11274_eq : Flapjack.WordAlloc.removeDeadStructural input11274 value5 value1 value2 = (output11274, value5641, value1) := by
  rw [input11274_def, output11274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11272_eq]
  dsimp only
  rw [node11273_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5642 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5817 5412103778470702295#64))).val
theorem input11275_def : input11275 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5817 5412103778470702295#64)) := by
  unfold input11275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5817 5412103778470702295#64))).val
theorem output11275_def : output11275 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5817 5412103778470702295#64)) := by
  unfold output11275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11275_skip : Flapjack.WordAlloc.isSkip output11275 = false := by
  rw [output11275_def]
  conv => lhs; cbv
  try rfl
theorem node11275_eq : Flapjack.WordAlloc.removeDeadStructural input11275 value5641 value1 value2 = (output11275, value5642, value1) := by
  rw [input11275_def, output11275_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5813 5412103778470702295#64))).val
theorem input11276_def : input11276 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5813 5412103778470702295#64)) := by
  unfold input11276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11276_def : output11276 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11276_skip : Flapjack.WordAlloc.isSkip output11276 = true := by
  rw [output11276_def]
  conv => lhs; cbv
  try rfl
theorem node11276_eq : Flapjack.WordAlloc.removeDeadStructural input11276 value5642 value1 value2 = (output11276, value5642, value1) := by
  rw [input11276_def, output11276_def]
  try (conv => lhs; cbv)
  try rfl

def value5643 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5809 5805 (Flapjack.WordRegImm.imm 1416#64))))).val
theorem input11277_def : input11277 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5809 5805 (Flapjack.WordRegImm.imm 1416#64)))) := by
  unfold input11277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5809 5805 (Flapjack.WordRegImm.imm 1416#64))))).val
theorem output11277_def : output11277 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5809 5805 (Flapjack.WordRegImm.imm 1416#64)))) := by
  unfold output11277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11277_skip : Flapjack.WordAlloc.isSkip output11277 = false := by
  rw [output11277_def]
  conv => lhs; cbv
  try rfl
theorem node11277_eq : Flapjack.WordAlloc.removeDeadStructural input11277 value5642 value1 value2 = (output11277, value5643, value1) := by
  rw [input11277_def, output11277_def]
  try (conv => lhs; cbv)
  try rfl

def value5644 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5805 (Flapjack.WordLangAddr.addr 5801 18446744073709551104#64)))).val
theorem input11278_def : input11278 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5805 (Flapjack.WordLangAddr.addr 5801 18446744073709551104#64))) := by
  unfold input11278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5805 (Flapjack.WordLangAddr.addr 5801 18446744073709551104#64)))).val
theorem output11278_def : output11278 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5805 (Flapjack.WordLangAddr.addr 5801 18446744073709551104#64))) := by
  unfold output11278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11278_skip : Flapjack.WordAlloc.isSkip output11278 = false := by
  rw [output11278_def]
  conv => lhs; cbv
  try rfl
theorem node11278_eq : Flapjack.WordAlloc.removeDeadStructural input11278 value5643 value1 value2 = (output11278, value5644, value1) := by
  rw [input11278_def, output11278_def]
  try (conv => lhs; cbv)
  try rfl

def value5645 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5801 5797)).val
theorem input11279_def : input11279 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5801 5797) := by
  unfold input11279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5801 5797)).val
theorem output11279_def : output11279 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5801 5797) := by
  unfold output11279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11279_skip : Flapjack.WordAlloc.isSkip output11279 = false := by
  rw [output11279_def]
  conv => lhs; cbv
  try rfl
theorem node11279_eq : Flapjack.WordAlloc.removeDeadStructural input11279 value5644 value1 value2 = (output11279, value5645, value1) := by
  rw [input11279_def, output11279_def]
  try (conv => lhs; cbv)
  try rfl

def value5646 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5797 5793 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11280_def : input11280 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5797 5793 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5797 5793 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11280_def : output11280 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5797 5793 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11280_skip : Flapjack.WordAlloc.isSkip output11280 = false := by
  rw [output11280_def]
  conv => lhs; cbv
  try rfl
theorem node11280_eq : Flapjack.WordAlloc.removeDeadStructural input11280 value5645 value1 value2 = (output11280, value5646, value1) := by
  rw [input11280_def, output11280_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5793 Flapjack.WordStore.heapLength)).val
theorem input11281_def : input11281 = (Flapjack.WordLangProgHOL.get 5793 Flapjack.WordStore.heapLength) := by
  unfold input11281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5793 Flapjack.WordStore.heapLength)).val
theorem output11281_def : output11281 = (Flapjack.WordLangProgHOL.get 5793 Flapjack.WordStore.heapLength) := by
  unfold output11281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11281_skip : Flapjack.WordAlloc.isSkip output11281 = false := by
  rw [output11281_def]
  conv => lhs; cbv
  try rfl
theorem node11281_eq : Flapjack.WordAlloc.removeDeadStructural input11281 value5646 value1 value2 = (output11281, value5, value1) := by
  rw [input11281_def, output11281_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11281 input11280)).val
theorem input11282_def : input11282 = (.seq input11281 input11280) := by
  unfold input11282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11281 output11280)).val
theorem output11282_def : output11282 = (.seq output11281 output11280) := by
  unfold output11282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11282_skip : Flapjack.WordAlloc.isSkip output11282 = false := by
  rw [output11282_def]
  conv => lhs; cbv
  try rfl
theorem node11282_eq : Flapjack.WordAlloc.removeDeadStructural input11282 value5645 value1 value2 = (output11282, value5, value1) := by
  rw [input11282_def, output11282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11280_eq]
  dsimp only
  rw [node11281_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11282 input11279)).val
theorem input11283_def : input11283 = (.seq input11282 input11279) := by
  unfold input11283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11282 output11279)).val
theorem output11283_def : output11283 = (.seq output11282 output11279) := by
  unfold output11283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11283_skip : Flapjack.WordAlloc.isSkip output11283 = false := by
  rw [output11283_def]
  conv => lhs; cbv
  try rfl
theorem node11283_eq : Flapjack.WordAlloc.removeDeadStructural input11283 value5644 value1 value2 = (output11283, value5, value1) := by
  rw [input11283_def, output11283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11279_eq]
  dsimp only
  rw [node11282_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11283 input11278)).val
theorem input11284_def : input11284 = (.seq input11283 input11278) := by
  unfold input11284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11283 output11278)).val
theorem output11284_def : output11284 = (.seq output11283 output11278) := by
  unfold output11284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11284_skip : Flapjack.WordAlloc.isSkip output11284 = false := by
  rw [output11284_def]
  conv => lhs; cbv
  try rfl
theorem node11284_eq : Flapjack.WordAlloc.removeDeadStructural input11284 value5643 value1 value2 = (output11284, value5, value1) := by
  rw [input11284_def, output11284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11278_eq]
  dsimp only
  rw [node11283_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11284 input11277)).val
theorem input11285_def : input11285 = (.seq input11284 input11277) := by
  unfold input11285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11284 output11277)).val
theorem output11285_def : output11285 = (.seq output11284 output11277) := by
  unfold output11285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11285_skip : Flapjack.WordAlloc.isSkip output11285 = false := by
  rw [output11285_def]
  conv => lhs; cbv
  try rfl
theorem node11285_eq : Flapjack.WordAlloc.removeDeadStructural input11285 value5642 value1 value2 = (output11285, value5, value1) := by
  rw [input11285_def, output11285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11277_eq]
  dsimp only
  rw [node11284_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5647 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5785 (Flapjack.WordLangAddr.addr 5789 0#64)))).val
theorem input11286_def : input11286 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5785 (Flapjack.WordLangAddr.addr 5789 0#64))) := by
  unfold input11286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5785 (Flapjack.WordLangAddr.addr 5789 0#64)))).val
theorem output11286_def : output11286 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5785 (Flapjack.WordLangAddr.addr 5789 0#64))) := by
  unfold output11286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11286_skip : Flapjack.WordAlloc.isSkip output11286 = false := by
  rw [output11286_def]
  conv => lhs; cbv
  try rfl
theorem node11286_eq : Flapjack.WordAlloc.removeDeadStructural input11286 value5 value1 value2 = (output11286, value5647, value1) := by
  rw [input11286_def, output11286_def]
  try (conv => lhs; cbv)
  try rfl

def value5648 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5789, 5777)])).val
theorem input11287_def : input11287 = (Flapjack.WordLangProgHOL.move 0 [(5789, 5777)]) := by
  unfold input11287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5789, 5777)])).val
theorem output11287_def : output11287 = (Flapjack.WordLangProgHOL.move 0 [(5789, 5777)]) := by
  unfold output11287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11287_skip : Flapjack.WordAlloc.isSkip output11287 = false := by
  rw [output11287_def]
  conv => lhs; cbv
  try rfl
theorem node11287_eq : Flapjack.WordAlloc.removeDeadStructural input11287 value5647 value1 value2 = (output11287, value5648, value1) := by
  rw [input11287_def, output11287_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11287 input11286)).val
theorem input11288_def : input11288 = (.seq input11287 input11286) := by
  unfold input11288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11287 output11286)).val
theorem output11288_def : output11288 = (.seq output11287 output11286) := by
  unfold output11288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11288_skip : Flapjack.WordAlloc.isSkip output11288 = false := by
  rw [output11288_def]
  conv => lhs; cbv
  try rfl
theorem node11288_eq : Flapjack.WordAlloc.removeDeadStructural input11288 value5 value1 value2 = (output11288, value5648, value1) := by
  rw [input11288_def, output11288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11286_eq]
  dsimp only
  rw [node11287_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5649 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5785 7239337960414712511#64))).val
theorem input11289_def : input11289 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5785 7239337960414712511#64)) := by
  unfold input11289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5785 7239337960414712511#64))).val
theorem output11289_def : output11289 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5785 7239337960414712511#64)) := by
  unfold output11289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11289_skip : Flapjack.WordAlloc.isSkip output11289 = false := by
  rw [output11289_def]
  conv => lhs; cbv
  try rfl
theorem node11289_eq : Flapjack.WordAlloc.removeDeadStructural input11289 value5648 value1 value2 = (output11289, value5649, value1) := by
  rw [input11289_def, output11289_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5781 7239337960414712511#64))).val
theorem input11290_def : input11290 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5781 7239337960414712511#64)) := by
  unfold input11290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11290_def : output11290 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11290_skip : Flapjack.WordAlloc.isSkip output11290 = true := by
  rw [output11290_def]
  conv => lhs; cbv
  try rfl
theorem node11290_eq : Flapjack.WordAlloc.removeDeadStructural input11290 value5649 value1 value2 = (output11290, value5649, value1) := by
  rw [input11290_def, output11290_def]
  try (conv => lhs; cbv)
  try rfl

def value5650 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5777 5773 (Flapjack.WordRegImm.imm 1408#64))))).val
theorem input11291_def : input11291 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5777 5773 (Flapjack.WordRegImm.imm 1408#64)))) := by
  unfold input11291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5777 5773 (Flapjack.WordRegImm.imm 1408#64))))).val
theorem output11291_def : output11291 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5777 5773 (Flapjack.WordRegImm.imm 1408#64)))) := by
  unfold output11291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11291_skip : Flapjack.WordAlloc.isSkip output11291 = false := by
  rw [output11291_def]
  conv => lhs; cbv
  try rfl
theorem node11291_eq : Flapjack.WordAlloc.removeDeadStructural input11291 value5649 value1 value2 = (output11291, value5650, value1) := by
  rw [input11291_def, output11291_def]
  try (conv => lhs; cbv)
  try rfl

def value5651 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5773 (Flapjack.WordLangAddr.addr 5769 18446744073709551104#64)))).val
theorem input11292_def : input11292 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5773 (Flapjack.WordLangAddr.addr 5769 18446744073709551104#64))) := by
  unfold input11292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5773 (Flapjack.WordLangAddr.addr 5769 18446744073709551104#64)))).val
theorem output11292_def : output11292 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5773 (Flapjack.WordLangAddr.addr 5769 18446744073709551104#64))) := by
  unfold output11292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11292_skip : Flapjack.WordAlloc.isSkip output11292 = false := by
  rw [output11292_def]
  conv => lhs; cbv
  try rfl
theorem node11292_eq : Flapjack.WordAlloc.removeDeadStructural input11292 value5650 value1 value2 = (output11292, value5651, value1) := by
  rw [input11292_def, output11292_def]
  try (conv => lhs; cbv)
  try rfl

def value5652 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5769 5765)).val
theorem input11293_def : input11293 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5769 5765) := by
  unfold input11293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5769 5765)).val
theorem output11293_def : output11293 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5769 5765) := by
  unfold output11293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11293_skip : Flapjack.WordAlloc.isSkip output11293 = false := by
  rw [output11293_def]
  conv => lhs; cbv
  try rfl
theorem node11293_eq : Flapjack.WordAlloc.removeDeadStructural input11293 value5651 value1 value2 = (output11293, value5652, value1) := by
  rw [input11293_def, output11293_def]
  try (conv => lhs; cbv)
  try rfl

def value5653 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5765 5761 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11294_def : input11294 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5765 5761 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5765 5761 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11294_def : output11294 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5765 5761 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11294_skip : Flapjack.WordAlloc.isSkip output11294 = false := by
  rw [output11294_def]
  conv => lhs; cbv
  try rfl
theorem node11294_eq : Flapjack.WordAlloc.removeDeadStructural input11294 value5652 value1 value2 = (output11294, value5653, value1) := by
  rw [input11294_def, output11294_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5761 Flapjack.WordStore.heapLength)).val
theorem input11295_def : input11295 = (Flapjack.WordLangProgHOL.get 5761 Flapjack.WordStore.heapLength) := by
  unfold input11295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5761 Flapjack.WordStore.heapLength)).val
theorem output11295_def : output11295 = (Flapjack.WordLangProgHOL.get 5761 Flapjack.WordStore.heapLength) := by
  unfold output11295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11295_skip : Flapjack.WordAlloc.isSkip output11295 = false := by
  rw [output11295_def]
  conv => lhs; cbv
  try rfl
theorem node11295_eq : Flapjack.WordAlloc.removeDeadStructural input11295 value5653 value1 value2 = (output11295, value5, value1) := by
  rw [input11295_def, output11295_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11295 input11294)).val
theorem input11296_def : input11296 = (.seq input11295 input11294) := by
  unfold input11296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11295 output11294)).val
theorem output11296_def : output11296 = (.seq output11295 output11294) := by
  unfold output11296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11296_skip : Flapjack.WordAlloc.isSkip output11296 = false := by
  rw [output11296_def]
  conv => lhs; cbv
  try rfl
theorem node11296_eq : Flapjack.WordAlloc.removeDeadStructural input11296 value5652 value1 value2 = (output11296, value5, value1) := by
  rw [input11296_def, output11296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11294_eq]
  dsimp only
  rw [node11295_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11296 input11293)).val
theorem input11297_def : input11297 = (.seq input11296 input11293) := by
  unfold input11297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11296 output11293)).val
theorem output11297_def : output11297 = (.seq output11296 output11293) := by
  unfold output11297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11297_skip : Flapjack.WordAlloc.isSkip output11297 = false := by
  rw [output11297_def]
  conv => lhs; cbv
  try rfl
theorem node11297_eq : Flapjack.WordAlloc.removeDeadStructural input11297 value5651 value1 value2 = (output11297, value5, value1) := by
  rw [input11297_def, output11297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11293_eq]
  dsimp only
  rw [node11296_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11297 input11292)).val
theorem input11298_def : input11298 = (.seq input11297 input11292) := by
  unfold input11298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11297 output11292)).val
theorem output11298_def : output11298 = (.seq output11297 output11292) := by
  unfold output11298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11298_skip : Flapjack.WordAlloc.isSkip output11298 = false := by
  rw [output11298_def]
  conv => lhs; cbv
  try rfl
theorem node11298_eq : Flapjack.WordAlloc.removeDeadStructural input11298 value5650 value1 value2 = (output11298, value5, value1) := by
  rw [input11298_def, output11298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11292_eq]
  dsimp only
  rw [node11297_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11298 input11291)).val
theorem input11299_def : input11299 = (.seq input11298 input11291) := by
  unfold input11299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11298 output11291)).val
theorem output11299_def : output11299 = (.seq output11298 output11291) := by
  unfold output11299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11299_skip : Flapjack.WordAlloc.isSkip output11299 = false := by
  rw [output11299_def]
  conv => lhs; cbv
  try rfl
theorem node11299_eq : Flapjack.WordAlloc.removeDeadStructural input11299 value5649 value1 value2 = (output11299, value5, value1) := by
  rw [input11299_def, output11299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11291_eq]
  dsimp only
  rw [node11298_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5654 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5753 (Flapjack.WordLangAddr.addr 5757 0#64)))).val
theorem input11300_def : input11300 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5753 (Flapjack.WordLangAddr.addr 5757 0#64))) := by
  unfold input11300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5753 (Flapjack.WordLangAddr.addr 5757 0#64)))).val
theorem output11300_def : output11300 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5753 (Flapjack.WordLangAddr.addr 5757 0#64))) := by
  unfold output11300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11300_skip : Flapjack.WordAlloc.isSkip output11300 = false := by
  rw [output11300_def]
  conv => lhs; cbv
  try rfl
theorem node11300_eq : Flapjack.WordAlloc.removeDeadStructural input11300 value5 value1 value2 = (output11300, value5654, value1) := by
  rw [input11300_def, output11300_def]
  try (conv => lhs; cbv)
  try rfl

def value5655 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5757, 5745)])).val
theorem input11301_def : input11301 = (Flapjack.WordLangProgHOL.move 0 [(5757, 5745)]) := by
  unfold input11301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5757, 5745)])).val
theorem output11301_def : output11301 = (Flapjack.WordLangProgHOL.move 0 [(5757, 5745)]) := by
  unfold output11301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11301_skip : Flapjack.WordAlloc.isSkip output11301 = false := by
  rw [output11301_def]
  conv => lhs; cbv
  try rfl
theorem node11301_eq : Flapjack.WordAlloc.removeDeadStructural input11301 value5654 value1 value2 = (output11301, value5655, value1) := by
  rw [input11301_def, output11301_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11301 input11300)).val
theorem input11302_def : input11302 = (.seq input11301 input11300) := by
  unfold input11302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11301 output11300)).val
theorem output11302_def : output11302 = (.seq output11301 output11300) := by
  unfold output11302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11302_skip : Flapjack.WordAlloc.isSkip output11302 = false := by
  rw [output11302_def]
  conv => lhs; cbv
  try rfl
theorem node11302_eq : Flapjack.WordAlloc.removeDeadStructural input11302 value5 value1 value2 = (output11302, value5655, value1) := by
  rw [input11302_def, output11302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11300_eq]
  dsimp only
  rw [node11301_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5656 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5753 7435674573564081700#64))).val
theorem input11303_def : input11303 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5753 7435674573564081700#64)) := by
  unfold input11303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5753 7435674573564081700#64))).val
theorem output11303_def : output11303 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5753 7435674573564081700#64)) := by
  unfold output11303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11303_skip : Flapjack.WordAlloc.isSkip output11303 = false := by
  rw [output11303_def]
  conv => lhs; cbv
  try rfl
theorem node11303_eq : Flapjack.WordAlloc.removeDeadStructural input11303 value5655 value1 value2 = (output11303, value5656, value1) := by
  rw [input11303_def, output11303_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5749 7435674573564081700#64))).val
theorem input11304_def : input11304 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5749 7435674573564081700#64)) := by
  unfold input11304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11304_def : output11304 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11304_skip : Flapjack.WordAlloc.isSkip output11304 = true := by
  rw [output11304_def]
  conv => lhs; cbv
  try rfl
theorem node11304_eq : Flapjack.WordAlloc.removeDeadStructural input11304 value5656 value1 value2 = (output11304, value5656, value1) := by
  rw [input11304_def, output11304_def]
  try (conv => lhs; cbv)
  try rfl

def value5657 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5745 5741 (Flapjack.WordRegImm.imm 1400#64))))).val
theorem input11305_def : input11305 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5745 5741 (Flapjack.WordRegImm.imm 1400#64)))) := by
  unfold input11305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5745 5741 (Flapjack.WordRegImm.imm 1400#64))))).val
theorem output11305_def : output11305 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5745 5741 (Flapjack.WordRegImm.imm 1400#64)))) := by
  unfold output11305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11305_skip : Flapjack.WordAlloc.isSkip output11305 = false := by
  rw [output11305_def]
  conv => lhs; cbv
  try rfl
theorem node11305_eq : Flapjack.WordAlloc.removeDeadStructural input11305 value5656 value1 value2 = (output11305, value5657, value1) := by
  rw [input11305_def, output11305_def]
  try (conv => lhs; cbv)
  try rfl

def value5658 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5741 (Flapjack.WordLangAddr.addr 5737 18446744073709551104#64)))).val
theorem input11306_def : input11306 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5741 (Flapjack.WordLangAddr.addr 5737 18446744073709551104#64))) := by
  unfold input11306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5741 (Flapjack.WordLangAddr.addr 5737 18446744073709551104#64)))).val
theorem output11306_def : output11306 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5741 (Flapjack.WordLangAddr.addr 5737 18446744073709551104#64))) := by
  unfold output11306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11306_skip : Flapjack.WordAlloc.isSkip output11306 = false := by
  rw [output11306_def]
  conv => lhs; cbv
  try rfl
theorem node11306_eq : Flapjack.WordAlloc.removeDeadStructural input11306 value5657 value1 value2 = (output11306, value5658, value1) := by
  rw [input11306_def, output11306_def]
  try (conv => lhs; cbv)
  try rfl

def value5659 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5737 5733)).val
theorem input11307_def : input11307 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5737 5733) := by
  unfold input11307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5737 5733)).val
theorem output11307_def : output11307 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5737 5733) := by
  unfold output11307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11307_skip : Flapjack.WordAlloc.isSkip output11307 = false := by
  rw [output11307_def]
  conv => lhs; cbv
  try rfl
theorem node11307_eq : Flapjack.WordAlloc.removeDeadStructural input11307 value5658 value1 value2 = (output11307, value5659, value1) := by
  rw [input11307_def, output11307_def]
  try (conv => lhs; cbv)
  try rfl

def value5660 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5733 5729 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11308_def : input11308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5733 5729 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5733 5729 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11308_def : output11308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5733 5729 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11308_skip : Flapjack.WordAlloc.isSkip output11308 = false := by
  rw [output11308_def]
  conv => lhs; cbv
  try rfl
theorem node11308_eq : Flapjack.WordAlloc.removeDeadStructural input11308 value5659 value1 value2 = (output11308, value5660, value1) := by
  rw [input11308_def, output11308_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5729 Flapjack.WordStore.heapLength)).val
theorem input11309_def : input11309 = (Flapjack.WordLangProgHOL.get 5729 Flapjack.WordStore.heapLength) := by
  unfold input11309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5729 Flapjack.WordStore.heapLength)).val
theorem output11309_def : output11309 = (Flapjack.WordLangProgHOL.get 5729 Flapjack.WordStore.heapLength) := by
  unfold output11309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11309_skip : Flapjack.WordAlloc.isSkip output11309 = false := by
  rw [output11309_def]
  conv => lhs; cbv
  try rfl
theorem node11309_eq : Flapjack.WordAlloc.removeDeadStructural input11309 value5660 value1 value2 = (output11309, value5, value1) := by
  rw [input11309_def, output11309_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11309 input11308)).val
theorem input11310_def : input11310 = (.seq input11309 input11308) := by
  unfold input11310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11309 output11308)).val
theorem output11310_def : output11310 = (.seq output11309 output11308) := by
  unfold output11310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11310_skip : Flapjack.WordAlloc.isSkip output11310 = false := by
  rw [output11310_def]
  conv => lhs; cbv
  try rfl
theorem node11310_eq : Flapjack.WordAlloc.removeDeadStructural input11310 value5659 value1 value2 = (output11310, value5, value1) := by
  rw [input11310_def, output11310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11308_eq]
  dsimp only
  rw [node11309_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11310 input11307)).val
theorem input11311_def : input11311 = (.seq input11310 input11307) := by
  unfold input11311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11310 output11307)).val
theorem output11311_def : output11311 = (.seq output11310 output11307) := by
  unfold output11311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11311_skip : Flapjack.WordAlloc.isSkip output11311 = false := by
  rw [output11311_def]
  conv => lhs; cbv
  try rfl
theorem node11311_eq : Flapjack.WordAlloc.removeDeadStructural input11311 value5658 value1 value2 = (output11311, value5, value1) := by
  rw [input11311_def, output11311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11307_eq]
  dsimp only
  rw [node11310_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11311 input11306)).val
theorem input11312_def : input11312 = (.seq input11311 input11306) := by
  unfold input11312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11311 output11306)).val
theorem output11312_def : output11312 = (.seq output11311 output11306) := by
  unfold output11312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11312_skip : Flapjack.WordAlloc.isSkip output11312 = false := by
  rw [output11312_def]
  conv => lhs; cbv
  try rfl
theorem node11312_eq : Flapjack.WordAlloc.removeDeadStructural input11312 value5657 value1 value2 = (output11312, value5, value1) := by
  rw [input11312_def, output11312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11306_eq]
  dsimp only
  rw [node11311_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11312 input11305)).val
theorem input11313_def : input11313 = (.seq input11312 input11305) := by
  unfold input11313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11312 output11305)).val
theorem output11313_def : output11313 = (.seq output11312 output11305) := by
  unfold output11313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11313_skip : Flapjack.WordAlloc.isSkip output11313 = false := by
  rw [output11313_def]
  conv => lhs; cbv
  try rfl
theorem node11313_eq : Flapjack.WordAlloc.removeDeadStructural input11313 value5656 value1 value2 = (output11313, value5, value1) := by
  rw [input11313_def, output11313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11305_eq]
  dsimp only
  rw [node11312_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5661 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5721 (Flapjack.WordLangAddr.addr 5725 0#64)))).val
theorem input11314_def : input11314 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5721 (Flapjack.WordLangAddr.addr 5725 0#64))) := by
  unfold input11314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5721 (Flapjack.WordLangAddr.addr 5725 0#64)))).val
theorem output11314_def : output11314 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5721 (Flapjack.WordLangAddr.addr 5725 0#64))) := by
  unfold output11314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11314_skip : Flapjack.WordAlloc.isSkip output11314 = false := by
  rw [output11314_def]
  conv => lhs; cbv
  try rfl
theorem node11314_eq : Flapjack.WordAlloc.removeDeadStructural input11314 value5 value1 value2 = (output11314, value5661, value1) := by
  rw [input11314_def, output11314_def]
  try (conv => lhs; cbv)
  try rfl

def value5662 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5725, 5713)])).val
theorem input11315_def : input11315 = (Flapjack.WordLangProgHOL.move 0 [(5725, 5713)]) := by
  unfold input11315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5725, 5713)])).val
theorem output11315_def : output11315 = (Flapjack.WordLangProgHOL.move 0 [(5725, 5713)]) := by
  unfold output11315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11315_skip : Flapjack.WordAlloc.isSkip output11315 = false := by
  rw [output11315_def]
  conv => lhs; cbv
  try rfl
theorem node11315_eq : Flapjack.WordAlloc.removeDeadStructural input11315 value5661 value1 value2 = (output11315, value5662, value1) := by
  rw [input11315_def, output11315_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11315 input11314)).val
theorem input11316_def : input11316 = (.seq input11315 input11314) := by
  unfold input11316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11315 output11314)).val
theorem output11316_def : output11316 = (.seq output11315 output11314) := by
  unfold output11316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11316_skip : Flapjack.WordAlloc.isSkip output11316 = false := by
  rw [output11316_def]
  conv => lhs; cbv
  try rfl
theorem node11316_eq : Flapjack.WordAlloc.removeDeadStructural input11316 value5 value1 value2 = (output11316, value5662, value1) := by
  rw [input11316_def, output11316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11314_eq]
  dsimp only
  rw [node11315_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5663 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5721 2210141511517208575#64))).val
theorem input11317_def : input11317 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5721 2210141511517208575#64)) := by
  unfold input11317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5721 2210141511517208575#64))).val
theorem output11317_def : output11317 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5721 2210141511517208575#64)) := by
  unfold output11317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11317_skip : Flapjack.WordAlloc.isSkip output11317 = false := by
  rw [output11317_def]
  conv => lhs; cbv
  try rfl
theorem node11317_eq : Flapjack.WordAlloc.removeDeadStructural input11317 value5662 value1 value2 = (output11317, value5663, value1) := by
  rw [input11317_def, output11317_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5717 2210141511517208575#64))).val
theorem input11318_def : input11318 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5717 2210141511517208575#64)) := by
  unfold input11318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11318_def : output11318 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11318_skip : Flapjack.WordAlloc.isSkip output11318 = true := by
  rw [output11318_def]
  conv => lhs; cbv
  try rfl
theorem node11318_eq : Flapjack.WordAlloc.removeDeadStructural input11318 value5663 value1 value2 = (output11318, value5663, value1) := by
  rw [input11318_def, output11318_def]
  try (conv => lhs; cbv)
  try rfl

def value5664 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5713 5709 (Flapjack.WordRegImm.imm 1392#64))))).val
theorem input11319_def : input11319 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5713 5709 (Flapjack.WordRegImm.imm 1392#64)))) := by
  unfold input11319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5713 5709 (Flapjack.WordRegImm.imm 1392#64))))).val
theorem output11319_def : output11319 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5713 5709 (Flapjack.WordRegImm.imm 1392#64)))) := by
  unfold output11319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11319_skip : Flapjack.WordAlloc.isSkip output11319 = false := by
  rw [output11319_def]
  conv => lhs; cbv
  try rfl
theorem node11319_eq : Flapjack.WordAlloc.removeDeadStructural input11319 value5663 value1 value2 = (output11319, value5664, value1) := by
  rw [input11319_def, output11319_def]
  try (conv => lhs; cbv)
  try rfl

def value5665 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5709 (Flapjack.WordLangAddr.addr 5705 18446744073709551104#64)))).val
theorem input11320_def : input11320 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5709 (Flapjack.WordLangAddr.addr 5705 18446744073709551104#64))) := by
  unfold input11320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5709 (Flapjack.WordLangAddr.addr 5705 18446744073709551104#64)))).val
theorem output11320_def : output11320 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5709 (Flapjack.WordLangAddr.addr 5705 18446744073709551104#64))) := by
  unfold output11320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11320_skip : Flapjack.WordAlloc.isSkip output11320 = false := by
  rw [output11320_def]
  conv => lhs; cbv
  try rfl
theorem node11320_eq : Flapjack.WordAlloc.removeDeadStructural input11320 value5664 value1 value2 = (output11320, value5665, value1) := by
  rw [input11320_def, output11320_def]
  try (conv => lhs; cbv)
  try rfl

def value5666 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5705 5701)).val
theorem input11321_def : input11321 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5705 5701) := by
  unfold input11321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5705 5701)).val
theorem output11321_def : output11321 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5705 5701) := by
  unfold output11321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11321_skip : Flapjack.WordAlloc.isSkip output11321 = false := by
  rw [output11321_def]
  conv => lhs; cbv
  try rfl
theorem node11321_eq : Flapjack.WordAlloc.removeDeadStructural input11321 value5665 value1 value2 = (output11321, value5666, value1) := by
  rw [input11321_def, output11321_def]
  try (conv => lhs; cbv)
  try rfl

def value5667 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5701 5697 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11322_def : input11322 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5701 5697 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5701 5697 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11322_def : output11322 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5701 5697 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11322_skip : Flapjack.WordAlloc.isSkip output11322 = false := by
  rw [output11322_def]
  conv => lhs; cbv
  try rfl
theorem node11322_eq : Flapjack.WordAlloc.removeDeadStructural input11322 value5666 value1 value2 = (output11322, value5667, value1) := by
  rw [input11322_def, output11322_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5697 Flapjack.WordStore.heapLength)).val
theorem input11323_def : input11323 = (Flapjack.WordLangProgHOL.get 5697 Flapjack.WordStore.heapLength) := by
  unfold input11323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5697 Flapjack.WordStore.heapLength)).val
theorem output11323_def : output11323 = (Flapjack.WordLangProgHOL.get 5697 Flapjack.WordStore.heapLength) := by
  unfold output11323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11323_skip : Flapjack.WordAlloc.isSkip output11323 = false := by
  rw [output11323_def]
  conv => lhs; cbv
  try rfl
theorem node11323_eq : Flapjack.WordAlloc.removeDeadStructural input11323 value5667 value1 value2 = (output11323, value5, value1) := by
  rw [input11323_def, output11323_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11323 input11322)).val
theorem input11324_def : input11324 = (.seq input11323 input11322) := by
  unfold input11324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11323 output11322)).val
theorem output11324_def : output11324 = (.seq output11323 output11322) := by
  unfold output11324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11324_skip : Flapjack.WordAlloc.isSkip output11324 = false := by
  rw [output11324_def]
  conv => lhs; cbv
  try rfl
theorem node11324_eq : Flapjack.WordAlloc.removeDeadStructural input11324 value5666 value1 value2 = (output11324, value5, value1) := by
  rw [input11324_def, output11324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11322_eq]
  dsimp only
  rw [node11323_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11324 input11321)).val
theorem input11325_def : input11325 = (.seq input11324 input11321) := by
  unfold input11325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11324 output11321)).val
theorem output11325_def : output11325 = (.seq output11324 output11321) := by
  unfold output11325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11325_skip : Flapjack.WordAlloc.isSkip output11325 = false := by
  rw [output11325_def]
  conv => lhs; cbv
  try rfl
theorem node11325_eq : Flapjack.WordAlloc.removeDeadStructural input11325 value5665 value1 value2 = (output11325, value5, value1) := by
  rw [input11325_def, output11325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11321_eq]
  dsimp only
  rw [node11324_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11325 input11320)).val
theorem input11326_def : input11326 = (.seq input11325 input11320) := by
  unfold input11326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11325 output11320)).val
theorem output11326_def : output11326 = (.seq output11325 output11320) := by
  unfold output11326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11326_skip : Flapjack.WordAlloc.isSkip output11326 = false := by
  rw [output11326_def]
  conv => lhs; cbv
  try rfl
theorem node11326_eq : Flapjack.WordAlloc.removeDeadStructural input11326 value5664 value1 value2 = (output11326, value5, value1) := by
  rw [input11326_def, output11326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11320_eq]
  dsimp only
  rw [node11325_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11326 input11319)).val
theorem input11327_def : input11327 = (.seq input11326 input11319) := by
  unfold input11327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11326 output11319)).val
theorem output11327_def : output11327 = (.seq output11326 output11319) := by
  unfold output11327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11327_skip : Flapjack.WordAlloc.isSkip output11327 = false := by
  rw [output11327_def]
  conv => lhs; cbv
  try rfl
theorem node11327_eq : Flapjack.WordAlloc.removeDeadStructural input11327 value5663 value1 value2 = (output11327, value5, value1) := by
  rw [input11327_def, output11327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11319_eq]
  dsimp only
  rw [node11326_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5668 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5689 (Flapjack.WordLangAddr.addr 5693 0#64)))).val
theorem input11328_def : input11328 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5689 (Flapjack.WordLangAddr.addr 5693 0#64))) := by
  unfold input11328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5689 (Flapjack.WordLangAddr.addr 5693 0#64)))).val
theorem output11328_def : output11328 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5689 (Flapjack.WordLangAddr.addr 5693 0#64))) := by
  unfold output11328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11328_skip : Flapjack.WordAlloc.isSkip output11328 = false := by
  rw [output11328_def]
  conv => lhs; cbv
  try rfl
theorem node11328_eq : Flapjack.WordAlloc.removeDeadStructural input11328 value5 value1 value2 = (output11328, value5668, value1) := by
  rw [input11328_def, output11328_def]
  try (conv => lhs; cbv)
  try rfl

def value5669 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5693, 5681)])).val
theorem input11329_def : input11329 = (Flapjack.WordLangProgHOL.move 0 [(5693, 5681)]) := by
  unfold input11329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5693, 5681)])).val
theorem output11329_def : output11329 = (Flapjack.WordLangProgHOL.move 0 [(5693, 5681)]) := by
  unfold output11329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11329_skip : Flapjack.WordAlloc.isSkip output11329 = false := by
  rw [output11329_def]
  conv => lhs; cbv
  try rfl
theorem node11329_eq : Flapjack.WordAlloc.removeDeadStructural input11329 value5668 value1 value2 = (output11329, value5669, value1) := by
  rw [input11329_def, output11329_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11329 input11328)).val
theorem input11330_def : input11330 = (.seq input11329 input11328) := by
  unfold input11330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11329 output11328)).val
theorem output11330_def : output11330 = (.seq output11329 output11328) := by
  unfold output11330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11330_skip : Flapjack.WordAlloc.isSkip output11330 = false := by
  rw [output11330_def]
  conv => lhs; cbv
  try rfl
theorem node11330_eq : Flapjack.WordAlloc.removeDeadStructural input11330 value5 value1 value2 = (output11330, value5669, value1) := by
  rw [input11330_def, output11330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11328_eq]
  dsimp only
  rw [node11329_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5670 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5689 13402431016077863593#64))).val
theorem input11331_def : input11331 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5689 13402431016077863593#64)) := by
  unfold input11331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5689 13402431016077863593#64))).val
theorem output11331_def : output11331 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5689 13402431016077863593#64)) := by
  unfold output11331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11331_skip : Flapjack.WordAlloc.isSkip output11331 = false := by
  rw [output11331_def]
  conv => lhs; cbv
  try rfl
theorem node11331_eq : Flapjack.WordAlloc.removeDeadStructural input11331 value5669 value1 value2 = (output11331, value5670, value1) := by
  rw [input11331_def, output11331_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5685 13402431016077863593#64))).val
theorem input11332_def : input11332 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5685 13402431016077863593#64)) := by
  unfold input11332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11332_def : output11332 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11332_skip : Flapjack.WordAlloc.isSkip output11332 = true := by
  rw [output11332_def]
  conv => lhs; cbv
  try rfl
theorem node11332_eq : Flapjack.WordAlloc.removeDeadStructural input11332 value5670 value1 value2 = (output11332, value5670, value1) := by
  rw [input11332_def, output11332_def]
  try (conv => lhs; cbv)
  try rfl

def value5671 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5681 5677 (Flapjack.WordRegImm.imm 1384#64))))).val
theorem input11333_def : input11333 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5681 5677 (Flapjack.WordRegImm.imm 1384#64)))) := by
  unfold input11333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5681 5677 (Flapjack.WordRegImm.imm 1384#64))))).val
theorem output11333_def : output11333 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5681 5677 (Flapjack.WordRegImm.imm 1384#64)))) := by
  unfold output11333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11333_skip : Flapjack.WordAlloc.isSkip output11333 = false := by
  rw [output11333_def]
  conv => lhs; cbv
  try rfl
theorem node11333_eq : Flapjack.WordAlloc.removeDeadStructural input11333 value5670 value1 value2 = (output11333, value5671, value1) := by
  rw [input11333_def, output11333_def]
  try (conv => lhs; cbv)
  try rfl

def value5672 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5677 (Flapjack.WordLangAddr.addr 5673 18446744073709551104#64)))).val
theorem input11334_def : input11334 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5677 (Flapjack.WordLangAddr.addr 5673 18446744073709551104#64))) := by
  unfold input11334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5677 (Flapjack.WordLangAddr.addr 5673 18446744073709551104#64)))).val
theorem output11334_def : output11334 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5677 (Flapjack.WordLangAddr.addr 5673 18446744073709551104#64))) := by
  unfold output11334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11334_skip : Flapjack.WordAlloc.isSkip output11334 = false := by
  rw [output11334_def]
  conv => lhs; cbv
  try rfl
theorem node11334_eq : Flapjack.WordAlloc.removeDeadStructural input11334 value5671 value1 value2 = (output11334, value5672, value1) := by
  rw [input11334_def, output11334_def]
  try (conv => lhs; cbv)
  try rfl

def value5673 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5673 5669)).val
theorem input11335_def : input11335 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5673 5669) := by
  unfold input11335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5673 5669)).val
theorem output11335_def : output11335 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5673 5669) := by
  unfold output11335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11335_skip : Flapjack.WordAlloc.isSkip output11335 = false := by
  rw [output11335_def]
  conv => lhs; cbv
  try rfl
theorem node11335_eq : Flapjack.WordAlloc.removeDeadStructural input11335 value5672 value1 value2 = (output11335, value5673, value1) := by
  rw [input11335_def, output11335_def]
  try (conv => lhs; cbv)
  try rfl

def value5674 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5669 5665 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11336_def : input11336 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5669 5665 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5669 5665 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11336_def : output11336 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5669 5665 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11336_skip : Flapjack.WordAlloc.isSkip output11336 = false := by
  rw [output11336_def]
  conv => lhs; cbv
  try rfl
theorem node11336_eq : Flapjack.WordAlloc.removeDeadStructural input11336 value5673 value1 value2 = (output11336, value5674, value1) := by
  rw [input11336_def, output11336_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5665 Flapjack.WordStore.heapLength)).val
theorem input11337_def : input11337 = (Flapjack.WordLangProgHOL.get 5665 Flapjack.WordStore.heapLength) := by
  unfold input11337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5665 Flapjack.WordStore.heapLength)).val
theorem output11337_def : output11337 = (Flapjack.WordLangProgHOL.get 5665 Flapjack.WordStore.heapLength) := by
  unfold output11337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11337_skip : Flapjack.WordAlloc.isSkip output11337 = false := by
  rw [output11337_def]
  conv => lhs; cbv
  try rfl
theorem node11337_eq : Flapjack.WordAlloc.removeDeadStructural input11337 value5674 value1 value2 = (output11337, value5, value1) := by
  rw [input11337_def, output11337_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11337 input11336)).val
theorem input11338_def : input11338 = (.seq input11337 input11336) := by
  unfold input11338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11337 output11336)).val
theorem output11338_def : output11338 = (.seq output11337 output11336) := by
  unfold output11338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11338_skip : Flapjack.WordAlloc.isSkip output11338 = false := by
  rw [output11338_def]
  conv => lhs; cbv
  try rfl
theorem node11338_eq : Flapjack.WordAlloc.removeDeadStructural input11338 value5673 value1 value2 = (output11338, value5, value1) := by
  rw [input11338_def, output11338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11336_eq]
  dsimp only
  rw [node11337_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11338 input11335)).val
theorem input11339_def : input11339 = (.seq input11338 input11335) := by
  unfold input11339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11338 output11335)).val
theorem output11339_def : output11339 = (.seq output11338 output11335) := by
  unfold output11339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11339_skip : Flapjack.WordAlloc.isSkip output11339 = false := by
  rw [output11339_def]
  conv => lhs; cbv
  try rfl
theorem node11339_eq : Flapjack.WordAlloc.removeDeadStructural input11339 value5672 value1 value2 = (output11339, value5, value1) := by
  rw [input11339_def, output11339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11335_eq]
  dsimp only
  rw [node11338_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11339 input11334)).val
theorem input11340_def : input11340 = (.seq input11339 input11334) := by
  unfold input11340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11339 output11334)).val
theorem output11340_def : output11340 = (.seq output11339 output11334) := by
  unfold output11340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11340_skip : Flapjack.WordAlloc.isSkip output11340 = false := by
  rw [output11340_def]
  conv => lhs; cbv
  try rfl
theorem node11340_eq : Flapjack.WordAlloc.removeDeadStructural input11340 value5671 value1 value2 = (output11340, value5, value1) := by
  rw [input11340_def, output11340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11334_eq]
  dsimp only
  rw [node11339_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11340 input11333)).val
theorem input11341_def : input11341 = (.seq input11340 input11333) := by
  unfold input11341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11340 output11333)).val
theorem output11341_def : output11341 = (.seq output11340 output11333) := by
  unfold output11341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11341_skip : Flapjack.WordAlloc.isSkip output11341 = false := by
  rw [output11341_def]
  conv => lhs; cbv
  try rfl
theorem node11341_eq : Flapjack.WordAlloc.removeDeadStructural input11341 value5670 value1 value2 = (output11341, value5, value1) := by
  rw [input11341_def, output11341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11333_eq]
  dsimp only
  rw [node11340_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5675 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5657 (Flapjack.WordLangAddr.addr 5661 0#64)))).val
theorem input11342_def : input11342 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5657 (Flapjack.WordLangAddr.addr 5661 0#64))) := by
  unfold input11342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5657 (Flapjack.WordLangAddr.addr 5661 0#64)))).val
theorem output11342_def : output11342 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5657 (Flapjack.WordLangAddr.addr 5661 0#64))) := by
  unfold output11342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11342_skip : Flapjack.WordAlloc.isSkip output11342 = false := by
  rw [output11342_def]
  conv => lhs; cbv
  try rfl
theorem node11342_eq : Flapjack.WordAlloc.removeDeadStructural input11342 value5 value1 value2 = (output11342, value5675, value1) := by
  rw [input11342_def, output11342_def]
  try (conv => lhs; cbv)
  try rfl

def value5676 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5661, 5649)])).val
theorem input11343_def : input11343 = (Flapjack.WordLangProgHOL.move 0 [(5661, 5649)]) := by
  unfold input11343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5661, 5649)])).val
theorem output11343_def : output11343 = (Flapjack.WordLangProgHOL.move 0 [(5661, 5649)]) := by
  unfold output11343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11343_skip : Flapjack.WordAlloc.isSkip output11343 = false := by
  rw [output11343_def]
  conv => lhs; cbv
  try rfl
theorem node11343_eq : Flapjack.WordAlloc.removeDeadStructural input11343 value5675 value1 value2 = (output11343, value5676, value1) := by
  rw [input11343_def, output11343_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11343 input11342)).val
theorem input11344_def : input11344 = (.seq input11343 input11342) := by
  unfold input11344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11343 output11342)).val
theorem output11344_def : output11344 = (.seq output11343 output11342) := by
  unfold output11344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11344_skip : Flapjack.WordAlloc.isSkip output11344 = false := by
  rw [output11344_def]
  conv => lhs; cbv
  try rfl
theorem node11344_eq : Flapjack.WordAlloc.removeDeadStructural input11344 value5 value1 value2 = (output11344, value5676, value1) := by
  rw [input11344_def, output11344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11342_eq]
  dsimp only
  rw [node11343_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5677 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5657 15132376222941642752#64))).val
theorem input11345_def : input11345 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5657 15132376222941642752#64)) := by
  unfold input11345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5657 15132376222941642752#64))).val
theorem output11345_def : output11345 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5657 15132376222941642752#64)) := by
  unfold output11345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11345_skip : Flapjack.WordAlloc.isSkip output11345 = false := by
  rw [output11345_def]
  conv => lhs; cbv
  try rfl
theorem node11345_eq : Flapjack.WordAlloc.removeDeadStructural input11345 value5676 value1 value2 = (output11345, value5677, value1) := by
  rw [input11345_def, output11345_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5653 15132376222941642752#64))).val
theorem input11346_def : input11346 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5653 15132376222941642752#64)) := by
  unfold input11346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11346_def : output11346 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11346_skip : Flapjack.WordAlloc.isSkip output11346 = true := by
  rw [output11346_def]
  conv => lhs; cbv
  try rfl
theorem node11346_eq : Flapjack.WordAlloc.removeDeadStructural input11346 value5677 value1 value2 = (output11346, value5677, value1) := by
  rw [input11346_def, output11346_def]
  try (conv => lhs; cbv)
  try rfl

def value5678 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5649 5645 (Flapjack.WordRegImm.imm 1376#64))))).val
theorem input11347_def : input11347 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5649 5645 (Flapjack.WordRegImm.imm 1376#64)))) := by
  unfold input11347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5649 5645 (Flapjack.WordRegImm.imm 1376#64))))).val
theorem output11347_def : output11347 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5649 5645 (Flapjack.WordRegImm.imm 1376#64)))) := by
  unfold output11347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11347_skip : Flapjack.WordAlloc.isSkip output11347 = false := by
  rw [output11347_def]
  conv => lhs; cbv
  try rfl
theorem node11347_eq : Flapjack.WordAlloc.removeDeadStructural input11347 value5677 value1 value2 = (output11347, value5678, value1) := by
  rw [input11347_def, output11347_def]
  try (conv => lhs; cbv)
  try rfl

def value5679 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5645 (Flapjack.WordLangAddr.addr 5641 18446744073709551104#64)))).val
theorem input11348_def : input11348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5645 (Flapjack.WordLangAddr.addr 5641 18446744073709551104#64))) := by
  unfold input11348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5645 (Flapjack.WordLangAddr.addr 5641 18446744073709551104#64)))).val
theorem output11348_def : output11348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5645 (Flapjack.WordLangAddr.addr 5641 18446744073709551104#64))) := by
  unfold output11348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11348_skip : Flapjack.WordAlloc.isSkip output11348 = false := by
  rw [output11348_def]
  conv => lhs; cbv
  try rfl
theorem node11348_eq : Flapjack.WordAlloc.removeDeadStructural input11348 value5678 value1 value2 = (output11348, value5679, value1) := by
  rw [input11348_def, output11348_def]
  try (conv => lhs; cbv)
  try rfl

def value5680 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5641 5637)).val
theorem input11349_def : input11349 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5641 5637) := by
  unfold input11349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5641 5637)).val
theorem output11349_def : output11349 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5641 5637) := by
  unfold output11349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11349_skip : Flapjack.WordAlloc.isSkip output11349 = false := by
  rw [output11349_def]
  conv => lhs; cbv
  try rfl
theorem node11349_eq : Flapjack.WordAlloc.removeDeadStructural input11349 value5679 value1 value2 = (output11349, value5680, value1) := by
  rw [input11349_def, output11349_def]
  try (conv => lhs; cbv)
  try rfl

def value5681 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5637 5633 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11350_def : input11350 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5637 5633 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5637 5633 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11350_def : output11350 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5637 5633 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11350_skip : Flapjack.WordAlloc.isSkip output11350 = false := by
  rw [output11350_def]
  conv => lhs; cbv
  try rfl
theorem node11350_eq : Flapjack.WordAlloc.removeDeadStructural input11350 value5680 value1 value2 = (output11350, value5681, value1) := by
  rw [input11350_def, output11350_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5633 Flapjack.WordStore.heapLength)).val
theorem input11351_def : input11351 = (Flapjack.WordLangProgHOL.get 5633 Flapjack.WordStore.heapLength) := by
  unfold input11351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5633 Flapjack.WordStore.heapLength)).val
theorem output11351_def : output11351 = (Flapjack.WordLangProgHOL.get 5633 Flapjack.WordStore.heapLength) := by
  unfold output11351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11351_skip : Flapjack.WordAlloc.isSkip output11351 = false := by
  rw [output11351_def]
  conv => lhs; cbv
  try rfl
theorem node11351_eq : Flapjack.WordAlloc.removeDeadStructural input11351 value5681 value1 value2 = (output11351, value5, value1) := by
  rw [input11351_def, output11351_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11351 input11350)).val
theorem input11352_def : input11352 = (.seq input11351 input11350) := by
  unfold input11352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11351 output11350)).val
theorem output11352_def : output11352 = (.seq output11351 output11350) := by
  unfold output11352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11352_skip : Flapjack.WordAlloc.isSkip output11352 = false := by
  rw [output11352_def]
  conv => lhs; cbv
  try rfl
theorem node11352_eq : Flapjack.WordAlloc.removeDeadStructural input11352 value5680 value1 value2 = (output11352, value5, value1) := by
  rw [input11352_def, output11352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11350_eq]
  dsimp only
  rw [node11351_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11352 input11349)).val
theorem input11353_def : input11353 = (.seq input11352 input11349) := by
  unfold input11353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11352 output11349)).val
theorem output11353_def : output11353 = (.seq output11352 output11349) := by
  unfold output11353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11353_skip : Flapjack.WordAlloc.isSkip output11353 = false := by
  rw [output11353_def]
  conv => lhs; cbv
  try rfl
theorem node11353_eq : Flapjack.WordAlloc.removeDeadStructural input11353 value5679 value1 value2 = (output11353, value5, value1) := by
  rw [input11353_def, output11353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11349_eq]
  dsimp only
  rw [node11352_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11353 input11348)).val
theorem input11354_def : input11354 = (.seq input11353 input11348) := by
  unfold input11354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11353 output11348)).val
theorem output11354_def : output11354 = (.seq output11353 output11348) := by
  unfold output11354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11354_skip : Flapjack.WordAlloc.isSkip output11354 = false := by
  rw [output11354_def]
  conv => lhs; cbv
  try rfl
theorem node11354_eq : Flapjack.WordAlloc.removeDeadStructural input11354 value5678 value1 value2 = (output11354, value5, value1) := by
  rw [input11354_def, output11354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11348_eq]
  dsimp only
  rw [node11353_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11354 input11347)).val
theorem input11355_def : input11355 = (.seq input11354 input11347) := by
  unfold input11355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11354 output11347)).val
theorem output11355_def : output11355 = (.seq output11354 output11347) := by
  unfold output11355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11355_skip : Flapjack.WordAlloc.isSkip output11355 = false := by
  rw [output11355_def]
  conv => lhs; cbv
  try rfl
theorem node11355_eq : Flapjack.WordAlloc.removeDeadStructural input11355 value5677 value1 value2 = (output11355, value5, value1) := by
  rw [input11355_def, output11355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11347_eq]
  dsimp only
  rw [node11354_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5682 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5625 (Flapjack.WordLangAddr.addr 5629 0#64)))).val
theorem input11356_def : input11356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5625 (Flapjack.WordLangAddr.addr 5629 0#64))) := by
  unfold input11356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5625 (Flapjack.WordLangAddr.addr 5629 0#64)))).val
theorem output11356_def : output11356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5625 (Flapjack.WordLangAddr.addr 5629 0#64))) := by
  unfold output11356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11356_skip : Flapjack.WordAlloc.isSkip output11356 = false := by
  rw [output11356_def]
  conv => lhs; cbv
  try rfl
theorem node11356_eq : Flapjack.WordAlloc.removeDeadStructural input11356 value5 value1 value2 = (output11356, value5682, value1) := by
  rw [input11356_def, output11356_def]
  try (conv => lhs; cbv)
  try rfl

def value5683 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5629, 5617)])).val
theorem input11357_def : input11357 = (Flapjack.WordLangProgHOL.move 0 [(5629, 5617)]) := by
  unfold input11357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5629, 5617)])).val
theorem output11357_def : output11357 = (Flapjack.WordLangProgHOL.move 0 [(5629, 5617)]) := by
  unfold output11357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11357_skip : Flapjack.WordAlloc.isSkip output11357 = false := by
  rw [output11357_def]
  conv => lhs; cbv
  try rfl
theorem node11357_eq : Flapjack.WordAlloc.removeDeadStructural input11357 value5682 value1 value2 = (output11357, value5683, value1) := by
  rw [input11357_def, output11357_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11357 input11356)).val
theorem input11358_def : input11358 = (.seq input11357 input11356) := by
  unfold input11358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11357 output11356)).val
theorem output11358_def : output11358 = (.seq output11357 output11356) := by
  unfold output11358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11358_skip : Flapjack.WordAlloc.isSkip output11358 = false := by
  rw [output11358_def]
  conv => lhs; cbv
  try rfl
theorem node11358_eq : Flapjack.WordAlloc.removeDeadStructural input11358 value5 value1 value2 = (output11358, value5683, value1) := by
  rw [input11358_def, output11358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11356_eq]
  dsimp only
  rw [node11357_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5684 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5625 8353516859464449352#64))).val
theorem input11359_def : input11359 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5625 8353516859464449352#64)) := by
  unfold input11359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5625 8353516859464449352#64))).val
theorem output11359_def : output11359 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5625 8353516859464449352#64)) := by
  unfold output11359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11359_skip : Flapjack.WordAlloc.isSkip output11359 = false := by
  rw [output11359_def]
  conv => lhs; cbv
  try rfl
theorem node11359_eq : Flapjack.WordAlloc.removeDeadStructural input11359 value5683 value1 value2 = (output11359, value5684, value1) := by
  rw [input11359_def, output11359_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5621 8353516859464449352#64))).val
theorem input11360_def : input11360 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5621 8353516859464449352#64)) := by
  unfold input11360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11360_def : output11360 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11360_skip : Flapjack.WordAlloc.isSkip output11360 = true := by
  rw [output11360_def]
  conv => lhs; cbv
  try rfl
theorem node11360_eq : Flapjack.WordAlloc.removeDeadStructural input11360 value5684 value1 value2 = (output11360, value5684, value1) := by
  rw [input11360_def, output11360_def]
  try (conv => lhs; cbv)
  try rfl

def value5685 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5617 5613 (Flapjack.WordRegImm.imm 1368#64))))).val
theorem input11361_def : input11361 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5617 5613 (Flapjack.WordRegImm.imm 1368#64)))) := by
  unfold input11361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5617 5613 (Flapjack.WordRegImm.imm 1368#64))))).val
theorem output11361_def : output11361 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5617 5613 (Flapjack.WordRegImm.imm 1368#64)))) := by
  unfold output11361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11361_skip : Flapjack.WordAlloc.isSkip output11361 = false := by
  rw [output11361_def]
  conv => lhs; cbv
  try rfl
theorem node11361_eq : Flapjack.WordAlloc.removeDeadStructural input11361 value5684 value1 value2 = (output11361, value5685, value1) := by
  rw [input11361_def, output11361_def]
  try (conv => lhs; cbv)
  try rfl

def value5686 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5613 (Flapjack.WordLangAddr.addr 5609 18446744073709551104#64)))).val
theorem input11362_def : input11362 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5613 (Flapjack.WordLangAddr.addr 5609 18446744073709551104#64))) := by
  unfold input11362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5613 (Flapjack.WordLangAddr.addr 5609 18446744073709551104#64)))).val
theorem output11362_def : output11362 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5613 (Flapjack.WordLangAddr.addr 5609 18446744073709551104#64))) := by
  unfold output11362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11362_skip : Flapjack.WordAlloc.isSkip output11362 = false := by
  rw [output11362_def]
  conv => lhs; cbv
  try rfl
theorem node11362_eq : Flapjack.WordAlloc.removeDeadStructural input11362 value5685 value1 value2 = (output11362, value5686, value1) := by
  rw [input11362_def, output11362_def]
  try (conv => lhs; cbv)
  try rfl

def value5687 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5609 5605)).val
theorem input11363_def : input11363 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5609 5605) := by
  unfold input11363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5609 5605)).val
theorem output11363_def : output11363 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5609 5605) := by
  unfold output11363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11363_skip : Flapjack.WordAlloc.isSkip output11363 = false := by
  rw [output11363_def]
  conv => lhs; cbv
  try rfl
theorem node11363_eq : Flapjack.WordAlloc.removeDeadStructural input11363 value5686 value1 value2 = (output11363, value5687, value1) := by
  rw [input11363_def, output11363_def]
  try (conv => lhs; cbv)
  try rfl

def value5688 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5605 5601 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11364_def : input11364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5605 5601 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5605 5601 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11364_def : output11364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5605 5601 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11364_skip : Flapjack.WordAlloc.isSkip output11364 = false := by
  rw [output11364_def]
  conv => lhs; cbv
  try rfl
theorem node11364_eq : Flapjack.WordAlloc.removeDeadStructural input11364 value5687 value1 value2 = (output11364, value5688, value1) := by
  rw [input11364_def, output11364_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5601 Flapjack.WordStore.heapLength)).val
theorem input11365_def : input11365 = (Flapjack.WordLangProgHOL.get 5601 Flapjack.WordStore.heapLength) := by
  unfold input11365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5601 Flapjack.WordStore.heapLength)).val
theorem output11365_def : output11365 = (Flapjack.WordLangProgHOL.get 5601 Flapjack.WordStore.heapLength) := by
  unfold output11365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11365_skip : Flapjack.WordAlloc.isSkip output11365 = false := by
  rw [output11365_def]
  conv => lhs; cbv
  try rfl
theorem node11365_eq : Flapjack.WordAlloc.removeDeadStructural input11365 value5688 value1 value2 = (output11365, value5, value1) := by
  rw [input11365_def, output11365_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11365 input11364)).val
theorem input11366_def : input11366 = (.seq input11365 input11364) := by
  unfold input11366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11365 output11364)).val
theorem output11366_def : output11366 = (.seq output11365 output11364) := by
  unfold output11366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11366_skip : Flapjack.WordAlloc.isSkip output11366 = false := by
  rw [output11366_def]
  conv => lhs; cbv
  try rfl
theorem node11366_eq : Flapjack.WordAlloc.removeDeadStructural input11366 value5687 value1 value2 = (output11366, value5, value1) := by
  rw [input11366_def, output11366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11364_eq]
  dsimp only
  rw [node11365_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11366 input11363)).val
theorem input11367_def : input11367 = (.seq input11366 input11363) := by
  unfold input11367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11366 output11363)).val
theorem output11367_def : output11367 = (.seq output11366 output11363) := by
  unfold output11367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11367_skip : Flapjack.WordAlloc.isSkip output11367 = false := by
  rw [output11367_def]
  conv => lhs; cbv
  try rfl
theorem node11367_eq : Flapjack.WordAlloc.removeDeadStructural input11367 value5686 value1 value2 = (output11367, value5, value1) := by
  rw [input11367_def, output11367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11363_eq]
  dsimp only
  rw [node11366_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11367 input11362)).val
theorem input11368_def : input11368 = (.seq input11367 input11362) := by
  unfold input11368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11367 output11362)).val
theorem output11368_def : output11368 = (.seq output11367 output11362) := by
  unfold output11368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11368_skip : Flapjack.WordAlloc.isSkip output11368 = false := by
  rw [output11368_def]
  conv => lhs; cbv
  try rfl
theorem node11368_eq : Flapjack.WordAlloc.removeDeadStructural input11368 value5685 value1 value2 = (output11368, value5, value1) := by
  rw [input11368_def, output11368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11362_eq]
  dsimp only
  rw [node11367_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11368 input11361)).val
theorem input11369_def : input11369 = (.seq input11368 input11361) := by
  unfold input11369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11368 output11361)).val
theorem output11369_def : output11369 = (.seq output11368 output11361) := by
  unfold output11369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11369_skip : Flapjack.WordAlloc.isSkip output11369 = false := by
  rw [output11369_def]
  conv => lhs; cbv
  try rfl
theorem node11369_eq : Flapjack.WordAlloc.removeDeadStructural input11369 value5684 value1 value2 = (output11369, value5, value1) := by
  rw [input11369_def, output11369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11361_eq]
  dsimp only
  rw [node11368_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5689 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5593 (Flapjack.WordLangAddr.addr 5597 0#64)))).val
theorem input11370_def : input11370 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5593 (Flapjack.WordLangAddr.addr 5597 0#64))) := by
  unfold input11370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5593 (Flapjack.WordLangAddr.addr 5597 0#64)))).val
theorem output11370_def : output11370 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5593 (Flapjack.WordLangAddr.addr 5597 0#64))) := by
  unfold output11370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11370_skip : Flapjack.WordAlloc.isSkip output11370 = false := by
  rw [output11370_def]
  conv => lhs; cbv
  try rfl
theorem node11370_eq : Flapjack.WordAlloc.removeDeadStructural input11370 value5 value1 value2 = (output11370, value5689, value1) := by
  rw [input11370_def, output11370_def]
  try (conv => lhs; cbv)
  try rfl

def value5690 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5597, 5585)])).val
theorem input11371_def : input11371 = (Flapjack.WordLangProgHOL.move 0 [(5597, 5585)]) := by
  unfold input11371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5597, 5585)])).val
theorem output11371_def : output11371 = (Flapjack.WordLangProgHOL.move 0 [(5597, 5585)]) := by
  unfold output11371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11371_skip : Flapjack.WordAlloc.isSkip output11371 = false := by
  rw [output11371_def]
  conv => lhs; cbv
  try rfl
theorem node11371_eq : Flapjack.WordAlloc.removeDeadStructural input11371 value5689 value1 value2 = (output11371, value5690, value1) := by
  rw [input11371_def, output11371_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11371 input11370)).val
theorem input11372_def : input11372 = (.seq input11371 input11370) := by
  unfold input11372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11371 output11370)).val
theorem output11372_def : output11372 = (.seq output11371 output11370) := by
  unfold output11372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11372_skip : Flapjack.WordAlloc.isSkip output11372 = false := by
  rw [output11372_def]
  conv => lhs; cbv
  try rfl
theorem node11372_eq : Flapjack.WordAlloc.removeDeadStructural input11372 value5 value1 value2 = (output11372, value5690, value1) := by
  rw [input11372_def, output11372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11370_eq]
  dsimp only
  rw [node11371_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5691 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5593 3691218898639771653#64))).val
theorem input11373_def : input11373 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5593 3691218898639771653#64)) := by
  unfold input11373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5593 3691218898639771653#64))).val
theorem output11373_def : output11373 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5593 3691218898639771653#64)) := by
  unfold output11373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11373_skip : Flapjack.WordAlloc.isSkip output11373 = false := by
  rw [output11373_def]
  conv => lhs; cbv
  try rfl
theorem node11373_eq : Flapjack.WordAlloc.removeDeadStructural input11373 value5690 value1 value2 = (output11373, value5691, value1) := by
  rw [input11373_def, output11373_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5589 3691218898639771653#64))).val
theorem input11374_def : input11374 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5589 3691218898639771653#64)) := by
  unfold input11374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11374_def : output11374 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11374_skip : Flapjack.WordAlloc.isSkip output11374 = true := by
  rw [output11374_def]
  conv => lhs; cbv
  try rfl
theorem node11374_eq : Flapjack.WordAlloc.removeDeadStructural input11374 value5691 value1 value2 = (output11374, value5691, value1) := by
  rw [input11374_def, output11374_def]
  try (conv => lhs; cbv)
  try rfl

def value5692 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5585 5581 (Flapjack.WordRegImm.imm 1360#64))))).val
theorem input11375_def : input11375 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5585 5581 (Flapjack.WordRegImm.imm 1360#64)))) := by
  unfold input11375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5585 5581 (Flapjack.WordRegImm.imm 1360#64))))).val
theorem output11375_def : output11375 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5585 5581 (Flapjack.WordRegImm.imm 1360#64)))) := by
  unfold output11375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11375_skip : Flapjack.WordAlloc.isSkip output11375 = false := by
  rw [output11375_def]
  conv => lhs; cbv
  try rfl
theorem node11375_eq : Flapjack.WordAlloc.removeDeadStructural input11375 value5691 value1 value2 = (output11375, value5692, value1) := by
  rw [input11375_def, output11375_def]
  try (conv => lhs; cbv)
  try rfl

def value5693 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5581 (Flapjack.WordLangAddr.addr 5577 18446744073709551104#64)))).val
theorem input11376_def : input11376 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5581 (Flapjack.WordLangAddr.addr 5577 18446744073709551104#64))) := by
  unfold input11376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5581 (Flapjack.WordLangAddr.addr 5577 18446744073709551104#64)))).val
theorem output11376_def : output11376 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5581 (Flapjack.WordLangAddr.addr 5577 18446744073709551104#64))) := by
  unfold output11376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11376_skip : Flapjack.WordAlloc.isSkip output11376 = false := by
  rw [output11376_def]
  conv => lhs; cbv
  try rfl
theorem node11376_eq : Flapjack.WordAlloc.removeDeadStructural input11376 value5692 value1 value2 = (output11376, value5693, value1) := by
  rw [input11376_def, output11376_def]
  try (conv => lhs; cbv)
  try rfl

def value5694 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5577 5573)).val
theorem input11377_def : input11377 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5577 5573) := by
  unfold input11377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5577 5573)).val
theorem output11377_def : output11377 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5577 5573) := by
  unfold output11377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11377_skip : Flapjack.WordAlloc.isSkip output11377 = false := by
  rw [output11377_def]
  conv => lhs; cbv
  try rfl
theorem node11377_eq : Flapjack.WordAlloc.removeDeadStructural input11377 value5693 value1 value2 = (output11377, value5694, value1) := by
  rw [input11377_def, output11377_def]
  try (conv => lhs; cbv)
  try rfl

def value5695 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5573 5569 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11378_def : input11378 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5573 5569 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5573 5569 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11378_def : output11378 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5573 5569 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11378_skip : Flapjack.WordAlloc.isSkip output11378 = false := by
  rw [output11378_def]
  conv => lhs; cbv
  try rfl
theorem node11378_eq : Flapjack.WordAlloc.removeDeadStructural input11378 value5694 value1 value2 = (output11378, value5695, value1) := by
  rw [input11378_def, output11378_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5569 Flapjack.WordStore.heapLength)).val
theorem input11379_def : input11379 = (Flapjack.WordLangProgHOL.get 5569 Flapjack.WordStore.heapLength) := by
  unfold input11379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5569 Flapjack.WordStore.heapLength)).val
theorem output11379_def : output11379 = (Flapjack.WordLangProgHOL.get 5569 Flapjack.WordStore.heapLength) := by
  unfold output11379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11379_skip : Flapjack.WordAlloc.isSkip output11379 = false := by
  rw [output11379_def]
  conv => lhs; cbv
  try rfl
theorem node11379_eq : Flapjack.WordAlloc.removeDeadStructural input11379 value5695 value1 value2 = (output11379, value5, value1) := by
  rw [input11379_def, output11379_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11379 input11378)).val
theorem input11380_def : input11380 = (.seq input11379 input11378) := by
  unfold input11380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11379 output11378)).val
theorem output11380_def : output11380 = (.seq output11379 output11378) := by
  unfold output11380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11380_skip : Flapjack.WordAlloc.isSkip output11380 = false := by
  rw [output11380_def]
  conv => lhs; cbv
  try rfl
theorem node11380_eq : Flapjack.WordAlloc.removeDeadStructural input11380 value5694 value1 value2 = (output11380, value5, value1) := by
  rw [input11380_def, output11380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11378_eq]
  dsimp only
  rw [node11379_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11380 input11377)).val
theorem input11381_def : input11381 = (.seq input11380 input11377) := by
  unfold input11381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11380 output11377)).val
theorem output11381_def : output11381 = (.seq output11380 output11377) := by
  unfold output11381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11381_skip : Flapjack.WordAlloc.isSkip output11381 = false := by
  rw [output11381_def]
  conv => lhs; cbv
  try rfl
theorem node11381_eq : Flapjack.WordAlloc.removeDeadStructural input11381 value5693 value1 value2 = (output11381, value5, value1) := by
  rw [input11381_def, output11381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11377_eq]
  dsimp only
  rw [node11380_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11381 input11376)).val
theorem input11382_def : input11382 = (.seq input11381 input11376) := by
  unfold input11382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11381 output11376)).val
theorem output11382_def : output11382 = (.seq output11381 output11376) := by
  unfold output11382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11382_skip : Flapjack.WordAlloc.isSkip output11382 = false := by
  rw [output11382_def]
  conv => lhs; cbv
  try rfl
theorem node11382_eq : Flapjack.WordAlloc.removeDeadStructural input11382 value5692 value1 value2 = (output11382, value5, value1) := by
  rw [input11382_def, output11382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11376_eq]
  dsimp only
  rw [node11381_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11382 input11375)).val
theorem input11383_def : input11383 = (.seq input11382 input11375) := by
  unfold input11383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11382 output11375)).val
theorem output11383_def : output11383 = (.seq output11382 output11375) := by
  unfold output11383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11383_skip : Flapjack.WordAlloc.isSkip output11383 = false := by
  rw [output11383_def]
  conv => lhs; cbv
  try rfl
theorem node11383_eq : Flapjack.WordAlloc.removeDeadStructural input11383 value5691 value1 value2 = (output11383, value5, value1) := by
  rw [input11383_def, output11383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11375_eq]
  dsimp only
  rw [node11382_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5696 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5561 (Flapjack.WordLangAddr.addr 5565 0#64)))).val
theorem input11384_def : input11384 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5561 (Flapjack.WordLangAddr.addr 5565 0#64))) := by
  unfold input11384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5561 (Flapjack.WordLangAddr.addr 5565 0#64)))).val
theorem output11384_def : output11384 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5561 (Flapjack.WordLangAddr.addr 5565 0#64))) := by
  unfold output11384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11384_skip : Flapjack.WordAlloc.isSkip output11384 = false := by
  rw [output11384_def]
  conv => lhs; cbv
  try rfl
theorem node11384_eq : Flapjack.WordAlloc.removeDeadStructural input11384 value5 value1 value2 = (output11384, value5696, value1) := by
  rw [input11384_def, output11384_def]
  try (conv => lhs; cbv)
  try rfl

def value5697 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5565, 5553)])).val
theorem input11385_def : input11385 = (Flapjack.WordLangProgHOL.move 0 [(5565, 5553)]) := by
  unfold input11385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5565, 5553)])).val
theorem output11385_def : output11385 = (Flapjack.WordLangProgHOL.move 0 [(5565, 5553)]) := by
  unfold output11385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11385_skip : Flapjack.WordAlloc.isSkip output11385 = false := by
  rw [output11385_def]
  conv => lhs; cbv
  try rfl
theorem node11385_eq : Flapjack.WordAlloc.removeDeadStructural input11385 value5696 value1 value2 = (output11385, value5697, value1) := by
  rw [input11385_def, output11385_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11385 input11384)).val
theorem input11386_def : input11386 = (.seq input11385 input11384) := by
  unfold input11386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11385 output11384)).val
theorem output11386_def : output11386 = (.seq output11385 output11384) := by
  unfold output11386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11386_skip : Flapjack.WordAlloc.isSkip output11386 = false := by
  rw [output11386_def]
  conv => lhs; cbv
  try rfl
theorem node11386_eq : Flapjack.WordAlloc.removeDeadStructural input11386 value5 value1 value2 = (output11386, value5697, value1) := by
  rw [input11386_def, output11386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11384_eq]
  dsimp only
  rw [node11385_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5698 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5561 6034159408538082302#64))).val
theorem input11387_def : input11387 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5561 6034159408538082302#64)) := by
  unfold input11387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5561 6034159408538082302#64))).val
theorem output11387_def : output11387 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5561 6034159408538082302#64)) := by
  unfold output11387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11387_skip : Flapjack.WordAlloc.isSkip output11387 = false := by
  rw [output11387_def]
  conv => lhs; cbv
  try rfl
theorem node11387_eq : Flapjack.WordAlloc.removeDeadStructural input11387 value5697 value1 value2 = (output11387, value5698, value1) := by
  rw [input11387_def, output11387_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5557 6034159408538082302#64))).val
theorem input11388_def : input11388 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5557 6034159408538082302#64)) := by
  unfold input11388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11388_def : output11388 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11388_skip : Flapjack.WordAlloc.isSkip output11388 = true := by
  rw [output11388_def]
  conv => lhs; cbv
  try rfl
theorem node11388_eq : Flapjack.WordAlloc.removeDeadStructural input11388 value5698 value1 value2 = (output11388, value5698, value1) := by
  rw [input11388_def, output11388_def]
  try (conv => lhs; cbv)
  try rfl

def value5699 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5553 5549 (Flapjack.WordRegImm.imm 1352#64))))).val
theorem input11389_def : input11389 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5553 5549 (Flapjack.WordRegImm.imm 1352#64)))) := by
  unfold input11389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5553 5549 (Flapjack.WordRegImm.imm 1352#64))))).val
theorem output11389_def : output11389 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5553 5549 (Flapjack.WordRegImm.imm 1352#64)))) := by
  unfold output11389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11389_skip : Flapjack.WordAlloc.isSkip output11389 = false := by
  rw [output11389_def]
  conv => lhs; cbv
  try rfl
theorem node11389_eq : Flapjack.WordAlloc.removeDeadStructural input11389 value5698 value1 value2 = (output11389, value5699, value1) := by
  rw [input11389_def, output11389_def]
  try (conv => lhs; cbv)
  try rfl

def value5700 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5549 (Flapjack.WordLangAddr.addr 5545 18446744073709551104#64)))).val
theorem input11390_def : input11390 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5549 (Flapjack.WordLangAddr.addr 5545 18446744073709551104#64))) := by
  unfold input11390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5549 (Flapjack.WordLangAddr.addr 5545 18446744073709551104#64)))).val
theorem output11390_def : output11390 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5549 (Flapjack.WordLangAddr.addr 5545 18446744073709551104#64))) := by
  unfold output11390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11390_skip : Flapjack.WordAlloc.isSkip output11390 = false := by
  rw [output11390_def]
  conv => lhs; cbv
  try rfl
theorem node11390_eq : Flapjack.WordAlloc.removeDeadStructural input11390 value5699 value1 value2 = (output11390, value5700, value1) := by
  rw [input11390_def, output11390_def]
  try (conv => lhs; cbv)
  try rfl

def value5701 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5545 5541)).val
theorem input11391_def : input11391 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5545 5541) := by
  unfold input11391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5545 5541)).val
theorem output11391_def : output11391 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5545 5541) := by
  unfold output11391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11391_skip : Flapjack.WordAlloc.isSkip output11391 = false := by
  rw [output11391_def]
  conv => lhs; cbv
  try rfl
theorem node11391_eq : Flapjack.WordAlloc.removeDeadStructural input11391 value5700 value1 value2 = (output11391, value5701, value1) := by
  rw [input11391_def, output11391_def]
  try (conv => lhs; cbv)
  try rfl

def value5702 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5541 5537 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11392_def : input11392 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5541 5537 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5541 5537 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11392_def : output11392 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5541 5537 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11392_skip : Flapjack.WordAlloc.isSkip output11392 = false := by
  rw [output11392_def]
  conv => lhs; cbv
  try rfl
theorem node11392_eq : Flapjack.WordAlloc.removeDeadStructural input11392 value5701 value1 value2 = (output11392, value5702, value1) := by
  rw [input11392_def, output11392_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5537 Flapjack.WordStore.heapLength)).val
theorem input11393_def : input11393 = (Flapjack.WordLangProgHOL.get 5537 Flapjack.WordStore.heapLength) := by
  unfold input11393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5537 Flapjack.WordStore.heapLength)).val
theorem output11393_def : output11393 = (Flapjack.WordLangProgHOL.get 5537 Flapjack.WordStore.heapLength) := by
  unfold output11393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11393_skip : Flapjack.WordAlloc.isSkip output11393 = false := by
  rw [output11393_def]
  conv => lhs; cbv
  try rfl
theorem node11393_eq : Flapjack.WordAlloc.removeDeadStructural input11393 value5702 value1 value2 = (output11393, value5, value1) := by
  rw [input11393_def, output11393_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11393 input11392)).val
theorem input11394_def : input11394 = (.seq input11393 input11392) := by
  unfold input11394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11393 output11392)).val
theorem output11394_def : output11394 = (.seq output11393 output11392) := by
  unfold output11394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11394_skip : Flapjack.WordAlloc.isSkip output11394 = false := by
  rw [output11394_def]
  conv => lhs; cbv
  try rfl
theorem node11394_eq : Flapjack.WordAlloc.removeDeadStructural input11394 value5701 value1 value2 = (output11394, value5, value1) := by
  rw [input11394_def, output11394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11392_eq]
  dsimp only
  rw [node11393_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11394 input11391)).val
theorem input11395_def : input11395 = (.seq input11394 input11391) := by
  unfold input11395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11394 output11391)).val
theorem output11395_def : output11395 = (.seq output11394 output11391) := by
  unfold output11395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11395_skip : Flapjack.WordAlloc.isSkip output11395 = false := by
  rw [output11395_def]
  conv => lhs; cbv
  try rfl
theorem node11395_eq : Flapjack.WordAlloc.removeDeadStructural input11395 value5700 value1 value2 = (output11395, value5, value1) := by
  rw [input11395_def, output11395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11391_eq]
  dsimp only
  rw [node11394_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11395 input11390)).val
theorem input11396_def : input11396 = (.seq input11395 input11390) := by
  unfold input11396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11395 output11390)).val
theorem output11396_def : output11396 = (.seq output11395 output11390) := by
  unfold output11396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11396_skip : Flapjack.WordAlloc.isSkip output11396 = false := by
  rw [output11396_def]
  conv => lhs; cbv
  try rfl
theorem node11396_eq : Flapjack.WordAlloc.removeDeadStructural input11396 value5699 value1 value2 = (output11396, value5, value1) := by
  rw [input11396_def, output11396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11390_eq]
  dsimp only
  rw [node11395_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11396 input11389)).val
theorem input11397_def : input11397 = (.seq input11396 input11389) := by
  unfold input11397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11396 output11389)).val
theorem output11397_def : output11397 = (.seq output11396 output11389) := by
  unfold output11397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11397_skip : Flapjack.WordAlloc.isSkip output11397 = false := by
  rw [output11397_def]
  conv => lhs; cbv
  try rfl
theorem node11397_eq : Flapjack.WordAlloc.removeDeadStructural input11397 value5698 value1 value2 = (output11397, value5, value1) := by
  rw [input11397_def, output11397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11389_eq]
  dsimp only
  rw [node11396_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5703 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5529 (Flapjack.WordLangAddr.addr 5533 0#64)))).val
theorem input11398_def : input11398 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5529 (Flapjack.WordLangAddr.addr 5533 0#64))) := by
  unfold input11398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5529 (Flapjack.WordLangAddr.addr 5533 0#64)))).val
theorem output11398_def : output11398 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5529 (Flapjack.WordLangAddr.addr 5533 0#64))) := by
  unfold output11398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11398_skip : Flapjack.WordAlloc.isSkip output11398 = false := by
  rw [output11398_def]
  conv => lhs; cbv
  try rfl
theorem node11398_eq : Flapjack.WordAlloc.removeDeadStructural input11398 value5 value1 value2 = (output11398, value5703, value1) := by
  rw [input11398_def, output11398_def]
  try (conv => lhs; cbv)
  try rfl

def value5704 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5533, 5521)])).val
theorem input11399_def : input11399 = (Flapjack.WordLangProgHOL.move 0 [(5533, 5521)]) := by
  unfold input11399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5533, 5521)])).val
theorem output11399_def : output11399 = (Flapjack.WordLangProgHOL.move 0 [(5533, 5521)]) := by
  unfold output11399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11399_skip : Flapjack.WordAlloc.isSkip output11399 = false := by
  rw [output11399_def]
  conv => lhs; cbv
  try rfl
theorem node11399_eq : Flapjack.WordAlloc.removeDeadStructural input11399 value5703 value1 value2 = (output11399, value5704, value1) := by
  rw [input11399_def, output11399_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11399 input11398)).val
theorem input11400_def : input11400 = (.seq input11399 input11398) := by
  unfold input11400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11399 output11398)).val
theorem output11400_def : output11400 = (.seq output11399 output11398) := by
  unfold output11400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11400_skip : Flapjack.WordAlloc.isSkip output11400 = false := by
  rw [output11400_def]
  conv => lhs; cbv
  try rfl
theorem node11400_eq : Flapjack.WordAlloc.removeDeadStructural input11400 value5 value1 value2 = (output11400, value5704, value1) := by
  rw [input11400_def, output11400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11398_eq]
  dsimp only
  rw [node11399_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5705 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5529 18446744069414584321#64))).val
theorem input11401_def : input11401 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5529 18446744069414584321#64)) := by
  unfold input11401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5529 18446744069414584321#64))).val
theorem output11401_def : output11401 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5529 18446744069414584321#64)) := by
  unfold output11401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11401_skip : Flapjack.WordAlloc.isSkip output11401 = false := by
  rw [output11401_def]
  conv => lhs; cbv
  try rfl
theorem node11401_eq : Flapjack.WordAlloc.removeDeadStructural input11401 value5704 value1 value2 = (output11401, value5705, value1) := by
  rw [input11401_def, output11401_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5525 18446744069414584321#64))).val
theorem input11402_def : input11402 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5525 18446744069414584321#64)) := by
  unfold input11402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11402_def : output11402 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11402_skip : Flapjack.WordAlloc.isSkip output11402 = true := by
  rw [output11402_def]
  conv => lhs; cbv
  try rfl
theorem node11402_eq : Flapjack.WordAlloc.removeDeadStructural input11402 value5705 value1 value2 = (output11402, value5705, value1) := by
  rw [input11402_def, output11402_def]
  try (conv => lhs; cbv)
  try rfl

def value5706 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5521 5517 (Flapjack.WordRegImm.imm 1344#64))))).val
theorem input11403_def : input11403 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5521 5517 (Flapjack.WordRegImm.imm 1344#64)))) := by
  unfold input11403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5521 5517 (Flapjack.WordRegImm.imm 1344#64))))).val
theorem output11403_def : output11403 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5521 5517 (Flapjack.WordRegImm.imm 1344#64)))) := by
  unfold output11403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11403_skip : Flapjack.WordAlloc.isSkip output11403 = false := by
  rw [output11403_def]
  conv => lhs; cbv
  try rfl
theorem node11403_eq : Flapjack.WordAlloc.removeDeadStructural input11403 value5705 value1 value2 = (output11403, value5706, value1) := by
  rw [input11403_def, output11403_def]
  try (conv => lhs; cbv)
  try rfl

def value5707 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5517 (Flapjack.WordLangAddr.addr 5513 18446744073709551104#64)))).val
theorem input11404_def : input11404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5517 (Flapjack.WordLangAddr.addr 5513 18446744073709551104#64))) := by
  unfold input11404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5517 (Flapjack.WordLangAddr.addr 5513 18446744073709551104#64)))).val
theorem output11404_def : output11404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5517 (Flapjack.WordLangAddr.addr 5513 18446744073709551104#64))) := by
  unfold output11404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11404_skip : Flapjack.WordAlloc.isSkip output11404 = false := by
  rw [output11404_def]
  conv => lhs; cbv
  try rfl
theorem node11404_eq : Flapjack.WordAlloc.removeDeadStructural input11404 value5706 value1 value2 = (output11404, value5707, value1) := by
  rw [input11404_def, output11404_def]
  try (conv => lhs; cbv)
  try rfl

def value5708 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5513 5509)).val
theorem input11405_def : input11405 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5513 5509) := by
  unfold input11405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5513 5509)).val
theorem output11405_def : output11405 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5513 5509) := by
  unfold output11405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11405_skip : Flapjack.WordAlloc.isSkip output11405 = false := by
  rw [output11405_def]
  conv => lhs; cbv
  try rfl
theorem node11405_eq : Flapjack.WordAlloc.removeDeadStructural input11405 value5707 value1 value2 = (output11405, value5708, value1) := by
  rw [input11405_def, output11405_def]
  try (conv => lhs; cbv)
  try rfl

def value5709 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5509 5505 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11406_def : input11406 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5509 5505 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5509 5505 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11406_def : output11406 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5509 5505 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11406_skip : Flapjack.WordAlloc.isSkip output11406 = false := by
  rw [output11406_def]
  conv => lhs; cbv
  try rfl
theorem node11406_eq : Flapjack.WordAlloc.removeDeadStructural input11406 value5708 value1 value2 = (output11406, value5709, value1) := by
  rw [input11406_def, output11406_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5505 Flapjack.WordStore.heapLength)).val
theorem input11407_def : input11407 = (Flapjack.WordLangProgHOL.get 5505 Flapjack.WordStore.heapLength) := by
  unfold input11407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5505 Flapjack.WordStore.heapLength)).val
theorem output11407_def : output11407 = (Flapjack.WordLangProgHOL.get 5505 Flapjack.WordStore.heapLength) := by
  unfold output11407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11407_skip : Flapjack.WordAlloc.isSkip output11407 = false := by
  rw [output11407_def]
  conv => lhs; cbv
  try rfl
theorem node11407_eq : Flapjack.WordAlloc.removeDeadStructural input11407 value5709 value1 value2 = (output11407, value5, value1) := by
  rw [input11407_def, output11407_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11407 input11406)).val
theorem input11408_def : input11408 = (.seq input11407 input11406) := by
  unfold input11408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11407 output11406)).val
theorem output11408_def : output11408 = (.seq output11407 output11406) := by
  unfold output11408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11408_skip : Flapjack.WordAlloc.isSkip output11408 = false := by
  rw [output11408_def]
  conv => lhs; cbv
  try rfl
theorem node11408_eq : Flapjack.WordAlloc.removeDeadStructural input11408 value5708 value1 value2 = (output11408, value5, value1) := by
  rw [input11408_def, output11408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11406_eq]
  dsimp only
  rw [node11407_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11408 input11405)).val
theorem input11409_def : input11409 = (.seq input11408 input11405) := by
  unfold input11409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11408 output11405)).val
theorem output11409_def : output11409 = (.seq output11408 output11405) := by
  unfold output11409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11409_skip : Flapjack.WordAlloc.isSkip output11409 = false := by
  rw [output11409_def]
  conv => lhs; cbv
  try rfl
theorem node11409_eq : Flapjack.WordAlloc.removeDeadStructural input11409 value5707 value1 value2 = (output11409, value5, value1) := by
  rw [input11409_def, output11409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11405_eq]
  dsimp only
  rw [node11408_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11409 input11404)).val
theorem input11410_def : input11410 = (.seq input11409 input11404) := by
  unfold input11410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11409 output11404)).val
theorem output11410_def : output11410 = (.seq output11409 output11404) := by
  unfold output11410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11410_skip : Flapjack.WordAlloc.isSkip output11410 = false := by
  rw [output11410_def]
  conv => lhs; cbv
  try rfl
theorem node11410_eq : Flapjack.WordAlloc.removeDeadStructural input11410 value5706 value1 value2 = (output11410, value5, value1) := by
  rw [input11410_def, output11410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11404_eq]
  dsimp only
  rw [node11409_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11410 input11403)).val
theorem input11411_def : input11411 = (.seq input11410 input11403) := by
  unfold input11411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11410 output11403)).val
theorem output11411_def : output11411 = (.seq output11410 output11403) := by
  unfold output11411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11411_skip : Flapjack.WordAlloc.isSkip output11411 = false := by
  rw [output11411_def]
  conv => lhs; cbv
  try rfl
theorem node11411_eq : Flapjack.WordAlloc.removeDeadStructural input11411 value5705 value1 value2 = (output11411, value5, value1) := by
  rw [input11411_def, output11411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11403_eq]
  dsimp only
  rw [node11410_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5710 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5497 (Flapjack.WordLangAddr.addr 5501 0#64)))).val
theorem input11412_def : input11412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5497 (Flapjack.WordLangAddr.addr 5501 0#64))) := by
  unfold input11412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5497 (Flapjack.WordLangAddr.addr 5501 0#64)))).val
theorem output11412_def : output11412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5497 (Flapjack.WordLangAddr.addr 5501 0#64))) := by
  unfold output11412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11412_skip : Flapjack.WordAlloc.isSkip output11412 = false := by
  rw [output11412_def]
  conv => lhs; cbv
  try rfl
theorem node11412_eq : Flapjack.WordAlloc.removeDeadStructural input11412 value5 value1 value2 = (output11412, value5710, value1) := by
  rw [input11412_def, output11412_def]
  try (conv => lhs; cbv)
  try rfl

def value5711 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5501, 5489)])).val
theorem input11413_def : input11413 = (Flapjack.WordLangProgHOL.move 0 [(5501, 5489)]) := by
  unfold input11413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5501, 5489)])).val
theorem output11413_def : output11413 = (Flapjack.WordLangProgHOL.move 0 [(5501, 5489)]) := by
  unfold output11413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11413_skip : Flapjack.WordAlloc.isSkip output11413 = false := by
  rw [output11413_def]
  conv => lhs; cbv
  try rfl
theorem node11413_eq : Flapjack.WordAlloc.removeDeadStructural input11413 value5710 value1 value2 = (output11413, value5711, value1) := by
  rw [input11413_def, output11413_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11413 input11412)).val
theorem input11414_def : input11414 = (.seq input11413 input11412) := by
  unfold input11414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11413 output11412)).val
theorem output11414_def : output11414 = (.seq output11413 output11412) := by
  unfold output11414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11414_skip : Flapjack.WordAlloc.isSkip output11414 = false := by
  rw [output11414_def]
  conv => lhs; cbv
  try rfl
theorem node11414_eq : Flapjack.WordAlloc.removeDeadStructural input11414 value5 value1 value2 = (output11414, value5711, value1) := by
  rw [input11414_def, output11414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11412_eq]
  dsimp only
  rw [node11413_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5712 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5497 1463179570667947713#64))).val
theorem input11415_def : input11415 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5497 1463179570667947713#64)) := by
  unfold input11415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5497 1463179570667947713#64))).val
theorem output11415_def : output11415 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5497 1463179570667947713#64)) := by
  unfold output11415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11415_skip : Flapjack.WordAlloc.isSkip output11415 = false := by
  rw [output11415_def]
  conv => lhs; cbv
  try rfl
theorem node11415_eq : Flapjack.WordAlloc.removeDeadStructural input11415 value5711 value1 value2 = (output11415, value5712, value1) := by
  rw [input11415_def, output11415_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5493 1463179570667947713#64))).val
theorem input11416_def : input11416 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5493 1463179570667947713#64)) := by
  unfold input11416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11416_def : output11416 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11416_skip : Flapjack.WordAlloc.isSkip output11416 = true := by
  rw [output11416_def]
  conv => lhs; cbv
  try rfl
theorem node11416_eq : Flapjack.WordAlloc.removeDeadStructural input11416 value5712 value1 value2 = (output11416, value5712, value1) := by
  rw [input11416_def, output11416_def]
  try (conv => lhs; cbv)
  try rfl

def value5713 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5489 5485 (Flapjack.WordRegImm.imm 1336#64))))).val
theorem input11417_def : input11417 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5489 5485 (Flapjack.WordRegImm.imm 1336#64)))) := by
  unfold input11417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5489 5485 (Flapjack.WordRegImm.imm 1336#64))))).val
theorem output11417_def : output11417 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5489 5485 (Flapjack.WordRegImm.imm 1336#64)))) := by
  unfold output11417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11417_skip : Flapjack.WordAlloc.isSkip output11417 = false := by
  rw [output11417_def]
  conv => lhs; cbv
  try rfl
theorem node11417_eq : Flapjack.WordAlloc.removeDeadStructural input11417 value5712 value1 value2 = (output11417, value5713, value1) := by
  rw [input11417_def, output11417_def]
  try (conv => lhs; cbv)
  try rfl

def value5714 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5485 (Flapjack.WordLangAddr.addr 5481 18446744073709551104#64)))).val
theorem input11418_def : input11418 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5485 (Flapjack.WordLangAddr.addr 5481 18446744073709551104#64))) := by
  unfold input11418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5485 (Flapjack.WordLangAddr.addr 5481 18446744073709551104#64)))).val
theorem output11418_def : output11418 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5485 (Flapjack.WordLangAddr.addr 5481 18446744073709551104#64))) := by
  unfold output11418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11418_skip : Flapjack.WordAlloc.isSkip output11418 = false := by
  rw [output11418_def]
  conv => lhs; cbv
  try rfl
theorem node11418_eq : Flapjack.WordAlloc.removeDeadStructural input11418 value5713 value1 value2 = (output11418, value5714, value1) := by
  rw [input11418_def, output11418_def]
  try (conv => lhs; cbv)
  try rfl

def value5715 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5481 5477)).val
theorem input11419_def : input11419 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5481 5477) := by
  unfold input11419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5481 5477)).val
theorem output11419_def : output11419 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5481 5477) := by
  unfold output11419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11419_skip : Flapjack.WordAlloc.isSkip output11419 = false := by
  rw [output11419_def]
  conv => lhs; cbv
  try rfl
theorem node11419_eq : Flapjack.WordAlloc.removeDeadStructural input11419 value5714 value1 value2 = (output11419, value5715, value1) := by
  rw [input11419_def, output11419_def]
  try (conv => lhs; cbv)
  try rfl

def value5716 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5477 5473 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11420_def : input11420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5477 5473 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5477 5473 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11420_def : output11420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5477 5473 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11420_skip : Flapjack.WordAlloc.isSkip output11420 = false := by
  rw [output11420_def]
  conv => lhs; cbv
  try rfl
theorem node11420_eq : Flapjack.WordAlloc.removeDeadStructural input11420 value5715 value1 value2 = (output11420, value5716, value1) := by
  rw [input11420_def, output11420_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5473 Flapjack.WordStore.heapLength)).val
theorem input11421_def : input11421 = (Flapjack.WordLangProgHOL.get 5473 Flapjack.WordStore.heapLength) := by
  unfold input11421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5473 Flapjack.WordStore.heapLength)).val
theorem output11421_def : output11421 = (Flapjack.WordLangProgHOL.get 5473 Flapjack.WordStore.heapLength) := by
  unfold output11421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11421_skip : Flapjack.WordAlloc.isSkip output11421 = false := by
  rw [output11421_def]
  conv => lhs; cbv
  try rfl
theorem node11421_eq : Flapjack.WordAlloc.removeDeadStructural input11421 value5716 value1 value2 = (output11421, value5, value1) := by
  rw [input11421_def, output11421_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11421 input11420)).val
theorem input11422_def : input11422 = (.seq input11421 input11420) := by
  unfold input11422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11421 output11420)).val
theorem output11422_def : output11422 = (.seq output11421 output11420) := by
  unfold output11422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11422_skip : Flapjack.WordAlloc.isSkip output11422 = false := by
  rw [output11422_def]
  conv => lhs; cbv
  try rfl
theorem node11422_eq : Flapjack.WordAlloc.removeDeadStructural input11422 value5715 value1 value2 = (output11422, value5, value1) := by
  rw [input11422_def, output11422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11420_eq]
  dsimp only
  rw [node11421_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11422 input11419)).val
theorem input11423_def : input11423 = (.seq input11422 input11419) := by
  unfold input11423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11422 output11419)).val
theorem output11423_def : output11423 = (.seq output11422 output11419) := by
  unfold output11423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11423_skip : Flapjack.WordAlloc.isSkip output11423 = false := by
  rw [output11423_def]
  conv => lhs; cbv
  try rfl
theorem node11423_eq : Flapjack.WordAlloc.removeDeadStructural input11423 value5714 value1 value2 = (output11423, value5, value1) := by
  rw [input11423_def, output11423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11419_eq]
  dsimp only
  rw [node11422_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11423 input11418)).val
theorem input11424_def : input11424 = (.seq input11423 input11418) := by
  unfold input11424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11423 output11418)).val
theorem output11424_def : output11424 = (.seq output11423 output11418) := by
  unfold output11424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11424_skip : Flapjack.WordAlloc.isSkip output11424 = false := by
  rw [output11424_def]
  conv => lhs; cbv
  try rfl
theorem node11424_eq : Flapjack.WordAlloc.removeDeadStructural input11424 value5713 value1 value2 = (output11424, value5, value1) := by
  rw [input11424_def, output11424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11418_eq]
  dsimp only
  rw [node11423_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11424 input11417)).val
theorem input11425_def : input11425 = (.seq input11424 input11417) := by
  unfold input11425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11424 output11417)).val
theorem output11425_def : output11425 = (.seq output11424 output11417) := by
  unfold output11425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11425_skip : Flapjack.WordAlloc.isSkip output11425 = false := by
  rw [output11425_def]
  conv => lhs; cbv
  try rfl
theorem node11425_eq : Flapjack.WordAlloc.removeDeadStructural input11425 value5712 value1 value2 = (output11425, value5, value1) := by
  rw [input11425_def, output11425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11417_eq]
  dsimp only
  rw [node11424_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5717 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5465 (Flapjack.WordLangAddr.addr 5469 0#64)))).val
theorem input11426_def : input11426 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5465 (Flapjack.WordLangAddr.addr 5469 0#64))) := by
  unfold input11426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5465 (Flapjack.WordLangAddr.addr 5469 0#64)))).val
theorem output11426_def : output11426 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5465 (Flapjack.WordLangAddr.addr 5469 0#64))) := by
  unfold output11426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11426_skip : Flapjack.WordAlloc.isSkip output11426 = false := by
  rw [output11426_def]
  conv => lhs; cbv
  try rfl
theorem node11426_eq : Flapjack.WordAlloc.removeDeadStructural input11426 value5 value1 value2 = (output11426, value5717, value1) := by
  rw [input11426_def, output11426_def]
  try (conv => lhs; cbv)
  try rfl

def value5718 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5469, 5457)])).val
theorem input11427_def : input11427 = (Flapjack.WordLangProgHOL.move 0 [(5469, 5457)]) := by
  unfold input11427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5469, 5457)])).val
theorem output11427_def : output11427 = (Flapjack.WordLangProgHOL.move 0 [(5469, 5457)]) := by
  unfold output11427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11427_skip : Flapjack.WordAlloc.isSkip output11427 = false := by
  rw [output11427_def]
  conv => lhs; cbv
  try rfl
theorem node11427_eq : Flapjack.WordAlloc.removeDeadStructural input11427 value5717 value1 value2 = (output11427, value5718, value1) := by
  rw [input11427_def, output11427_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11427 input11426)).val
theorem input11428_def : input11428 = (.seq input11427 input11426) := by
  unfold input11428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11427 output11426)).val
theorem output11428_def : output11428 = (.seq output11427 output11426) := by
  unfold output11428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11428_skip : Flapjack.WordAlloc.isSkip output11428 = false := by
  rw [output11428_def]
  conv => lhs; cbv
  try rfl
theorem node11428_eq : Flapjack.WordAlloc.removeDeadStructural input11428 value5 value1 value2 = (output11428, value5718, value1) := by
  rw [input11428_def, output11428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11426_eq]
  dsimp only
  rw [node11427_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5719 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5465 7769744319687806097#64))).val
theorem input11429_def : input11429 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5465 7769744319687806097#64)) := by
  unfold input11429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5465 7769744319687806097#64))).val
theorem output11429_def : output11429 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5465 7769744319687806097#64)) := by
  unfold output11429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11429_skip : Flapjack.WordAlloc.isSkip output11429 = false := by
  rw [output11429_def]
  conv => lhs; cbv
  try rfl
theorem node11429_eq : Flapjack.WordAlloc.removeDeadStructural input11429 value5718 value1 value2 = (output11429, value5719, value1) := by
  rw [input11429_def, output11429_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5461 7769744319687806097#64))).val
theorem input11430_def : input11430 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5461 7769744319687806097#64)) := by
  unfold input11430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11430_def : output11430 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11430_skip : Flapjack.WordAlloc.isSkip output11430 = true := by
  rw [output11430_def]
  conv => lhs; cbv
  try rfl
theorem node11430_eq : Flapjack.WordAlloc.removeDeadStructural input11430 value5719 value1 value2 = (output11430, value5719, value1) := by
  rw [input11430_def, output11430_def]
  try (conv => lhs; cbv)
  try rfl

def value5720 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5457 5453 (Flapjack.WordRegImm.imm 1328#64))))).val
theorem input11431_def : input11431 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5457 5453 (Flapjack.WordRegImm.imm 1328#64)))) := by
  unfold input11431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5457 5453 (Flapjack.WordRegImm.imm 1328#64))))).val
theorem output11431_def : output11431 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5457 5453 (Flapjack.WordRegImm.imm 1328#64)))) := by
  unfold output11431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11431_skip : Flapjack.WordAlloc.isSkip output11431 = false := by
  rw [output11431_def]
  conv => lhs; cbv
  try rfl
theorem node11431_eq : Flapjack.WordAlloc.removeDeadStructural input11431 value5719 value1 value2 = (output11431, value5720, value1) := by
  rw [input11431_def, output11431_def]
  try (conv => lhs; cbv)
  try rfl

def value5721 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5453 (Flapjack.WordLangAddr.addr 5449 18446744073709551104#64)))).val
theorem input11432_def : input11432 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5453 (Flapjack.WordLangAddr.addr 5449 18446744073709551104#64))) := by
  unfold input11432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5453 (Flapjack.WordLangAddr.addr 5449 18446744073709551104#64)))).val
theorem output11432_def : output11432 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5453 (Flapjack.WordLangAddr.addr 5449 18446744073709551104#64))) := by
  unfold output11432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11432_skip : Flapjack.WordAlloc.isSkip output11432 = false := by
  rw [output11432_def]
  conv => lhs; cbv
  try rfl
theorem node11432_eq : Flapjack.WordAlloc.removeDeadStructural input11432 value5720 value1 value2 = (output11432, value5721, value1) := by
  rw [input11432_def, output11432_def]
  try (conv => lhs; cbv)
  try rfl

def value5722 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5449 5445)).val
theorem input11433_def : input11433 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5449 5445) := by
  unfold input11433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5449 5445)).val
theorem output11433_def : output11433 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5449 5445) := by
  unfold output11433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11433_skip : Flapjack.WordAlloc.isSkip output11433 = false := by
  rw [output11433_def]
  conv => lhs; cbv
  try rfl
theorem node11433_eq : Flapjack.WordAlloc.removeDeadStructural input11433 value5721 value1 value2 = (output11433, value5722, value1) := by
  rw [input11433_def, output11433_def]
  try (conv => lhs; cbv)
  try rfl

def value5723 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5445 5441 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11434_def : input11434 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5445 5441 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5445 5441 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11434_def : output11434 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5445 5441 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11434_skip : Flapjack.WordAlloc.isSkip output11434 = false := by
  rw [output11434_def]
  conv => lhs; cbv
  try rfl
theorem node11434_eq : Flapjack.WordAlloc.removeDeadStructural input11434 value5722 value1 value2 = (output11434, value5723, value1) := by
  rw [input11434_def, output11434_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5441 Flapjack.WordStore.heapLength)).val
theorem input11435_def : input11435 = (Flapjack.WordLangProgHOL.get 5441 Flapjack.WordStore.heapLength) := by
  unfold input11435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5441 Flapjack.WordStore.heapLength)).val
theorem output11435_def : output11435 = (Flapjack.WordLangProgHOL.get 5441 Flapjack.WordStore.heapLength) := by
  unfold output11435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11435_skip : Flapjack.WordAlloc.isSkip output11435 = false := by
  rw [output11435_def]
  conv => lhs; cbv
  try rfl
theorem node11435_eq : Flapjack.WordAlloc.removeDeadStructural input11435 value5723 value1 value2 = (output11435, value5, value1) := by
  rw [input11435_def, output11435_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11435 input11434)).val
theorem input11436_def : input11436 = (.seq input11435 input11434) := by
  unfold input11436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11435 output11434)).val
theorem output11436_def : output11436 = (.seq output11435 output11434) := by
  unfold output11436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11436_skip : Flapjack.WordAlloc.isSkip output11436 = false := by
  rw [output11436_def]
  conv => lhs; cbv
  try rfl
theorem node11436_eq : Flapjack.WordAlloc.removeDeadStructural input11436 value5722 value1 value2 = (output11436, value5, value1) := by
  rw [input11436_def, output11436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11434_eq]
  dsimp only
  rw [node11435_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11436 input11433)).val
theorem input11437_def : input11437 = (.seq input11436 input11433) := by
  unfold input11437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11436 output11433)).val
theorem output11437_def : output11437 = (.seq output11436 output11433) := by
  unfold output11437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11437_skip : Flapjack.WordAlloc.isSkip output11437 = false := by
  rw [output11437_def]
  conv => lhs; cbv
  try rfl
theorem node11437_eq : Flapjack.WordAlloc.removeDeadStructural input11437 value5721 value1 value2 = (output11437, value5, value1) := by
  rw [input11437_def, output11437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11433_eq]
  dsimp only
  rw [node11436_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11437 input11432)).val
theorem input11438_def : input11438 = (.seq input11437 input11432) := by
  unfold input11438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11437 output11432)).val
theorem output11438_def : output11438 = (.seq output11437 output11432) := by
  unfold output11438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11438_skip : Flapjack.WordAlloc.isSkip output11438 = false := by
  rw [output11438_def]
  conv => lhs; cbv
  try rfl
theorem node11438_eq : Flapjack.WordAlloc.removeDeadStructural input11438 value5720 value1 value2 = (output11438, value5, value1) := by
  rw [input11438_def, output11438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11432_eq]
  dsimp only
  rw [node11437_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11438 input11431)).val
theorem input11439_def : input11439 = (.seq input11438 input11431) := by
  unfold input11439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11438 output11431)).val
theorem output11439_def : output11439 = (.seq output11438 output11431) := by
  unfold output11439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11439_skip : Flapjack.WordAlloc.isSkip output11439 = false := by
  rw [output11439_def]
  conv => lhs; cbv
  try rfl
theorem node11439_eq : Flapjack.WordAlloc.removeDeadStructural input11439 value5719 value1 value2 = (output11439, value5, value1) := by
  rw [input11439_def, output11439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11431_eq]
  dsimp only
  rw [node11438_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5724 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5433 (Flapjack.WordLangAddr.addr 5437 0#64)))).val
theorem input11440_def : input11440 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5433 (Flapjack.WordLangAddr.addr 5437 0#64))) := by
  unfold input11440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5433 (Flapjack.WordLangAddr.addr 5437 0#64)))).val
theorem output11440_def : output11440 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5433 (Flapjack.WordLangAddr.addr 5437 0#64))) := by
  unfold output11440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11440_skip : Flapjack.WordAlloc.isSkip output11440 = false := by
  rw [output11440_def]
  conv => lhs; cbv
  try rfl
theorem node11440_eq : Flapjack.WordAlloc.removeDeadStructural input11440 value5 value1 value2 = (output11440, value5724, value1) := by
  rw [input11440_def, output11440_def]
  try (conv => lhs; cbv)
  try rfl

def value5725 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5437, 5425)])).val
theorem input11441_def : input11441 = (Flapjack.WordLangProgHOL.move 0 [(5437, 5425)]) := by
  unfold input11441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5437, 5425)])).val
theorem output11441_def : output11441 = (Flapjack.WordLangProgHOL.move 0 [(5437, 5425)]) := by
  unfold output11441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11441_skip : Flapjack.WordAlloc.isSkip output11441 = false := by
  rw [output11441_def]
  conv => lhs; cbv
  try rfl
theorem node11441_eq : Flapjack.WordAlloc.removeDeadStructural input11441 value5724 value1 value2 = (output11441, value5725, value1) := by
  rw [input11441_def, output11441_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11441 input11440)).val
theorem input11442_def : input11442 = (.seq input11441 input11440) := by
  unfold input11442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11441 output11440)).val
theorem output11442_def : output11442 = (.seq output11441 output11440) := by
  unfold output11442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11442_skip : Flapjack.WordAlloc.isSkip output11442 = false := by
  rw [output11442_def]
  conv => lhs; cbv
  try rfl
theorem node11442_eq : Flapjack.WordAlloc.removeDeadStructural input11442 value5 value1 value2 = (output11442, value5725, value1) := by
  rw [input11442_def, output11442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11440_eq]
  dsimp only
  rw [node11441_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5726 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5433 8133278142371037904#64))).val
theorem input11443_def : input11443 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5433 8133278142371037904#64)) := by
  unfold input11443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5433 8133278142371037904#64))).val
theorem output11443_def : output11443 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5433 8133278142371037904#64)) := by
  unfold output11443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11443_skip : Flapjack.WordAlloc.isSkip output11443 = false := by
  rw [output11443_def]
  conv => lhs; cbv
  try rfl
theorem node11443_eq : Flapjack.WordAlloc.removeDeadStructural input11443 value5725 value1 value2 = (output11443, value5726, value1) := by
  rw [input11443_def, output11443_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5429 8133278142371037904#64))).val
theorem input11444_def : input11444 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5429 8133278142371037904#64)) := by
  unfold input11444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11444_def : output11444 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11444_skip : Flapjack.WordAlloc.isSkip output11444 = true := by
  rw [output11444_def]
  conv => lhs; cbv
  try rfl
theorem node11444_eq : Flapjack.WordAlloc.removeDeadStructural input11444 value5726 value1 value2 = (output11444, value5726, value1) := by
  rw [input11444_def, output11444_def]
  try (conv => lhs; cbv)
  try rfl

def value5727 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5425 5421 (Flapjack.WordRegImm.imm 1320#64))))).val
theorem input11445_def : input11445 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5425 5421 (Flapjack.WordRegImm.imm 1320#64)))) := by
  unfold input11445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5425 5421 (Flapjack.WordRegImm.imm 1320#64))))).val
theorem output11445_def : output11445 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5425 5421 (Flapjack.WordRegImm.imm 1320#64)))) := by
  unfold output11445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11445_skip : Flapjack.WordAlloc.isSkip output11445 = false := by
  rw [output11445_def]
  conv => lhs; cbv
  try rfl
theorem node11445_eq : Flapjack.WordAlloc.removeDeadStructural input11445 value5726 value1 value2 = (output11445, value5727, value1) := by
  rw [input11445_def, output11445_def]
  try (conv => lhs; cbv)
  try rfl

def value5728 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5421 (Flapjack.WordLangAddr.addr 5417 18446744073709551104#64)))).val
theorem input11446_def : input11446 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5421 (Flapjack.WordLangAddr.addr 5417 18446744073709551104#64))) := by
  unfold input11446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5421 (Flapjack.WordLangAddr.addr 5417 18446744073709551104#64)))).val
theorem output11446_def : output11446 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5421 (Flapjack.WordLangAddr.addr 5417 18446744073709551104#64))) := by
  unfold output11446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11446_skip : Flapjack.WordAlloc.isSkip output11446 = false := by
  rw [output11446_def]
  conv => lhs; cbv
  try rfl
theorem node11446_eq : Flapjack.WordAlloc.removeDeadStructural input11446 value5727 value1 value2 = (output11446, value5728, value1) := by
  rw [input11446_def, output11446_def]
  try (conv => lhs; cbv)
  try rfl

def value5729 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5417 5413)).val
theorem input11447_def : input11447 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5417 5413) := by
  unfold input11447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5417 5413)).val
theorem output11447_def : output11447 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5417 5413) := by
  unfold output11447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11447_skip : Flapjack.WordAlloc.isSkip output11447 = false := by
  rw [output11447_def]
  conv => lhs; cbv
  try rfl
theorem node11447_eq : Flapjack.WordAlloc.removeDeadStructural input11447 value5728 value1 value2 = (output11447, value5729, value1) := by
  rw [input11447_def, output11447_def]
  try (conv => lhs; cbv)
  try rfl

def value5730 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5413 5409 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11448_def : input11448 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5413 5409 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5413 5409 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11448_def : output11448 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5413 5409 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11448_skip : Flapjack.WordAlloc.isSkip output11448 = false := by
  rw [output11448_def]
  conv => lhs; cbv
  try rfl
theorem node11448_eq : Flapjack.WordAlloc.removeDeadStructural input11448 value5729 value1 value2 = (output11448, value5730, value1) := by
  rw [input11448_def, output11448_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5409 Flapjack.WordStore.heapLength)).val
theorem input11449_def : input11449 = (Flapjack.WordLangProgHOL.get 5409 Flapjack.WordStore.heapLength) := by
  unfold input11449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5409 Flapjack.WordStore.heapLength)).val
theorem output11449_def : output11449 = (Flapjack.WordLangProgHOL.get 5409 Flapjack.WordStore.heapLength) := by
  unfold output11449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11449_skip : Flapjack.WordAlloc.isSkip output11449 = false := by
  rw [output11449_def]
  conv => lhs; cbv
  try rfl
theorem node11449_eq : Flapjack.WordAlloc.removeDeadStructural input11449 value5730 value1 value2 = (output11449, value5, value1) := by
  rw [input11449_def, output11449_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11449 input11448)).val
theorem input11450_def : input11450 = (.seq input11449 input11448) := by
  unfold input11450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11449 output11448)).val
theorem output11450_def : output11450 = (.seq output11449 output11448) := by
  unfold output11450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11450_skip : Flapjack.WordAlloc.isSkip output11450 = false := by
  rw [output11450_def]
  conv => lhs; cbv
  try rfl
theorem node11450_eq : Flapjack.WordAlloc.removeDeadStructural input11450 value5729 value1 value2 = (output11450, value5, value1) := by
  rw [input11450_def, output11450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11448_eq]
  dsimp only
  rw [node11449_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11450 input11447)).val
theorem input11451_def : input11451 = (.seq input11450 input11447) := by
  unfold input11451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11450 output11447)).val
theorem output11451_def : output11451 = (.seq output11450 output11447) := by
  unfold output11451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11451_skip : Flapjack.WordAlloc.isSkip output11451 = false := by
  rw [output11451_def]
  conv => lhs; cbv
  try rfl
theorem node11451_eq : Flapjack.WordAlloc.removeDeadStructural input11451 value5728 value1 value2 = (output11451, value5, value1) := by
  rw [input11451_def, output11451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11447_eq]
  dsimp only
  rw [node11450_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11451 input11446)).val
theorem input11452_def : input11452 = (.seq input11451 input11446) := by
  unfold input11452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11451 output11446)).val
theorem output11452_def : output11452 = (.seq output11451 output11446) := by
  unfold output11452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11452_skip : Flapjack.WordAlloc.isSkip output11452 = false := by
  rw [output11452_def]
  conv => lhs; cbv
  try rfl
theorem node11452_eq : Flapjack.WordAlloc.removeDeadStructural input11452 value5727 value1 value2 = (output11452, value5, value1) := by
  rw [input11452_def, output11452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11446_eq]
  dsimp only
  rw [node11451_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11452 input11445)).val
theorem input11453_def : input11453 = (.seq input11452 input11445) := by
  unfold input11453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11452 output11445)).val
theorem output11453_def : output11453 = (.seq output11452 output11445) := by
  unfold output11453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11453_skip : Flapjack.WordAlloc.isSkip output11453 = false := by
  rw [output11453_def]
  conv => lhs; cbv
  try rfl
theorem node11453_eq : Flapjack.WordAlloc.removeDeadStructural input11453 value5726 value1 value2 = (output11453, value5, value1) := by
  rw [input11453_def, output11453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11445_eq]
  dsimp only
  rw [node11452_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5731 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5401 (Flapjack.WordLangAddr.addr 5405 0#64)))).val
theorem input11454_def : input11454 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5401 (Flapjack.WordLangAddr.addr 5405 0#64))) := by
  unfold input11454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5401 (Flapjack.WordLangAddr.addr 5405 0#64)))).val
theorem output11454_def : output11454 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5401 (Flapjack.WordLangAddr.addr 5405 0#64))) := by
  unfold output11454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11454_skip : Flapjack.WordAlloc.isSkip output11454 = false := by
  rw [output11454_def]
  conv => lhs; cbv
  try rfl
theorem node11454_eq : Flapjack.WordAlloc.removeDeadStructural input11454 value5 value1 value2 = (output11454, value5731, value1) := by
  rw [input11454_def, output11454_def]
  try (conv => lhs; cbv)
  try rfl

def value5732 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5405, 5393)])).val
theorem input11455_def : input11455 = (Flapjack.WordLangProgHOL.move 0 [(5405, 5393)]) := by
  unfold input11455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5405, 5393)])).val
theorem output11455_def : output11455 = (Flapjack.WordLangProgHOL.move 0 [(5405, 5393)]) := by
  unfold output11455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11455_skip : Flapjack.WordAlloc.isSkip output11455 = false := by
  rw [output11455_def]
  conv => lhs; cbv
  try rfl
theorem node11455_eq : Flapjack.WordAlloc.removeDeadStructural input11455 value5731 value1 value2 = (output11455, value5732, value1) := by
  rw [input11455_def, output11455_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11455 input11454)).val
theorem input11456_def : input11456 = (.seq input11455 input11454) := by
  unfold input11456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11455 output11454)).val
theorem output11456_def : output11456 = (.seq output11455 output11454) := by
  unfold output11456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11456_skip : Flapjack.WordAlloc.isSkip output11456 = false := by
  rw [output11456_def]
  conv => lhs; cbv
  try rfl
theorem node11456_eq : Flapjack.WordAlloc.removeDeadStructural input11456 value5 value1 value2 = (output11456, value5732, value1) := by
  rw [input11456_def, output11456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11454_eq]
  dsimp only
  rw [node11455_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5733 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5401 15800302407253291197#64))).val
theorem input11457_def : input11457 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5401 15800302407253291197#64)) := by
  unfold input11457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5401 15800302407253291197#64))).val
theorem output11457_def : output11457 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5401 15800302407253291197#64)) := by
  unfold output11457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11457_skip : Flapjack.WordAlloc.isSkip output11457 = false := by
  rw [output11457_def]
  conv => lhs; cbv
  try rfl
theorem node11457_eq : Flapjack.WordAlloc.removeDeadStructural input11457 value5732 value1 value2 = (output11457, value5733, value1) := by
  rw [input11457_def, output11457_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5397 15800302407253291197#64))).val
theorem input11458_def : input11458 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5397 15800302407253291197#64)) := by
  unfold input11458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11458_def : output11458 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11458_skip : Flapjack.WordAlloc.isSkip output11458 = true := by
  rw [output11458_def]
  conv => lhs; cbv
  try rfl
theorem node11458_eq : Flapjack.WordAlloc.removeDeadStructural input11458 value5733 value1 value2 = (output11458, value5733, value1) := by
  rw [input11458_def, output11458_def]
  try (conv => lhs; cbv)
  try rfl

def value5734 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5393 5389 (Flapjack.WordRegImm.imm 1312#64))))).val
theorem input11459_def : input11459 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5393 5389 (Flapjack.WordRegImm.imm 1312#64)))) := by
  unfold input11459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5393 5389 (Flapjack.WordRegImm.imm 1312#64))))).val
theorem output11459_def : output11459 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5393 5389 (Flapjack.WordRegImm.imm 1312#64)))) := by
  unfold output11459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11459_skip : Flapjack.WordAlloc.isSkip output11459 = false := by
  rw [output11459_def]
  conv => lhs; cbv
  try rfl
theorem node11459_eq : Flapjack.WordAlloc.removeDeadStructural input11459 value5733 value1 value2 = (output11459, value5734, value1) := by
  rw [input11459_def, output11459_def]
  try (conv => lhs; cbv)
  try rfl

def value5735 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5389 (Flapjack.WordLangAddr.addr 5385 18446744073709551104#64)))).val
theorem input11460_def : input11460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5389 (Flapjack.WordLangAddr.addr 5385 18446744073709551104#64))) := by
  unfold input11460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5389 (Flapjack.WordLangAddr.addr 5385 18446744073709551104#64)))).val
theorem output11460_def : output11460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5389 (Flapjack.WordLangAddr.addr 5385 18446744073709551104#64))) := by
  unfold output11460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11460_skip : Flapjack.WordAlloc.isSkip output11460 = false := by
  rw [output11460_def]
  conv => lhs; cbv
  try rfl
theorem node11460_eq : Flapjack.WordAlloc.removeDeadStructural input11460 value5734 value1 value2 = (output11460, value5735, value1) := by
  rw [input11460_def, output11460_def]
  try (conv => lhs; cbv)
  try rfl

def value5736 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5385 5381)).val
theorem input11461_def : input11461 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5385 5381) := by
  unfold input11461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5385 5381)).val
theorem output11461_def : output11461 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5385 5381) := by
  unfold output11461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11461_skip : Flapjack.WordAlloc.isSkip output11461 = false := by
  rw [output11461_def]
  conv => lhs; cbv
  try rfl
theorem node11461_eq : Flapjack.WordAlloc.removeDeadStructural input11461 value5735 value1 value2 = (output11461, value5736, value1) := by
  rw [input11461_def, output11461_def]
  try (conv => lhs; cbv)
  try rfl

def value5737 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5381 5377 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11462_def : input11462 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5381 5377 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5381 5377 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11462_def : output11462 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5381 5377 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11462_skip : Flapjack.WordAlloc.isSkip output11462 = false := by
  rw [output11462_def]
  conv => lhs; cbv
  try rfl
theorem node11462_eq : Flapjack.WordAlloc.removeDeadStructural input11462 value5736 value1 value2 = (output11462, value5737, value1) := by
  rw [input11462_def, output11462_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5377 Flapjack.WordStore.heapLength)).val
theorem input11463_def : input11463 = (Flapjack.WordLangProgHOL.get 5377 Flapjack.WordStore.heapLength) := by
  unfold input11463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5377 Flapjack.WordStore.heapLength)).val
theorem output11463_def : output11463 = (Flapjack.WordLangProgHOL.get 5377 Flapjack.WordStore.heapLength) := by
  unfold output11463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11463_skip : Flapjack.WordAlloc.isSkip output11463 = false := by
  rw [output11463_def]
  conv => lhs; cbv
  try rfl
theorem node11463_eq : Flapjack.WordAlloc.removeDeadStructural input11463 value5737 value1 value2 = (output11463, value5, value1) := by
  rw [input11463_def, output11463_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11463 input11462)).val
theorem input11464_def : input11464 = (.seq input11463 input11462) := by
  unfold input11464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11463 output11462)).val
theorem output11464_def : output11464 = (.seq output11463 output11462) := by
  unfold output11464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11464_skip : Flapjack.WordAlloc.isSkip output11464 = false := by
  rw [output11464_def]
  conv => lhs; cbv
  try rfl
theorem node11464_eq : Flapjack.WordAlloc.removeDeadStructural input11464 value5736 value1 value2 = (output11464, value5, value1) := by
  rw [input11464_def, output11464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11462_eq]
  dsimp only
  rw [node11463_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11464 input11461)).val
theorem input11465_def : input11465 = (.seq input11464 input11461) := by
  unfold input11465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11464 output11461)).val
theorem output11465_def : output11465 = (.seq output11464 output11461) := by
  unfold output11465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11465_skip : Flapjack.WordAlloc.isSkip output11465 = false := by
  rw [output11465_def]
  conv => lhs; cbv
  try rfl
theorem node11465_eq : Flapjack.WordAlloc.removeDeadStructural input11465 value5735 value1 value2 = (output11465, value5, value1) := by
  rw [input11465_def, output11465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11461_eq]
  dsimp only
  rw [node11464_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11465 input11460)).val
theorem input11466_def : input11466 = (.seq input11465 input11460) := by
  unfold input11466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11465 output11460)).val
theorem output11466_def : output11466 = (.seq output11465 output11460) := by
  unfold output11466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11466_skip : Flapjack.WordAlloc.isSkip output11466 = false := by
  rw [output11466_def]
  conv => lhs; cbv
  try rfl
theorem node11466_eq : Flapjack.WordAlloc.removeDeadStructural input11466 value5734 value1 value2 = (output11466, value5, value1) := by
  rw [input11466_def, output11466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11460_eq]
  dsimp only
  rw [node11465_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11466 input11459)).val
theorem input11467_def : input11467 = (.seq input11466 input11459) := by
  unfold input11467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11466 output11459)).val
theorem output11467_def : output11467 = (.seq output11466 output11459) := by
  unfold output11467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11467_skip : Flapjack.WordAlloc.isSkip output11467 = false := by
  rw [output11467_def]
  conv => lhs; cbv
  try rfl
theorem node11467_eq : Flapjack.WordAlloc.removeDeadStructural input11467 value5733 value1 value2 = (output11467, value5, value1) := by
  rw [input11467_def, output11467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11459_eq]
  dsimp only
  rw [node11466_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5738 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5369 (Flapjack.WordLangAddr.addr 5373 0#64)))).val
theorem input11468_def : input11468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5369 (Flapjack.WordLangAddr.addr 5373 0#64))) := by
  unfold input11468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5369 (Flapjack.WordLangAddr.addr 5373 0#64)))).val
theorem output11468_def : output11468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5369 (Flapjack.WordLangAddr.addr 5373 0#64))) := by
  unfold output11468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11468_skip : Flapjack.WordAlloc.isSkip output11468 = false := by
  rw [output11468_def]
  conv => lhs; cbv
  try rfl
theorem node11468_eq : Flapjack.WordAlloc.removeDeadStructural input11468 value5 value1 value2 = (output11468, value5738, value1) := by
  rw [input11468_def, output11468_def]
  try (conv => lhs; cbv)
  try rfl

def value5739 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5373, 5361)])).val
theorem input11469_def : input11469 = (Flapjack.WordLangProgHOL.move 0 [(5373, 5361)]) := by
  unfold input11469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5373, 5361)])).val
theorem output11469_def : output11469 = (Flapjack.WordLangProgHOL.move 0 [(5373, 5361)]) := by
  unfold output11469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11469_skip : Flapjack.WordAlloc.isSkip output11469 = false := by
  rw [output11469_def]
  conv => lhs; cbv
  try rfl
theorem node11469_eq : Flapjack.WordAlloc.removeDeadStructural input11469 value5738 value1 value2 = (output11469, value5739, value1) := by
  rw [input11469_def, output11469_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11469 input11468)).val
theorem input11470_def : input11470 = (.seq input11469 input11468) := by
  unfold input11470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11469 output11468)).val
theorem output11470_def : output11470 = (.seq output11469 output11468) := by
  unfold output11470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11470_skip : Flapjack.WordAlloc.isSkip output11470 = false := by
  rw [output11470_def]
  conv => lhs; cbv
  try rfl
theorem node11470_eq : Flapjack.WordAlloc.removeDeadStructural input11470 value5 value1 value2 = (output11470, value5739, value1) := by
  rw [input11470_def, output11470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11468_eq]
  dsimp only
  rw [node11469_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5740 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5369 6373087774271371469#64))).val
theorem input11471_def : input11471 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5369 6373087774271371469#64)) := by
  unfold input11471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5369 6373087774271371469#64))).val
theorem output11471_def : output11471 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5369 6373087774271371469#64)) := by
  unfold output11471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11471_skip : Flapjack.WordAlloc.isSkip output11471 = false := by
  rw [output11471_def]
  conv => lhs; cbv
  try rfl
theorem node11471_eq : Flapjack.WordAlloc.removeDeadStructural input11471 value5739 value1 value2 = (output11471, value5740, value1) := by
  rw [input11471_def, output11471_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5365 6373087774271371469#64))).val
theorem input11472_def : input11472 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5365 6373087774271371469#64)) := by
  unfold input11472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11472_def : output11472 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11472_skip : Flapjack.WordAlloc.isSkip output11472 = true := by
  rw [output11472_def]
  conv => lhs; cbv
  try rfl
theorem node11472_eq : Flapjack.WordAlloc.removeDeadStructural input11472 value5740 value1 value2 = (output11472, value5740, value1) := by
  rw [input11472_def, output11472_def]
  try (conv => lhs; cbv)
  try rfl

def value5741 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5361 5357 (Flapjack.WordRegImm.imm 1304#64))))).val
theorem input11473_def : input11473 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5361 5357 (Flapjack.WordRegImm.imm 1304#64)))) := by
  unfold input11473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5361 5357 (Flapjack.WordRegImm.imm 1304#64))))).val
theorem output11473_def : output11473 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5361 5357 (Flapjack.WordRegImm.imm 1304#64)))) := by
  unfold output11473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11473_skip : Flapjack.WordAlloc.isSkip output11473 = false := by
  rw [output11473_def]
  conv => lhs; cbv
  try rfl
theorem node11473_eq : Flapjack.WordAlloc.removeDeadStructural input11473 value5740 value1 value2 = (output11473, value5741, value1) := by
  rw [input11473_def, output11473_def]
  try (conv => lhs; cbv)
  try rfl

def value5742 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5357 (Flapjack.WordLangAddr.addr 5353 18446744073709551104#64)))).val
theorem input11474_def : input11474 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5357 (Flapjack.WordLangAddr.addr 5353 18446744073709551104#64))) := by
  unfold input11474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5357 (Flapjack.WordLangAddr.addr 5353 18446744073709551104#64)))).val
theorem output11474_def : output11474 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5357 (Flapjack.WordLangAddr.addr 5353 18446744073709551104#64))) := by
  unfold output11474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11474_skip : Flapjack.WordAlloc.isSkip output11474 = false := by
  rw [output11474_def]
  conv => lhs; cbv
  try rfl
theorem node11474_eq : Flapjack.WordAlloc.removeDeadStructural input11474 value5741 value1 value2 = (output11474, value5742, value1) := by
  rw [input11474_def, output11474_def]
  try (conv => lhs; cbv)
  try rfl

def value5743 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5353 5349)).val
theorem input11475_def : input11475 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5353 5349) := by
  unfold input11475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5353 5349)).val
theorem output11475_def : output11475 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5353 5349) := by
  unfold output11475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11475_skip : Flapjack.WordAlloc.isSkip output11475 = false := by
  rw [output11475_def]
  conv => lhs; cbv
  try rfl
theorem node11475_eq : Flapjack.WordAlloc.removeDeadStructural input11475 value5742 value1 value2 = (output11475, value5743, value1) := by
  rw [input11475_def, output11475_def]
  try (conv => lhs; cbv)
  try rfl

def value5744 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5349 5345 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11476_def : input11476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5349 5345 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5349 5345 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11476_def : output11476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5349 5345 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11476_skip : Flapjack.WordAlloc.isSkip output11476 = false := by
  rw [output11476_def]
  conv => lhs; cbv
  try rfl
theorem node11476_eq : Flapjack.WordAlloc.removeDeadStructural input11476 value5743 value1 value2 = (output11476, value5744, value1) := by
  rw [input11476_def, output11476_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5345 Flapjack.WordStore.heapLength)).val
theorem input11477_def : input11477 = (Flapjack.WordLangProgHOL.get 5345 Flapjack.WordStore.heapLength) := by
  unfold input11477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5345 Flapjack.WordStore.heapLength)).val
theorem output11477_def : output11477 = (Flapjack.WordLangProgHOL.get 5345 Flapjack.WordStore.heapLength) := by
  unfold output11477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11477_skip : Flapjack.WordAlloc.isSkip output11477 = false := by
  rw [output11477_def]
  conv => lhs; cbv
  try rfl
theorem node11477_eq : Flapjack.WordAlloc.removeDeadStructural input11477 value5744 value1 value2 = (output11477, value5, value1) := by
  rw [input11477_def, output11477_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11477 input11476)).val
theorem input11478_def : input11478 = (.seq input11477 input11476) := by
  unfold input11478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11477 output11476)).val
theorem output11478_def : output11478 = (.seq output11477 output11476) := by
  unfold output11478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11478_skip : Flapjack.WordAlloc.isSkip output11478 = false := by
  rw [output11478_def]
  conv => lhs; cbv
  try rfl
theorem node11478_eq : Flapjack.WordAlloc.removeDeadStructural input11478 value5743 value1 value2 = (output11478, value5, value1) := by
  rw [input11478_def, output11478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11476_eq]
  dsimp only
  rw [node11477_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11478 input11475)).val
theorem input11479_def : input11479 = (.seq input11478 input11475) := by
  unfold input11479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11478 output11475)).val
theorem output11479_def : output11479 = (.seq output11478 output11475) := by
  unfold output11479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11479_skip : Flapjack.WordAlloc.isSkip output11479 = false := by
  rw [output11479_def]
  conv => lhs; cbv
  try rfl
theorem node11479_eq : Flapjack.WordAlloc.removeDeadStructural input11479 value5742 value1 value2 = (output11479, value5, value1) := by
  rw [input11479_def, output11479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11475_eq]
  dsimp only
  rw [node11478_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11479 input11474)).val
theorem input11480_def : input11480 = (.seq input11479 input11474) := by
  unfold input11480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11479 output11474)).val
theorem output11480_def : output11480 = (.seq output11479 output11474) := by
  unfold output11480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11480_skip : Flapjack.WordAlloc.isSkip output11480 = false := by
  rw [output11480_def]
  conv => lhs; cbv
  try rfl
theorem node11480_eq : Flapjack.WordAlloc.removeDeadStructural input11480 value5741 value1 value2 = (output11480, value5, value1) := by
  rw [input11480_def, output11480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11474_eq]
  dsimp only
  rw [node11479_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11480 input11473)).val
theorem input11481_def : input11481 = (.seq input11480 input11473) := by
  unfold input11481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11480 output11473)).val
theorem output11481_def : output11481 = (.seq output11480 output11473) := by
  unfold output11481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11481_skip : Flapjack.WordAlloc.isSkip output11481 = false := by
  rw [output11481_def]
  conv => lhs; cbv
  try rfl
theorem node11481_eq : Flapjack.WordAlloc.removeDeadStructural input11481 value5740 value1 value2 = (output11481, value5, value1) := by
  rw [input11481_def, output11481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11473_eq]
  dsimp only
  rw [node11480_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5745 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5337 (Flapjack.WordLangAddr.addr 5341 0#64)))).val
theorem input11482_def : input11482 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5337 (Flapjack.WordLangAddr.addr 5341 0#64))) := by
  unfold input11482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5337 (Flapjack.WordLangAddr.addr 5341 0#64)))).val
theorem output11482_def : output11482 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5337 (Flapjack.WordLangAddr.addr 5341 0#64))) := by
  unfold output11482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11482_skip : Flapjack.WordAlloc.isSkip output11482 = false := by
  rw [output11482_def]
  conv => lhs; cbv
  try rfl
theorem node11482_eq : Flapjack.WordAlloc.removeDeadStructural input11482 value5 value1 value2 = (output11482, value5745, value1) := by
  rw [input11482_def, output11482_def]
  try (conv => lhs; cbv)
  try rfl

def value5746 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5341, 5329)])).val
theorem input11483_def : input11483 = (Flapjack.WordLangProgHOL.move 0 [(5341, 5329)]) := by
  unfold input11483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5341, 5329)])).val
theorem output11483_def : output11483 = (Flapjack.WordLangProgHOL.move 0 [(5341, 5329)]) := by
  unfold output11483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11483_skip : Flapjack.WordAlloc.isSkip output11483 = false := by
  rw [output11483_def]
  conv => lhs; cbv
  try rfl
theorem node11483_eq : Flapjack.WordAlloc.removeDeadStructural input11483 value5745 value1 value2 = (output11483, value5746, value1) := by
  rw [input11483_def, output11483_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11483 input11482)).val
theorem input11484_def : input11484 = (.seq input11483 input11482) := by
  unfold input11484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11483 output11482)).val
theorem output11484_def : output11484 = (.seq output11483 output11482) := by
  unfold output11484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11484_skip : Flapjack.WordAlloc.isSkip output11484 = false := by
  rw [output11484_def]
  conv => lhs; cbv
  try rfl
theorem node11484_eq : Flapjack.WordAlloc.removeDeadStructural input11484 value5 value1 value2 = (output11484, value5746, value1) := by
  rw [input11484_def, output11484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11482_eq]
  dsimp only
  rw [node11483_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5747 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5337 2226472659975678357#64))).val
theorem input11485_def : input11485 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5337 2226472659975678357#64)) := by
  unfold input11485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5337 2226472659975678357#64))).val
theorem output11485_def : output11485 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5337 2226472659975678357#64)) := by
  unfold output11485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11485_skip : Flapjack.WordAlloc.isSkip output11485 = false := by
  rw [output11485_def]
  conv => lhs; cbv
  try rfl
theorem node11485_eq : Flapjack.WordAlloc.removeDeadStructural input11485 value5746 value1 value2 = (output11485, value5747, value1) := by
  rw [input11485_def, output11485_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5333 2226472659975678357#64))).val
theorem input11486_def : input11486 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5333 2226472659975678357#64)) := by
  unfold input11486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11486_def : output11486 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11486_skip : Flapjack.WordAlloc.isSkip output11486 = true := by
  rw [output11486_def]
  conv => lhs; cbv
  try rfl
theorem node11486_eq : Flapjack.WordAlloc.removeDeadStructural input11486 value5747 value1 value2 = (output11486, value5747, value1) := by
  rw [input11486_def, output11486_def]
  try (conv => lhs; cbv)
  try rfl

def value5748 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5329 5325 (Flapjack.WordRegImm.imm 1296#64))))).val
theorem input11487_def : input11487 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5329 5325 (Flapjack.WordRegImm.imm 1296#64)))) := by
  unfold input11487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5329 5325 (Flapjack.WordRegImm.imm 1296#64))))).val
theorem output11487_def : output11487 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5329 5325 (Flapjack.WordRegImm.imm 1296#64)))) := by
  unfold output11487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11487_skip : Flapjack.WordAlloc.isSkip output11487 = false := by
  rw [output11487_def]
  conv => lhs; cbv
  try rfl
theorem node11487_eq : Flapjack.WordAlloc.removeDeadStructural input11487 value5747 value1 value2 = (output11487, value5748, value1) := by
  rw [input11487_def, output11487_def]
  try (conv => lhs; cbv)
  try rfl

def value5749 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5325 (Flapjack.WordLangAddr.addr 5321 18446744073709551104#64)))).val
theorem input11488_def : input11488 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5325 (Flapjack.WordLangAddr.addr 5321 18446744073709551104#64))) := by
  unfold input11488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5325 (Flapjack.WordLangAddr.addr 5321 18446744073709551104#64)))).val
theorem output11488_def : output11488 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5325 (Flapjack.WordLangAddr.addr 5321 18446744073709551104#64))) := by
  unfold output11488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11488_skip : Flapjack.WordAlloc.isSkip output11488 = false := by
  rw [output11488_def]
  conv => lhs; cbv
  try rfl
theorem node11488_eq : Flapjack.WordAlloc.removeDeadStructural input11488 value5748 value1 value2 = (output11488, value5749, value1) := by
  rw [input11488_def, output11488_def]
  try (conv => lhs; cbv)
  try rfl

def value5750 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5321 5317)).val
theorem input11489_def : input11489 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5321 5317) := by
  unfold input11489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5321 5317)).val
theorem output11489_def : output11489 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5321 5317) := by
  unfold output11489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11489_skip : Flapjack.WordAlloc.isSkip output11489 = false := by
  rw [output11489_def]
  conv => lhs; cbv
  try rfl
theorem node11489_eq : Flapjack.WordAlloc.removeDeadStructural input11489 value5749 value1 value2 = (output11489, value5750, value1) := by
  rw [input11489_def, output11489_def]
  try (conv => lhs; cbv)
  try rfl

def value5751 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5317 5313 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11490_def : input11490 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5317 5313 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5317 5313 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11490_def : output11490 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5317 5313 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11490_skip : Flapjack.WordAlloc.isSkip output11490 = false := by
  rw [output11490_def]
  conv => lhs; cbv
  try rfl
theorem node11490_eq : Flapjack.WordAlloc.removeDeadStructural input11490 value5750 value1 value2 = (output11490, value5751, value1) := by
  rw [input11490_def, output11490_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5313 Flapjack.WordStore.heapLength)).val
theorem input11491_def : input11491 = (Flapjack.WordLangProgHOL.get 5313 Flapjack.WordStore.heapLength) := by
  unfold input11491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5313 Flapjack.WordStore.heapLength)).val
theorem output11491_def : output11491 = (Flapjack.WordLangProgHOL.get 5313 Flapjack.WordStore.heapLength) := by
  unfold output11491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11491_skip : Flapjack.WordAlloc.isSkip output11491 = false := by
  rw [output11491_def]
  conv => lhs; cbv
  try rfl
theorem node11491_eq : Flapjack.WordAlloc.removeDeadStructural input11491 value5751 value1 value2 = (output11491, value5, value1) := by
  rw [input11491_def, output11491_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11491 input11490)).val
theorem input11492_def : input11492 = (.seq input11491 input11490) := by
  unfold input11492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11491 output11490)).val
theorem output11492_def : output11492 = (.seq output11491 output11490) := by
  unfold output11492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11492_skip : Flapjack.WordAlloc.isSkip output11492 = false := by
  rw [output11492_def]
  conv => lhs; cbv
  try rfl
theorem node11492_eq : Flapjack.WordAlloc.removeDeadStructural input11492 value5750 value1 value2 = (output11492, value5, value1) := by
  rw [input11492_def, output11492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11490_eq]
  dsimp only
  rw [node11491_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11492 input11489)).val
theorem input11493_def : input11493 = (.seq input11492 input11489) := by
  unfold input11493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11492 output11489)).val
theorem output11493_def : output11493 = (.seq output11492 output11489) := by
  unfold output11493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11493_skip : Flapjack.WordAlloc.isSkip output11493 = false := by
  rw [output11493_def]
  conv => lhs; cbv
  try rfl
theorem node11493_eq : Flapjack.WordAlloc.removeDeadStructural input11493 value5749 value1 value2 = (output11493, value5, value1) := by
  rw [input11493_def, output11493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11489_eq]
  dsimp only
  rw [node11492_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11493 input11488)).val
theorem input11494_def : input11494 = (.seq input11493 input11488) := by
  unfold input11494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11493 output11488)).val
theorem output11494_def : output11494 = (.seq output11493 output11488) := by
  unfold output11494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11494_skip : Flapjack.WordAlloc.isSkip output11494 = false := by
  rw [output11494_def]
  conv => lhs; cbv
  try rfl
theorem node11494_eq : Flapjack.WordAlloc.removeDeadStructural input11494 value5748 value1 value2 = (output11494, value5, value1) := by
  rw [input11494_def, output11494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11488_eq]
  dsimp only
  rw [node11493_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11494 input11487)).val
theorem input11495_def : input11495 = (.seq input11494 input11487) := by
  unfold input11495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11494 output11487)).val
theorem output11495_def : output11495 = (.seq output11494 output11487) := by
  unfold output11495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11495_skip : Flapjack.WordAlloc.isSkip output11495 = false := by
  rw [output11495_def]
  conv => lhs; cbv
  try rfl
theorem node11495_eq : Flapjack.WordAlloc.removeDeadStructural input11495 value5747 value1 value2 = (output11495, value5, value1) := by
  rw [input11495_def, output11495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11487_eq]
  dsimp only
  rw [node11494_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5752 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5305 (Flapjack.WordLangAddr.addr 5309 0#64)))).val
theorem input11496_def : input11496 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5305 (Flapjack.WordLangAddr.addr 5309 0#64))) := by
  unfold input11496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5305 (Flapjack.WordLangAddr.addr 5309 0#64)))).val
theorem output11496_def : output11496 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5305 (Flapjack.WordLangAddr.addr 5309 0#64))) := by
  unfold output11496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11496_skip : Flapjack.WordAlloc.isSkip output11496 = false := by
  rw [output11496_def]
  conv => lhs; cbv
  try rfl
theorem node11496_eq : Flapjack.WordAlloc.removeDeadStructural input11496 value5 value1 value2 = (output11496, value5752, value1) := by
  rw [input11496_def, output11496_def]
  try (conv => lhs; cbv)
  try rfl

def value5753 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5309, 5297)])).val
theorem input11497_def : input11497 = (Flapjack.WordLangProgHOL.move 0 [(5309, 5297)]) := by
  unfold input11497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5309, 5297)])).val
theorem output11497_def : output11497 = (Flapjack.WordLangProgHOL.move 0 [(5309, 5297)]) := by
  unfold output11497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11497_skip : Flapjack.WordAlloc.isSkip output11497 = false := by
  rw [output11497_def]
  conv => lhs; cbv
  try rfl
theorem node11497_eq : Flapjack.WordAlloc.removeDeadStructural input11497 value5752 value1 value2 = (output11497, value5753, value1) := by
  rw [input11497_def, output11497_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11497 input11496)).val
theorem input11498_def : input11498 = (.seq input11497 input11496) := by
  unfold input11498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11497 output11496)).val
theorem output11498_def : output11498 = (.seq output11497 output11496) := by
  unfold output11498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11498_skip : Flapjack.WordAlloc.isSkip output11498 = false := by
  rw [output11498_def]
  conv => lhs; cbv
  try rfl
theorem node11498_eq : Flapjack.WordAlloc.removeDeadStructural input11498 value5 value1 value2 = (output11498, value5753, value1) := by
  rw [input11498_def, output11498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11496_eq]
  dsimp only
  rw [node11497_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5754 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5305 410619046979592152#64))).val
theorem input11499_def : input11499 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5305 410619046979592152#64)) := by
  unfold input11499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5305 410619046979592152#64))).val
theorem output11499_def : output11499 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5305 410619046979592152#64)) := by
  unfold output11499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11499_skip : Flapjack.WordAlloc.isSkip output11499 = false := by
  rw [output11499_def]
  conv => lhs; cbv
  try rfl
theorem node11499_eq : Flapjack.WordAlloc.removeDeadStructural input11499 value5753 value1 value2 = (output11499, value5754, value1) := by
  rw [input11499_def, output11499_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5301 410619046979592152#64))).val
theorem input11500_def : input11500 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5301 410619046979592152#64)) := by
  unfold input11500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11500_def : output11500 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11500_skip : Flapjack.WordAlloc.isSkip output11500 = true := by
  rw [output11500_def]
  conv => lhs; cbv
  try rfl
theorem node11500_eq : Flapjack.WordAlloc.removeDeadStructural input11500 value5754 value1 value2 = (output11500, value5754, value1) := by
  rw [input11500_def, output11500_def]
  try (conv => lhs; cbv)
  try rfl

def value5755 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5297 5293 (Flapjack.WordRegImm.imm 1288#64))))).val
theorem input11501_def : input11501 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5297 5293 (Flapjack.WordRegImm.imm 1288#64)))) := by
  unfold input11501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5297 5293 (Flapjack.WordRegImm.imm 1288#64))))).val
theorem output11501_def : output11501 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5297 5293 (Flapjack.WordRegImm.imm 1288#64)))) := by
  unfold output11501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11501_skip : Flapjack.WordAlloc.isSkip output11501 = false := by
  rw [output11501_def]
  conv => lhs; cbv
  try rfl
theorem node11501_eq : Flapjack.WordAlloc.removeDeadStructural input11501 value5754 value1 value2 = (output11501, value5755, value1) := by
  rw [input11501_def, output11501_def]
  try (conv => lhs; cbv)
  try rfl

def value5756 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5293 (Flapjack.WordLangAddr.addr 5289 18446744073709551104#64)))).val
theorem input11502_def : input11502 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5293 (Flapjack.WordLangAddr.addr 5289 18446744073709551104#64))) := by
  unfold input11502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5293 (Flapjack.WordLangAddr.addr 5289 18446744073709551104#64)))).val
theorem output11502_def : output11502 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5293 (Flapjack.WordLangAddr.addr 5289 18446744073709551104#64))) := by
  unfold output11502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11502_skip : Flapjack.WordAlloc.isSkip output11502 = false := by
  rw [output11502_def]
  conv => lhs; cbv
  try rfl
theorem node11502_eq : Flapjack.WordAlloc.removeDeadStructural input11502 value5755 value1 value2 = (output11502, value5756, value1) := by
  rw [input11502_def, output11502_def]
  try (conv => lhs; cbv)
  try rfl

def value5757 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5289 5285)).val
theorem input11503_def : input11503 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5289 5285) := by
  unfold input11503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5289 5285)).val
theorem output11503_def : output11503 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5289 5285) := by
  unfold output11503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11503_skip : Flapjack.WordAlloc.isSkip output11503 = false := by
  rw [output11503_def]
  conv => lhs; cbv
  try rfl
theorem node11503_eq : Flapjack.WordAlloc.removeDeadStructural input11503 value5756 value1 value2 = (output11503, value5757, value1) := by
  rw [input11503_def, output11503_def]
  try (conv => lhs; cbv)
  try rfl

def value5758 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5285 5281 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11504_def : input11504 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5285 5281 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5285 5281 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11504_def : output11504 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5285 5281 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11504_skip : Flapjack.WordAlloc.isSkip output11504 = false := by
  rw [output11504_def]
  conv => lhs; cbv
  try rfl
theorem node11504_eq : Flapjack.WordAlloc.removeDeadStructural input11504 value5757 value1 value2 = (output11504, value5758, value1) := by
  rw [input11504_def, output11504_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5281 Flapjack.WordStore.heapLength)).val
theorem input11505_def : input11505 = (Flapjack.WordLangProgHOL.get 5281 Flapjack.WordStore.heapLength) := by
  unfold input11505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5281 Flapjack.WordStore.heapLength)).val
theorem output11505_def : output11505 = (Flapjack.WordLangProgHOL.get 5281 Flapjack.WordStore.heapLength) := by
  unfold output11505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11505_skip : Flapjack.WordAlloc.isSkip output11505 = false := by
  rw [output11505_def]
  conv => lhs; cbv
  try rfl
theorem node11505_eq : Flapjack.WordAlloc.removeDeadStructural input11505 value5758 value1 value2 = (output11505, value5, value1) := by
  rw [input11505_def, output11505_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11505 input11504)).val
theorem input11506_def : input11506 = (.seq input11505 input11504) := by
  unfold input11506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11505 output11504)).val
theorem output11506_def : output11506 = (.seq output11505 output11504) := by
  unfold output11506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11506_skip : Flapjack.WordAlloc.isSkip output11506 = false := by
  rw [output11506_def]
  conv => lhs; cbv
  try rfl
theorem node11506_eq : Flapjack.WordAlloc.removeDeadStructural input11506 value5757 value1 value2 = (output11506, value5, value1) := by
  rw [input11506_def, output11506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11504_eq]
  dsimp only
  rw [node11505_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11506 input11503)).val
theorem input11507_def : input11507 = (.seq input11506 input11503) := by
  unfold input11507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11506 output11503)).val
theorem output11507_def : output11507 = (.seq output11506 output11503) := by
  unfold output11507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11507_skip : Flapjack.WordAlloc.isSkip output11507 = false := by
  rw [output11507_def]
  conv => lhs; cbv
  try rfl
theorem node11507_eq : Flapjack.WordAlloc.removeDeadStructural input11507 value5756 value1 value2 = (output11507, value5, value1) := by
  rw [input11507_def, output11507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11503_eq]
  dsimp only
  rw [node11506_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11507 input11502)).val
theorem input11508_def : input11508 = (.seq input11507 input11502) := by
  unfold input11508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11507 output11502)).val
theorem output11508_def : output11508 = (.seq output11507 output11502) := by
  unfold output11508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11508_skip : Flapjack.WordAlloc.isSkip output11508 = false := by
  rw [output11508_def]
  conv => lhs; cbv
  try rfl
theorem node11508_eq : Flapjack.WordAlloc.removeDeadStructural input11508 value5755 value1 value2 = (output11508, value5, value1) := by
  rw [input11508_def, output11508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11502_eq]
  dsimp only
  rw [node11507_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11508 input11501)).val
theorem input11509_def : input11509 = (.seq input11508 input11501) := by
  unfold input11509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11508 output11501)).val
theorem output11509_def : output11509 = (.seq output11508 output11501) := by
  unfold output11509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11509_skip : Flapjack.WordAlloc.isSkip output11509 = false := by
  rw [output11509_def]
  conv => lhs; cbv
  try rfl
theorem node11509_eq : Flapjack.WordAlloc.removeDeadStructural input11509 value5754 value1 value2 = (output11509, value5, value1) := by
  rw [input11509_def, output11509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11501_eq]
  dsimp only
  rw [node11508_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5759 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5273 (Flapjack.WordLangAddr.addr 5277 0#64)))).val
theorem input11510_def : input11510 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5273 (Flapjack.WordLangAddr.addr 5277 0#64))) := by
  unfold input11510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5273 (Flapjack.WordLangAddr.addr 5277 0#64)))).val
theorem output11510_def : output11510 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 5273 (Flapjack.WordLangAddr.addr 5277 0#64))) := by
  unfold output11510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11510_skip : Flapjack.WordAlloc.isSkip output11510 = false := by
  rw [output11510_def]
  conv => lhs; cbv
  try rfl
theorem node11510_eq : Flapjack.WordAlloc.removeDeadStructural input11510 value5 value1 value2 = (output11510, value5759, value1) := by
  rw [input11510_def, output11510_def]
  try (conv => lhs; cbv)
  try rfl

def value5760 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5277, 5265)])).val
theorem input11511_def : input11511 = (Flapjack.WordLangProgHOL.move 0 [(5277, 5265)]) := by
  unfold input11511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(5277, 5265)])).val
theorem output11511_def : output11511 = (Flapjack.WordLangProgHOL.move 0 [(5277, 5265)]) := by
  unfold output11511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11511_skip : Flapjack.WordAlloc.isSkip output11511 = false := by
  rw [output11511_def]
  conv => lhs; cbv
  try rfl
theorem node11511_eq : Flapjack.WordAlloc.removeDeadStructural input11511 value5759 value1 value2 = (output11511, value5760, value1) := by
  rw [input11511_def, output11511_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input11511 input11510)).val
theorem input11512_def : input11512 = (.seq input11511 input11510) := by
  unfold input11512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output11511 output11510)).val
theorem output11512_def : output11512 = (.seq output11511 output11510) := by
  unfold output11512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11512_skip : Flapjack.WordAlloc.isSkip output11512 = false := by
  rw [output11512_def]
  conv => lhs; cbv
  try rfl
theorem node11512_eq : Flapjack.WordAlloc.removeDeadStructural input11512 value5 value1 value2 = (output11512, value5760, value1) := by
  rw [input11512_def, output11512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node11510_eq]
  dsimp only
  rw [node11511_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5761 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5273 16089103532492447813#64))).val
theorem input11513_def : input11513 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5273 16089103532492447813#64)) := by
  unfold input11513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5273 16089103532492447813#64))).val
theorem output11513_def : output11513 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5273 16089103532492447813#64)) := by
  unfold output11513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11513_skip : Flapjack.WordAlloc.isSkip output11513 = false := by
  rw [output11513_def]
  conv => lhs; cbv
  try rfl
theorem node11513_eq : Flapjack.WordAlloc.removeDeadStructural input11513 value5760 value1 value2 = (output11513, value5761, value1) := by
  rw [input11513_def, output11513_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5269 16089103532492447813#64))).val
theorem input11514_def : input11514 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5269 16089103532492447813#64)) := by
  unfold input11514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output11514_def : output11514 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output11514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11514_skip : Flapjack.WordAlloc.isSkip output11514 = true := by
  rw [output11514_def]
  conv => lhs; cbv
  try rfl
theorem node11514_eq : Flapjack.WordAlloc.removeDeadStructural input11514 value5761 value1 value2 = (output11514, value5761, value1) := by
  rw [input11514_def, output11514_def]
  try (conv => lhs; cbv)
  try rfl

def value5762 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5265 5261 (Flapjack.WordRegImm.imm 1280#64))))).val
theorem input11515_def : input11515 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5265 5261 (Flapjack.WordRegImm.imm 1280#64)))) := by
  unfold input11515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5265 5261 (Flapjack.WordRegImm.imm 1280#64))))).val
theorem output11515_def : output11515 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 5265 5261 (Flapjack.WordRegImm.imm 1280#64)))) := by
  unfold output11515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11515_skip : Flapjack.WordAlloc.isSkip output11515 = false := by
  rw [output11515_def]
  conv => lhs; cbv
  try rfl
theorem node11515_eq : Flapjack.WordAlloc.removeDeadStructural input11515 value5761 value1 value2 = (output11515, value5762, value1) := by
  rw [input11515_def, output11515_def]
  try (conv => lhs; cbv)
  try rfl

def value5763 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5261 (Flapjack.WordLangAddr.addr 5257 18446744073709551104#64)))).val
theorem input11516_def : input11516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5261 (Flapjack.WordLangAddr.addr 5257 18446744073709551104#64))) := by
  unfold input11516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5261 (Flapjack.WordLangAddr.addr 5257 18446744073709551104#64)))).val
theorem output11516_def : output11516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 5261 (Flapjack.WordLangAddr.addr 5257 18446744073709551104#64))) := by
  unfold output11516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11516_skip : Flapjack.WordAlloc.isSkip output11516 = false := by
  rw [output11516_def]
  conv => lhs; cbv
  try rfl
theorem node11516_eq : Flapjack.WordAlloc.removeDeadStructural input11516 value5762 value1 value2 = (output11516, value5763, value1) := by
  rw [input11516_def, output11516_def]
  try (conv => lhs; cbv)
  try rfl

def value5764 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5257 5253)).val
theorem input11517_def : input11517 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5257 5253) := by
  unfold input11517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5257 5253)).val
theorem output11517_def : output11517 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 5257 5253) := by
  unfold output11517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11517_skip : Flapjack.WordAlloc.isSkip output11517 = false := by
  rw [output11517_def]
  conv => lhs; cbv
  try rfl
theorem node11517_eq : Flapjack.WordAlloc.removeDeadStructural input11517 value5763 value1 value2 = (output11517, value5764, value1) := by
  rw [input11517_def, output11517_def]
  try (conv => lhs; cbv)
  try rfl

def value5765 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input11518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5253 5249 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input11518_def : input11518 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5253 5249 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input11518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5253 5249 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output11518_def : output11518 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 5253 5249 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output11518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11518_skip : Flapjack.WordAlloc.isSkip output11518 = false := by
  rw [output11518_def]
  conv => lhs; cbv
  try rfl
theorem node11518_eq : Flapjack.WordAlloc.removeDeadStructural input11518 value5764 value1 value2 = (output11518, value5765, value1) := by
  rw [input11518_def, output11518_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input11519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5249 Flapjack.WordStore.heapLength)).val
theorem input11519_def : input11519 = (Flapjack.WordLangProgHOL.get 5249 Flapjack.WordStore.heapLength) := by
  unfold input11519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output11519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 5249 Flapjack.WordStore.heapLength)).val
theorem output11519_def : output11519 = (Flapjack.WordLangProgHOL.get 5249 Flapjack.WordStore.heapLength) := by
  unfold output11519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output11519_skip : Flapjack.WordAlloc.isSkip output11519 = false := by
  rw [output11519_def]
  conv => lhs; cbv
  try rfl
theorem node11519_eq : Flapjack.WordAlloc.removeDeadStructural input11519 value5765 value1 value2 = (output11519, value5, value1) := by
  rw [input11519_def, output11519_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node11519_eq
end InitECandidate.Proofs.DeadStages713
