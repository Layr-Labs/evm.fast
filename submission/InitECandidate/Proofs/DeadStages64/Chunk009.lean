import InitECandidate.Proofs.DeadStages64.Chunk008
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages64
@[irreducible, cbv_opaque] def input288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input287 input286)).val
theorem input288_def : input288 = (.seq input287 input286) := by
  unfold input288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output287 output286)).val
theorem output288_def : output288 = (.seq output287 output286) := by
  unfold output288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output288_skip : Flapjack.WordAlloc.isSkip output288 = false := by
  rw [output288_def]
  conv => lhs; cbv
  try rfl
theorem node288_eq : Flapjack.WordAlloc.removeDeadStructural input288 value147 value1 value2 = (output288, value4, value1) := by
  rw [input288_def, output288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node286_eq]
  dsimp only
  rw [node287_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input288 input285)).val
theorem input289_def : input289 = (.seq input288 input285) := by
  unfold input289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output288 output285)).val
theorem output289_def : output289 = (.seq output288 output285) := by
  unfold output289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output289_skip : Flapjack.WordAlloc.isSkip output289 = false := by
  rw [output289_def]
  conv => lhs; cbv
  try rfl
theorem node289_eq : Flapjack.WordAlloc.removeDeadStructural input289 value146 value1 value2 = (output289, value4, value1) := by
  rw [input289_def, output289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node285_eq]
  dsimp only
  rw [node288_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input289 input284)).val
theorem input290_def : input290 = (.seq input289 input284) := by
  unfold input290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output289 output284)).val
theorem output290_def : output290 = (.seq output289 output284) := by
  unfold output290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output290_skip : Flapjack.WordAlloc.isSkip output290 = false := by
  rw [output290_def]
  conv => lhs; cbv
  try rfl
theorem node290_eq : Flapjack.WordAlloc.removeDeadStructural input290 value145 value1 value2 = (output290, value4, value1) := by
  rw [input290_def, output290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node284_eq]
  dsimp only
  rw [node289_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value149 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1937 (Flapjack.WordLangAddr.addr 1941 0#64)))).val
theorem input291_def : input291 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1937 (Flapjack.WordLangAddr.addr 1941 0#64))) := by
  unfold input291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1937 (Flapjack.WordLangAddr.addr 1941 0#64)))).val
theorem output291_def : output291 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1937 (Flapjack.WordLangAddr.addr 1941 0#64))) := by
  unfold output291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output291_skip : Flapjack.WordAlloc.isSkip output291 = false := by
  rw [output291_def]
  conv => lhs; cbv
  try rfl
theorem node291_eq : Flapjack.WordAlloc.removeDeadStructural input291 value4 value1 value2 = (output291, value149, value1) := by
  rw [input291_def, output291_def]
  try (conv => lhs; cbv)
  try rfl

def value150 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1941, 1929)])).val
theorem input292_def : input292 = (Flapjack.WordLangProgHOL.move 0 [(1941, 1929)]) := by
  unfold input292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1941, 1929)])).val
theorem output292_def : output292 = (Flapjack.WordLangProgHOL.move 0 [(1941, 1929)]) := by
  unfold output292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output292_skip : Flapjack.WordAlloc.isSkip output292 = false := by
  rw [output292_def]
  conv => lhs; cbv
  try rfl
theorem node292_eq : Flapjack.WordAlloc.removeDeadStructural input292 value149 value1 value2 = (output292, value150, value1) := by
  rw [input292_def, output292_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input292 input291)).val
theorem input293_def : input293 = (.seq input292 input291) := by
  unfold input293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output292 output291)).val
theorem output293_def : output293 = (.seq output292 output291) := by
  unfold output293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output293_skip : Flapjack.WordAlloc.isSkip output293 = false := by
  rw [output293_def]
  conv => lhs; cbv
  try rfl
theorem node293_eq : Flapjack.WordAlloc.removeDeadStructural input293 value4 value1 value2 = (output293, value150, value1) := by
  rw [input293_def, output293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node291_eq]
  dsimp only
  rw [node292_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value151 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1937 0#64))).val
theorem input294_def : input294 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1937 0#64)) := by
  unfold input294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1937 0#64))).val
theorem output294_def : output294 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1937 0#64)) := by
  unfold output294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output294_skip : Flapjack.WordAlloc.isSkip output294 = false := by
  rw [output294_def]
  conv => lhs; cbv
  try rfl
theorem node294_eq : Flapjack.WordAlloc.removeDeadStructural input294 value150 value1 value2 = (output294, value151, value1) := by
  rw [input294_def, output294_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1933 0#64))).val
theorem input295_def : input295 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1933 0#64)) := by
  unfold input295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output295_def : output295 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output295_skip : Flapjack.WordAlloc.isSkip output295 = true := by
  rw [output295_def]
  conv => lhs; cbv
  try rfl
theorem node295_eq : Flapjack.WordAlloc.removeDeadStructural input295 value151 value1 value2 = (output295, value151, value1) := by
  rw [input295_def, output295_def]
  try (conv => lhs; cbv)
  try rfl

def value152 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1929 1925 (Flapjack.WordRegImm.imm 18446744073709551064#64))))).val
theorem input296_def : input296 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1929 1925 (Flapjack.WordRegImm.imm 18446744073709551064#64)))) := by
  unfold input296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1929 1925 (Flapjack.WordRegImm.imm 18446744073709551064#64))))).val
theorem output296_def : output296 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1929 1925 (Flapjack.WordRegImm.imm 18446744073709551064#64)))) := by
  unfold output296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output296_skip : Flapjack.WordAlloc.isSkip output296 = false := by
  rw [output296_def]
  conv => lhs; cbv
  try rfl
theorem node296_eq : Flapjack.WordAlloc.removeDeadStructural input296 value151 value1 value2 = (output296, value152, value1) := by
  rw [input296_def, output296_def]
  try (conv => lhs; cbv)
  try rfl

def value153 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1925 1921)).val
theorem input297_def : input297 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1925 1921) := by
  unfold input297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1925 1921)).val
theorem output297_def : output297 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1925 1921) := by
  unfold output297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output297_skip : Flapjack.WordAlloc.isSkip output297 = false := by
  rw [output297_def]
  conv => lhs; cbv
  try rfl
theorem node297_eq : Flapjack.WordAlloc.removeDeadStructural input297 value152 value1 value2 = (output297, value153, value1) := by
  rw [input297_def, output297_def]
  try (conv => lhs; cbv)
  try rfl

def value154 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1921 1917 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input298_def : input298 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1921 1917 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1921 1917 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output298_def : output298 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1921 1917 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output298_skip : Flapjack.WordAlloc.isSkip output298 = false := by
  rw [output298_def]
  conv => lhs; cbv
  try rfl
theorem node298_eq : Flapjack.WordAlloc.removeDeadStructural input298 value153 value1 value2 = (output298, value154, value1) := by
  rw [input298_def, output298_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1917 Flapjack.WordStore.heapLength)).val
theorem input299_def : input299 = (Flapjack.WordLangProgHOL.get 1917 Flapjack.WordStore.heapLength) := by
  unfold input299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1917 Flapjack.WordStore.heapLength)).val
theorem output299_def : output299 = (Flapjack.WordLangProgHOL.get 1917 Flapjack.WordStore.heapLength) := by
  unfold output299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output299_skip : Flapjack.WordAlloc.isSkip output299 = false := by
  rw [output299_def]
  conv => lhs; cbv
  try rfl
theorem node299_eq : Flapjack.WordAlloc.removeDeadStructural input299 value154 value1 value2 = (output299, value4, value1) := by
  rw [input299_def, output299_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input299 input298)).val
theorem input300_def : input300 = (.seq input299 input298) := by
  unfold input300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output299 output298)).val
theorem output300_def : output300 = (.seq output299 output298) := by
  unfold output300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output300_skip : Flapjack.WordAlloc.isSkip output300 = false := by
  rw [output300_def]
  conv => lhs; cbv
  try rfl
theorem node300_eq : Flapjack.WordAlloc.removeDeadStructural input300 value153 value1 value2 = (output300, value4, value1) := by
  rw [input300_def, output300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node298_eq]
  dsimp only
  rw [node299_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input300 input297)).val
theorem input301_def : input301 = (.seq input300 input297) := by
  unfold input301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output300 output297)).val
theorem output301_def : output301 = (.seq output300 output297) := by
  unfold output301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output301_skip : Flapjack.WordAlloc.isSkip output301 = false := by
  rw [output301_def]
  conv => lhs; cbv
  try rfl
theorem node301_eq : Flapjack.WordAlloc.removeDeadStructural input301 value152 value1 value2 = (output301, value4, value1) := by
  rw [input301_def, output301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node297_eq]
  dsimp only
  rw [node300_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input301 input296)).val
theorem input302_def : input302 = (.seq input301 input296) := by
  unfold input302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output301 output296)).val
theorem output302_def : output302 = (.seq output301 output296) := by
  unfold output302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output302_skip : Flapjack.WordAlloc.isSkip output302 = false := by
  rw [output302_def]
  conv => lhs; cbv
  try rfl
theorem node302_eq : Flapjack.WordAlloc.removeDeadStructural input302 value151 value1 value2 = (output302, value4, value1) := by
  rw [input302_def, output302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node296_eq]
  dsimp only
  rw [node301_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value155 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1909 (Flapjack.WordLangAddr.addr 1913 0#64)))).val
theorem input303_def : input303 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1909 (Flapjack.WordLangAddr.addr 1913 0#64))) := by
  unfold input303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1909 (Flapjack.WordLangAddr.addr 1913 0#64)))).val
theorem output303_def : output303 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1909 (Flapjack.WordLangAddr.addr 1913 0#64))) := by
  unfold output303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output303_skip : Flapjack.WordAlloc.isSkip output303 = false := by
  rw [output303_def]
  conv => lhs; cbv
  try rfl
theorem node303_eq : Flapjack.WordAlloc.removeDeadStructural input303 value4 value1 value2 = (output303, value155, value1) := by
  rw [input303_def, output303_def]
  try (conv => lhs; cbv)
  try rfl

def value156 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1913, 1901)])).val
theorem input304_def : input304 = (Flapjack.WordLangProgHOL.move 0 [(1913, 1901)]) := by
  unfold input304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1913, 1901)])).val
theorem output304_def : output304 = (Flapjack.WordLangProgHOL.move 0 [(1913, 1901)]) := by
  unfold output304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output304_skip : Flapjack.WordAlloc.isSkip output304 = false := by
  rw [output304_def]
  conv => lhs; cbv
  try rfl
theorem node304_eq : Flapjack.WordAlloc.removeDeadStructural input304 value155 value1 value2 = (output304, value156, value1) := by
  rw [input304_def, output304_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input304 input303)).val
theorem input305_def : input305 = (.seq input304 input303) := by
  unfold input305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output304 output303)).val
theorem output305_def : output305 = (.seq output304 output303) := by
  unfold output305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output305_skip : Flapjack.WordAlloc.isSkip output305 = false := by
  rw [output305_def]
  conv => lhs; cbv
  try rfl
theorem node305_eq : Flapjack.WordAlloc.removeDeadStructural input305 value4 value1 value2 = (output305, value156, value1) := by
  rw [input305_def, output305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node303_eq]
  dsimp only
  rw [node304_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value157 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1909 0#64))).val
theorem input306_def : input306 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1909 0#64)) := by
  unfold input306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1909 0#64))).val
theorem output306_def : output306 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1909 0#64)) := by
  unfold output306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output306_skip : Flapjack.WordAlloc.isSkip output306 = false := by
  rw [output306_def]
  conv => lhs; cbv
  try rfl
theorem node306_eq : Flapjack.WordAlloc.removeDeadStructural input306 value156 value1 value2 = (output306, value157, value1) := by
  rw [input306_def, output306_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1905 0#64))).val
theorem input307_def : input307 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1905 0#64)) := by
  unfold input307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output307_def : output307 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output307_skip : Flapjack.WordAlloc.isSkip output307 = true := by
  rw [output307_def]
  conv => lhs; cbv
  try rfl
theorem node307_eq : Flapjack.WordAlloc.removeDeadStructural input307 value157 value1 value2 = (output307, value157, value1) := by
  rw [input307_def, output307_def]
  try (conv => lhs; cbv)
  try rfl

def value158 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1901 1897 (Flapjack.WordRegImm.imm 18446744073709551072#64))))).val
theorem input308_def : input308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1901 1897 (Flapjack.WordRegImm.imm 18446744073709551072#64)))) := by
  unfold input308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1901 1897 (Flapjack.WordRegImm.imm 18446744073709551072#64))))).val
theorem output308_def : output308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1901 1897 (Flapjack.WordRegImm.imm 18446744073709551072#64)))) := by
  unfold output308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output308_skip : Flapjack.WordAlloc.isSkip output308 = false := by
  rw [output308_def]
  conv => lhs; cbv
  try rfl
theorem node308_eq : Flapjack.WordAlloc.removeDeadStructural input308 value157 value1 value2 = (output308, value158, value1) := by
  rw [input308_def, output308_def]
  try (conv => lhs; cbv)
  try rfl

def value159 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.ls PUnit.unit))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1897 1893)).val
theorem input309_def : input309 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1897 1893) := by
  unfold input309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1897 1893)).val
theorem output309_def : output309 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1897 1893) := by
  unfold output309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output309_skip : Flapjack.WordAlloc.isSkip output309 = false := by
  rw [output309_def]
  conv => lhs; cbv
  try rfl
theorem node309_eq : Flapjack.WordAlloc.removeDeadStructural input309 value158 value1 value2 = (output309, value159, value1) := by
  rw [input309_def, output309_def]
  try (conv => lhs; cbv)
  try rfl

def value160 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1893 1889 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input310_def : input310 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1893 1889 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1893 1889 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output310_def : output310 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1893 1889 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output310_skip : Flapjack.WordAlloc.isSkip output310 = false := by
  rw [output310_def]
  conv => lhs; cbv
  try rfl
theorem node310_eq : Flapjack.WordAlloc.removeDeadStructural input310 value159 value1 value2 = (output310, value160, value1) := by
  rw [input310_def, output310_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1889 Flapjack.WordStore.heapLength)).val
theorem input311_def : input311 = (Flapjack.WordLangProgHOL.get 1889 Flapjack.WordStore.heapLength) := by
  unfold input311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1889 Flapjack.WordStore.heapLength)).val
theorem output311_def : output311 = (Flapjack.WordLangProgHOL.get 1889 Flapjack.WordStore.heapLength) := by
  unfold output311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output311_skip : Flapjack.WordAlloc.isSkip output311 = false := by
  rw [output311_def]
  conv => lhs; cbv
  try rfl
theorem node311_eq : Flapjack.WordAlloc.removeDeadStructural input311 value160 value1 value2 = (output311, value4, value1) := by
  rw [input311_def, output311_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input311 input310)).val
theorem input312_def : input312 = (.seq input311 input310) := by
  unfold input312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output311 output310)).val
theorem output312_def : output312 = (.seq output311 output310) := by
  unfold output312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output312_skip : Flapjack.WordAlloc.isSkip output312 = false := by
  rw [output312_def]
  conv => lhs; cbv
  try rfl
theorem node312_eq : Flapjack.WordAlloc.removeDeadStructural input312 value159 value1 value2 = (output312, value4, value1) := by
  rw [input312_def, output312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node310_eq]
  dsimp only
  rw [node311_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input312 input309)).val
theorem input313_def : input313 = (.seq input312 input309) := by
  unfold input313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output312 output309)).val
theorem output313_def : output313 = (.seq output312 output309) := by
  unfold output313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output313_skip : Flapjack.WordAlloc.isSkip output313 = false := by
  rw [output313_def]
  conv => lhs; cbv
  try rfl
theorem node313_eq : Flapjack.WordAlloc.removeDeadStructural input313 value158 value1 value2 = (output313, value4, value1) := by
  rw [input313_def, output313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node309_eq]
  dsimp only
  rw [node312_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input313 input308)).val
theorem input314_def : input314 = (.seq input313 input308) := by
  unfold input314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output313 output308)).val
theorem output314_def : output314 = (.seq output313 output308) := by
  unfold output314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output314_skip : Flapjack.WordAlloc.isSkip output314 = false := by
  rw [output314_def]
  conv => lhs; cbv
  try rfl
theorem node314_eq : Flapjack.WordAlloc.removeDeadStructural input314 value157 value1 value2 = (output314, value4, value1) := by
  rw [input314_def, output314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node308_eq]
  dsimp only
  rw [node313_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value161 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1881 (Flapjack.WordLangAddr.addr 1885 0#64)))).val
theorem input315_def : input315 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1881 (Flapjack.WordLangAddr.addr 1885 0#64))) := by
  unfold input315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1881 (Flapjack.WordLangAddr.addr 1885 0#64)))).val
theorem output315_def : output315 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1881 (Flapjack.WordLangAddr.addr 1885 0#64))) := by
  unfold output315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output315_skip : Flapjack.WordAlloc.isSkip output315 = false := by
  rw [output315_def]
  conv => lhs; cbv
  try rfl
theorem node315_eq : Flapjack.WordAlloc.removeDeadStructural input315 value4 value1 value2 = (output315, value161, value1) := by
  rw [input315_def, output315_def]
  try (conv => lhs; cbv)
  try rfl

def value162 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1885, 1873)])).val
theorem input316_def : input316 = (Flapjack.WordLangProgHOL.move 0 [(1885, 1873)]) := by
  unfold input316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1885, 1873)])).val
theorem output316_def : output316 = (Flapjack.WordLangProgHOL.move 0 [(1885, 1873)]) := by
  unfold output316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output316_skip : Flapjack.WordAlloc.isSkip output316 = false := by
  rw [output316_def]
  conv => lhs; cbv
  try rfl
theorem node316_eq : Flapjack.WordAlloc.removeDeadStructural input316 value161 value1 value2 = (output316, value162, value1) := by
  rw [input316_def, output316_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input316 input315)).val
theorem input317_def : input317 = (.seq input316 input315) := by
  unfold input317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output316 output315)).val
theorem output317_def : output317 = (.seq output316 output315) := by
  unfold output317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output317_skip : Flapjack.WordAlloc.isSkip output317 = false := by
  rw [output317_def]
  conv => lhs; cbv
  try rfl
theorem node317_eq : Flapjack.WordAlloc.removeDeadStructural input317 value4 value1 value2 = (output317, value162, value1) := by
  rw [input317_def, output317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node315_eq]
  dsimp only
  rw [node316_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value163 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1881 0#64))).val
theorem input318_def : input318 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1881 0#64)) := by
  unfold input318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1881 0#64))).val
theorem output318_def : output318 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1881 0#64)) := by
  unfold output318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output318_skip : Flapjack.WordAlloc.isSkip output318 = false := by
  rw [output318_def]
  conv => lhs; cbv
  try rfl
theorem node318_eq : Flapjack.WordAlloc.removeDeadStructural input318 value162 value1 value2 = (output318, value163, value1) := by
  rw [input318_def, output318_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1877 0#64))).val
theorem input319_def : input319 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1877 0#64)) := by
  unfold input319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output319_def : output319 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output319_skip : Flapjack.WordAlloc.isSkip output319 = true := by
  rw [output319_def]
  conv => lhs; cbv
  try rfl
theorem node319_eq : Flapjack.WordAlloc.removeDeadStructural input319 value163 value1 value2 = (output319, value163, value1) := by
  rw [input319_def, output319_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node319_eq
end InitECandidate.Proofs.DeadStages64
