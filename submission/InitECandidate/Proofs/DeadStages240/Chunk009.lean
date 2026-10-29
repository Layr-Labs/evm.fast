import InitECandidate.Proofs.DeadStages240.Chunk008
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages240
@[irreducible, cbv_opaque] def input2304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3189 7426889803764604373#64))).val
theorem input2304_def : input2304 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3189 7426889803764604373#64)) := by
  unfold input2304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2304_def : output2304 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2304_skip : Flapjack.WordAlloc.isSkip output2304 = true := by
  rw [output2304_def]
  conv => lhs; cbv
  try rfl
theorem node2304_eq : Flapjack.WordAlloc.removeDeadStructural input2304 value1156 value1 value2 = (output2304, value1156, value1) := by
  rw [input2304_def, output2304_def]
  try (conv => lhs; cbv)
  try rfl

def value1157 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3185 3181 (Flapjack.WordRegImm.imm 728#64))))).val
theorem input2305_def : input2305 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3185 3181 (Flapjack.WordRegImm.imm 728#64)))) := by
  unfold input2305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3185 3181 (Flapjack.WordRegImm.imm 728#64))))).val
theorem output2305_def : output2305 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3185 3181 (Flapjack.WordRegImm.imm 728#64)))) := by
  unfold output2305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2305_skip : Flapjack.WordAlloc.isSkip output2305 = false := by
  rw [output2305_def]
  conv => lhs; cbv
  try rfl
theorem node2305_eq : Flapjack.WordAlloc.removeDeadStructural input2305 value1156 value1 value2 = (output2305, value1157, value1) := by
  rw [input2305_def, output2305_def]
  try (conv => lhs; cbv)
  try rfl

def value1158 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3181 (Flapjack.WordLangAddr.addr 3177 18446744073709551520#64)))).val
theorem input2306_def : input2306 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3181 (Flapjack.WordLangAddr.addr 3177 18446744073709551520#64))) := by
  unfold input2306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3181 (Flapjack.WordLangAddr.addr 3177 18446744073709551520#64)))).val
theorem output2306_def : output2306 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3181 (Flapjack.WordLangAddr.addr 3177 18446744073709551520#64))) := by
  unfold output2306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2306_skip : Flapjack.WordAlloc.isSkip output2306 = false := by
  rw [output2306_def]
  conv => lhs; cbv
  try rfl
theorem node2306_eq : Flapjack.WordAlloc.removeDeadStructural input2306 value1157 value1 value2 = (output2306, value1158, value1) := by
  rw [input2306_def, output2306_def]
  try (conv => lhs; cbv)
  try rfl

def value1159 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3177 3173)).val
theorem input2307_def : input2307 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3177 3173) := by
  unfold input2307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3177 3173)).val
theorem output2307_def : output2307 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3177 3173) := by
  unfold output2307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2307_skip : Flapjack.WordAlloc.isSkip output2307 = false := by
  rw [output2307_def]
  conv => lhs; cbv
  try rfl
theorem node2307_eq : Flapjack.WordAlloc.removeDeadStructural input2307 value1158 value1 value2 = (output2307, value1159, value1) := by
  rw [input2307_def, output2307_def]
  try (conv => lhs; cbv)
  try rfl

def value1160 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3173 3169 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2308_def : input2308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3173 3169 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3173 3169 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2308_def : output2308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3173 3169 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2308_skip : Flapjack.WordAlloc.isSkip output2308 = false := by
  rw [output2308_def]
  conv => lhs; cbv
  try rfl
theorem node2308_eq : Flapjack.WordAlloc.removeDeadStructural input2308 value1159 value1 value2 = (output2308, value1160, value1) := by
  rw [input2308_def, output2308_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3169 Flapjack.WordStore.heapLength)).val
theorem input2309_def : input2309 = (Flapjack.WordLangProgHOL.get 3169 Flapjack.WordStore.heapLength) := by
  unfold input2309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3169 Flapjack.WordStore.heapLength)).val
theorem output2309_def : output2309 = (Flapjack.WordLangProgHOL.get 3169 Flapjack.WordStore.heapLength) := by
  unfold output2309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2309_skip : Flapjack.WordAlloc.isSkip output2309 = false := by
  rw [output2309_def]
  conv => lhs; cbv
  try rfl
theorem node2309_eq : Flapjack.WordAlloc.removeDeadStructural input2309 value1160 value1 value2 = (output2309, value5, value1) := by
  rw [input2309_def, output2309_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2309 input2308)).val
theorem input2310_def : input2310 = (.seq input2309 input2308) := by
  unfold input2310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2309 output2308)).val
theorem output2310_def : output2310 = (.seq output2309 output2308) := by
  unfold output2310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2310_skip : Flapjack.WordAlloc.isSkip output2310 = false := by
  rw [output2310_def]
  conv => lhs; cbv
  try rfl
theorem node2310_eq : Flapjack.WordAlloc.removeDeadStructural input2310 value1159 value1 value2 = (output2310, value5, value1) := by
  rw [input2310_def, output2310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2308_eq]
  try dsimp only
  rw [node2309_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2310 input2307)).val
theorem input2311_def : input2311 = (.seq input2310 input2307) := by
  unfold input2311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2310 output2307)).val
theorem output2311_def : output2311 = (.seq output2310 output2307) := by
  unfold output2311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2311_skip : Flapjack.WordAlloc.isSkip output2311 = false := by
  rw [output2311_def]
  conv => lhs; cbv
  try rfl
theorem node2311_eq : Flapjack.WordAlloc.removeDeadStructural input2311 value1158 value1 value2 = (output2311, value5, value1) := by
  rw [input2311_def, output2311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2307_eq]
  try dsimp only
  rw [node2310_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2311 input2306)).val
theorem input2312_def : input2312 = (.seq input2311 input2306) := by
  unfold input2312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2311 output2306)).val
theorem output2312_def : output2312 = (.seq output2311 output2306) := by
  unfold output2312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2312_skip : Flapjack.WordAlloc.isSkip output2312 = false := by
  rw [output2312_def]
  conv => lhs; cbv
  try rfl
theorem node2312_eq : Flapjack.WordAlloc.removeDeadStructural input2312 value1157 value1 value2 = (output2312, value5, value1) := by
  rw [input2312_def, output2312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2306_eq]
  try dsimp only
  rw [node2311_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2312 input2305)).val
theorem input2313_def : input2313 = (.seq input2312 input2305) := by
  unfold input2313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2312 output2305)).val
theorem output2313_def : output2313 = (.seq output2312 output2305) := by
  unfold output2313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2313_skip : Flapjack.WordAlloc.isSkip output2313 = false := by
  rw [output2313_def]
  conv => lhs; cbv
  try rfl
theorem node2313_eq : Flapjack.WordAlloc.removeDeadStructural input2313 value1156 value1 value2 = (output2313, value5, value1) := by
  rw [input2313_def, output2313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2305_eq]
  try dsimp only
  rw [node2312_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1161 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3161 (Flapjack.WordLangAddr.addr 3165 0#64)))).val
theorem input2314_def : input2314 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3161 (Flapjack.WordLangAddr.addr 3165 0#64))) := by
  unfold input2314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3161 (Flapjack.WordLangAddr.addr 3165 0#64)))).val
theorem output2314_def : output2314 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3161 (Flapjack.WordLangAddr.addr 3165 0#64))) := by
  unfold output2314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2314_skip : Flapjack.WordAlloc.isSkip output2314 = false := by
  rw [output2314_def]
  conv => lhs; cbv
  try rfl
theorem node2314_eq : Flapjack.WordAlloc.removeDeadStructural input2314 value5 value1 value2 = (output2314, value1161, value1) := by
  rw [input2314_def, output2314_def]
  try (conv => lhs; cbv)
  try rfl

def value1162 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3165, 3153)])).val
theorem input2315_def : input2315 = (Flapjack.WordLangProgHOL.move 0 [(3165, 3153)]) := by
  unfold input2315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3165, 3153)])).val
theorem output2315_def : output2315 = (Flapjack.WordLangProgHOL.move 0 [(3165, 3153)]) := by
  unfold output2315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2315_skip : Flapjack.WordAlloc.isSkip output2315 = false := by
  rw [output2315_def]
  conv => lhs; cbv
  try rfl
theorem node2315_eq : Flapjack.WordAlloc.removeDeadStructural input2315 value1161 value1 value2 = (output2315, value1162, value1) := by
  rw [input2315_def, output2315_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2315 input2314)).val
theorem input2316_def : input2316 = (.seq input2315 input2314) := by
  unfold input2316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2315 output2314)).val
theorem output2316_def : output2316 = (.seq output2315 output2314) := by
  unfold output2316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2316_skip : Flapjack.WordAlloc.isSkip output2316 = false := by
  rw [output2316_def]
  conv => lhs; cbv
  try rfl
theorem node2316_eq : Flapjack.WordAlloc.removeDeadStructural input2316 value5 value1 value2 = (output2316, value1162, value1) := by
  rw [input2316_def, output2316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2314_eq]
  try dsimp only
  rw [node2315_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1163 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3161 13808291357847346201#64))).val
theorem input2317_def : input2317 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3161 13808291357847346201#64)) := by
  unfold input2317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3161 13808291357847346201#64))).val
theorem output2317_def : output2317 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3161 13808291357847346201#64)) := by
  unfold output2317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2317_skip : Flapjack.WordAlloc.isSkip output2317 = false := by
  rw [output2317_def]
  conv => lhs; cbv
  try rfl
theorem node2317_eq : Flapjack.WordAlloc.removeDeadStructural input2317 value1162 value1 value2 = (output2317, value1163, value1) := by
  rw [input2317_def, output2317_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3157 13808291357847346201#64))).val
theorem input2318_def : input2318 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3157 13808291357847346201#64)) := by
  unfold input2318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2318_def : output2318 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2318_skip : Flapjack.WordAlloc.isSkip output2318 = true := by
  rw [output2318_def]
  conv => lhs; cbv
  try rfl
theorem node2318_eq : Flapjack.WordAlloc.removeDeadStructural input2318 value1163 value1 value2 = (output2318, value1163, value1) := by
  rw [input2318_def, output2318_def]
  try (conv => lhs; cbv)
  try rfl

def value1164 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3153 3149 (Flapjack.WordRegImm.imm 720#64))))).val
theorem input2319_def : input2319 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3153 3149 (Flapjack.WordRegImm.imm 720#64)))) := by
  unfold input2319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3153 3149 (Flapjack.WordRegImm.imm 720#64))))).val
theorem output2319_def : output2319 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3153 3149 (Flapjack.WordRegImm.imm 720#64)))) := by
  unfold output2319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2319_skip : Flapjack.WordAlloc.isSkip output2319 = false := by
  rw [output2319_def]
  conv => lhs; cbv
  try rfl
theorem node2319_eq : Flapjack.WordAlloc.removeDeadStructural input2319 value1163 value1 value2 = (output2319, value1164, value1) := by
  rw [input2319_def, output2319_def]
  try (conv => lhs; cbv)
  try rfl

def value1165 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3149 (Flapjack.WordLangAddr.addr 3145 18446744073709551520#64)))).val
theorem input2320_def : input2320 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3149 (Flapjack.WordLangAddr.addr 3145 18446744073709551520#64))) := by
  unfold input2320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3149 (Flapjack.WordLangAddr.addr 3145 18446744073709551520#64)))).val
theorem output2320_def : output2320 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3149 (Flapjack.WordLangAddr.addr 3145 18446744073709551520#64))) := by
  unfold output2320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2320_skip : Flapjack.WordAlloc.isSkip output2320 = false := by
  rw [output2320_def]
  conv => lhs; cbv
  try rfl
theorem node2320_eq : Flapjack.WordAlloc.removeDeadStructural input2320 value1164 value1 value2 = (output2320, value1165, value1) := by
  rw [input2320_def, output2320_def]
  try (conv => lhs; cbv)
  try rfl

def value1166 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3145 3141)).val
theorem input2321_def : input2321 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3145 3141) := by
  unfold input2321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3145 3141)).val
theorem output2321_def : output2321 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3145 3141) := by
  unfold output2321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2321_skip : Flapjack.WordAlloc.isSkip output2321 = false := by
  rw [output2321_def]
  conv => lhs; cbv
  try rfl
theorem node2321_eq : Flapjack.WordAlloc.removeDeadStructural input2321 value1165 value1 value2 = (output2321, value1166, value1) := by
  rw [input2321_def, output2321_def]
  try (conv => lhs; cbv)
  try rfl

def value1167 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3141 3137 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2322_def : input2322 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3141 3137 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3141 3137 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2322_def : output2322 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3141 3137 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2322_skip : Flapjack.WordAlloc.isSkip output2322 = false := by
  rw [output2322_def]
  conv => lhs; cbv
  try rfl
theorem node2322_eq : Flapjack.WordAlloc.removeDeadStructural input2322 value1166 value1 value2 = (output2322, value1167, value1) := by
  rw [input2322_def, output2322_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3137 Flapjack.WordStore.heapLength)).val
theorem input2323_def : input2323 = (Flapjack.WordLangProgHOL.get 3137 Flapjack.WordStore.heapLength) := by
  unfold input2323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3137 Flapjack.WordStore.heapLength)).val
theorem output2323_def : output2323 = (Flapjack.WordLangProgHOL.get 3137 Flapjack.WordStore.heapLength) := by
  unfold output2323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2323_skip : Flapjack.WordAlloc.isSkip output2323 = false := by
  rw [output2323_def]
  conv => lhs; cbv
  try rfl
theorem node2323_eq : Flapjack.WordAlloc.removeDeadStructural input2323 value1167 value1 value2 = (output2323, value5, value1) := by
  rw [input2323_def, output2323_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2323 input2322)).val
theorem input2324_def : input2324 = (.seq input2323 input2322) := by
  unfold input2324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2323 output2322)).val
theorem output2324_def : output2324 = (.seq output2323 output2322) := by
  unfold output2324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2324_skip : Flapjack.WordAlloc.isSkip output2324 = false := by
  rw [output2324_def]
  conv => lhs; cbv
  try rfl
theorem node2324_eq : Flapjack.WordAlloc.removeDeadStructural input2324 value1166 value1 value2 = (output2324, value5, value1) := by
  rw [input2324_def, output2324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2322_eq]
  try dsimp only
  rw [node2323_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2324 input2321)).val
theorem input2325_def : input2325 = (.seq input2324 input2321) := by
  unfold input2325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2324 output2321)).val
theorem output2325_def : output2325 = (.seq output2324 output2321) := by
  unfold output2325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2325_skip : Flapjack.WordAlloc.isSkip output2325 = false := by
  rw [output2325_def]
  conv => lhs; cbv
  try rfl
theorem node2325_eq : Flapjack.WordAlloc.removeDeadStructural input2325 value1165 value1 value2 = (output2325, value5, value1) := by
  rw [input2325_def, output2325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2321_eq]
  try dsimp only
  rw [node2324_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2325 input2320)).val
theorem input2326_def : input2326 = (.seq input2325 input2320) := by
  unfold input2326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2325 output2320)).val
theorem output2326_def : output2326 = (.seq output2325 output2320) := by
  unfold output2326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2326_skip : Flapjack.WordAlloc.isSkip output2326 = false := by
  rw [output2326_def]
  conv => lhs; cbv
  try rfl
theorem node2326_eq : Flapjack.WordAlloc.removeDeadStructural input2326 value1164 value1 value2 = (output2326, value5, value1) := by
  rw [input2326_def, output2326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2320_eq]
  try dsimp only
  rw [node2325_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2326 input2319)).val
theorem input2327_def : input2327 = (.seq input2326 input2319) := by
  unfold input2327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2326 output2319)).val
theorem output2327_def : output2327 = (.seq output2326 output2319) := by
  unfold output2327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2327_skip : Flapjack.WordAlloc.isSkip output2327 = false := by
  rw [output2327_def]
  conv => lhs; cbv
  try rfl
theorem node2327_eq : Flapjack.WordAlloc.removeDeadStructural input2327 value1163 value1 value2 = (output2327, value5, value1) := by
  rw [input2327_def, output2327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2319_eq]
  try dsimp only
  rw [node2326_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1168 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3129 (Flapjack.WordLangAddr.addr 3133 0#64)))).val
theorem input2328_def : input2328 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3129 (Flapjack.WordLangAddr.addr 3133 0#64))) := by
  unfold input2328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3129 (Flapjack.WordLangAddr.addr 3133 0#64)))).val
theorem output2328_def : output2328 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3129 (Flapjack.WordLangAddr.addr 3133 0#64))) := by
  unfold output2328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2328_skip : Flapjack.WordAlloc.isSkip output2328 = false := by
  rw [output2328_def]
  conv => lhs; cbv
  try rfl
theorem node2328_eq : Flapjack.WordAlloc.removeDeadStructural input2328 value5 value1 value2 = (output2328, value1168, value1) := by
  rw [input2328_def, output2328_def]
  try (conv => lhs; cbv)
  try rfl

def value1169 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3133, 3121)])).val
theorem input2329_def : input2329 = (Flapjack.WordLangProgHOL.move 0 [(3133, 3121)]) := by
  unfold input2329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3133, 3121)])).val
theorem output2329_def : output2329 = (Flapjack.WordLangProgHOL.move 0 [(3133, 3121)]) := by
  unfold output2329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2329_skip : Flapjack.WordAlloc.isSkip output2329 = false := by
  rw [output2329_def]
  conv => lhs; cbv
  try rfl
theorem node2329_eq : Flapjack.WordAlloc.removeDeadStructural input2329 value1168 value1 value2 = (output2329, value1169, value1) := by
  rw [input2329_def, output2329_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2329 input2328)).val
theorem input2330_def : input2330 = (.seq input2329 input2328) := by
  unfold input2330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2329 output2328)).val
theorem output2330_def : output2330 = (.seq output2329 output2328) := by
  unfold output2330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2330_skip : Flapjack.WordAlloc.isSkip output2330 = false := by
  rw [output2330_def]
  conv => lhs; cbv
  try rfl
theorem node2330_eq : Flapjack.WordAlloc.removeDeadStructural input2330 value5 value1 value2 = (output2330, value1169, value1) := by
  rw [input2330_def, output2330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2328_eq]
  try dsimp only
  rw [node2329_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1170 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3129 14546998761574957247#64))).val
theorem input2331_def : input2331 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3129 14546998761574957247#64)) := by
  unfold input2331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3129 14546998761574957247#64))).val
theorem output2331_def : output2331 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3129 14546998761574957247#64)) := by
  unfold output2331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2331_skip : Flapjack.WordAlloc.isSkip output2331 = false := by
  rw [output2331_def]
  conv => lhs; cbv
  try rfl
theorem node2331_eq : Flapjack.WordAlloc.removeDeadStructural input2331 value1169 value1 value2 = (output2331, value1170, value1) := by
  rw [input2331_def, output2331_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3125 14546998761574957247#64))).val
theorem input2332_def : input2332 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3125 14546998761574957247#64)) := by
  unfold input2332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2332_def : output2332 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2332_skip : Flapjack.WordAlloc.isSkip output2332 = true := by
  rw [output2332_def]
  conv => lhs; cbv
  try rfl
theorem node2332_eq : Flapjack.WordAlloc.removeDeadStructural input2332 value1170 value1 value2 = (output2332, value1170, value1) := by
  rw [input2332_def, output2332_def]
  try (conv => lhs; cbv)
  try rfl

def value1171 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3121 3117 (Flapjack.WordRegImm.imm 712#64))))).val
theorem input2333_def : input2333 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3121 3117 (Flapjack.WordRegImm.imm 712#64)))) := by
  unfold input2333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3121 3117 (Flapjack.WordRegImm.imm 712#64))))).val
theorem output2333_def : output2333 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3121 3117 (Flapjack.WordRegImm.imm 712#64)))) := by
  unfold output2333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2333_skip : Flapjack.WordAlloc.isSkip output2333 = false := by
  rw [output2333_def]
  conv => lhs; cbv
  try rfl
theorem node2333_eq : Flapjack.WordAlloc.removeDeadStructural input2333 value1170 value1 value2 = (output2333, value1171, value1) := by
  rw [input2333_def, output2333_def]
  try (conv => lhs; cbv)
  try rfl

def value1172 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3117 (Flapjack.WordLangAddr.addr 3113 18446744073709551520#64)))).val
theorem input2334_def : input2334 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3117 (Flapjack.WordLangAddr.addr 3113 18446744073709551520#64))) := by
  unfold input2334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3117 (Flapjack.WordLangAddr.addr 3113 18446744073709551520#64)))).val
theorem output2334_def : output2334 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3117 (Flapjack.WordLangAddr.addr 3113 18446744073709551520#64))) := by
  unfold output2334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2334_skip : Flapjack.WordAlloc.isSkip output2334 = false := by
  rw [output2334_def]
  conv => lhs; cbv
  try rfl
theorem node2334_eq : Flapjack.WordAlloc.removeDeadStructural input2334 value1171 value1 value2 = (output2334, value1172, value1) := by
  rw [input2334_def, output2334_def]
  try (conv => lhs; cbv)
  try rfl

def value1173 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3113 3109)).val
theorem input2335_def : input2335 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3113 3109) := by
  unfold input2335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3113 3109)).val
theorem output2335_def : output2335 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3113 3109) := by
  unfold output2335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2335_skip : Flapjack.WordAlloc.isSkip output2335 = false := by
  rw [output2335_def]
  conv => lhs; cbv
  try rfl
theorem node2335_eq : Flapjack.WordAlloc.removeDeadStructural input2335 value1172 value1 value2 = (output2335, value1173, value1) := by
  rw [input2335_def, output2335_def]
  try (conv => lhs; cbv)
  try rfl

def value1174 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3109 3105 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2336_def : input2336 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3109 3105 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3109 3105 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2336_def : output2336 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3109 3105 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2336_skip : Flapjack.WordAlloc.isSkip output2336 = false := by
  rw [output2336_def]
  conv => lhs; cbv
  try rfl
theorem node2336_eq : Flapjack.WordAlloc.removeDeadStructural input2336 value1173 value1 value2 = (output2336, value1174, value1) := by
  rw [input2336_def, output2336_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3105 Flapjack.WordStore.heapLength)).val
theorem input2337_def : input2337 = (Flapjack.WordLangProgHOL.get 3105 Flapjack.WordStore.heapLength) := by
  unfold input2337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3105 Flapjack.WordStore.heapLength)).val
theorem output2337_def : output2337 = (Flapjack.WordLangProgHOL.get 3105 Flapjack.WordStore.heapLength) := by
  unfold output2337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2337_skip : Flapjack.WordAlloc.isSkip output2337 = false := by
  rw [output2337_def]
  conv => lhs; cbv
  try rfl
theorem node2337_eq : Flapjack.WordAlloc.removeDeadStructural input2337 value1174 value1 value2 = (output2337, value5, value1) := by
  rw [input2337_def, output2337_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2337 input2336)).val
theorem input2338_def : input2338 = (.seq input2337 input2336) := by
  unfold input2338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2337 output2336)).val
theorem output2338_def : output2338 = (.seq output2337 output2336) := by
  unfold output2338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2338_skip : Flapjack.WordAlloc.isSkip output2338 = false := by
  rw [output2338_def]
  conv => lhs; cbv
  try rfl
theorem node2338_eq : Flapjack.WordAlloc.removeDeadStructural input2338 value1173 value1 value2 = (output2338, value5, value1) := by
  rw [input2338_def, output2338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2336_eq]
  try dsimp only
  rw [node2337_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2338 input2335)).val
theorem input2339_def : input2339 = (.seq input2338 input2335) := by
  unfold input2339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2338 output2335)).val
theorem output2339_def : output2339 = (.seq output2338 output2335) := by
  unfold output2339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2339_skip : Flapjack.WordAlloc.isSkip output2339 = false := by
  rw [output2339_def]
  conv => lhs; cbv
  try rfl
theorem node2339_eq : Flapjack.WordAlloc.removeDeadStructural input2339 value1172 value1 value2 = (output2339, value5, value1) := by
  rw [input2339_def, output2339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2335_eq]
  try dsimp only
  rw [node2338_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2339 input2334)).val
theorem input2340_def : input2340 = (.seq input2339 input2334) := by
  unfold input2340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2339 output2334)).val
theorem output2340_def : output2340 = (.seq output2339 output2334) := by
  unfold output2340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2340_skip : Flapjack.WordAlloc.isSkip output2340 = false := by
  rw [output2340_def]
  conv => lhs; cbv
  try rfl
theorem node2340_eq : Flapjack.WordAlloc.removeDeadStructural input2340 value1171 value1 value2 = (output2340, value5, value1) := by
  rw [input2340_def, output2340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2334_eq]
  try dsimp only
  rw [node2339_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2340 input2333)).val
theorem input2341_def : input2341 = (.seq input2340 input2333) := by
  unfold input2341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2340 output2333)).val
theorem output2341_def : output2341 = (.seq output2340 output2333) := by
  unfold output2341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2341_skip : Flapjack.WordAlloc.isSkip output2341 = false := by
  rw [output2341_def]
  conv => lhs; cbv
  try rfl
theorem node2341_eq : Flapjack.WordAlloc.removeDeadStructural input2341 value1170 value1 value2 = (output2341, value5, value1) := by
  rw [input2341_def, output2341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2333_eq]
  try dsimp only
  rw [node2340_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1175 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3097 (Flapjack.WordLangAddr.addr 3101 0#64)))).val
theorem input2342_def : input2342 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3097 (Flapjack.WordLangAddr.addr 3101 0#64))) := by
  unfold input2342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3097 (Flapjack.WordLangAddr.addr 3101 0#64)))).val
theorem output2342_def : output2342 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3097 (Flapjack.WordLangAddr.addr 3101 0#64))) := by
  unfold output2342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2342_skip : Flapjack.WordAlloc.isSkip output2342 = false := by
  rw [output2342_def]
  conv => lhs; cbv
  try rfl
theorem node2342_eq : Flapjack.WordAlloc.removeDeadStructural input2342 value5 value1 value2 = (output2342, value1175, value1) := by
  rw [input2342_def, output2342_def]
  try (conv => lhs; cbv)
  try rfl

def value1176 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3101, 3089)])).val
theorem input2343_def : input2343 = (Flapjack.WordLangProgHOL.move 0 [(3101, 3089)]) := by
  unfold input2343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3101, 3089)])).val
theorem output2343_def : output2343 = (Flapjack.WordLangProgHOL.move 0 [(3101, 3089)]) := by
  unfold output2343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2343_skip : Flapjack.WordAlloc.isSkip output2343 = false := by
  rw [output2343_def]
  conv => lhs; cbv
  try rfl
theorem node2343_eq : Flapjack.WordAlloc.removeDeadStructural input2343 value1175 value1 value2 = (output2343, value1176, value1) := by
  rw [input2343_def, output2343_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2343 input2342)).val
theorem input2344_def : input2344 = (.seq input2343 input2342) := by
  unfold input2344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2343 output2342)).val
theorem output2344_def : output2344 = (.seq output2343 output2342) := by
  unfold output2344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2344_skip : Flapjack.WordAlloc.isSkip output2344 = false := by
  rw [output2344_def]
  conv => lhs; cbv
  try rfl
theorem node2344_eq : Flapjack.WordAlloc.removeDeadStructural input2344 value5 value1 value2 = (output2344, value1176, value1) := by
  rw [input2344_def, output2344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2342_eq]
  try dsimp only
  rw [node2343_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1177 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3097 8005893631376602110#64))).val
theorem input2345_def : input2345 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3097 8005893631376602110#64)) := by
  unfold input2345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3097 8005893631376602110#64))).val
theorem output2345_def : output2345 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3097 8005893631376602110#64)) := by
  unfold output2345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2345_skip : Flapjack.WordAlloc.isSkip output2345 = false := by
  rw [output2345_def]
  conv => lhs; cbv
  try rfl
theorem node2345_eq : Flapjack.WordAlloc.removeDeadStructural input2345 value1176 value1 value2 = (output2345, value1177, value1) := by
  rw [input2345_def, output2345_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3093 8005893631376602110#64))).val
theorem input2346_def : input2346 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3093 8005893631376602110#64)) := by
  unfold input2346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2346_def : output2346 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2346_skip : Flapjack.WordAlloc.isSkip output2346 = true := by
  rw [output2346_def]
  conv => lhs; cbv
  try rfl
theorem node2346_eq : Flapjack.WordAlloc.removeDeadStructural input2346 value1177 value1 value2 = (output2346, value1177, value1) := by
  rw [input2346_def, output2346_def]
  try (conv => lhs; cbv)
  try rfl

def value1178 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3089 3085 (Flapjack.WordRegImm.imm 704#64))))).val
theorem input2347_def : input2347 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3089 3085 (Flapjack.WordRegImm.imm 704#64)))) := by
  unfold input2347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3089 3085 (Flapjack.WordRegImm.imm 704#64))))).val
theorem output2347_def : output2347 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3089 3085 (Flapjack.WordRegImm.imm 704#64)))) := by
  unfold output2347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2347_skip : Flapjack.WordAlloc.isSkip output2347 = false := by
  rw [output2347_def]
  conv => lhs; cbv
  try rfl
theorem node2347_eq : Flapjack.WordAlloc.removeDeadStructural input2347 value1177 value1 value2 = (output2347, value1178, value1) := by
  rw [input2347_def, output2347_def]
  try (conv => lhs; cbv)
  try rfl

def value1179 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3085 (Flapjack.WordLangAddr.addr 3081 18446744073709551520#64)))).val
theorem input2348_def : input2348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3085 (Flapjack.WordLangAddr.addr 3081 18446744073709551520#64))) := by
  unfold input2348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3085 (Flapjack.WordLangAddr.addr 3081 18446744073709551520#64)))).val
theorem output2348_def : output2348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3085 (Flapjack.WordLangAddr.addr 3081 18446744073709551520#64))) := by
  unfold output2348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2348_skip : Flapjack.WordAlloc.isSkip output2348 = false := by
  rw [output2348_def]
  conv => lhs; cbv
  try rfl
theorem node2348_eq : Flapjack.WordAlloc.removeDeadStructural input2348 value1178 value1 value2 = (output2348, value1179, value1) := by
  rw [input2348_def, output2348_def]
  try (conv => lhs; cbv)
  try rfl

def value1180 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3081 3077)).val
theorem input2349_def : input2349 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3081 3077) := by
  unfold input2349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3081 3077)).val
theorem output2349_def : output2349 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3081 3077) := by
  unfold output2349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2349_skip : Flapjack.WordAlloc.isSkip output2349 = false := by
  rw [output2349_def]
  conv => lhs; cbv
  try rfl
theorem node2349_eq : Flapjack.WordAlloc.removeDeadStructural input2349 value1179 value1 value2 = (output2349, value1180, value1) := by
  rw [input2349_def, output2349_def]
  try (conv => lhs; cbv)
  try rfl

def value1181 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3077 3073 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2350_def : input2350 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3077 3073 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3077 3073 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2350_def : output2350 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3077 3073 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2350_skip : Flapjack.WordAlloc.isSkip output2350 = false := by
  rw [output2350_def]
  conv => lhs; cbv
  try rfl
theorem node2350_eq : Flapjack.WordAlloc.removeDeadStructural input2350 value1180 value1 value2 = (output2350, value1181, value1) := by
  rw [input2350_def, output2350_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3073 Flapjack.WordStore.heapLength)).val
theorem input2351_def : input2351 = (Flapjack.WordLangProgHOL.get 3073 Flapjack.WordStore.heapLength) := by
  unfold input2351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3073 Flapjack.WordStore.heapLength)).val
theorem output2351_def : output2351 = (Flapjack.WordLangProgHOL.get 3073 Flapjack.WordStore.heapLength) := by
  unfold output2351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2351_skip : Flapjack.WordAlloc.isSkip output2351 = false := by
  rw [output2351_def]
  conv => lhs; cbv
  try rfl
theorem node2351_eq : Flapjack.WordAlloc.removeDeadStructural input2351 value1181 value1 value2 = (output2351, value5, value1) := by
  rw [input2351_def, output2351_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2351 input2350)).val
theorem input2352_def : input2352 = (.seq input2351 input2350) := by
  unfold input2352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2351 output2350)).val
theorem output2352_def : output2352 = (.seq output2351 output2350) := by
  unfold output2352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2352_skip : Flapjack.WordAlloc.isSkip output2352 = false := by
  rw [output2352_def]
  conv => lhs; cbv
  try rfl
theorem node2352_eq : Flapjack.WordAlloc.removeDeadStructural input2352 value1180 value1 value2 = (output2352, value5, value1) := by
  rw [input2352_def, output2352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2350_eq]
  try dsimp only
  rw [node2351_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2352 input2349)).val
theorem input2353_def : input2353 = (.seq input2352 input2349) := by
  unfold input2353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2352 output2349)).val
theorem output2353_def : output2353 = (.seq output2352 output2349) := by
  unfold output2353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2353_skip : Flapjack.WordAlloc.isSkip output2353 = false := by
  rw [output2353_def]
  conv => lhs; cbv
  try rfl
theorem node2353_eq : Flapjack.WordAlloc.removeDeadStructural input2353 value1179 value1 value2 = (output2353, value5, value1) := by
  rw [input2353_def, output2353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2349_eq]
  try dsimp only
  rw [node2352_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2353 input2348)).val
theorem input2354_def : input2354 = (.seq input2353 input2348) := by
  unfold input2354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2353 output2348)).val
theorem output2354_def : output2354 = (.seq output2353 output2348) := by
  unfold output2354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2354_skip : Flapjack.WordAlloc.isSkip output2354 = false := by
  rw [output2354_def]
  conv => lhs; cbv
  try rfl
theorem node2354_eq : Flapjack.WordAlloc.removeDeadStructural input2354 value1178 value1 value2 = (output2354, value5, value1) := by
  rw [input2354_def, output2354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2348_eq]
  try dsimp only
  rw [node2353_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2354 input2347)).val
theorem input2355_def : input2355 = (.seq input2354 input2347) := by
  unfold input2355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2354 output2347)).val
theorem output2355_def : output2355 = (.seq output2354 output2347) := by
  unfold output2355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2355_skip : Flapjack.WordAlloc.isSkip output2355 = false := by
  rw [output2355_def]
  conv => lhs; cbv
  try rfl
theorem node2355_eq : Flapjack.WordAlloc.removeDeadStructural input2355 value1177 value1 value2 = (output2355, value5, value1) := by
  rw [input2355_def, output2355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2347_eq]
  try dsimp only
  rw [node2354_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1182 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3065 (Flapjack.WordLangAddr.addr 3069 0#64)))).val
theorem input2356_def : input2356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3065 (Flapjack.WordLangAddr.addr 3069 0#64))) := by
  unfold input2356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3065 (Flapjack.WordLangAddr.addr 3069 0#64)))).val
theorem output2356_def : output2356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3065 (Flapjack.WordLangAddr.addr 3069 0#64))) := by
  unfold output2356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2356_skip : Flapjack.WordAlloc.isSkip output2356 = false := by
  rw [output2356_def]
  conv => lhs; cbv
  try rfl
theorem node2356_eq : Flapjack.WordAlloc.removeDeadStructural input2356 value5 value1 value2 = (output2356, value1182, value1) := by
  rw [input2356_def, output2356_def]
  try (conv => lhs; cbv)
  try rfl

def value1183 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3069, 3057)])).val
theorem input2357_def : input2357 = (Flapjack.WordLangProgHOL.move 0 [(3069, 3057)]) := by
  unfold input2357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3069, 3057)])).val
theorem output2357_def : output2357 = (Flapjack.WordLangProgHOL.move 0 [(3069, 3057)]) := by
  unfold output2357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2357_skip : Flapjack.WordAlloc.isSkip output2357 = false := by
  rw [output2357_def]
  conv => lhs; cbv
  try rfl
theorem node2357_eq : Flapjack.WordAlloc.removeDeadStructural input2357 value1182 value1 value2 = (output2357, value1183, value1) := by
  rw [input2357_def, output2357_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2357 input2356)).val
theorem input2358_def : input2358 = (.seq input2357 input2356) := by
  unfold input2358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2357 output2356)).val
theorem output2358_def : output2358 = (.seq output2357 output2356) := by
  unfold output2358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2358_skip : Flapjack.WordAlloc.isSkip output2358 = false := by
  rw [output2358_def]
  conv => lhs; cbv
  try rfl
theorem node2358_eq : Flapjack.WordAlloc.removeDeadStructural input2358 value5 value1 value2 = (output2358, value1183, value1) := by
  rw [input2358_def, output2358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2356_eq]
  try dsimp only
  rw [node2357_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1184 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3065 11312800367795123152#64))).val
theorem input2359_def : input2359 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3065 11312800367795123152#64)) := by
  unfold input2359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3065 11312800367795123152#64))).val
theorem output2359_def : output2359 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3065 11312800367795123152#64)) := by
  unfold output2359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2359_skip : Flapjack.WordAlloc.isSkip output2359 = false := by
  rw [output2359_def]
  conv => lhs; cbv
  try rfl
theorem node2359_eq : Flapjack.WordAlloc.removeDeadStructural input2359 value1183 value1 value2 = (output2359, value1184, value1) := by
  rw [input2359_def, output2359_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3061 11312800367795123152#64))).val
theorem input2360_def : input2360 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3061 11312800367795123152#64)) := by
  unfold input2360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2360_def : output2360 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2360_skip : Flapjack.WordAlloc.isSkip output2360 = true := by
  rw [output2360_def]
  conv => lhs; cbv
  try rfl
theorem node2360_eq : Flapjack.WordAlloc.removeDeadStructural input2360 value1184 value1 value2 = (output2360, value1184, value1) := by
  rw [input2360_def, output2360_def]
  try (conv => lhs; cbv)
  try rfl

def value1185 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3057 3053 (Flapjack.WordRegImm.imm 696#64))))).val
theorem input2361_def : input2361 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3057 3053 (Flapjack.WordRegImm.imm 696#64)))) := by
  unfold input2361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3057 3053 (Flapjack.WordRegImm.imm 696#64))))).val
theorem output2361_def : output2361 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3057 3053 (Flapjack.WordRegImm.imm 696#64)))) := by
  unfold output2361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2361_skip : Flapjack.WordAlloc.isSkip output2361 = false := by
  rw [output2361_def]
  conv => lhs; cbv
  try rfl
theorem node2361_eq : Flapjack.WordAlloc.removeDeadStructural input2361 value1184 value1 value2 = (output2361, value1185, value1) := by
  rw [input2361_def, output2361_def]
  try (conv => lhs; cbv)
  try rfl

def value1186 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3053 (Flapjack.WordLangAddr.addr 3049 18446744073709551520#64)))).val
theorem input2362_def : input2362 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3053 (Flapjack.WordLangAddr.addr 3049 18446744073709551520#64))) := by
  unfold input2362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3053 (Flapjack.WordLangAddr.addr 3049 18446744073709551520#64)))).val
theorem output2362_def : output2362 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3053 (Flapjack.WordLangAddr.addr 3049 18446744073709551520#64))) := by
  unfold output2362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2362_skip : Flapjack.WordAlloc.isSkip output2362 = false := by
  rw [output2362_def]
  conv => lhs; cbv
  try rfl
theorem node2362_eq : Flapjack.WordAlloc.removeDeadStructural input2362 value1185 value1 value2 = (output2362, value1186, value1) := by
  rw [input2362_def, output2362_def]
  try (conv => lhs; cbv)
  try rfl

def value1187 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3049 3045)).val
theorem input2363_def : input2363 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3049 3045) := by
  unfold input2363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3049 3045)).val
theorem output2363_def : output2363 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3049 3045) := by
  unfold output2363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2363_skip : Flapjack.WordAlloc.isSkip output2363 = false := by
  rw [output2363_def]
  conv => lhs; cbv
  try rfl
theorem node2363_eq : Flapjack.WordAlloc.removeDeadStructural input2363 value1186 value1 value2 = (output2363, value1187, value1) := by
  rw [input2363_def, output2363_def]
  try (conv => lhs; cbv)
  try rfl

def value1188 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3045 3041 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2364_def : input2364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3045 3041 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3045 3041 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2364_def : output2364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3045 3041 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2364_skip : Flapjack.WordAlloc.isSkip output2364 = false := by
  rw [output2364_def]
  conv => lhs; cbv
  try rfl
theorem node2364_eq : Flapjack.WordAlloc.removeDeadStructural input2364 value1187 value1 value2 = (output2364, value1188, value1) := by
  rw [input2364_def, output2364_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3041 Flapjack.WordStore.heapLength)).val
theorem input2365_def : input2365 = (Flapjack.WordLangProgHOL.get 3041 Flapjack.WordStore.heapLength) := by
  unfold input2365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3041 Flapjack.WordStore.heapLength)).val
theorem output2365_def : output2365 = (Flapjack.WordLangProgHOL.get 3041 Flapjack.WordStore.heapLength) := by
  unfold output2365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2365_skip : Flapjack.WordAlloc.isSkip output2365 = false := by
  rw [output2365_def]
  conv => lhs; cbv
  try rfl
theorem node2365_eq : Flapjack.WordAlloc.removeDeadStructural input2365 value1188 value1 value2 = (output2365, value5, value1) := by
  rw [input2365_def, output2365_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2365 input2364)).val
theorem input2366_def : input2366 = (.seq input2365 input2364) := by
  unfold input2366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2365 output2364)).val
theorem output2366_def : output2366 = (.seq output2365 output2364) := by
  unfold output2366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2366_skip : Flapjack.WordAlloc.isSkip output2366 = false := by
  rw [output2366_def]
  conv => lhs; cbv
  try rfl
theorem node2366_eq : Flapjack.WordAlloc.removeDeadStructural input2366 value1187 value1 value2 = (output2366, value5, value1) := by
  rw [input2366_def, output2366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2364_eq]
  try dsimp only
  rw [node2365_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2366 input2363)).val
theorem input2367_def : input2367 = (.seq input2366 input2363) := by
  unfold input2367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2366 output2363)).val
theorem output2367_def : output2367 = (.seq output2366 output2363) := by
  unfold output2367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2367_skip : Flapjack.WordAlloc.isSkip output2367 = false := by
  rw [output2367_def]
  conv => lhs; cbv
  try rfl
theorem node2367_eq : Flapjack.WordAlloc.removeDeadStructural input2367 value1186 value1 value2 = (output2367, value5, value1) := by
  rw [input2367_def, output2367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2363_eq]
  try dsimp only
  rw [node2366_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2367 input2362)).val
theorem input2368_def : input2368 = (.seq input2367 input2362) := by
  unfold input2368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2367 output2362)).val
theorem output2368_def : output2368 = (.seq output2367 output2362) := by
  unfold output2368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2368_skip : Flapjack.WordAlloc.isSkip output2368 = false := by
  rw [output2368_def]
  conv => lhs; cbv
  try rfl
theorem node2368_eq : Flapjack.WordAlloc.removeDeadStructural input2368 value1185 value1 value2 = (output2368, value5, value1) := by
  rw [input2368_def, output2368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2362_eq]
  try dsimp only
  rw [node2367_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2368 input2361)).val
theorem input2369_def : input2369 = (.seq input2368 input2361) := by
  unfold input2369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2368 output2361)).val
theorem output2369_def : output2369 = (.seq output2368 output2361) := by
  unfold output2369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2369_skip : Flapjack.WordAlloc.isSkip output2369 = false := by
  rw [output2369_def]
  conv => lhs; cbv
  try rfl
theorem node2369_eq : Flapjack.WordAlloc.removeDeadStructural input2369 value1184 value1 value2 = (output2369, value5, value1) := by
  rw [input2369_def, output2369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2361_eq]
  try dsimp only
  rw [node2368_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1189 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3033 (Flapjack.WordLangAddr.addr 3037 0#64)))).val
theorem input2370_def : input2370 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3033 (Flapjack.WordLangAddr.addr 3037 0#64))) := by
  unfold input2370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3033 (Flapjack.WordLangAddr.addr 3037 0#64)))).val
theorem output2370_def : output2370 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3033 (Flapjack.WordLangAddr.addr 3037 0#64))) := by
  unfold output2370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2370_skip : Flapjack.WordAlloc.isSkip output2370 = false := by
  rw [output2370_def]
  conv => lhs; cbv
  try rfl
theorem node2370_eq : Flapjack.WordAlloc.removeDeadStructural input2370 value5 value1 value2 = (output2370, value1189, value1) := by
  rw [input2370_def, output2370_def]
  try (conv => lhs; cbv)
  try rfl

def value1190 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
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

@[irreducible, cbv_opaque] def input2371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3037, 3025)])).val
theorem input2371_def : input2371 = (Flapjack.WordLangProgHOL.move 0 [(3037, 3025)]) := by
  unfold input2371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3037, 3025)])).val
theorem output2371_def : output2371 = (Flapjack.WordLangProgHOL.move 0 [(3037, 3025)]) := by
  unfold output2371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2371_skip : Flapjack.WordAlloc.isSkip output2371 = false := by
  rw [output2371_def]
  conv => lhs; cbv
  try rfl
theorem node2371_eq : Flapjack.WordAlloc.removeDeadStructural input2371 value1189 value1 value2 = (output2371, value1190, value1) := by
  rw [input2371_def, output2371_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2371 input2370)).val
theorem input2372_def : input2372 = (.seq input2371 input2370) := by
  unfold input2372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2371 output2370)).val
theorem output2372_def : output2372 = (.seq output2371 output2370) := by
  unfold output2372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2372_skip : Flapjack.WordAlloc.isSkip output2372 = false := by
  rw [output2372_def]
  conv => lhs; cbv
  try rfl
theorem node2372_eq : Flapjack.WordAlloc.removeDeadStructural input2372 value5 value1 value2 = (output2372, value1190, value1) := by
  rw [input2372_def, output2372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2370_eq]
  try dsimp only
  rw [node2371_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1191 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3033 3032155653827377631#64))).val
theorem input2373_def : input2373 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3033 3032155653827377631#64)) := by
  unfold input2373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3033 3032155653827377631#64))).val
theorem output2373_def : output2373 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3033 3032155653827377631#64)) := by
  unfold output2373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2373_skip : Flapjack.WordAlloc.isSkip output2373 = false := by
  rw [output2373_def]
  conv => lhs; cbv
  try rfl
theorem node2373_eq : Flapjack.WordAlloc.removeDeadStructural input2373 value1190 value1 value2 = (output2373, value1191, value1) := by
  rw [input2373_def, output2373_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3029 3032155653827377631#64))).val
theorem input2374_def : input2374 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3029 3032155653827377631#64)) := by
  unfold input2374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2374_def : output2374 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2374_skip : Flapjack.WordAlloc.isSkip output2374 = true := by
  rw [output2374_def]
  conv => lhs; cbv
  try rfl
theorem node2374_eq : Flapjack.WordAlloc.removeDeadStructural input2374 value1191 value1 value2 = (output2374, value1191, value1) := by
  rw [input2374_def, output2374_def]
  try (conv => lhs; cbv)
  try rfl

def value1192 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3025 3021 (Flapjack.WordRegImm.imm 688#64))))).val
theorem input2375_def : input2375 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3025 3021 (Flapjack.WordRegImm.imm 688#64)))) := by
  unfold input2375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3025 3021 (Flapjack.WordRegImm.imm 688#64))))).val
theorem output2375_def : output2375 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 3025 3021 (Flapjack.WordRegImm.imm 688#64)))) := by
  unfold output2375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2375_skip : Flapjack.WordAlloc.isSkip output2375 = false := by
  rw [output2375_def]
  conv => lhs; cbv
  try rfl
theorem node2375_eq : Flapjack.WordAlloc.removeDeadStructural input2375 value1191 value1 value2 = (output2375, value1192, value1) := by
  rw [input2375_def, output2375_def]
  try (conv => lhs; cbv)
  try rfl

def value1193 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3021 (Flapjack.WordLangAddr.addr 3017 18446744073709551520#64)))).val
theorem input2376_def : input2376 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3021 (Flapjack.WordLangAddr.addr 3017 18446744073709551520#64))) := by
  unfold input2376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3021 (Flapjack.WordLangAddr.addr 3017 18446744073709551520#64)))).val
theorem output2376_def : output2376 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3021 (Flapjack.WordLangAddr.addr 3017 18446744073709551520#64))) := by
  unfold output2376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2376_skip : Flapjack.WordAlloc.isSkip output2376 = false := by
  rw [output2376_def]
  conv => lhs; cbv
  try rfl
theorem node2376_eq : Flapjack.WordAlloc.removeDeadStructural input2376 value1192 value1 value2 = (output2376, value1193, value1) := by
  rw [input2376_def, output2376_def]
  try (conv => lhs; cbv)
  try rfl

def value1194 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3017 3013)).val
theorem input2377_def : input2377 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3017 3013) := by
  unfold input2377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3017 3013)).val
theorem output2377_def : output2377 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3017 3013) := by
  unfold output2377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2377_skip : Flapjack.WordAlloc.isSkip output2377 = false := by
  rw [output2377_def]
  conv => lhs; cbv
  try rfl
theorem node2377_eq : Flapjack.WordAlloc.removeDeadStructural input2377 value1193 value1 value2 = (output2377, value1194, value1) := by
  rw [input2377_def, output2377_def]
  try (conv => lhs; cbv)
  try rfl

def value1195 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3013 3009 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2378_def : input2378 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3013 3009 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3013 3009 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2378_def : output2378 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3013 3009 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2378_skip : Flapjack.WordAlloc.isSkip output2378 = false := by
  rw [output2378_def]
  conv => lhs; cbv
  try rfl
theorem node2378_eq : Flapjack.WordAlloc.removeDeadStructural input2378 value1194 value1 value2 = (output2378, value1195, value1) := by
  rw [input2378_def, output2378_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3009 Flapjack.WordStore.heapLength)).val
theorem input2379_def : input2379 = (Flapjack.WordLangProgHOL.get 3009 Flapjack.WordStore.heapLength) := by
  unfold input2379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 3009 Flapjack.WordStore.heapLength)).val
theorem output2379_def : output2379 = (Flapjack.WordLangProgHOL.get 3009 Flapjack.WordStore.heapLength) := by
  unfold output2379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2379_skip : Flapjack.WordAlloc.isSkip output2379 = false := by
  rw [output2379_def]
  conv => lhs; cbv
  try rfl
theorem node2379_eq : Flapjack.WordAlloc.removeDeadStructural input2379 value1195 value1 value2 = (output2379, value5, value1) := by
  rw [input2379_def, output2379_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2379 input2378)).val
theorem input2380_def : input2380 = (.seq input2379 input2378) := by
  unfold input2380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2379 output2378)).val
theorem output2380_def : output2380 = (.seq output2379 output2378) := by
  unfold output2380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2380_skip : Flapjack.WordAlloc.isSkip output2380 = false := by
  rw [output2380_def]
  conv => lhs; cbv
  try rfl
theorem node2380_eq : Flapjack.WordAlloc.removeDeadStructural input2380 value1194 value1 value2 = (output2380, value5, value1) := by
  rw [input2380_def, output2380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2378_eq]
  try dsimp only
  rw [node2379_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2380 input2377)).val
theorem input2381_def : input2381 = (.seq input2380 input2377) := by
  unfold input2381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2380 output2377)).val
theorem output2381_def : output2381 = (.seq output2380 output2377) := by
  unfold output2381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2381_skip : Flapjack.WordAlloc.isSkip output2381 = false := by
  rw [output2381_def]
  conv => lhs; cbv
  try rfl
theorem node2381_eq : Flapjack.WordAlloc.removeDeadStructural input2381 value1193 value1 value2 = (output2381, value5, value1) := by
  rw [input2381_def, output2381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2377_eq]
  try dsimp only
  rw [node2380_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2381 input2376)).val
theorem input2382_def : input2382 = (.seq input2381 input2376) := by
  unfold input2382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2381 output2376)).val
theorem output2382_def : output2382 = (.seq output2381 output2376) := by
  unfold output2382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2382_skip : Flapjack.WordAlloc.isSkip output2382 = false := by
  rw [output2382_def]
  conv => lhs; cbv
  try rfl
theorem node2382_eq : Flapjack.WordAlloc.removeDeadStructural input2382 value1192 value1 value2 = (output2382, value5, value1) := by
  rw [input2382_def, output2382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2376_eq]
  try dsimp only
  rw [node2381_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2382 input2375)).val
theorem input2383_def : input2383 = (.seq input2382 input2375) := by
  unfold input2383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2382 output2375)).val
theorem output2383_def : output2383 = (.seq output2382 output2375) := by
  unfold output2383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2383_skip : Flapjack.WordAlloc.isSkip output2383 = false := by
  rw [output2383_def]
  conv => lhs; cbv
  try rfl
theorem node2383_eq : Flapjack.WordAlloc.removeDeadStructural input2383 value1191 value1 value2 = (output2383, value5, value1) := by
  rw [input2383_def, output2383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2375_eq]
  try dsimp only
  rw [node2382_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1196 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3001 (Flapjack.WordLangAddr.addr 3005 0#64)))).val
theorem input2384_def : input2384 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3001 (Flapjack.WordLangAddr.addr 3005 0#64))) := by
  unfold input2384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3001 (Flapjack.WordLangAddr.addr 3005 0#64)))).val
theorem output2384_def : output2384 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 3001 (Flapjack.WordLangAddr.addr 3005 0#64))) := by
  unfold output2384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2384_skip : Flapjack.WordAlloc.isSkip output2384 = false := by
  rw [output2384_def]
  conv => lhs; cbv
  try rfl
theorem node2384_eq : Flapjack.WordAlloc.removeDeadStructural input2384 value5 value1 value2 = (output2384, value1196, value1) := by
  rw [input2384_def, output2384_def]
  try (conv => lhs; cbv)
  try rfl

def value1197 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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

@[irreducible, cbv_opaque] def input2385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3005, 2993)])).val
theorem input2385_def : input2385 = (Flapjack.WordLangProgHOL.move 0 [(3005, 2993)]) := by
  unfold input2385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3005, 2993)])).val
theorem output2385_def : output2385 = (Flapjack.WordLangProgHOL.move 0 [(3005, 2993)]) := by
  unfold output2385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2385_skip : Flapjack.WordAlloc.isSkip output2385 = false := by
  rw [output2385_def]
  conv => lhs; cbv
  try rfl
theorem node2385_eq : Flapjack.WordAlloc.removeDeadStructural input2385 value1196 value1 value2 = (output2385, value1197, value1) := by
  rw [input2385_def, output2385_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2385 input2384)).val
theorem input2386_def : input2386 = (.seq input2385 input2384) := by
  unfold input2386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2385 output2384)).val
theorem output2386_def : output2386 = (.seq output2385 output2384) := by
  unfold output2386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2386_skip : Flapjack.WordAlloc.isSkip output2386 = false := by
  rw [output2386_def]
  conv => lhs; cbv
  try rfl
theorem node2386_eq : Flapjack.WordAlloc.removeDeadStructural input2386 value5 value1 value2 = (output2386, value1197, value1) := by
  rw [input2386_def, output2386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2384_eq]
  try dsimp only
  rw [node2385_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1198 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3001 6274640398404646490#64))).val
theorem input2387_def : input2387 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3001 6274640398404646490#64)) := by
  unfold input2387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3001 6274640398404646490#64))).val
theorem output2387_def : output2387 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3001 6274640398404646490#64)) := by
  unfold output2387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2387_skip : Flapjack.WordAlloc.isSkip output2387 = false := by
  rw [output2387_def]
  conv => lhs; cbv
  try rfl
theorem node2387_eq : Flapjack.WordAlloc.removeDeadStructural input2387 value1197 value1 value2 = (output2387, value1198, value1) := by
  rw [input2387_def, output2387_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2997 6274640398404646490#64))).val
theorem input2388_def : input2388 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2997 6274640398404646490#64)) := by
  unfold input2388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2388_def : output2388 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2388_skip : Flapjack.WordAlloc.isSkip output2388 = true := by
  rw [output2388_def]
  conv => lhs; cbv
  try rfl
theorem node2388_eq : Flapjack.WordAlloc.removeDeadStructural input2388 value1198 value1 value2 = (output2388, value1198, value1) := by
  rw [input2388_def, output2388_def]
  try (conv => lhs; cbv)
  try rfl

def value1199 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2993 2989 (Flapjack.WordRegImm.imm 680#64))))).val
theorem input2389_def : input2389 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2993 2989 (Flapjack.WordRegImm.imm 680#64)))) := by
  unfold input2389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2993 2989 (Flapjack.WordRegImm.imm 680#64))))).val
theorem output2389_def : output2389 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2993 2989 (Flapjack.WordRegImm.imm 680#64)))) := by
  unfold output2389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2389_skip : Flapjack.WordAlloc.isSkip output2389 = false := by
  rw [output2389_def]
  conv => lhs; cbv
  try rfl
theorem node2389_eq : Flapjack.WordAlloc.removeDeadStructural input2389 value1198 value1 value2 = (output2389, value1199, value1) := by
  rw [input2389_def, output2389_def]
  try (conv => lhs; cbv)
  try rfl

def value1200 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2989 (Flapjack.WordLangAddr.addr 2985 18446744073709551520#64)))).val
theorem input2390_def : input2390 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2989 (Flapjack.WordLangAddr.addr 2985 18446744073709551520#64))) := by
  unfold input2390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2989 (Flapjack.WordLangAddr.addr 2985 18446744073709551520#64)))).val
theorem output2390_def : output2390 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2989 (Flapjack.WordLangAddr.addr 2985 18446744073709551520#64))) := by
  unfold output2390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2390_skip : Flapjack.WordAlloc.isSkip output2390 = false := by
  rw [output2390_def]
  conv => lhs; cbv
  try rfl
theorem node2390_eq : Flapjack.WordAlloc.removeDeadStructural input2390 value1199 value1 value2 = (output2390, value1200, value1) := by
  rw [input2390_def, output2390_def]
  try (conv => lhs; cbv)
  try rfl

def value1201 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2985 2981)).val
theorem input2391_def : input2391 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2985 2981) := by
  unfold input2391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2985 2981)).val
theorem output2391_def : output2391 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2985 2981) := by
  unfold output2391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2391_skip : Flapjack.WordAlloc.isSkip output2391 = false := by
  rw [output2391_def]
  conv => lhs; cbv
  try rfl
theorem node2391_eq : Flapjack.WordAlloc.removeDeadStructural input2391 value1200 value1 value2 = (output2391, value1201, value1) := by
  rw [input2391_def, output2391_def]
  try (conv => lhs; cbv)
  try rfl

def value1202 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2981 2977 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2392_def : input2392 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2981 2977 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2981 2977 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2392_def : output2392 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2981 2977 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2392_skip : Flapjack.WordAlloc.isSkip output2392 = false := by
  rw [output2392_def]
  conv => lhs; cbv
  try rfl
theorem node2392_eq : Flapjack.WordAlloc.removeDeadStructural input2392 value1201 value1 value2 = (output2392, value1202, value1) := by
  rw [input2392_def, output2392_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2977 Flapjack.WordStore.heapLength)).val
theorem input2393_def : input2393 = (Flapjack.WordLangProgHOL.get 2977 Flapjack.WordStore.heapLength) := by
  unfold input2393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2977 Flapjack.WordStore.heapLength)).val
theorem output2393_def : output2393 = (Flapjack.WordLangProgHOL.get 2977 Flapjack.WordStore.heapLength) := by
  unfold output2393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2393_skip : Flapjack.WordAlloc.isSkip output2393 = false := by
  rw [output2393_def]
  conv => lhs; cbv
  try rfl
theorem node2393_eq : Flapjack.WordAlloc.removeDeadStructural input2393 value1202 value1 value2 = (output2393, value5, value1) := by
  rw [input2393_def, output2393_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2393 input2392)).val
theorem input2394_def : input2394 = (.seq input2393 input2392) := by
  unfold input2394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2393 output2392)).val
theorem output2394_def : output2394 = (.seq output2393 output2392) := by
  unfold output2394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2394_skip : Flapjack.WordAlloc.isSkip output2394 = false := by
  rw [output2394_def]
  conv => lhs; cbv
  try rfl
theorem node2394_eq : Flapjack.WordAlloc.removeDeadStructural input2394 value1201 value1 value2 = (output2394, value5, value1) := by
  rw [input2394_def, output2394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2392_eq]
  try dsimp only
  rw [node2393_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2394 input2391)).val
theorem input2395_def : input2395 = (.seq input2394 input2391) := by
  unfold input2395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2394 output2391)).val
theorem output2395_def : output2395 = (.seq output2394 output2391) := by
  unfold output2395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2395_skip : Flapjack.WordAlloc.isSkip output2395 = false := by
  rw [output2395_def]
  conv => lhs; cbv
  try rfl
theorem node2395_eq : Flapjack.WordAlloc.removeDeadStructural input2395 value1200 value1 value2 = (output2395, value5, value1) := by
  rw [input2395_def, output2395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2391_eq]
  try dsimp only
  rw [node2394_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2395 input2390)).val
theorem input2396_def : input2396 = (.seq input2395 input2390) := by
  unfold input2396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2395 output2390)).val
theorem output2396_def : output2396 = (.seq output2395 output2390) := by
  unfold output2396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2396_skip : Flapjack.WordAlloc.isSkip output2396 = false := by
  rw [output2396_def]
  conv => lhs; cbv
  try rfl
theorem node2396_eq : Flapjack.WordAlloc.removeDeadStructural input2396 value1199 value1 value2 = (output2396, value5, value1) := by
  rw [input2396_def, output2396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2390_eq]
  try dsimp only
  rw [node2395_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2396 input2389)).val
theorem input2397_def : input2397 = (.seq input2396 input2389) := by
  unfold input2397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2396 output2389)).val
theorem output2397_def : output2397 = (.seq output2396 output2389) := by
  unfold output2397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2397_skip : Flapjack.WordAlloc.isSkip output2397 = false := by
  rw [output2397_def]
  conv => lhs; cbv
  try rfl
theorem node2397_eq : Flapjack.WordAlloc.removeDeadStructural input2397 value1198 value1 value2 = (output2397, value5, value1) := by
  rw [input2397_def, output2397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2389_eq]
  try dsimp only
  rw [node2396_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1203 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2969 (Flapjack.WordLangAddr.addr 2973 0#64)))).val
theorem input2398_def : input2398 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2969 (Flapjack.WordLangAddr.addr 2973 0#64))) := by
  unfold input2398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2969 (Flapjack.WordLangAddr.addr 2973 0#64)))).val
theorem output2398_def : output2398 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2969 (Flapjack.WordLangAddr.addr 2973 0#64))) := by
  unfold output2398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2398_skip : Flapjack.WordAlloc.isSkip output2398 = false := by
  rw [output2398_def]
  conv => lhs; cbv
  try rfl
theorem node2398_eq : Flapjack.WordAlloc.removeDeadStructural input2398 value5 value1 value2 = (output2398, value1203, value1) := by
  rw [input2398_def, output2398_def]
  try (conv => lhs; cbv)
  try rfl

def value1204 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
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

@[irreducible, cbv_opaque] def input2399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2973, 2961)])).val
theorem input2399_def : input2399 = (Flapjack.WordLangProgHOL.move 0 [(2973, 2961)]) := by
  unfold input2399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2973, 2961)])).val
theorem output2399_def : output2399 = (Flapjack.WordLangProgHOL.move 0 [(2973, 2961)]) := by
  unfold output2399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2399_skip : Flapjack.WordAlloc.isSkip output2399 = false := by
  rw [output2399_def]
  conv => lhs; cbv
  try rfl
theorem node2399_eq : Flapjack.WordAlloc.removeDeadStructural input2399 value1203 value1 value2 = (output2399, value1204, value1) := by
  rw [input2399_def, output2399_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2399 input2398)).val
theorem input2400_def : input2400 = (.seq input2399 input2398) := by
  unfold input2400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2399 output2398)).val
theorem output2400_def : output2400 = (.seq output2399 output2398) := by
  unfold output2400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2400_skip : Flapjack.WordAlloc.isSkip output2400 = false := by
  rw [output2400_def]
  conv => lhs; cbv
  try rfl
theorem node2400_eq : Flapjack.WordAlloc.removeDeadStructural input2400 value5 value1 value2 = (output2400, value1204, value1) := by
  rw [input2400_def, output2400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2398_eq]
  try dsimp only
  rw [node2399_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1205 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2969 624466185408187786#64))).val
theorem input2401_def : input2401 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2969 624466185408187786#64)) := by
  unfold input2401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2969 624466185408187786#64))).val
theorem output2401_def : output2401 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2969 624466185408187786#64)) := by
  unfold output2401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2401_skip : Flapjack.WordAlloc.isSkip output2401 = false := by
  rw [output2401_def]
  conv => lhs; cbv
  try rfl
theorem node2401_eq : Flapjack.WordAlloc.removeDeadStructural input2401 value1204 value1 value2 = (output2401, value1205, value1) := by
  rw [input2401_def, output2401_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2965 624466185408187786#64))).val
theorem input2402_def : input2402 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2965 624466185408187786#64)) := by
  unfold input2402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2402_def : output2402 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2402_skip : Flapjack.WordAlloc.isSkip output2402 = true := by
  rw [output2402_def]
  conv => lhs; cbv
  try rfl
theorem node2402_eq : Flapjack.WordAlloc.removeDeadStructural input2402 value1205 value1 value2 = (output2402, value1205, value1) := by
  rw [input2402_def, output2402_def]
  try (conv => lhs; cbv)
  try rfl

def value1206 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2961 2957 (Flapjack.WordRegImm.imm 672#64))))).val
theorem input2403_def : input2403 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2961 2957 (Flapjack.WordRegImm.imm 672#64)))) := by
  unfold input2403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2961 2957 (Flapjack.WordRegImm.imm 672#64))))).val
theorem output2403_def : output2403 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2961 2957 (Flapjack.WordRegImm.imm 672#64)))) := by
  unfold output2403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2403_skip : Flapjack.WordAlloc.isSkip output2403 = false := by
  rw [output2403_def]
  conv => lhs; cbv
  try rfl
theorem node2403_eq : Flapjack.WordAlloc.removeDeadStructural input2403 value1205 value1 value2 = (output2403, value1206, value1) := by
  rw [input2403_def, output2403_def]
  try (conv => lhs; cbv)
  try rfl

def value1207 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2957 (Flapjack.WordLangAddr.addr 2953 18446744073709551520#64)))).val
theorem input2404_def : input2404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2957 (Flapjack.WordLangAddr.addr 2953 18446744073709551520#64))) := by
  unfold input2404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2957 (Flapjack.WordLangAddr.addr 2953 18446744073709551520#64)))).val
theorem output2404_def : output2404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2957 (Flapjack.WordLangAddr.addr 2953 18446744073709551520#64))) := by
  unfold output2404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2404_skip : Flapjack.WordAlloc.isSkip output2404 = false := by
  rw [output2404_def]
  conv => lhs; cbv
  try rfl
theorem node2404_eq : Flapjack.WordAlloc.removeDeadStructural input2404 value1206 value1 value2 = (output2404, value1207, value1) := by
  rw [input2404_def, output2404_def]
  try (conv => lhs; cbv)
  try rfl

def value1208 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2953 2949)).val
theorem input2405_def : input2405 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2953 2949) := by
  unfold input2405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2953 2949)).val
theorem output2405_def : output2405 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2953 2949) := by
  unfold output2405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2405_skip : Flapjack.WordAlloc.isSkip output2405 = false := by
  rw [output2405_def]
  conv => lhs; cbv
  try rfl
theorem node2405_eq : Flapjack.WordAlloc.removeDeadStructural input2405 value1207 value1 value2 = (output2405, value1208, value1) := by
  rw [input2405_def, output2405_def]
  try (conv => lhs; cbv)
  try rfl

def value1209 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2949 2945 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2406_def : input2406 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2949 2945 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2949 2945 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2406_def : output2406 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2949 2945 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2406_skip : Flapjack.WordAlloc.isSkip output2406 = false := by
  rw [output2406_def]
  conv => lhs; cbv
  try rfl
theorem node2406_eq : Flapjack.WordAlloc.removeDeadStructural input2406 value1208 value1 value2 = (output2406, value1209, value1) := by
  rw [input2406_def, output2406_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2945 Flapjack.WordStore.heapLength)).val
theorem input2407_def : input2407 = (Flapjack.WordLangProgHOL.get 2945 Flapjack.WordStore.heapLength) := by
  unfold input2407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2945 Flapjack.WordStore.heapLength)).val
theorem output2407_def : output2407 = (Flapjack.WordLangProgHOL.get 2945 Flapjack.WordStore.heapLength) := by
  unfold output2407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2407_skip : Flapjack.WordAlloc.isSkip output2407 = false := by
  rw [output2407_def]
  conv => lhs; cbv
  try rfl
theorem node2407_eq : Flapjack.WordAlloc.removeDeadStructural input2407 value1209 value1 value2 = (output2407, value5, value1) := by
  rw [input2407_def, output2407_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2407 input2406)).val
theorem input2408_def : input2408 = (.seq input2407 input2406) := by
  unfold input2408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2407 output2406)).val
theorem output2408_def : output2408 = (.seq output2407 output2406) := by
  unfold output2408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2408_skip : Flapjack.WordAlloc.isSkip output2408 = false := by
  rw [output2408_def]
  conv => lhs; cbv
  try rfl
theorem node2408_eq : Flapjack.WordAlloc.removeDeadStructural input2408 value1208 value1 value2 = (output2408, value5, value1) := by
  rw [input2408_def, output2408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2406_eq]
  try dsimp only
  rw [node2407_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2408 input2405)).val
theorem input2409_def : input2409 = (.seq input2408 input2405) := by
  unfold input2409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2408 output2405)).val
theorem output2409_def : output2409 = (.seq output2408 output2405) := by
  unfold output2409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2409_skip : Flapjack.WordAlloc.isSkip output2409 = false := by
  rw [output2409_def]
  conv => lhs; cbv
  try rfl
theorem node2409_eq : Flapjack.WordAlloc.removeDeadStructural input2409 value1207 value1 value2 = (output2409, value5, value1) := by
  rw [input2409_def, output2409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2405_eq]
  try dsimp only
  rw [node2408_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2409 input2404)).val
theorem input2410_def : input2410 = (.seq input2409 input2404) := by
  unfold input2410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2409 output2404)).val
theorem output2410_def : output2410 = (.seq output2409 output2404) := by
  unfold output2410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2410_skip : Flapjack.WordAlloc.isSkip output2410 = false := by
  rw [output2410_def]
  conv => lhs; cbv
  try rfl
theorem node2410_eq : Flapjack.WordAlloc.removeDeadStructural input2410 value1206 value1 value2 = (output2410, value5, value1) := by
  rw [input2410_def, output2410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2404_eq]
  try dsimp only
  rw [node2409_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2410 input2403)).val
theorem input2411_def : input2411 = (.seq input2410 input2403) := by
  unfold input2411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2410 output2403)).val
theorem output2411_def : output2411 = (.seq output2410 output2403) := by
  unfold output2411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2411_skip : Flapjack.WordAlloc.isSkip output2411 = false := by
  rw [output2411_def]
  conv => lhs; cbv
  try rfl
theorem node2411_eq : Flapjack.WordAlloc.removeDeadStructural input2411 value1205 value1 value2 = (output2411, value5, value1) := by
  rw [input2411_def, output2411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2403_eq]
  try dsimp only
  rw [node2410_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1210 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2937 (Flapjack.WordLangAddr.addr 2941 0#64)))).val
theorem input2412_def : input2412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2937 (Flapjack.WordLangAddr.addr 2941 0#64))) := by
  unfold input2412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2937 (Flapjack.WordLangAddr.addr 2941 0#64)))).val
theorem output2412_def : output2412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2937 (Flapjack.WordLangAddr.addr 2941 0#64))) := by
  unfold output2412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2412_skip : Flapjack.WordAlloc.isSkip output2412 = false := by
  rw [output2412_def]
  conv => lhs; cbv
  try rfl
theorem node2412_eq : Flapjack.WordAlloc.removeDeadStructural input2412 value5 value1 value2 = (output2412, value1210, value1) := by
  rw [input2412_def, output2412_def]
  try (conv => lhs; cbv)
  try rfl

def value1211 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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

@[irreducible, cbv_opaque] def input2413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2941, 2929)])).val
theorem input2413_def : input2413 = (Flapjack.WordLangProgHOL.move 0 [(2941, 2929)]) := by
  unfold input2413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2941, 2929)])).val
theorem output2413_def : output2413 = (Flapjack.WordLangProgHOL.move 0 [(2941, 2929)]) := by
  unfold output2413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2413_skip : Flapjack.WordAlloc.isSkip output2413 = false := by
  rw [output2413_def]
  conv => lhs; cbv
  try rfl
theorem node2413_eq : Flapjack.WordAlloc.removeDeadStructural input2413 value1210 value1 value2 = (output2413, value1211, value1) := by
  rw [input2413_def, output2413_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2413 input2412)).val
theorem input2414_def : input2414 = (.seq input2413 input2412) := by
  unfold input2414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2413 output2412)).val
theorem output2414_def : output2414 = (.seq output2413 output2412) := by
  unfold output2414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2414_skip : Flapjack.WordAlloc.isSkip output2414 = false := by
  rw [output2414_def]
  conv => lhs; cbv
  try rfl
theorem node2414_eq : Flapjack.WordAlloc.removeDeadStructural input2414 value5 value1 value2 = (output2414, value1211, value1) := by
  rw [input2414_def, output2414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2412_eq]
  try dsimp only
  rw [node2413_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1212 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2937 12315947082840807554#64))).val
theorem input2415_def : input2415 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2937 12315947082840807554#64)) := by
  unfold input2415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2937 12315947082840807554#64))).val
theorem output2415_def : output2415 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2937 12315947082840807554#64)) := by
  unfold output2415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2415_skip : Flapjack.WordAlloc.isSkip output2415 = false := by
  rw [output2415_def]
  conv => lhs; cbv
  try rfl
theorem node2415_eq : Flapjack.WordAlloc.removeDeadStructural input2415 value1211 value1 value2 = (output2415, value1212, value1) := by
  rw [input2415_def, output2415_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2933 12315947082840807554#64))).val
theorem input2416_def : input2416 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2933 12315947082840807554#64)) := by
  unfold input2416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2416_def : output2416 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2416_skip : Flapjack.WordAlloc.isSkip output2416 = true := by
  rw [output2416_def]
  conv => lhs; cbv
  try rfl
theorem node2416_eq : Flapjack.WordAlloc.removeDeadStructural input2416 value1212 value1 value2 = (output2416, value1212, value1) := by
  rw [input2416_def, output2416_def]
  try (conv => lhs; cbv)
  try rfl

def value1213 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2929 2925 (Flapjack.WordRegImm.imm 664#64))))).val
theorem input2417_def : input2417 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2929 2925 (Flapjack.WordRegImm.imm 664#64)))) := by
  unfold input2417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2929 2925 (Flapjack.WordRegImm.imm 664#64))))).val
theorem output2417_def : output2417 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2929 2925 (Flapjack.WordRegImm.imm 664#64)))) := by
  unfold output2417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2417_skip : Flapjack.WordAlloc.isSkip output2417 = false := by
  rw [output2417_def]
  conv => lhs; cbv
  try rfl
theorem node2417_eq : Flapjack.WordAlloc.removeDeadStructural input2417 value1212 value1 value2 = (output2417, value1213, value1) := by
  rw [input2417_def, output2417_def]
  try (conv => lhs; cbv)
  try rfl

def value1214 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2925 (Flapjack.WordLangAddr.addr 2921 18446744073709551520#64)))).val
theorem input2418_def : input2418 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2925 (Flapjack.WordLangAddr.addr 2921 18446744073709551520#64))) := by
  unfold input2418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2925 (Flapjack.WordLangAddr.addr 2921 18446744073709551520#64)))).val
theorem output2418_def : output2418 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2925 (Flapjack.WordLangAddr.addr 2921 18446744073709551520#64))) := by
  unfold output2418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2418_skip : Flapjack.WordAlloc.isSkip output2418 = false := by
  rw [output2418_def]
  conv => lhs; cbv
  try rfl
theorem node2418_eq : Flapjack.WordAlloc.removeDeadStructural input2418 value1213 value1 value2 = (output2418, value1214, value1) := by
  rw [input2418_def, output2418_def]
  try (conv => lhs; cbv)
  try rfl

def value1215 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2921 2917)).val
theorem input2419_def : input2419 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2921 2917) := by
  unfold input2419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2921 2917)).val
theorem output2419_def : output2419 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2921 2917) := by
  unfold output2419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2419_skip : Flapjack.WordAlloc.isSkip output2419 = false := by
  rw [output2419_def]
  conv => lhs; cbv
  try rfl
theorem node2419_eq : Flapjack.WordAlloc.removeDeadStructural input2419 value1214 value1 value2 = (output2419, value1215, value1) := by
  rw [input2419_def, output2419_def]
  try (conv => lhs; cbv)
  try rfl

def value1216 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2917 2913 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2420_def : input2420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2917 2913 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2917 2913 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2420_def : output2420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2917 2913 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2420_skip : Flapjack.WordAlloc.isSkip output2420 = false := by
  rw [output2420_def]
  conv => lhs; cbv
  try rfl
theorem node2420_eq : Flapjack.WordAlloc.removeDeadStructural input2420 value1215 value1 value2 = (output2420, value1216, value1) := by
  rw [input2420_def, output2420_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2913 Flapjack.WordStore.heapLength)).val
theorem input2421_def : input2421 = (Flapjack.WordLangProgHOL.get 2913 Flapjack.WordStore.heapLength) := by
  unfold input2421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2913 Flapjack.WordStore.heapLength)).val
theorem output2421_def : output2421 = (Flapjack.WordLangProgHOL.get 2913 Flapjack.WordStore.heapLength) := by
  unfold output2421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2421_skip : Flapjack.WordAlloc.isSkip output2421 = false := by
  rw [output2421_def]
  conv => lhs; cbv
  try rfl
theorem node2421_eq : Flapjack.WordAlloc.removeDeadStructural input2421 value1216 value1 value2 = (output2421, value5, value1) := by
  rw [input2421_def, output2421_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2421 input2420)).val
theorem input2422_def : input2422 = (.seq input2421 input2420) := by
  unfold input2422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2421 output2420)).val
theorem output2422_def : output2422 = (.seq output2421 output2420) := by
  unfold output2422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2422_skip : Flapjack.WordAlloc.isSkip output2422 = false := by
  rw [output2422_def]
  conv => lhs; cbv
  try rfl
theorem node2422_eq : Flapjack.WordAlloc.removeDeadStructural input2422 value1215 value1 value2 = (output2422, value5, value1) := by
  rw [input2422_def, output2422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2420_eq]
  try dsimp only
  rw [node2421_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2422 input2419)).val
theorem input2423_def : input2423 = (.seq input2422 input2419) := by
  unfold input2423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2422 output2419)).val
theorem output2423_def : output2423 = (.seq output2422 output2419) := by
  unfold output2423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2423_skip : Flapjack.WordAlloc.isSkip output2423 = false := by
  rw [output2423_def]
  conv => lhs; cbv
  try rfl
theorem node2423_eq : Flapjack.WordAlloc.removeDeadStructural input2423 value1214 value1 value2 = (output2423, value5, value1) := by
  rw [input2423_def, output2423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2419_eq]
  try dsimp only
  rw [node2422_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2423 input2418)).val
theorem input2424_def : input2424 = (.seq input2423 input2418) := by
  unfold input2424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2423 output2418)).val
theorem output2424_def : output2424 = (.seq output2423 output2418) := by
  unfold output2424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2424_skip : Flapjack.WordAlloc.isSkip output2424 = false := by
  rw [output2424_def]
  conv => lhs; cbv
  try rfl
theorem node2424_eq : Flapjack.WordAlloc.removeDeadStructural input2424 value1213 value1 value2 = (output2424, value5, value1) := by
  rw [input2424_def, output2424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2418_eq]
  try dsimp only
  rw [node2423_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2424 input2417)).val
theorem input2425_def : input2425 = (.seq input2424 input2417) := by
  unfold input2425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2424 output2417)).val
theorem output2425_def : output2425 = (.seq output2424 output2417) := by
  unfold output2425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2425_skip : Flapjack.WordAlloc.isSkip output2425 = false := by
  rw [output2425_def]
  conv => lhs; cbv
  try rfl
theorem node2425_eq : Flapjack.WordAlloc.removeDeadStructural input2425 value1212 value1 value2 = (output2425, value5, value1) := by
  rw [input2425_def, output2425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2417_eq]
  try dsimp only
  rw [node2424_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1217 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2905 (Flapjack.WordLangAddr.addr 2909 0#64)))).val
theorem input2426_def : input2426 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2905 (Flapjack.WordLangAddr.addr 2909 0#64))) := by
  unfold input2426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2905 (Flapjack.WordLangAddr.addr 2909 0#64)))).val
theorem output2426_def : output2426 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2905 (Flapjack.WordLangAddr.addr 2909 0#64))) := by
  unfold output2426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2426_skip : Flapjack.WordAlloc.isSkip output2426 = false := by
  rw [output2426_def]
  conv => lhs; cbv
  try rfl
theorem node2426_eq : Flapjack.WordAlloc.removeDeadStructural input2426 value5 value1 value2 = (output2426, value1217, value1) := by
  rw [input2426_def, output2426_def]
  try (conv => lhs; cbv)
  try rfl

def value1218 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
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

@[irreducible, cbv_opaque] def input2427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2909, 2897)])).val
theorem input2427_def : input2427 = (Flapjack.WordLangProgHOL.move 0 [(2909, 2897)]) := by
  unfold input2427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2909, 2897)])).val
theorem output2427_def : output2427 = (Flapjack.WordLangProgHOL.move 0 [(2909, 2897)]) := by
  unfold output2427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2427_skip : Flapjack.WordAlloc.isSkip output2427 = false := by
  rw [output2427_def]
  conv => lhs; cbv
  try rfl
theorem node2427_eq : Flapjack.WordAlloc.removeDeadStructural input2427 value1217 value1 value2 = (output2427, value1218, value1) := by
  rw [input2427_def, output2427_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2427 input2426)).val
theorem input2428_def : input2428 = (.seq input2427 input2426) := by
  unfold input2428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2427 output2426)).val
theorem output2428_def : output2428 = (.seq output2427 output2426) := by
  unfold output2428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2428_skip : Flapjack.WordAlloc.isSkip output2428 = false := by
  rw [output2428_def]
  conv => lhs; cbv
  try rfl
theorem node2428_eq : Flapjack.WordAlloc.removeDeadStructural input2428 value5 value1 value2 = (output2428, value1218, value1) := by
  rw [input2428_def, output2428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2426_eq]
  try dsimp only
  rw [node2427_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1219 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2905 12834539778033856447#64))).val
theorem input2429_def : input2429 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2905 12834539778033856447#64)) := by
  unfold input2429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2905 12834539778033856447#64))).val
theorem output2429_def : output2429 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2905 12834539778033856447#64)) := by
  unfold output2429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2429_skip : Flapjack.WordAlloc.isSkip output2429 = false := by
  rw [output2429_def]
  conv => lhs; cbv
  try rfl
theorem node2429_eq : Flapjack.WordAlloc.removeDeadStructural input2429 value1218 value1 value2 = (output2429, value1219, value1) := by
  rw [input2429_def, output2429_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2901 12834539778033856447#64))).val
theorem input2430_def : input2430 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2901 12834539778033856447#64)) := by
  unfold input2430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2430_def : output2430 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2430_skip : Flapjack.WordAlloc.isSkip output2430 = true := by
  rw [output2430_def]
  conv => lhs; cbv
  try rfl
theorem node2430_eq : Flapjack.WordAlloc.removeDeadStructural input2430 value1219 value1 value2 = (output2430, value1219, value1) := by
  rw [input2430_def, output2430_def]
  try (conv => lhs; cbv)
  try rfl

def value1220 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2897 2893 (Flapjack.WordRegImm.imm 656#64))))).val
theorem input2431_def : input2431 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2897 2893 (Flapjack.WordRegImm.imm 656#64)))) := by
  unfold input2431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2897 2893 (Flapjack.WordRegImm.imm 656#64))))).val
theorem output2431_def : output2431 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2897 2893 (Flapjack.WordRegImm.imm 656#64)))) := by
  unfold output2431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2431_skip : Flapjack.WordAlloc.isSkip output2431 = false := by
  rw [output2431_def]
  conv => lhs; cbv
  try rfl
theorem node2431_eq : Flapjack.WordAlloc.removeDeadStructural input2431 value1219 value1 value2 = (output2431, value1220, value1) := by
  rw [input2431_def, output2431_def]
  try (conv => lhs; cbv)
  try rfl

def value1221 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2893 (Flapjack.WordLangAddr.addr 2889 18446744073709551520#64)))).val
theorem input2432_def : input2432 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2893 (Flapjack.WordLangAddr.addr 2889 18446744073709551520#64))) := by
  unfold input2432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2893 (Flapjack.WordLangAddr.addr 2889 18446744073709551520#64)))).val
theorem output2432_def : output2432 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2893 (Flapjack.WordLangAddr.addr 2889 18446744073709551520#64))) := by
  unfold output2432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2432_skip : Flapjack.WordAlloc.isSkip output2432 = false := by
  rw [output2432_def]
  conv => lhs; cbv
  try rfl
theorem node2432_eq : Flapjack.WordAlloc.removeDeadStructural input2432 value1220 value1 value2 = (output2432, value1221, value1) := by
  rw [input2432_def, output2432_def]
  try (conv => lhs; cbv)
  try rfl

def value1222 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2889 2885)).val
theorem input2433_def : input2433 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2889 2885) := by
  unfold input2433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2889 2885)).val
theorem output2433_def : output2433 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2889 2885) := by
  unfold output2433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2433_skip : Flapjack.WordAlloc.isSkip output2433 = false := by
  rw [output2433_def]
  conv => lhs; cbv
  try rfl
theorem node2433_eq : Flapjack.WordAlloc.removeDeadStructural input2433 value1221 value1 value2 = (output2433, value1222, value1) := by
  rw [input2433_def, output2433_def]
  try (conv => lhs; cbv)
  try rfl

def value1223 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2885 2881 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2434_def : input2434 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2885 2881 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2885 2881 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2434_def : output2434 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2885 2881 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2434_skip : Flapjack.WordAlloc.isSkip output2434 = false := by
  rw [output2434_def]
  conv => lhs; cbv
  try rfl
theorem node2434_eq : Flapjack.WordAlloc.removeDeadStructural input2434 value1222 value1 value2 = (output2434, value1223, value1) := by
  rw [input2434_def, output2434_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2881 Flapjack.WordStore.heapLength)).val
theorem input2435_def : input2435 = (Flapjack.WordLangProgHOL.get 2881 Flapjack.WordStore.heapLength) := by
  unfold input2435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2881 Flapjack.WordStore.heapLength)).val
theorem output2435_def : output2435 = (Flapjack.WordLangProgHOL.get 2881 Flapjack.WordStore.heapLength) := by
  unfold output2435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2435_skip : Flapjack.WordAlloc.isSkip output2435 = false := by
  rw [output2435_def]
  conv => lhs; cbv
  try rfl
theorem node2435_eq : Flapjack.WordAlloc.removeDeadStructural input2435 value1223 value1 value2 = (output2435, value5, value1) := by
  rw [input2435_def, output2435_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2435 input2434)).val
theorem input2436_def : input2436 = (.seq input2435 input2434) := by
  unfold input2436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2435 output2434)).val
theorem output2436_def : output2436 = (.seq output2435 output2434) := by
  unfold output2436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2436_skip : Flapjack.WordAlloc.isSkip output2436 = false := by
  rw [output2436_def]
  conv => lhs; cbv
  try rfl
theorem node2436_eq : Flapjack.WordAlloc.removeDeadStructural input2436 value1222 value1 value2 = (output2436, value5, value1) := by
  rw [input2436_def, output2436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2434_eq]
  try dsimp only
  rw [node2435_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2436 input2433)).val
theorem input2437_def : input2437 = (.seq input2436 input2433) := by
  unfold input2437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2436 output2433)).val
theorem output2437_def : output2437 = (.seq output2436 output2433) := by
  unfold output2437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2437_skip : Flapjack.WordAlloc.isSkip output2437 = false := by
  rw [output2437_def]
  conv => lhs; cbv
  try rfl
theorem node2437_eq : Flapjack.WordAlloc.removeDeadStructural input2437 value1221 value1 value2 = (output2437, value5, value1) := by
  rw [input2437_def, output2437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2433_eq]
  try dsimp only
  rw [node2436_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2437 input2432)).val
theorem input2438_def : input2438 = (.seq input2437 input2432) := by
  unfold input2438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2437 output2432)).val
theorem output2438_def : output2438 = (.seq output2437 output2432) := by
  unfold output2438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2438_skip : Flapjack.WordAlloc.isSkip output2438 = false := by
  rw [output2438_def]
  conv => lhs; cbv
  try rfl
theorem node2438_eq : Flapjack.WordAlloc.removeDeadStructural input2438 value1220 value1 value2 = (output2438, value5, value1) := by
  rw [input2438_def, output2438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2432_eq]
  try dsimp only
  rw [node2437_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2438 input2431)).val
theorem input2439_def : input2439 = (.seq input2438 input2431) := by
  unfold input2439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2438 output2431)).val
theorem output2439_def : output2439 = (.seq output2438 output2431) := by
  unfold output2439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2439_skip : Flapjack.WordAlloc.isSkip output2439 = false := by
  rw [output2439_def]
  conv => lhs; cbv
  try rfl
theorem node2439_eq : Flapjack.WordAlloc.removeDeadStructural input2439 value1219 value1 value2 = (output2439, value5, value1) := by
  rw [input2439_def, output2439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2431_eq]
  try dsimp only
  rw [node2438_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1224 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2873 (Flapjack.WordLangAddr.addr 2877 0#64)))).val
theorem input2440_def : input2440 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2873 (Flapjack.WordLangAddr.addr 2877 0#64))) := by
  unfold input2440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2873 (Flapjack.WordLangAddr.addr 2877 0#64)))).val
theorem output2440_def : output2440 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2873 (Flapjack.WordLangAddr.addr 2877 0#64))) := by
  unfold output2440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2440_skip : Flapjack.WordAlloc.isSkip output2440 = false := by
  rw [output2440_def]
  conv => lhs; cbv
  try rfl
theorem node2440_eq : Flapjack.WordAlloc.removeDeadStructural input2440 value5 value1 value2 = (output2440, value1224, value1) := by
  rw [input2440_def, output2440_def]
  try (conv => lhs; cbv)
  try rfl

def value1225 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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

@[irreducible, cbv_opaque] def input2441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2877, 2865)])).val
theorem input2441_def : input2441 = (Flapjack.WordLangProgHOL.move 0 [(2877, 2865)]) := by
  unfold input2441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2877, 2865)])).val
theorem output2441_def : output2441 = (Flapjack.WordLangProgHOL.move 0 [(2877, 2865)]) := by
  unfold output2441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2441_skip : Flapjack.WordAlloc.isSkip output2441 = false := by
  rw [output2441_def]
  conv => lhs; cbv
  try rfl
theorem node2441_eq : Flapjack.WordAlloc.removeDeadStructural input2441 value1224 value1 value2 = (output2441, value1225, value1) := by
  rw [input2441_def, output2441_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2441 input2440)).val
theorem input2442_def : input2442 = (.seq input2441 input2440) := by
  unfold input2442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2441 output2440)).val
theorem output2442_def : output2442 = (.seq output2441 output2440) := by
  unfold output2442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2442_skip : Flapjack.WordAlloc.isSkip output2442 = false := by
  rw [output2442_def]
  conv => lhs; cbv
  try rfl
theorem node2442_eq : Flapjack.WordAlloc.removeDeadStructural input2442 value5 value1 value2 = (output2442, value1225, value1) := by
  rw [input2442_def, output2442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2440_eq]
  try dsimp only
  rw [node2441_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1226 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2873 1892576147470926227#64))).val
theorem input2443_def : input2443 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2873 1892576147470926227#64)) := by
  unfold input2443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2873 1892576147470926227#64))).val
theorem output2443_def : output2443 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2873 1892576147470926227#64)) := by
  unfold output2443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2443_skip : Flapjack.WordAlloc.isSkip output2443 = false := by
  rw [output2443_def]
  conv => lhs; cbv
  try rfl
theorem node2443_eq : Flapjack.WordAlloc.removeDeadStructural input2443 value1225 value1 value2 = (output2443, value1226, value1) := by
  rw [input2443_def, output2443_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2869 1892576147470926227#64))).val
theorem input2444_def : input2444 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2869 1892576147470926227#64)) := by
  unfold input2444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2444_def : output2444 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2444_skip : Flapjack.WordAlloc.isSkip output2444 = true := by
  rw [output2444_def]
  conv => lhs; cbv
  try rfl
theorem node2444_eq : Flapjack.WordAlloc.removeDeadStructural input2444 value1226 value1 value2 = (output2444, value1226, value1) := by
  rw [input2444_def, output2444_def]
  try (conv => lhs; cbv)
  try rfl

def value1227 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2865 2861 (Flapjack.WordRegImm.imm 648#64))))).val
theorem input2445_def : input2445 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2865 2861 (Flapjack.WordRegImm.imm 648#64)))) := by
  unfold input2445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2865 2861 (Flapjack.WordRegImm.imm 648#64))))).val
theorem output2445_def : output2445 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2865 2861 (Flapjack.WordRegImm.imm 648#64)))) := by
  unfold output2445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2445_skip : Flapjack.WordAlloc.isSkip output2445 = false := by
  rw [output2445_def]
  conv => lhs; cbv
  try rfl
theorem node2445_eq : Flapjack.WordAlloc.removeDeadStructural input2445 value1226 value1 value2 = (output2445, value1227, value1) := by
  rw [input2445_def, output2445_def]
  try (conv => lhs; cbv)
  try rfl

def value1228 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2861 (Flapjack.WordLangAddr.addr 2857 18446744073709551520#64)))).val
theorem input2446_def : input2446 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2861 (Flapjack.WordLangAddr.addr 2857 18446744073709551520#64))) := by
  unfold input2446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2861 (Flapjack.WordLangAddr.addr 2857 18446744073709551520#64)))).val
theorem output2446_def : output2446 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2861 (Flapjack.WordLangAddr.addr 2857 18446744073709551520#64))) := by
  unfold output2446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2446_skip : Flapjack.WordAlloc.isSkip output2446 = false := by
  rw [output2446_def]
  conv => lhs; cbv
  try rfl
theorem node2446_eq : Flapjack.WordAlloc.removeDeadStructural input2446 value1227 value1 value2 = (output2446, value1228, value1) := by
  rw [input2446_def, output2446_def]
  try (conv => lhs; cbv)
  try rfl

def value1229 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2857 2853)).val
theorem input2447_def : input2447 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2857 2853) := by
  unfold input2447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2857 2853)).val
theorem output2447_def : output2447 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2857 2853) := by
  unfold output2447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2447_skip : Flapjack.WordAlloc.isSkip output2447 = false := by
  rw [output2447_def]
  conv => lhs; cbv
  try rfl
theorem node2447_eq : Flapjack.WordAlloc.removeDeadStructural input2447 value1228 value1 value2 = (output2447, value1229, value1) := by
  rw [input2447_def, output2447_def]
  try (conv => lhs; cbv)
  try rfl

def value1230 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2853 2849 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2448_def : input2448 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2853 2849 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2853 2849 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2448_def : output2448 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2853 2849 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2448_skip : Flapjack.WordAlloc.isSkip output2448 = false := by
  rw [output2448_def]
  conv => lhs; cbv
  try rfl
theorem node2448_eq : Flapjack.WordAlloc.removeDeadStructural input2448 value1229 value1 value2 = (output2448, value1230, value1) := by
  rw [input2448_def, output2448_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2849 Flapjack.WordStore.heapLength)).val
theorem input2449_def : input2449 = (Flapjack.WordLangProgHOL.get 2849 Flapjack.WordStore.heapLength) := by
  unfold input2449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2849 Flapjack.WordStore.heapLength)).val
theorem output2449_def : output2449 = (Flapjack.WordLangProgHOL.get 2849 Flapjack.WordStore.heapLength) := by
  unfold output2449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2449_skip : Flapjack.WordAlloc.isSkip output2449 = false := by
  rw [output2449_def]
  conv => lhs; cbv
  try rfl
theorem node2449_eq : Flapjack.WordAlloc.removeDeadStructural input2449 value1230 value1 value2 = (output2449, value5, value1) := by
  rw [input2449_def, output2449_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2449 input2448)).val
theorem input2450_def : input2450 = (.seq input2449 input2448) := by
  unfold input2450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2449 output2448)).val
theorem output2450_def : output2450 = (.seq output2449 output2448) := by
  unfold output2450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2450_skip : Flapjack.WordAlloc.isSkip output2450 = false := by
  rw [output2450_def]
  conv => lhs; cbv
  try rfl
theorem node2450_eq : Flapjack.WordAlloc.removeDeadStructural input2450 value1229 value1 value2 = (output2450, value5, value1) := by
  rw [input2450_def, output2450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2448_eq]
  try dsimp only
  rw [node2449_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2450 input2447)).val
theorem input2451_def : input2451 = (.seq input2450 input2447) := by
  unfold input2451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2450 output2447)).val
theorem output2451_def : output2451 = (.seq output2450 output2447) := by
  unfold output2451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2451_skip : Flapjack.WordAlloc.isSkip output2451 = false := by
  rw [output2451_def]
  conv => lhs; cbv
  try rfl
theorem node2451_eq : Flapjack.WordAlloc.removeDeadStructural input2451 value1228 value1 value2 = (output2451, value5, value1) := by
  rw [input2451_def, output2451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2447_eq]
  try dsimp only
  rw [node2450_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2451 input2446)).val
theorem input2452_def : input2452 = (.seq input2451 input2446) := by
  unfold input2452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2451 output2446)).val
theorem output2452_def : output2452 = (.seq output2451 output2446) := by
  unfold output2452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2452_skip : Flapjack.WordAlloc.isSkip output2452 = false := by
  rw [output2452_def]
  conv => lhs; cbv
  try rfl
theorem node2452_eq : Flapjack.WordAlloc.removeDeadStructural input2452 value1227 value1 value2 = (output2452, value5, value1) := by
  rw [input2452_def, output2452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2446_eq]
  try dsimp only
  rw [node2451_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2452 input2445)).val
theorem input2453_def : input2453 = (.seq input2452 input2445) := by
  unfold input2453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2452 output2445)).val
theorem output2453_def : output2453 = (.seq output2452 output2445) := by
  unfold output2453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2453_skip : Flapjack.WordAlloc.isSkip output2453 = false := by
  rw [output2453_def]
  conv => lhs; cbv
  try rfl
theorem node2453_eq : Flapjack.WordAlloc.removeDeadStructural input2453 value1226 value1 value2 = (output2453, value5, value1) := by
  rw [input2453_def, output2453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2445_eq]
  try dsimp only
  rw [node2452_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1231 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2841 (Flapjack.WordLangAddr.addr 2845 0#64)))).val
theorem input2454_def : input2454 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2841 (Flapjack.WordLangAddr.addr 2845 0#64))) := by
  unfold input2454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2841 (Flapjack.WordLangAddr.addr 2845 0#64)))).val
theorem output2454_def : output2454 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2841 (Flapjack.WordLangAddr.addr 2845 0#64))) := by
  unfold output2454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2454_skip : Flapjack.WordAlloc.isSkip output2454 = false := by
  rw [output2454_def]
  conv => lhs; cbv
  try rfl
theorem node2454_eq : Flapjack.WordAlloc.removeDeadStructural input2454 value5 value1 value2 = (output2454, value1231, value1) := by
  rw [input2454_def, output2454_def]
  try (conv => lhs; cbv)
  try rfl

def value1232 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2845, 2833)])).val
theorem input2455_def : input2455 = (Flapjack.WordLangProgHOL.move 0 [(2845, 2833)]) := by
  unfold input2455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2845, 2833)])).val
theorem output2455_def : output2455 = (Flapjack.WordLangProgHOL.move 0 [(2845, 2833)]) := by
  unfold output2455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2455_skip : Flapjack.WordAlloc.isSkip output2455 = false := by
  rw [output2455_def]
  conv => lhs; cbv
  try rfl
theorem node2455_eq : Flapjack.WordAlloc.removeDeadStructural input2455 value1231 value1 value2 = (output2455, value1232, value1) := by
  rw [input2455_def, output2455_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2455 input2454)).val
theorem input2456_def : input2456 = (.seq input2455 input2454) := by
  unfold input2456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2455 output2454)).val
theorem output2456_def : output2456 = (.seq output2455 output2454) := by
  unfold output2456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2456_skip : Flapjack.WordAlloc.isSkip output2456 = false := by
  rw [output2456_def]
  conv => lhs; cbv
  try rfl
theorem node2456_eq : Flapjack.WordAlloc.removeDeadStructural input2456 value5 value1 value2 = (output2456, value1232, value1) := by
  rw [input2456_def, output2456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2454_eq]
  try dsimp only
  rw [node2455_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1233 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2841 3680535539744234445#64))).val
theorem input2457_def : input2457 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2841 3680535539744234445#64)) := by
  unfold input2457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2841 3680535539744234445#64))).val
theorem output2457_def : output2457 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2841 3680535539744234445#64)) := by
  unfold output2457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2457_skip : Flapjack.WordAlloc.isSkip output2457 = false := by
  rw [output2457_def]
  conv => lhs; cbv
  try rfl
theorem node2457_eq : Flapjack.WordAlloc.removeDeadStructural input2457 value1232 value1 value2 = (output2457, value1233, value1) := by
  rw [input2457_def, output2457_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2837 3680535539744234445#64))).val
theorem input2458_def : input2458 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2837 3680535539744234445#64)) := by
  unfold input2458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2458_def : output2458 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2458_skip : Flapjack.WordAlloc.isSkip output2458 = true := by
  rw [output2458_def]
  conv => lhs; cbv
  try rfl
theorem node2458_eq : Flapjack.WordAlloc.removeDeadStructural input2458 value1233 value1 value2 = (output2458, value1233, value1) := by
  rw [input2458_def, output2458_def]
  try (conv => lhs; cbv)
  try rfl

def value1234 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2833 2829 (Flapjack.WordRegImm.imm 640#64))))).val
theorem input2459_def : input2459 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2833 2829 (Flapjack.WordRegImm.imm 640#64)))) := by
  unfold input2459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2833 2829 (Flapjack.WordRegImm.imm 640#64))))).val
theorem output2459_def : output2459 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2833 2829 (Flapjack.WordRegImm.imm 640#64)))) := by
  unfold output2459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2459_skip : Flapjack.WordAlloc.isSkip output2459 = false := by
  rw [output2459_def]
  conv => lhs; cbv
  try rfl
theorem node2459_eq : Flapjack.WordAlloc.removeDeadStructural input2459 value1233 value1 value2 = (output2459, value1234, value1) := by
  rw [input2459_def, output2459_def]
  try (conv => lhs; cbv)
  try rfl

def value1235 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2829 (Flapjack.WordLangAddr.addr 2825 18446744073709551520#64)))).val
theorem input2460_def : input2460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2829 (Flapjack.WordLangAddr.addr 2825 18446744073709551520#64))) := by
  unfold input2460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2829 (Flapjack.WordLangAddr.addr 2825 18446744073709551520#64)))).val
theorem output2460_def : output2460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2829 (Flapjack.WordLangAddr.addr 2825 18446744073709551520#64))) := by
  unfold output2460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2460_skip : Flapjack.WordAlloc.isSkip output2460 = false := by
  rw [output2460_def]
  conv => lhs; cbv
  try rfl
theorem node2460_eq : Flapjack.WordAlloc.removeDeadStructural input2460 value1234 value1 value2 = (output2460, value1235, value1) := by
  rw [input2460_def, output2460_def]
  try (conv => lhs; cbv)
  try rfl

def value1236 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2825 2821)).val
theorem input2461_def : input2461 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2825 2821) := by
  unfold input2461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2825 2821)).val
theorem output2461_def : output2461 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2825 2821) := by
  unfold output2461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2461_skip : Flapjack.WordAlloc.isSkip output2461 = false := by
  rw [output2461_def]
  conv => lhs; cbv
  try rfl
theorem node2461_eq : Flapjack.WordAlloc.removeDeadStructural input2461 value1235 value1 value2 = (output2461, value1236, value1) := by
  rw [input2461_def, output2461_def]
  try (conv => lhs; cbv)
  try rfl

def value1237 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2821 2817 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2462_def : input2462 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2821 2817 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2821 2817 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2462_def : output2462 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2821 2817 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2462_skip : Flapjack.WordAlloc.isSkip output2462 = false := by
  rw [output2462_def]
  conv => lhs; cbv
  try rfl
theorem node2462_eq : Flapjack.WordAlloc.removeDeadStructural input2462 value1236 value1 value2 = (output2462, value1237, value1) := by
  rw [input2462_def, output2462_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2817 Flapjack.WordStore.heapLength)).val
theorem input2463_def : input2463 = (Flapjack.WordLangProgHOL.get 2817 Flapjack.WordStore.heapLength) := by
  unfold input2463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2817 Flapjack.WordStore.heapLength)).val
theorem output2463_def : output2463 = (Flapjack.WordLangProgHOL.get 2817 Flapjack.WordStore.heapLength) := by
  unfold output2463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2463_skip : Flapjack.WordAlloc.isSkip output2463 = false := by
  rw [output2463_def]
  conv => lhs; cbv
  try rfl
theorem node2463_eq : Flapjack.WordAlloc.removeDeadStructural input2463 value1237 value1 value2 = (output2463, value5, value1) := by
  rw [input2463_def, output2463_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2463 input2462)).val
theorem input2464_def : input2464 = (.seq input2463 input2462) := by
  unfold input2464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2463 output2462)).val
theorem output2464_def : output2464 = (.seq output2463 output2462) := by
  unfold output2464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2464_skip : Flapjack.WordAlloc.isSkip output2464 = false := by
  rw [output2464_def]
  conv => lhs; cbv
  try rfl
theorem node2464_eq : Flapjack.WordAlloc.removeDeadStructural input2464 value1236 value1 value2 = (output2464, value5, value1) := by
  rw [input2464_def, output2464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2462_eq]
  try dsimp only
  rw [node2463_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2464 input2461)).val
theorem input2465_def : input2465 = (.seq input2464 input2461) := by
  unfold input2465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2464 output2461)).val
theorem output2465_def : output2465 = (.seq output2464 output2461) := by
  unfold output2465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2465_skip : Flapjack.WordAlloc.isSkip output2465 = false := by
  rw [output2465_def]
  conv => lhs; cbv
  try rfl
theorem node2465_eq : Flapjack.WordAlloc.removeDeadStructural input2465 value1235 value1 value2 = (output2465, value5, value1) := by
  rw [input2465_def, output2465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2461_eq]
  try dsimp only
  rw [node2464_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2465 input2460)).val
theorem input2466_def : input2466 = (.seq input2465 input2460) := by
  unfold input2466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2465 output2460)).val
theorem output2466_def : output2466 = (.seq output2465 output2460) := by
  unfold output2466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2466_skip : Flapjack.WordAlloc.isSkip output2466 = false := by
  rw [output2466_def]
  conv => lhs; cbv
  try rfl
theorem node2466_eq : Flapjack.WordAlloc.removeDeadStructural input2466 value1234 value1 value2 = (output2466, value5, value1) := by
  rw [input2466_def, output2466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2460_eq]
  try dsimp only
  rw [node2465_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2466 input2459)).val
theorem input2467_def : input2467 = (.seq input2466 input2459) := by
  unfold input2467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2466 output2459)).val
theorem output2467_def : output2467 = (.seq output2466 output2459) := by
  unfold output2467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2467_skip : Flapjack.WordAlloc.isSkip output2467 = false := by
  rw [output2467_def]
  conv => lhs; cbv
  try rfl
theorem node2467_eq : Flapjack.WordAlloc.removeDeadStructural input2467 value1233 value1 value2 = (output2467, value5, value1) := by
  rw [input2467_def, output2467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2459_eq]
  try dsimp only
  rw [node2466_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1238 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2809 (Flapjack.WordLangAddr.addr 2813 0#64)))).val
theorem input2468_def : input2468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2809 (Flapjack.WordLangAddr.addr 2813 0#64))) := by
  unfold input2468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2809 (Flapjack.WordLangAddr.addr 2813 0#64)))).val
theorem output2468_def : output2468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2809 (Flapjack.WordLangAddr.addr 2813 0#64))) := by
  unfold output2468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2468_skip : Flapjack.WordAlloc.isSkip output2468 = false := by
  rw [output2468_def]
  conv => lhs; cbv
  try rfl
theorem node2468_eq : Flapjack.WordAlloc.removeDeadStructural input2468 value5 value1 value2 = (output2468, value1238, value1) := by
  rw [input2468_def, output2468_def]
  try (conv => lhs; cbv)
  try rfl

def value1239 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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

@[irreducible, cbv_opaque] def input2469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2813, 2801)])).val
theorem input2469_def : input2469 = (Flapjack.WordLangProgHOL.move 0 [(2813, 2801)]) := by
  unfold input2469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2813, 2801)])).val
theorem output2469_def : output2469 = (Flapjack.WordLangProgHOL.move 0 [(2813, 2801)]) := by
  unfold output2469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2469_skip : Flapjack.WordAlloc.isSkip output2469 = false := by
  rw [output2469_def]
  conv => lhs; cbv
  try rfl
theorem node2469_eq : Flapjack.WordAlloc.removeDeadStructural input2469 value1238 value1 value2 = (output2469, value1239, value1) := by
  rw [input2469_def, output2469_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2469 input2468)).val
theorem input2470_def : input2470 = (.seq input2469 input2468) := by
  unfold input2470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2469 output2468)).val
theorem output2470_def : output2470 = (.seq output2469 output2468) := by
  unfold output2470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2470_skip : Flapjack.WordAlloc.isSkip output2470 = false := by
  rw [output2470_def]
  conv => lhs; cbv
  try rfl
theorem node2470_eq : Flapjack.WordAlloc.removeDeadStructural input2470 value5 value1 value2 = (output2470, value1239, value1) := by
  rw [input2470_def, output2470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2468_eq]
  try dsimp only
  rw [node2469_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1240 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2809 9219292227730439048#64))).val
theorem input2471_def : input2471 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2809 9219292227730439048#64)) := by
  unfold input2471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2809 9219292227730439048#64))).val
theorem output2471_def : output2471 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2809 9219292227730439048#64)) := by
  unfold output2471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2471_skip : Flapjack.WordAlloc.isSkip output2471 = false := by
  rw [output2471_def]
  conv => lhs; cbv
  try rfl
theorem node2471_eq : Flapjack.WordAlloc.removeDeadStructural input2471 value1239 value1 value2 = (output2471, value1240, value1) := by
  rw [input2471_def, output2471_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2805 9219292227730439048#64))).val
theorem input2472_def : input2472 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2805 9219292227730439048#64)) := by
  unfold input2472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2472_def : output2472 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2472_skip : Flapjack.WordAlloc.isSkip output2472 = true := by
  rw [output2472_def]
  conv => lhs; cbv
  try rfl
theorem node2472_eq : Flapjack.WordAlloc.removeDeadStructural input2472 value1240 value1 value2 = (output2472, value1240, value1) := by
  rw [input2472_def, output2472_def]
  try (conv => lhs; cbv)
  try rfl

def value1241 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2801 2797 (Flapjack.WordRegImm.imm 632#64))))).val
theorem input2473_def : input2473 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2801 2797 (Flapjack.WordRegImm.imm 632#64)))) := by
  unfold input2473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2801 2797 (Flapjack.WordRegImm.imm 632#64))))).val
theorem output2473_def : output2473 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2801 2797 (Flapjack.WordRegImm.imm 632#64)))) := by
  unfold output2473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2473_skip : Flapjack.WordAlloc.isSkip output2473 = false := by
  rw [output2473_def]
  conv => lhs; cbv
  try rfl
theorem node2473_eq : Flapjack.WordAlloc.removeDeadStructural input2473 value1240 value1 value2 = (output2473, value1241, value1) := by
  rw [input2473_def, output2473_def]
  try (conv => lhs; cbv)
  try rfl

def value1242 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2797 (Flapjack.WordLangAddr.addr 2793 18446744073709551520#64)))).val
theorem input2474_def : input2474 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2797 (Flapjack.WordLangAddr.addr 2793 18446744073709551520#64))) := by
  unfold input2474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2797 (Flapjack.WordLangAddr.addr 2793 18446744073709551520#64)))).val
theorem output2474_def : output2474 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2797 (Flapjack.WordLangAddr.addr 2793 18446744073709551520#64))) := by
  unfold output2474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2474_skip : Flapjack.WordAlloc.isSkip output2474 = false := by
  rw [output2474_def]
  conv => lhs; cbv
  try rfl
theorem node2474_eq : Flapjack.WordAlloc.removeDeadStructural input2474 value1241 value1 value2 = (output2474, value1242, value1) := by
  rw [input2474_def, output2474_def]
  try (conv => lhs; cbv)
  try rfl

def value1243 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2793 2789)).val
theorem input2475_def : input2475 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2793 2789) := by
  unfold input2475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2793 2789)).val
theorem output2475_def : output2475 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2793 2789) := by
  unfold output2475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2475_skip : Flapjack.WordAlloc.isSkip output2475 = false := by
  rw [output2475_def]
  conv => lhs; cbv
  try rfl
theorem node2475_eq : Flapjack.WordAlloc.removeDeadStructural input2475 value1242 value1 value2 = (output2475, value1243, value1) := by
  rw [input2475_def, output2475_def]
  try (conv => lhs; cbv)
  try rfl

def value1244 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2789 2785 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2476_def : input2476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2789 2785 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2789 2785 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2476_def : output2476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2789 2785 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2476_skip : Flapjack.WordAlloc.isSkip output2476 = false := by
  rw [output2476_def]
  conv => lhs; cbv
  try rfl
theorem node2476_eq : Flapjack.WordAlloc.removeDeadStructural input2476 value1243 value1 value2 = (output2476, value1244, value1) := by
  rw [input2476_def, output2476_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2785 Flapjack.WordStore.heapLength)).val
theorem input2477_def : input2477 = (Flapjack.WordLangProgHOL.get 2785 Flapjack.WordStore.heapLength) := by
  unfold input2477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2785 Flapjack.WordStore.heapLength)).val
theorem output2477_def : output2477 = (Flapjack.WordLangProgHOL.get 2785 Flapjack.WordStore.heapLength) := by
  unfold output2477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2477_skip : Flapjack.WordAlloc.isSkip output2477 = false := by
  rw [output2477_def]
  conv => lhs; cbv
  try rfl
theorem node2477_eq : Flapjack.WordAlloc.removeDeadStructural input2477 value1244 value1 value2 = (output2477, value5, value1) := by
  rw [input2477_def, output2477_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2477 input2476)).val
theorem input2478_def : input2478 = (.seq input2477 input2476) := by
  unfold input2478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2477 output2476)).val
theorem output2478_def : output2478 = (.seq output2477 output2476) := by
  unfold output2478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2478_skip : Flapjack.WordAlloc.isSkip output2478 = false := by
  rw [output2478_def]
  conv => lhs; cbv
  try rfl
theorem node2478_eq : Flapjack.WordAlloc.removeDeadStructural input2478 value1243 value1 value2 = (output2478, value5, value1) := by
  rw [input2478_def, output2478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2476_eq]
  try dsimp only
  rw [node2477_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2478 input2475)).val
theorem input2479_def : input2479 = (.seq input2478 input2475) := by
  unfold input2479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2478 output2475)).val
theorem output2479_def : output2479 = (.seq output2478 output2475) := by
  unfold output2479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2479_skip : Flapjack.WordAlloc.isSkip output2479 = false := by
  rw [output2479_def]
  conv => lhs; cbv
  try rfl
theorem node2479_eq : Flapjack.WordAlloc.removeDeadStructural input2479 value1242 value1 value2 = (output2479, value5, value1) := by
  rw [input2479_def, output2479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2475_eq]
  try dsimp only
  rw [node2478_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2479 input2474)).val
theorem input2480_def : input2480 = (.seq input2479 input2474) := by
  unfold input2480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2479 output2474)).val
theorem output2480_def : output2480 = (.seq output2479 output2474) := by
  unfold output2480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2480_skip : Flapjack.WordAlloc.isSkip output2480 = false := by
  rw [output2480_def]
  conv => lhs; cbv
  try rfl
theorem node2480_eq : Flapjack.WordAlloc.removeDeadStructural input2480 value1241 value1 value2 = (output2480, value5, value1) := by
  rw [input2480_def, output2480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2474_eq]
  try dsimp only
  rw [node2479_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2480 input2473)).val
theorem input2481_def : input2481 = (.seq input2480 input2473) := by
  unfold input2481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2480 output2473)).val
theorem output2481_def : output2481 = (.seq output2480 output2473) := by
  unfold output2481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2481_skip : Flapjack.WordAlloc.isSkip output2481 = false := by
  rw [output2481_def]
  conv => lhs; cbv
  try rfl
theorem node2481_eq : Flapjack.WordAlloc.removeDeadStructural input2481 value1240 value1 value2 = (output2481, value5, value1) := by
  rw [input2481_def, output2481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2473_eq]
  try dsimp only
  rw [node2480_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1245 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2777 (Flapjack.WordLangAddr.addr 2781 0#64)))).val
theorem input2482_def : input2482 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2777 (Flapjack.WordLangAddr.addr 2781 0#64))) := by
  unfold input2482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2777 (Flapjack.WordLangAddr.addr 2781 0#64)))).val
theorem output2482_def : output2482 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2777 (Flapjack.WordLangAddr.addr 2781 0#64))) := by
  unfold output2482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2482_skip : Flapjack.WordAlloc.isSkip output2482 = false := by
  rw [output2482_def]
  conv => lhs; cbv
  try rfl
theorem node2482_eq : Flapjack.WordAlloc.removeDeadStructural input2482 value5 value1 value2 = (output2482, value1245, value1) := by
  rw [input2482_def, output2482_def]
  try (conv => lhs; cbv)
  try rfl

def value1246 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
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

@[irreducible, cbv_opaque] def input2483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2781, 2769)])).val
theorem input2483_def : input2483 = (Flapjack.WordLangProgHOL.move 0 [(2781, 2769)]) := by
  unfold input2483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2781, 2769)])).val
theorem output2483_def : output2483 = (Flapjack.WordLangProgHOL.move 0 [(2781, 2769)]) := by
  unfold output2483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2483_skip : Flapjack.WordAlloc.isSkip output2483 = false := by
  rw [output2483_def]
  conv => lhs; cbv
  try rfl
theorem node2483_eq : Flapjack.WordAlloc.removeDeadStructural input2483 value1245 value1 value2 = (output2483, value1246, value1) := by
  rw [input2483_def, output2483_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2483 input2482)).val
theorem input2484_def : input2484 = (.seq input2483 input2482) := by
  unfold input2484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2483 output2482)).val
theorem output2484_def : output2484 = (.seq output2483 output2482) := by
  unfold output2484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2484_skip : Flapjack.WordAlloc.isSkip output2484 = false := by
  rw [output2484_def]
  conv => lhs; cbv
  try rfl
theorem node2484_eq : Flapjack.WordAlloc.removeDeadStructural input2484 value5 value1 value2 = (output2484, value1246, value1) := by
  rw [input2484_def, output2484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2482_eq]
  try dsimp only
  rw [node2483_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1247 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2777 92424688682962637#64))).val
theorem input2485_def : input2485 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2777 92424688682962637#64)) := by
  unfold input2485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2777 92424688682962637#64))).val
theorem output2485_def : output2485 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2777 92424688682962637#64)) := by
  unfold output2485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2485_skip : Flapjack.WordAlloc.isSkip output2485 = false := by
  rw [output2485_def]
  conv => lhs; cbv
  try rfl
theorem node2485_eq : Flapjack.WordAlloc.removeDeadStructural input2485 value1246 value1 value2 = (output2485, value1247, value1) := by
  rw [input2485_def, output2485_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2773 92424688682962637#64))).val
theorem input2486_def : input2486 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2773 92424688682962637#64)) := by
  unfold input2486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2486_def : output2486 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2486_skip : Flapjack.WordAlloc.isSkip output2486 = true := by
  rw [output2486_def]
  conv => lhs; cbv
  try rfl
theorem node2486_eq : Flapjack.WordAlloc.removeDeadStructural input2486 value1247 value1 value2 = (output2486, value1247, value1) := by
  rw [input2486_def, output2486_def]
  try (conv => lhs; cbv)
  try rfl

def value1248 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2769 2765 (Flapjack.WordRegImm.imm 624#64))))).val
theorem input2487_def : input2487 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2769 2765 (Flapjack.WordRegImm.imm 624#64)))) := by
  unfold input2487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2769 2765 (Flapjack.WordRegImm.imm 624#64))))).val
theorem output2487_def : output2487 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2769 2765 (Flapjack.WordRegImm.imm 624#64)))) := by
  unfold output2487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2487_skip : Flapjack.WordAlloc.isSkip output2487 = false := by
  rw [output2487_def]
  conv => lhs; cbv
  try rfl
theorem node2487_eq : Flapjack.WordAlloc.removeDeadStructural input2487 value1247 value1 value2 = (output2487, value1248, value1) := by
  rw [input2487_def, output2487_def]
  try (conv => lhs; cbv)
  try rfl

def value1249 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2765 (Flapjack.WordLangAddr.addr 2761 18446744073709551520#64)))).val
theorem input2488_def : input2488 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2765 (Flapjack.WordLangAddr.addr 2761 18446744073709551520#64))) := by
  unfold input2488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2765 (Flapjack.WordLangAddr.addr 2761 18446744073709551520#64)))).val
theorem output2488_def : output2488 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2765 (Flapjack.WordLangAddr.addr 2761 18446744073709551520#64))) := by
  unfold output2488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2488_skip : Flapjack.WordAlloc.isSkip output2488 = false := by
  rw [output2488_def]
  conv => lhs; cbv
  try rfl
theorem node2488_eq : Flapjack.WordAlloc.removeDeadStructural input2488 value1248 value1 value2 = (output2488, value1249, value1) := by
  rw [input2488_def, output2488_def]
  try (conv => lhs; cbv)
  try rfl

def value1250 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2761 2757)).val
theorem input2489_def : input2489 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2761 2757) := by
  unfold input2489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2761 2757)).val
theorem output2489_def : output2489 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2761 2757) := by
  unfold output2489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2489_skip : Flapjack.WordAlloc.isSkip output2489 = false := by
  rw [output2489_def]
  conv => lhs; cbv
  try rfl
theorem node2489_eq : Flapjack.WordAlloc.removeDeadStructural input2489 value1249 value1 value2 = (output2489, value1250, value1) := by
  rw [input2489_def, output2489_def]
  try (conv => lhs; cbv)
  try rfl

def value1251 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2757 2753 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2490_def : input2490 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2757 2753 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2757 2753 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2490_def : output2490 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2757 2753 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2490_skip : Flapjack.WordAlloc.isSkip output2490 = false := by
  rw [output2490_def]
  conv => lhs; cbv
  try rfl
theorem node2490_eq : Flapjack.WordAlloc.removeDeadStructural input2490 value1250 value1 value2 = (output2490, value1251, value1) := by
  rw [input2490_def, output2490_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2753 Flapjack.WordStore.heapLength)).val
theorem input2491_def : input2491 = (Flapjack.WordLangProgHOL.get 2753 Flapjack.WordStore.heapLength) := by
  unfold input2491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2753 Flapjack.WordStore.heapLength)).val
theorem output2491_def : output2491 = (Flapjack.WordLangProgHOL.get 2753 Flapjack.WordStore.heapLength) := by
  unfold output2491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2491_skip : Flapjack.WordAlloc.isSkip output2491 = false := by
  rw [output2491_def]
  conv => lhs; cbv
  try rfl
theorem node2491_eq : Flapjack.WordAlloc.removeDeadStructural input2491 value1251 value1 value2 = (output2491, value5, value1) := by
  rw [input2491_def, output2491_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2491 input2490)).val
theorem input2492_def : input2492 = (.seq input2491 input2490) := by
  unfold input2492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2491 output2490)).val
theorem output2492_def : output2492 = (.seq output2491 output2490) := by
  unfold output2492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2492_skip : Flapjack.WordAlloc.isSkip output2492 = false := by
  rw [output2492_def]
  conv => lhs; cbv
  try rfl
theorem node2492_eq : Flapjack.WordAlloc.removeDeadStructural input2492 value1250 value1 value2 = (output2492, value5, value1) := by
  rw [input2492_def, output2492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2490_eq]
  try dsimp only
  rw [node2491_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2492 input2489)).val
theorem input2493_def : input2493 = (.seq input2492 input2489) := by
  unfold input2493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2492 output2489)).val
theorem output2493_def : output2493 = (.seq output2492 output2489) := by
  unfold output2493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2493_skip : Flapjack.WordAlloc.isSkip output2493 = false := by
  rw [output2493_def]
  conv => lhs; cbv
  try rfl
theorem node2493_eq : Flapjack.WordAlloc.removeDeadStructural input2493 value1249 value1 value2 = (output2493, value5, value1) := by
  rw [input2493_def, output2493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2489_eq]
  try dsimp only
  rw [node2492_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2493 input2488)).val
theorem input2494_def : input2494 = (.seq input2493 input2488) := by
  unfold input2494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2493 output2488)).val
theorem output2494_def : output2494 = (.seq output2493 output2488) := by
  unfold output2494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2494_skip : Flapjack.WordAlloc.isSkip output2494 = false := by
  rw [output2494_def]
  conv => lhs; cbv
  try rfl
theorem node2494_eq : Flapjack.WordAlloc.removeDeadStructural input2494 value1248 value1 value2 = (output2494, value5, value1) := by
  rw [input2494_def, output2494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2488_eq]
  try dsimp only
  rw [node2493_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2494 input2487)).val
theorem input2495_def : input2495 = (.seq input2494 input2487) := by
  unfold input2495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2494 output2487)).val
theorem output2495_def : output2495 = (.seq output2494 output2487) := by
  unfold output2495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2495_skip : Flapjack.WordAlloc.isSkip output2495 = false := by
  rw [output2495_def]
  conv => lhs; cbv
  try rfl
theorem node2495_eq : Flapjack.WordAlloc.removeDeadStructural input2495 value1247 value1 value2 = (output2495, value5, value1) := by
  rw [input2495_def, output2495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2487_eq]
  try dsimp only
  rw [node2494_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1252 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2745 (Flapjack.WordLangAddr.addr 2749 0#64)))).val
theorem input2496_def : input2496 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2745 (Flapjack.WordLangAddr.addr 2749 0#64))) := by
  unfold input2496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2745 (Flapjack.WordLangAddr.addr 2749 0#64)))).val
theorem output2496_def : output2496 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2745 (Flapjack.WordLangAddr.addr 2749 0#64))) := by
  unfold output2496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2496_skip : Flapjack.WordAlloc.isSkip output2496 = false := by
  rw [output2496_def]
  conv => lhs; cbv
  try rfl
theorem node2496_eq : Flapjack.WordAlloc.removeDeadStructural input2496 value5 value1 value2 = (output2496, value1252, value1) := by
  rw [input2496_def, output2496_def]
  try (conv => lhs; cbv)
  try rfl

def value1253 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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

@[irreducible, cbv_opaque] def input2497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2749, 2737)])).val
theorem input2497_def : input2497 = (Flapjack.WordLangProgHOL.move 0 [(2749, 2737)]) := by
  unfold input2497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2749, 2737)])).val
theorem output2497_def : output2497 = (Flapjack.WordLangProgHOL.move 0 [(2749, 2737)]) := by
  unfold output2497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2497_skip : Flapjack.WordAlloc.isSkip output2497 = false := by
  rw [output2497_def]
  conv => lhs; cbv
  try rfl
theorem node2497_eq : Flapjack.WordAlloc.removeDeadStructural input2497 value1252 value1 value2 = (output2497, value1253, value1) := by
  rw [input2497_def, output2497_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2497 input2496)).val
theorem input2498_def : input2498 = (.seq input2497 input2496) := by
  unfold input2498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2497 output2496)).val
theorem output2498_def : output2498 = (.seq output2497 output2496) := by
  unfold output2498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2498_skip : Flapjack.WordAlloc.isSkip output2498 = false := by
  rw [output2498_def]
  conv => lhs; cbv
  try rfl
theorem node2498_eq : Flapjack.WordAlloc.removeDeadStructural input2498 value5 value1 value2 = (output2498, value1253, value1) := by
  rw [input2498_def, output2498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2496_eq]
  try dsimp only
  rw [node2497_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1254 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2745 11665373399896817451#64))).val
theorem input2499_def : input2499 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2745 11665373399896817451#64)) := by
  unfold input2499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2745 11665373399896817451#64))).val
theorem output2499_def : output2499 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2745 11665373399896817451#64)) := by
  unfold output2499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2499_skip : Flapjack.WordAlloc.isSkip output2499 = false := by
  rw [output2499_def]
  conv => lhs; cbv
  try rfl
theorem node2499_eq : Flapjack.WordAlloc.removeDeadStructural input2499 value1253 value1 value2 = (output2499, value1254, value1) := by
  rw [input2499_def, output2499_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2741 11665373399896817451#64))).val
theorem input2500_def : input2500 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2741 11665373399896817451#64)) := by
  unfold input2500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2500_def : output2500 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2500_skip : Flapjack.WordAlloc.isSkip output2500 = true := by
  rw [output2500_def]
  conv => lhs; cbv
  try rfl
theorem node2500_eq : Flapjack.WordAlloc.removeDeadStructural input2500 value1254 value1 value2 = (output2500, value1254, value1) := by
  rw [input2500_def, output2500_def]
  try (conv => lhs; cbv)
  try rfl

def value1255 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2737 2733 (Flapjack.WordRegImm.imm 616#64))))).val
theorem input2501_def : input2501 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2737 2733 (Flapjack.WordRegImm.imm 616#64)))) := by
  unfold input2501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2737 2733 (Flapjack.WordRegImm.imm 616#64))))).val
theorem output2501_def : output2501 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2737 2733 (Flapjack.WordRegImm.imm 616#64)))) := by
  unfold output2501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2501_skip : Flapjack.WordAlloc.isSkip output2501 = false := by
  rw [output2501_def]
  conv => lhs; cbv
  try rfl
theorem node2501_eq : Flapjack.WordAlloc.removeDeadStructural input2501 value1254 value1 value2 = (output2501, value1255, value1) := by
  rw [input2501_def, output2501_def]
  try (conv => lhs; cbv)
  try rfl

def value1256 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2733 (Flapjack.WordLangAddr.addr 2729 18446744073709551520#64)))).val
theorem input2502_def : input2502 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2733 (Flapjack.WordLangAddr.addr 2729 18446744073709551520#64))) := by
  unfold input2502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2733 (Flapjack.WordLangAddr.addr 2729 18446744073709551520#64)))).val
theorem output2502_def : output2502 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2733 (Flapjack.WordLangAddr.addr 2729 18446744073709551520#64))) := by
  unfold output2502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2502_skip : Flapjack.WordAlloc.isSkip output2502 = false := by
  rw [output2502_def]
  conv => lhs; cbv
  try rfl
theorem node2502_eq : Flapjack.WordAlloc.removeDeadStructural input2502 value1255 value1 value2 = (output2502, value1256, value1) := by
  rw [input2502_def, output2502_def]
  try (conv => lhs; cbv)
  try rfl

def value1257 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2729 2725)).val
theorem input2503_def : input2503 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2729 2725) := by
  unfold input2503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2729 2725)).val
theorem output2503_def : output2503 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2729 2725) := by
  unfold output2503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2503_skip : Flapjack.WordAlloc.isSkip output2503 = false := by
  rw [output2503_def]
  conv => lhs; cbv
  try rfl
theorem node2503_eq : Flapjack.WordAlloc.removeDeadStructural input2503 value1256 value1 value2 = (output2503, value1257, value1) := by
  rw [input2503_def, output2503_def]
  try (conv => lhs; cbv)
  try rfl

def value1258 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2725 2721 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2504_def : input2504 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2725 2721 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2725 2721 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2504_def : output2504 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2725 2721 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2504_skip : Flapjack.WordAlloc.isSkip output2504 = false := by
  rw [output2504_def]
  conv => lhs; cbv
  try rfl
theorem node2504_eq : Flapjack.WordAlloc.removeDeadStructural input2504 value1257 value1 value2 = (output2504, value1258, value1) := by
  rw [input2504_def, output2504_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2721 Flapjack.WordStore.heapLength)).val
theorem input2505_def : input2505 = (Flapjack.WordLangProgHOL.get 2721 Flapjack.WordStore.heapLength) := by
  unfold input2505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2721 Flapjack.WordStore.heapLength)).val
theorem output2505_def : output2505 = (Flapjack.WordLangProgHOL.get 2721 Flapjack.WordStore.heapLength) := by
  unfold output2505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2505_skip : Flapjack.WordAlloc.isSkip output2505 = false := by
  rw [output2505_def]
  conv => lhs; cbv
  try rfl
theorem node2505_eq : Flapjack.WordAlloc.removeDeadStructural input2505 value1258 value1 value2 = (output2505, value5, value1) := by
  rw [input2505_def, output2505_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2505 input2504)).val
theorem input2506_def : input2506 = (.seq input2505 input2504) := by
  unfold input2506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2505 output2504)).val
theorem output2506_def : output2506 = (.seq output2505 output2504) := by
  unfold output2506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2506_skip : Flapjack.WordAlloc.isSkip output2506 = false := by
  rw [output2506_def]
  conv => lhs; cbv
  try rfl
theorem node2506_eq : Flapjack.WordAlloc.removeDeadStructural input2506 value1257 value1 value2 = (output2506, value5, value1) := by
  rw [input2506_def, output2506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2504_eq]
  try dsimp only
  rw [node2505_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2506 input2503)).val
theorem input2507_def : input2507 = (.seq input2506 input2503) := by
  unfold input2507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2506 output2503)).val
theorem output2507_def : output2507 = (.seq output2506 output2503) := by
  unfold output2507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2507_skip : Flapjack.WordAlloc.isSkip output2507 = false := by
  rw [output2507_def]
  conv => lhs; cbv
  try rfl
theorem node2507_eq : Flapjack.WordAlloc.removeDeadStructural input2507 value1256 value1 value2 = (output2507, value5, value1) := by
  rw [input2507_def, output2507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2503_eq]
  try dsimp only
  rw [node2506_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2507 input2502)).val
theorem input2508_def : input2508 = (.seq input2507 input2502) := by
  unfold input2508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2507 output2502)).val
theorem output2508_def : output2508 = (.seq output2507 output2502) := by
  unfold output2508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2508_skip : Flapjack.WordAlloc.isSkip output2508 = false := by
  rw [output2508_def]
  conv => lhs; cbv
  try rfl
theorem node2508_eq : Flapjack.WordAlloc.removeDeadStructural input2508 value1255 value1 value2 = (output2508, value5, value1) := by
  rw [input2508_def, output2508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2502_eq]
  try dsimp only
  rw [node2507_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2508 input2501)).val
theorem input2509_def : input2509 = (.seq input2508 input2501) := by
  unfold input2509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2508 output2501)).val
theorem output2509_def : output2509 = (.seq output2508 output2501) := by
  unfold output2509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2509_skip : Flapjack.WordAlloc.isSkip output2509 = false := by
  rw [output2509_def]
  conv => lhs; cbv
  try rfl
theorem node2509_eq : Flapjack.WordAlloc.removeDeadStructural input2509 value1254 value1 value2 = (output2509, value5, value1) := by
  rw [input2509_def, output2509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2501_eq]
  try dsimp only
  rw [node2508_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1259 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2713 (Flapjack.WordLangAddr.addr 2717 0#64)))).val
theorem input2510_def : input2510 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2713 (Flapjack.WordLangAddr.addr 2717 0#64))) := by
  unfold input2510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2713 (Flapjack.WordLangAddr.addr 2717 0#64)))).val
theorem output2510_def : output2510 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2713 (Flapjack.WordLangAddr.addr 2717 0#64))) := by
  unfold output2510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2510_skip : Flapjack.WordAlloc.isSkip output2510 = false := by
  rw [output2510_def]
  conv => lhs; cbv
  try rfl
theorem node2510_eq : Flapjack.WordAlloc.removeDeadStructural input2510 value5 value1 value2 = (output2510, value1259, value1) := by
  rw [input2510_def, output2510_def]
  try (conv => lhs; cbv)
  try rfl

def value1260 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2717, 2705)])).val
theorem input2511_def : input2511 = (Flapjack.WordLangProgHOL.move 0 [(2717, 2705)]) := by
  unfold input2511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2717, 2705)])).val
theorem output2511_def : output2511 = (Flapjack.WordLangProgHOL.move 0 [(2717, 2705)]) := by
  unfold output2511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2511_skip : Flapjack.WordAlloc.isSkip output2511 = false := by
  rw [output2511_def]
  conv => lhs; cbv
  try rfl
theorem node2511_eq : Flapjack.WordAlloc.removeDeadStructural input2511 value1259 value1 value2 = (output2511, value1260, value1) := by
  rw [input2511_def, output2511_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2511 input2510)).val
theorem input2512_def : input2512 = (.seq input2511 input2510) := by
  unfold input2512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2511 output2510)).val
theorem output2512_def : output2512 = (.seq output2511 output2510) := by
  unfold output2512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2512_skip : Flapjack.WordAlloc.isSkip output2512 = false := by
  rw [output2512_def]
  conv => lhs; cbv
  try rfl
theorem node2512_eq : Flapjack.WordAlloc.removeDeadStructural input2512 value5 value1 value2 = (output2512, value1260, value1) := by
  rw [input2512_def, output2512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2510_eq]
  try dsimp only
  rw [node2511_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1261 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2713 13147546151981519864#64))).val
theorem input2513_def : input2513 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2713 13147546151981519864#64)) := by
  unfold input2513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2713 13147546151981519864#64))).val
theorem output2513_def : output2513 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2713 13147546151981519864#64)) := by
  unfold output2513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2513_skip : Flapjack.WordAlloc.isSkip output2513 = false := by
  rw [output2513_def]
  conv => lhs; cbv
  try rfl
theorem node2513_eq : Flapjack.WordAlloc.removeDeadStructural input2513 value1260 value1 value2 = (output2513, value1261, value1) := by
  rw [input2513_def, output2513_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2709 13147546151981519864#64))).val
theorem input2514_def : input2514 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2709 13147546151981519864#64)) := by
  unfold input2514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2514_def : output2514 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2514_skip : Flapjack.WordAlloc.isSkip output2514 = true := by
  rw [output2514_def]
  conv => lhs; cbv
  try rfl
theorem node2514_eq : Flapjack.WordAlloc.removeDeadStructural input2514 value1261 value1 value2 = (output2514, value1261, value1) := by
  rw [input2514_def, output2514_def]
  try (conv => lhs; cbv)
  try rfl

def value1262 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2705 2701 (Flapjack.WordRegImm.imm 608#64))))).val
theorem input2515_def : input2515 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2705 2701 (Flapjack.WordRegImm.imm 608#64)))) := by
  unfold input2515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2705 2701 (Flapjack.WordRegImm.imm 608#64))))).val
theorem output2515_def : output2515 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2705 2701 (Flapjack.WordRegImm.imm 608#64)))) := by
  unfold output2515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2515_skip : Flapjack.WordAlloc.isSkip output2515 = false := by
  rw [output2515_def]
  conv => lhs; cbv
  try rfl
theorem node2515_eq : Flapjack.WordAlloc.removeDeadStructural input2515 value1261 value1 value2 = (output2515, value1262, value1) := by
  rw [input2515_def, output2515_def]
  try (conv => lhs; cbv)
  try rfl

def value1263 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2701 (Flapjack.WordLangAddr.addr 2697 18446744073709551520#64)))).val
theorem input2516_def : input2516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2701 (Flapjack.WordLangAddr.addr 2697 18446744073709551520#64))) := by
  unfold input2516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2701 (Flapjack.WordLangAddr.addr 2697 18446744073709551520#64)))).val
theorem output2516_def : output2516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2701 (Flapjack.WordLangAddr.addr 2697 18446744073709551520#64))) := by
  unfold output2516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2516_skip : Flapjack.WordAlloc.isSkip output2516 = false := by
  rw [output2516_def]
  conv => lhs; cbv
  try rfl
theorem node2516_eq : Flapjack.WordAlloc.removeDeadStructural input2516 value1262 value1 value2 = (output2516, value1263, value1) := by
  rw [input2516_def, output2516_def]
  try (conv => lhs; cbv)
  try rfl

def value1264 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2697 2693)).val
theorem input2517_def : input2517 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2697 2693) := by
  unfold input2517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2697 2693)).val
theorem output2517_def : output2517 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2697 2693) := by
  unfold output2517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2517_skip : Flapjack.WordAlloc.isSkip output2517 = false := by
  rw [output2517_def]
  conv => lhs; cbv
  try rfl
theorem node2517_eq : Flapjack.WordAlloc.removeDeadStructural input2517 value1263 value1 value2 = (output2517, value1264, value1) := by
  rw [input2517_def, output2517_def]
  try (conv => lhs; cbv)
  try rfl

def value1265 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2693 2689 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2518_def : input2518 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2693 2689 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2693 2689 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2518_def : output2518 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2693 2689 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2518_skip : Flapjack.WordAlloc.isSkip output2518 = false := by
  rw [output2518_def]
  conv => lhs; cbv
  try rfl
theorem node2518_eq : Flapjack.WordAlloc.removeDeadStructural input2518 value1264 value1 value2 = (output2518, value1265, value1) := by
  rw [input2518_def, output2518_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2689 Flapjack.WordStore.heapLength)).val
theorem input2519_def : input2519 = (Flapjack.WordLangProgHOL.get 2689 Flapjack.WordStore.heapLength) := by
  unfold input2519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2689 Flapjack.WordStore.heapLength)).val
theorem output2519_def : output2519 = (Flapjack.WordLangProgHOL.get 2689 Flapjack.WordStore.heapLength) := by
  unfold output2519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2519_skip : Flapjack.WordAlloc.isSkip output2519 = false := by
  rw [output2519_def]
  conv => lhs; cbv
  try rfl
theorem node2519_eq : Flapjack.WordAlloc.removeDeadStructural input2519 value1265 value1 value2 = (output2519, value5, value1) := by
  rw [input2519_def, output2519_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2519 input2518)).val
theorem input2520_def : input2520 = (.seq input2519 input2518) := by
  unfold input2520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2519 output2518)).val
theorem output2520_def : output2520 = (.seq output2519 output2518) := by
  unfold output2520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2520_skip : Flapjack.WordAlloc.isSkip output2520 = false := by
  rw [output2520_def]
  conv => lhs; cbv
  try rfl
theorem node2520_eq : Flapjack.WordAlloc.removeDeadStructural input2520 value1264 value1 value2 = (output2520, value5, value1) := by
  rw [input2520_def, output2520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2518_eq]
  try dsimp only
  rw [node2519_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2520 input2517)).val
theorem input2521_def : input2521 = (.seq input2520 input2517) := by
  unfold input2521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2520 output2517)).val
theorem output2521_def : output2521 = (.seq output2520 output2517) := by
  unfold output2521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2521_skip : Flapjack.WordAlloc.isSkip output2521 = false := by
  rw [output2521_def]
  conv => lhs; cbv
  try rfl
theorem node2521_eq : Flapjack.WordAlloc.removeDeadStructural input2521 value1263 value1 value2 = (output2521, value5, value1) := by
  rw [input2521_def, output2521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2517_eq]
  try dsimp only
  rw [node2520_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2521 input2516)).val
theorem input2522_def : input2522 = (.seq input2521 input2516) := by
  unfold input2522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2521 output2516)).val
theorem output2522_def : output2522 = (.seq output2521 output2516) := by
  unfold output2522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2522_skip : Flapjack.WordAlloc.isSkip output2522 = false := by
  rw [output2522_def]
  conv => lhs; cbv
  try rfl
theorem node2522_eq : Flapjack.WordAlloc.removeDeadStructural input2522 value1262 value1 value2 = (output2522, value5, value1) := by
  rw [input2522_def, output2522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2516_eq]
  try dsimp only
  rw [node2521_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2522 input2515)).val
theorem input2523_def : input2523 = (.seq input2522 input2515) := by
  unfold input2523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2522 output2515)).val
theorem output2523_def : output2523 = (.seq output2522 output2515) := by
  unfold output2523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2523_skip : Flapjack.WordAlloc.isSkip output2523 = false := by
  rw [output2523_def]
  conv => lhs; cbv
  try rfl
theorem node2523_eq : Flapjack.WordAlloc.removeDeadStructural input2523 value1261 value1 value2 = (output2523, value5, value1) := by
  rw [input2523_def, output2523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2515_eq]
  try dsimp only
  rw [node2522_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1266 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2681 (Flapjack.WordLangAddr.addr 2685 0#64)))).val
theorem input2524_def : input2524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2681 (Flapjack.WordLangAddr.addr 2685 0#64))) := by
  unfold input2524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2681 (Flapjack.WordLangAddr.addr 2685 0#64)))).val
theorem output2524_def : output2524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2681 (Flapjack.WordLangAddr.addr 2685 0#64))) := by
  unfold output2524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2524_skip : Flapjack.WordAlloc.isSkip output2524 = false := by
  rw [output2524_def]
  conv => lhs; cbv
  try rfl
theorem node2524_eq : Flapjack.WordAlloc.removeDeadStructural input2524 value5 value1 value2 = (output2524, value1266, value1) := by
  rw [input2524_def, output2524_def]
  try (conv => lhs; cbv)
  try rfl

def value1267 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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

@[irreducible, cbv_opaque] def input2525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2685, 2673)])).val
theorem input2525_def : input2525 = (Flapjack.WordLangProgHOL.move 0 [(2685, 2673)]) := by
  unfold input2525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2685, 2673)])).val
theorem output2525_def : output2525 = (Flapjack.WordLangProgHOL.move 0 [(2685, 2673)]) := by
  unfold output2525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2525_skip : Flapjack.WordAlloc.isSkip output2525 = false := by
  rw [output2525_def]
  conv => lhs; cbv
  try rfl
theorem node2525_eq : Flapjack.WordAlloc.removeDeadStructural input2525 value1266 value1 value2 = (output2525, value1267, value1) := by
  rw [input2525_def, output2525_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2525 input2524)).val
theorem input2526_def : input2526 = (.seq input2525 input2524) := by
  unfold input2526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2525 output2524)).val
theorem output2526_def : output2526 = (.seq output2525 output2524) := by
  unfold output2526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2526_skip : Flapjack.WordAlloc.isSkip output2526 = false := by
  rw [output2526_def]
  conv => lhs; cbv
  try rfl
theorem node2526_eq : Flapjack.WordAlloc.removeDeadStructural input2526 value5 value1 value2 = (output2526, value1267, value1) := by
  rw [input2526_def, output2526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2524_eq]
  try dsimp only
  rw [node2525_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1268 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2681 11886449177369357420#64))).val
theorem input2527_def : input2527 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2681 11886449177369357420#64)) := by
  unfold input2527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2681 11886449177369357420#64))).val
theorem output2527_def : output2527 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2681 11886449177369357420#64)) := by
  unfold output2527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2527_skip : Flapjack.WordAlloc.isSkip output2527 = false := by
  rw [output2527_def]
  conv => lhs; cbv
  try rfl
theorem node2527_eq : Flapjack.WordAlloc.removeDeadStructural input2527 value1267 value1 value2 = (output2527, value1268, value1) := by
  rw [input2527_def, output2527_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2677 11886449177369357420#64))).val
theorem input2528_def : input2528 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2677 11886449177369357420#64)) := by
  unfold input2528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2528_def : output2528 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2528_skip : Flapjack.WordAlloc.isSkip output2528 = true := by
  rw [output2528_def]
  conv => lhs; cbv
  try rfl
theorem node2528_eq : Flapjack.WordAlloc.removeDeadStructural input2528 value1268 value1 value2 = (output2528, value1268, value1) := by
  rw [input2528_def, output2528_def]
  try (conv => lhs; cbv)
  try rfl

def value1269 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2673 2669 (Flapjack.WordRegImm.imm 600#64))))).val
theorem input2529_def : input2529 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2673 2669 (Flapjack.WordRegImm.imm 600#64)))) := by
  unfold input2529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2673 2669 (Flapjack.WordRegImm.imm 600#64))))).val
theorem output2529_def : output2529 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2673 2669 (Flapjack.WordRegImm.imm 600#64)))) := by
  unfold output2529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2529_skip : Flapjack.WordAlloc.isSkip output2529 = false := by
  rw [output2529_def]
  conv => lhs; cbv
  try rfl
theorem node2529_eq : Flapjack.WordAlloc.removeDeadStructural input2529 value1268 value1 value2 = (output2529, value1269, value1) := by
  rw [input2529_def, output2529_def]
  try (conv => lhs; cbv)
  try rfl

def value1270 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2669 (Flapjack.WordLangAddr.addr 2665 18446744073709551520#64)))).val
theorem input2530_def : input2530 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2669 (Flapjack.WordLangAddr.addr 2665 18446744073709551520#64))) := by
  unfold input2530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2669 (Flapjack.WordLangAddr.addr 2665 18446744073709551520#64)))).val
theorem output2530_def : output2530 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2669 (Flapjack.WordLangAddr.addr 2665 18446744073709551520#64))) := by
  unfold output2530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2530_skip : Flapjack.WordAlloc.isSkip output2530 = false := by
  rw [output2530_def]
  conv => lhs; cbv
  try rfl
theorem node2530_eq : Flapjack.WordAlloc.removeDeadStructural input2530 value1269 value1 value2 = (output2530, value1270, value1) := by
  rw [input2530_def, output2530_def]
  try (conv => lhs; cbv)
  try rfl

def value1271 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2665 2661)).val
theorem input2531_def : input2531 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2665 2661) := by
  unfold input2531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2665 2661)).val
theorem output2531_def : output2531 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2665 2661) := by
  unfold output2531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2531_skip : Flapjack.WordAlloc.isSkip output2531 = false := by
  rw [output2531_def]
  conv => lhs; cbv
  try rfl
theorem node2531_eq : Flapjack.WordAlloc.removeDeadStructural input2531 value1270 value1 value2 = (output2531, value1271, value1) := by
  rw [input2531_def, output2531_def]
  try (conv => lhs; cbv)
  try rfl

def value1272 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2661 2657 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2532_def : input2532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2661 2657 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2661 2657 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2532_def : output2532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2661 2657 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2532_skip : Flapjack.WordAlloc.isSkip output2532 = false := by
  rw [output2532_def]
  conv => lhs; cbv
  try rfl
theorem node2532_eq : Flapjack.WordAlloc.removeDeadStructural input2532 value1271 value1 value2 = (output2532, value1272, value1) := by
  rw [input2532_def, output2532_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2657 Flapjack.WordStore.heapLength)).val
theorem input2533_def : input2533 = (Flapjack.WordLangProgHOL.get 2657 Flapjack.WordStore.heapLength) := by
  unfold input2533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2657 Flapjack.WordStore.heapLength)).val
theorem output2533_def : output2533 = (Flapjack.WordLangProgHOL.get 2657 Flapjack.WordStore.heapLength) := by
  unfold output2533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2533_skip : Flapjack.WordAlloc.isSkip output2533 = false := by
  rw [output2533_def]
  conv => lhs; cbv
  try rfl
theorem node2533_eq : Flapjack.WordAlloc.removeDeadStructural input2533 value1272 value1 value2 = (output2533, value5, value1) := by
  rw [input2533_def, output2533_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2533 input2532)).val
theorem input2534_def : input2534 = (.seq input2533 input2532) := by
  unfold input2534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2533 output2532)).val
theorem output2534_def : output2534 = (.seq output2533 output2532) := by
  unfold output2534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2534_skip : Flapjack.WordAlloc.isSkip output2534 = false := by
  rw [output2534_def]
  conv => lhs; cbv
  try rfl
theorem node2534_eq : Flapjack.WordAlloc.removeDeadStructural input2534 value1271 value1 value2 = (output2534, value5, value1) := by
  rw [input2534_def, output2534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2532_eq]
  try dsimp only
  rw [node2533_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2534 input2531)).val
theorem input2535_def : input2535 = (.seq input2534 input2531) := by
  unfold input2535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2534 output2531)).val
theorem output2535_def : output2535 = (.seq output2534 output2531) := by
  unfold output2535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2535_skip : Flapjack.WordAlloc.isSkip output2535 = false := by
  rw [output2535_def]
  conv => lhs; cbv
  try rfl
theorem node2535_eq : Flapjack.WordAlloc.removeDeadStructural input2535 value1270 value1 value2 = (output2535, value5, value1) := by
  rw [input2535_def, output2535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2531_eq]
  try dsimp only
  rw [node2534_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2535 input2530)).val
theorem input2536_def : input2536 = (.seq input2535 input2530) := by
  unfold input2536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2535 output2530)).val
theorem output2536_def : output2536 = (.seq output2535 output2530) := by
  unfold output2536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2536_skip : Flapjack.WordAlloc.isSkip output2536 = false := by
  rw [output2536_def]
  conv => lhs; cbv
  try rfl
theorem node2536_eq : Flapjack.WordAlloc.removeDeadStructural input2536 value1269 value1 value2 = (output2536, value5, value1) := by
  rw [input2536_def, output2536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2530_eq]
  try dsimp only
  rw [node2535_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2536 input2529)).val
theorem input2537_def : input2537 = (.seq input2536 input2529) := by
  unfold input2537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2536 output2529)).val
theorem output2537_def : output2537 = (.seq output2536 output2529) := by
  unfold output2537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2537_skip : Flapjack.WordAlloc.isSkip output2537 = false := by
  rw [output2537_def]
  conv => lhs; cbv
  try rfl
theorem node2537_eq : Flapjack.WordAlloc.removeDeadStructural input2537 value1268 value1 value2 = (output2537, value5, value1) := by
  rw [input2537_def, output2537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2529_eq]
  try dsimp only
  rw [node2536_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1273 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2649 (Flapjack.WordLangAddr.addr 2653 0#64)))).val
theorem input2538_def : input2538 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2649 (Flapjack.WordLangAddr.addr 2653 0#64))) := by
  unfold input2538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2649 (Flapjack.WordLangAddr.addr 2653 0#64)))).val
theorem output2538_def : output2538 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2649 (Flapjack.WordLangAddr.addr 2653 0#64))) := by
  unfold output2538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2538_skip : Flapjack.WordAlloc.isSkip output2538 = false := by
  rw [output2538_def]
  conv => lhs; cbv
  try rfl
theorem node2538_eq : Flapjack.WordAlloc.removeDeadStructural input2538 value5 value1 value2 = (output2538, value1273, value1) := by
  rw [input2538_def, output2538_def]
  try (conv => lhs; cbv)
  try rfl

def value1274 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2653, 2641)])).val
theorem input2539_def : input2539 = (Flapjack.WordLangProgHOL.move 0 [(2653, 2641)]) := by
  unfold input2539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2653, 2641)])).val
theorem output2539_def : output2539 = (Flapjack.WordLangProgHOL.move 0 [(2653, 2641)]) := by
  unfold output2539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2539_skip : Flapjack.WordAlloc.isSkip output2539 = false := by
  rw [output2539_def]
  conv => lhs; cbv
  try rfl
theorem node2539_eq : Flapjack.WordAlloc.removeDeadStructural input2539 value1273 value1 value2 = (output2539, value1274, value1) := by
  rw [input2539_def, output2539_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2539 input2538)).val
theorem input2540_def : input2540 = (.seq input2539 input2538) := by
  unfold input2540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2539 output2538)).val
theorem output2540_def : output2540 = (.seq output2539 output2538) := by
  unfold output2540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2540_skip : Flapjack.WordAlloc.isSkip output2540 = false := by
  rw [output2540_def]
  conv => lhs; cbv
  try rfl
theorem node2540_eq : Flapjack.WordAlloc.removeDeadStructural input2540 value5 value1 value2 = (output2540, value1274, value1) := by
  rw [input2540_def, output2540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2538_eq]
  try dsimp only
  rw [node2539_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1275 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2649 14664322284665479009#64))).val
theorem input2541_def : input2541 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2649 14664322284665479009#64)) := by
  unfold input2541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2649 14664322284665479009#64))).val
theorem output2541_def : output2541 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2649 14664322284665479009#64)) := by
  unfold output2541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2541_skip : Flapjack.WordAlloc.isSkip output2541 = false := by
  rw [output2541_def]
  conv => lhs; cbv
  try rfl
theorem node2541_eq : Flapjack.WordAlloc.removeDeadStructural input2541 value1274 value1 value2 = (output2541, value1275, value1) := by
  rw [input2541_def, output2541_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2645 14664322284665479009#64))).val
theorem input2542_def : input2542 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2645 14664322284665479009#64)) := by
  unfold input2542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2542_def : output2542 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2542_skip : Flapjack.WordAlloc.isSkip output2542 = true := by
  rw [output2542_def]
  conv => lhs; cbv
  try rfl
theorem node2542_eq : Flapjack.WordAlloc.removeDeadStructural input2542 value1275 value1 value2 = (output2542, value1275, value1) := by
  rw [input2542_def, output2542_def]
  try (conv => lhs; cbv)
  try rfl

def value1276 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2641 2637 (Flapjack.WordRegImm.imm 592#64))))).val
theorem input2543_def : input2543 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2641 2637 (Flapjack.WordRegImm.imm 592#64)))) := by
  unfold input2543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2641 2637 (Flapjack.WordRegImm.imm 592#64))))).val
theorem output2543_def : output2543 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2641 2637 (Flapjack.WordRegImm.imm 592#64)))) := by
  unfold output2543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2543_skip : Flapjack.WordAlloc.isSkip output2543 = false := by
  rw [output2543_def]
  conv => lhs; cbv
  try rfl
theorem node2543_eq : Flapjack.WordAlloc.removeDeadStructural input2543 value1275 value1 value2 = (output2543, value1276, value1) := by
  rw [input2543_def, output2543_def]
  try (conv => lhs; cbv)
  try rfl

def value1277 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2637 (Flapjack.WordLangAddr.addr 2633 18446744073709551520#64)))).val
theorem input2544_def : input2544 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2637 (Flapjack.WordLangAddr.addr 2633 18446744073709551520#64))) := by
  unfold input2544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2637 (Flapjack.WordLangAddr.addr 2633 18446744073709551520#64)))).val
theorem output2544_def : output2544 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2637 (Flapjack.WordLangAddr.addr 2633 18446744073709551520#64))) := by
  unfold output2544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2544_skip : Flapjack.WordAlloc.isSkip output2544 = false := by
  rw [output2544_def]
  conv => lhs; cbv
  try rfl
theorem node2544_eq : Flapjack.WordAlloc.removeDeadStructural input2544 value1276 value1 value2 = (output2544, value1277, value1) := by
  rw [input2544_def, output2544_def]
  try (conv => lhs; cbv)
  try rfl

def value1278 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2633 2629)).val
theorem input2545_def : input2545 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2633 2629) := by
  unfold input2545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2633 2629)).val
theorem output2545_def : output2545 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2633 2629) := by
  unfold output2545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2545_skip : Flapjack.WordAlloc.isSkip output2545 = false := by
  rw [output2545_def]
  conv => lhs; cbv
  try rfl
theorem node2545_eq : Flapjack.WordAlloc.removeDeadStructural input2545 value1277 value1 value2 = (output2545, value1278, value1) := by
  rw [input2545_def, output2545_def]
  try (conv => lhs; cbv)
  try rfl

def value1279 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2629 2625 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2546_def : input2546 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2629 2625 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2629 2625 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2546_def : output2546 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2629 2625 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2546_skip : Flapjack.WordAlloc.isSkip output2546 = false := by
  rw [output2546_def]
  conv => lhs; cbv
  try rfl
theorem node2546_eq : Flapjack.WordAlloc.removeDeadStructural input2546 value1278 value1 value2 = (output2546, value1279, value1) := by
  rw [input2546_def, output2546_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2625 Flapjack.WordStore.heapLength)).val
theorem input2547_def : input2547 = (Flapjack.WordLangProgHOL.get 2625 Flapjack.WordStore.heapLength) := by
  unfold input2547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 2625 Flapjack.WordStore.heapLength)).val
theorem output2547_def : output2547 = (Flapjack.WordLangProgHOL.get 2625 Flapjack.WordStore.heapLength) := by
  unfold output2547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2547_skip : Flapjack.WordAlloc.isSkip output2547 = false := by
  rw [output2547_def]
  conv => lhs; cbv
  try rfl
theorem node2547_eq : Flapjack.WordAlloc.removeDeadStructural input2547 value1279 value1 value2 = (output2547, value5, value1) := by
  rw [input2547_def, output2547_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2547 input2546)).val
theorem input2548_def : input2548 = (.seq input2547 input2546) := by
  unfold input2548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2547 output2546)).val
theorem output2548_def : output2548 = (.seq output2547 output2546) := by
  unfold output2548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2548_skip : Flapjack.WordAlloc.isSkip output2548 = false := by
  rw [output2548_def]
  conv => lhs; cbv
  try rfl
theorem node2548_eq : Flapjack.WordAlloc.removeDeadStructural input2548 value1278 value1 value2 = (output2548, value5, value1) := by
  rw [input2548_def, output2548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2546_eq]
  try dsimp only
  rw [node2547_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2548 input2545)).val
theorem input2549_def : input2549 = (.seq input2548 input2545) := by
  unfold input2549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2548 output2545)).val
theorem output2549_def : output2549 = (.seq output2548 output2545) := by
  unfold output2549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2549_skip : Flapjack.WordAlloc.isSkip output2549 = false := by
  rw [output2549_def]
  conv => lhs; cbv
  try rfl
theorem node2549_eq : Flapjack.WordAlloc.removeDeadStructural input2549 value1277 value1 value2 = (output2549, value5, value1) := by
  rw [input2549_def, output2549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2545_eq]
  try dsimp only
  rw [node2548_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2549 input2544)).val
theorem input2550_def : input2550 = (.seq input2549 input2544) := by
  unfold input2550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2549 output2544)).val
theorem output2550_def : output2550 = (.seq output2549 output2544) := by
  unfold output2550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2550_skip : Flapjack.WordAlloc.isSkip output2550 = false := by
  rw [output2550_def]
  conv => lhs; cbv
  try rfl
theorem node2550_eq : Flapjack.WordAlloc.removeDeadStructural input2550 value1276 value1 value2 = (output2550, value5, value1) := by
  rw [input2550_def, output2550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2544_eq]
  try dsimp only
  rw [node2549_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2550 input2543)).val
theorem input2551_def : input2551 = (.seq input2550 input2543) := by
  unfold input2551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2550 output2543)).val
theorem output2551_def : output2551 = (.seq output2550 output2543) := by
  unfold output2551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2551_skip : Flapjack.WordAlloc.isSkip output2551 = false := by
  rw [output2551_def]
  conv => lhs; cbv
  try rfl
theorem node2551_eq : Flapjack.WordAlloc.removeDeadStructural input2551 value1275 value1 value2 = (output2551, value5, value1) := by
  rw [input2551_def, output2551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2543_eq]
  try dsimp only
  rw [node2550_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1280 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2617 (Flapjack.WordLangAddr.addr 2621 0#64)))).val
theorem input2552_def : input2552 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2617 (Flapjack.WordLangAddr.addr 2621 0#64))) := by
  unfold input2552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2617 (Flapjack.WordLangAddr.addr 2621 0#64)))).val
theorem output2552_def : output2552 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2617 (Flapjack.WordLangAddr.addr 2621 0#64))) := by
  unfold output2552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2552_skip : Flapjack.WordAlloc.isSkip output2552 = false := by
  rw [output2552_def]
  conv => lhs; cbv
  try rfl
theorem node2552_eq : Flapjack.WordAlloc.removeDeadStructural input2552 value5 value1 value2 = (output2552, value1280, value1) := by
  rw [input2552_def, output2552_def]
  try (conv => lhs; cbv)
  try rfl

def value1281 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2621, 2609)])).val
theorem input2553_def : input2553 = (Flapjack.WordLangProgHOL.move 0 [(2621, 2609)]) := by
  unfold input2553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2621, 2609)])).val
theorem output2553_def : output2553 = (Flapjack.WordLangProgHOL.move 0 [(2621, 2609)]) := by
  unfold output2553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2553_skip : Flapjack.WordAlloc.isSkip output2553 = false := by
  rw [output2553_def]
  conv => lhs; cbv
  try rfl
theorem node2553_eq : Flapjack.WordAlloc.removeDeadStructural input2553 value1280 value1 value2 = (output2553, value1281, value1) := by
  rw [input2553_def, output2553_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2553 input2552)).val
theorem input2554_def : input2554 = (.seq input2553 input2552) := by
  unfold input2554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2553 output2552)).val
theorem output2554_def : output2554 = (.seq output2553 output2552) := by
  unfold output2554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2554_skip : Flapjack.WordAlloc.isSkip output2554 = false := by
  rw [output2554_def]
  conv => lhs; cbv
  try rfl
theorem node2554_eq : Flapjack.WordAlloc.removeDeadStructural input2554 value5 value1 value2 = (output2554, value1281, value1) := by
  rw [input2554_def, output2554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2552_eq]
  try dsimp only
  rw [node2553_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1282 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2617 5107348632695414249#64))).val
theorem input2555_def : input2555 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2617 5107348632695414249#64)) := by
  unfold input2555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2617 5107348632695414249#64))).val
theorem output2555_def : output2555 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2617 5107348632695414249#64)) := by
  unfold output2555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2555_skip : Flapjack.WordAlloc.isSkip output2555 = false := by
  rw [output2555_def]
  conv => lhs; cbv
  try rfl
theorem node2555_eq : Flapjack.WordAlloc.removeDeadStructural input2555 value1281 value1 value2 = (output2555, value1282, value1) := by
  rw [input2555_def, output2555_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2613 5107348632695414249#64))).val
theorem input2556_def : input2556 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2613 5107348632695414249#64)) := by
  unfold input2556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2556_def : output2556 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2556_skip : Flapjack.WordAlloc.isSkip output2556 = true := by
  rw [output2556_def]
  conv => lhs; cbv
  try rfl
theorem node2556_eq : Flapjack.WordAlloc.removeDeadStructural input2556 value1282 value1 value2 = (output2556, value1282, value1) := by
  rw [input2556_def, output2556_def]
  try (conv => lhs; cbv)
  try rfl

def value1283 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2609 2605 (Flapjack.WordRegImm.imm 584#64))))).val
theorem input2557_def : input2557 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2609 2605 (Flapjack.WordRegImm.imm 584#64)))) := by
  unfold input2557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2609 2605 (Flapjack.WordRegImm.imm 584#64))))).val
theorem output2557_def : output2557 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2609 2605 (Flapjack.WordRegImm.imm 584#64)))) := by
  unfold output2557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2557_skip : Flapjack.WordAlloc.isSkip output2557 = false := by
  rw [output2557_def]
  conv => lhs; cbv
  try rfl
theorem node2557_eq : Flapjack.WordAlloc.removeDeadStructural input2557 value1282 value1 value2 = (output2557, value1283, value1) := by
  rw [input2557_def, output2557_def]
  try (conv => lhs; cbv)
  try rfl

def value1284 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2605 (Flapjack.WordLangAddr.addr 2601 18446744073709551520#64)))).val
theorem input2558_def : input2558 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2605 (Flapjack.WordLangAddr.addr 2601 18446744073709551520#64))) := by
  unfold input2558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2605 (Flapjack.WordLangAddr.addr 2601 18446744073709551520#64)))).val
theorem output2558_def : output2558 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2605 (Flapjack.WordLangAddr.addr 2601 18446744073709551520#64))) := by
  unfold output2558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2558_skip : Flapjack.WordAlloc.isSkip output2558 = false := by
  rw [output2558_def]
  conv => lhs; cbv
  try rfl
theorem node2558_eq : Flapjack.WordAlloc.removeDeadStructural input2558 value1283 value1 value2 = (output2558, value1284, value1) := by
  rw [input2558_def, output2558_def]
  try (conv => lhs; cbv)
  try rfl

def value1285 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2601 2597)).val
theorem input2559_def : input2559 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2601 2597) := by
  unfold input2559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2601 2597)).val
theorem output2559_def : output2559 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2601 2597) := by
  unfold output2559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2559_skip : Flapjack.WordAlloc.isSkip output2559 = false := by
  rw [output2559_def]
  conv => lhs; cbv
  try rfl
theorem node2559_eq : Flapjack.WordAlloc.removeDeadStructural input2559 value1284 value1 value2 = (output2559, value1285, value1) := by
  rw [input2559_def, output2559_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node2559_eq
end InitECandidate.Proofs.DeadStages240
