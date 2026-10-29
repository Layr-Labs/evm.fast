import InitECandidate.Proofs.DeadStages713.Chunk009
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input2560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2559 input2558)).val
theorem input2560_def : input2560 = (.seq input2559 input2558) := by
  unfold input2560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2559 output2558)).val
theorem output2560_def : output2560 = (.seq output2559 output2558) := by
  unfold output2560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2560_skip : Flapjack.WordAlloc.isSkip output2560 = false := by
  rw [output2560_def]
  conv => lhs; cbv
  try rfl
theorem node2560_eq : Flapjack.WordAlloc.removeDeadStructural input2560 value1284 value1 value2 = (output2560, value5, value1) := by
  rw [input2560_def, output2560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2558_eq]
  dsimp only
  rw [node2559_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2560 input2557)).val
theorem input2561_def : input2561 = (.seq input2560 input2557) := by
  unfold input2561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2560 output2557)).val
theorem output2561_def : output2561 = (.seq output2560 output2557) := by
  unfold output2561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2561_skip : Flapjack.WordAlloc.isSkip output2561 = false := by
  rw [output2561_def]
  conv => lhs; cbv
  try rfl
theorem node2561_eq : Flapjack.WordAlloc.removeDeadStructural input2561 value1283 value1 value2 = (output2561, value5, value1) := by
  rw [input2561_def, output2561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2557_eq]
  dsimp only
  rw [node2560_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2561 input2556)).val
theorem input2562_def : input2562 = (.seq input2561 input2556) := by
  unfold input2562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2561 output2556)).val
theorem output2562_def : output2562 = (.seq output2561 output2556) := by
  unfold output2562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2562_skip : Flapjack.WordAlloc.isSkip output2562 = false := by
  rw [output2562_def]
  conv => lhs; cbv
  try rfl
theorem node2562_eq : Flapjack.WordAlloc.removeDeadStructural input2562 value1282 value1 value2 = (output2562, value5, value1) := by
  rw [input2562_def, output2562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2556_eq]
  dsimp only
  rw [node2561_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2562 input2555)).val
theorem input2563_def : input2563 = (.seq input2562 input2555) := by
  unfold input2563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2562 output2555)).val
theorem output2563_def : output2563 = (.seq output2562 output2555) := by
  unfold output2563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2563_skip : Flapjack.WordAlloc.isSkip output2563 = false := by
  rw [output2563_def]
  conv => lhs; cbv
  try rfl
theorem node2563_eq : Flapjack.WordAlloc.removeDeadStructural input2563 value1280 value1 value2 = (output2563, value5, value1) := by
  rw [input2563_def, output2563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2555_eq]
  dsimp only
  rw [node2562_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1286 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25449 (Flapjack.WordLangAddr.addr 25453 0#64)))).val
theorem input2564_def : input2564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25449 (Flapjack.WordLangAddr.addr 25453 0#64))) := by
  unfold input2564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25449 (Flapjack.WordLangAddr.addr 25453 0#64)))).val
theorem output2564_def : output2564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25449 (Flapjack.WordLangAddr.addr 25453 0#64))) := by
  unfold output2564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2564_skip : Flapjack.WordAlloc.isSkip output2564 = false := by
  rw [output2564_def]
  conv => lhs; cbv
  try rfl
theorem node2564_eq : Flapjack.WordAlloc.removeDeadStructural input2564 value5 value1 value2 = (output2564, value1286, value1) := by
  rw [input2564_def, output2564_def]
  try (conv => lhs; cbv)
  try rfl

def value1287 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25453, 25441)])).val
theorem input2565_def : input2565 = (Flapjack.WordLangProgHOL.move 0 [(25453, 25441)]) := by
  unfold input2565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25453, 25441)])).val
theorem output2565_def : output2565 = (Flapjack.WordLangProgHOL.move 0 [(25453, 25441)]) := by
  unfold output2565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2565_skip : Flapjack.WordAlloc.isSkip output2565 = false := by
  rw [output2565_def]
  conv => lhs; cbv
  try rfl
theorem node2565_eq : Flapjack.WordAlloc.removeDeadStructural input2565 value1286 value1 value2 = (output2565, value1287, value1) := by
  rw [input2565_def, output2565_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2565 input2564)).val
theorem input2566_def : input2566 = (.seq input2565 input2564) := by
  unfold input2566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2565 output2564)).val
theorem output2566_def : output2566 = (.seq output2565 output2564) := by
  unfold output2566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2566_skip : Flapjack.WordAlloc.isSkip output2566 = false := by
  rw [output2566_def]
  conv => lhs; cbv
  try rfl
theorem node2566_eq : Flapjack.WordAlloc.removeDeadStructural input2566 value5 value1 value2 = (output2566, value1287, value1) := by
  rw [input2566_def, output2566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2564_eq]
  dsimp only
  rw [node2565_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1288 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25449 736713837172402858#64))).val
theorem input2567_def : input2567 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25449 736713837172402858#64)) := by
  unfold input2567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25449 736713837172402858#64))).val
theorem output2567_def : output2567 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25449 736713837172402858#64)) := by
  unfold output2567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2567_skip : Flapjack.WordAlloc.isSkip output2567 = false := by
  rw [output2567_def]
  conv => lhs; cbv
  try rfl
theorem node2567_eq : Flapjack.WordAlloc.removeDeadStructural input2567 value1287 value1 value2 = (output2567, value1288, value1) := by
  rw [input2567_def, output2567_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25445 736713837172402858#64))).val
theorem input2568_def : input2568 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25445 736713837172402858#64)) := by
  unfold input2568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2568_def : output2568 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2568_skip : Flapjack.WordAlloc.isSkip output2568 = true := by
  rw [output2568_def]
  conv => lhs; cbv
  try rfl
theorem node2568_eq : Flapjack.WordAlloc.removeDeadStructural input2568 value1288 value1 value2 = (output2568, value1288, value1) := by
  rw [input2568_def, output2568_def]
  try (conv => lhs; cbv)
  try rfl

def value1289 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25441 25433 (Flapjack.WordRegImm.reg 25437))))).val
theorem input2569_def : input2569 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25441 25433 (Flapjack.WordRegImm.reg 25437)))) := by
  unfold input2569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25441 25433 (Flapjack.WordRegImm.reg 25437))))).val
theorem output2569_def : output2569 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25441 25433 (Flapjack.WordRegImm.reg 25437)))) := by
  unfold output2569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2569_skip : Flapjack.WordAlloc.isSkip output2569 = false := by
  rw [output2569_def]
  conv => lhs; cbv
  try rfl
theorem node2569_eq : Flapjack.WordAlloc.removeDeadStructural input2569 value1288 value1 value2 = (output2569, value1289, value1) := by
  rw [input2569_def, output2569_def]
  try (conv => lhs; cbv)
  try rfl

def value1290 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25437 5848#64))).val
theorem input2570_def : input2570 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25437 5848#64)) := by
  unfold input2570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25437 5848#64))).val
theorem output2570_def : output2570 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25437 5848#64)) := by
  unfold output2570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2570_skip : Flapjack.WordAlloc.isSkip output2570 = false := by
  rw [output2570_def]
  conv => lhs; cbv
  try rfl
theorem node2570_eq : Flapjack.WordAlloc.removeDeadStructural input2570 value1289 value1 value2 = (output2570, value1290, value1) := by
  rw [input2570_def, output2570_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2570 input2569)).val
theorem input2571_def : input2571 = (.seq input2570 input2569) := by
  unfold input2571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2570 output2569)).val
theorem output2571_def : output2571 = (.seq output2570 output2569) := by
  unfold output2571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2571_skip : Flapjack.WordAlloc.isSkip output2571 = false := by
  rw [output2571_def]
  conv => lhs; cbv
  try rfl
theorem node2571_eq : Flapjack.WordAlloc.removeDeadStructural input2571 value1288 value1 value2 = (output2571, value1290, value1) := by
  rw [input2571_def, output2571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2569_eq]
  dsimp only
  rw [node2570_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1291 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25433 (Flapjack.WordLangAddr.addr 25429 18446744073709551104#64)))).val
theorem input2572_def : input2572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25433 (Flapjack.WordLangAddr.addr 25429 18446744073709551104#64))) := by
  unfold input2572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25433 (Flapjack.WordLangAddr.addr 25429 18446744073709551104#64)))).val
theorem output2572_def : output2572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25433 (Flapjack.WordLangAddr.addr 25429 18446744073709551104#64))) := by
  unfold output2572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2572_skip : Flapjack.WordAlloc.isSkip output2572 = false := by
  rw [output2572_def]
  conv => lhs; cbv
  try rfl
theorem node2572_eq : Flapjack.WordAlloc.removeDeadStructural input2572 value1290 value1 value2 = (output2572, value1291, value1) := by
  rw [input2572_def, output2572_def]
  try (conv => lhs; cbv)
  try rfl

def value1292 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25429 25425)).val
theorem input2573_def : input2573 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25429 25425) := by
  unfold input2573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25429 25425)).val
theorem output2573_def : output2573 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25429 25425) := by
  unfold output2573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2573_skip : Flapjack.WordAlloc.isSkip output2573 = false := by
  rw [output2573_def]
  conv => lhs; cbv
  try rfl
theorem node2573_eq : Flapjack.WordAlloc.removeDeadStructural input2573 value1291 value1 value2 = (output2573, value1292, value1) := by
  rw [input2573_def, output2573_def]
  try (conv => lhs; cbv)
  try rfl

def value1293 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25425 25421 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2574_def : input2574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25425 25421 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25425 25421 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2574_def : output2574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25425 25421 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2574_skip : Flapjack.WordAlloc.isSkip output2574 = false := by
  rw [output2574_def]
  conv => lhs; cbv
  try rfl
theorem node2574_eq : Flapjack.WordAlloc.removeDeadStructural input2574 value1292 value1 value2 = (output2574, value1293, value1) := by
  rw [input2574_def, output2574_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25421 Flapjack.WordStore.heapLength)).val
theorem input2575_def : input2575 = (Flapjack.WordLangProgHOL.get 25421 Flapjack.WordStore.heapLength) := by
  unfold input2575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25421 Flapjack.WordStore.heapLength)).val
theorem output2575_def : output2575 = (Flapjack.WordLangProgHOL.get 25421 Flapjack.WordStore.heapLength) := by
  unfold output2575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2575_skip : Flapjack.WordAlloc.isSkip output2575 = false := by
  rw [output2575_def]
  conv => lhs; cbv
  try rfl
theorem node2575_eq : Flapjack.WordAlloc.removeDeadStructural input2575 value1293 value1 value2 = (output2575, value5, value1) := by
  rw [input2575_def, output2575_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2575 input2574)).val
theorem input2576_def : input2576 = (.seq input2575 input2574) := by
  unfold input2576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2575 output2574)).val
theorem output2576_def : output2576 = (.seq output2575 output2574) := by
  unfold output2576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2576_skip : Flapjack.WordAlloc.isSkip output2576 = false := by
  rw [output2576_def]
  conv => lhs; cbv
  try rfl
theorem node2576_eq : Flapjack.WordAlloc.removeDeadStructural input2576 value1292 value1 value2 = (output2576, value5, value1) := by
  rw [input2576_def, output2576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2574_eq]
  dsimp only
  rw [node2575_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2576 input2573)).val
theorem input2577_def : input2577 = (.seq input2576 input2573) := by
  unfold input2577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2576 output2573)).val
theorem output2577_def : output2577 = (.seq output2576 output2573) := by
  unfold output2577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2577_skip : Flapjack.WordAlloc.isSkip output2577 = false := by
  rw [output2577_def]
  conv => lhs; cbv
  try rfl
theorem node2577_eq : Flapjack.WordAlloc.removeDeadStructural input2577 value1291 value1 value2 = (output2577, value5, value1) := by
  rw [input2577_def, output2577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2573_eq]
  dsimp only
  rw [node2576_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2577 input2572)).val
theorem input2578_def : input2578 = (.seq input2577 input2572) := by
  unfold input2578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2577 output2572)).val
theorem output2578_def : output2578 = (.seq output2577 output2572) := by
  unfold output2578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2578_skip : Flapjack.WordAlloc.isSkip output2578 = false := by
  rw [output2578_def]
  conv => lhs; cbv
  try rfl
theorem node2578_eq : Flapjack.WordAlloc.removeDeadStructural input2578 value1290 value1 value2 = (output2578, value5, value1) := by
  rw [input2578_def, output2578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2572_eq]
  dsimp only
  rw [node2577_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2578 input2571)).val
theorem input2579_def : input2579 = (.seq input2578 input2571) := by
  unfold input2579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2578 output2571)).val
theorem output2579_def : output2579 = (.seq output2578 output2571) := by
  unfold output2579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2579_skip : Flapjack.WordAlloc.isSkip output2579 = false := by
  rw [output2579_def]
  conv => lhs; cbv
  try rfl
theorem node2579_eq : Flapjack.WordAlloc.removeDeadStructural input2579 value1288 value1 value2 = (output2579, value5, value1) := by
  rw [input2579_def, output2579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2571_eq]
  dsimp only
  rw [node2578_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1294 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25413 (Flapjack.WordLangAddr.addr 25417 0#64)))).val
theorem input2580_def : input2580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25413 (Flapjack.WordLangAddr.addr 25417 0#64))) := by
  unfold input2580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25413 (Flapjack.WordLangAddr.addr 25417 0#64)))).val
theorem output2580_def : output2580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25413 (Flapjack.WordLangAddr.addr 25417 0#64))) := by
  unfold output2580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2580_skip : Flapjack.WordAlloc.isSkip output2580 = false := by
  rw [output2580_def]
  conv => lhs; cbv
  try rfl
theorem node2580_eq : Flapjack.WordAlloc.removeDeadStructural input2580 value5 value1 value2 = (output2580, value1294, value1) := by
  rw [input2580_def, output2580_def]
  try (conv => lhs; cbv)
  try rfl

def value1295 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25417, 25405)])).val
theorem input2581_def : input2581 = (Flapjack.WordLangProgHOL.move 0 [(25417, 25405)]) := by
  unfold input2581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25417, 25405)])).val
theorem output2581_def : output2581 = (Flapjack.WordLangProgHOL.move 0 [(25417, 25405)]) := by
  unfold output2581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2581_skip : Flapjack.WordAlloc.isSkip output2581 = false := by
  rw [output2581_def]
  conv => lhs; cbv
  try rfl
theorem node2581_eq : Flapjack.WordAlloc.removeDeadStructural input2581 value1294 value1 value2 = (output2581, value1295, value1) := by
  rw [input2581_def, output2581_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2581 input2580)).val
theorem input2582_def : input2582 = (.seq input2581 input2580) := by
  unfold input2582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2581 output2580)).val
theorem output2582_def : output2582 = (.seq output2581 output2580) := by
  unfold output2582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2582_skip : Flapjack.WordAlloc.isSkip output2582 = false := by
  rw [output2582_def]
  conv => lhs; cbv
  try rfl
theorem node2582_eq : Flapjack.WordAlloc.removeDeadStructural input2582 value5 value1 value2 = (output2582, value1295, value1) := by
  rw [input2582_def, output2582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2580_eq]
  dsimp only
  rw [node2581_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1296 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25413 10616391696595805069#64))).val
theorem input2583_def : input2583 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25413 10616391696595805069#64)) := by
  unfold input2583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25413 10616391696595805069#64))).val
theorem output2583_def : output2583 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25413 10616391696595805069#64)) := by
  unfold output2583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2583_skip : Flapjack.WordAlloc.isSkip output2583 = false := by
  rw [output2583_def]
  conv => lhs; cbv
  try rfl
theorem node2583_eq : Flapjack.WordAlloc.removeDeadStructural input2583 value1295 value1 value2 = (output2583, value1296, value1) := by
  rw [input2583_def, output2583_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25409 10616391696595805069#64))).val
theorem input2584_def : input2584 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25409 10616391696595805069#64)) := by
  unfold input2584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2584_def : output2584 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2584_skip : Flapjack.WordAlloc.isSkip output2584 = true := by
  rw [output2584_def]
  conv => lhs; cbv
  try rfl
theorem node2584_eq : Flapjack.WordAlloc.removeDeadStructural input2584 value1296 value1 value2 = (output2584, value1296, value1) := by
  rw [input2584_def, output2584_def]
  try (conv => lhs; cbv)
  try rfl

def value1297 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25405 25397 (Flapjack.WordRegImm.reg 25401))))).val
theorem input2585_def : input2585 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25405 25397 (Flapjack.WordRegImm.reg 25401)))) := by
  unfold input2585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25405 25397 (Flapjack.WordRegImm.reg 25401))))).val
theorem output2585_def : output2585 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25405 25397 (Flapjack.WordRegImm.reg 25401)))) := by
  unfold output2585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2585_skip : Flapjack.WordAlloc.isSkip output2585 = false := by
  rw [output2585_def]
  conv => lhs; cbv
  try rfl
theorem node2585_eq : Flapjack.WordAlloc.removeDeadStructural input2585 value1296 value1 value2 = (output2585, value1297, value1) := by
  rw [input2585_def, output2585_def]
  try (conv => lhs; cbv)
  try rfl

def value1298 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25401 5840#64))).val
theorem input2586_def : input2586 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25401 5840#64)) := by
  unfold input2586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25401 5840#64))).val
theorem output2586_def : output2586 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25401 5840#64)) := by
  unfold output2586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2586_skip : Flapjack.WordAlloc.isSkip output2586 = false := by
  rw [output2586_def]
  conv => lhs; cbv
  try rfl
theorem node2586_eq : Flapjack.WordAlloc.removeDeadStructural input2586 value1297 value1 value2 = (output2586, value1298, value1) := by
  rw [input2586_def, output2586_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2586 input2585)).val
theorem input2587_def : input2587 = (.seq input2586 input2585) := by
  unfold input2587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2586 output2585)).val
theorem output2587_def : output2587 = (.seq output2586 output2585) := by
  unfold output2587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2587_skip : Flapjack.WordAlloc.isSkip output2587 = false := by
  rw [output2587_def]
  conv => lhs; cbv
  try rfl
theorem node2587_eq : Flapjack.WordAlloc.removeDeadStructural input2587 value1296 value1 value2 = (output2587, value1298, value1) := by
  rw [input2587_def, output2587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2585_eq]
  dsimp only
  rw [node2586_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1299 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25397 (Flapjack.WordLangAddr.addr 25393 18446744073709551104#64)))).val
theorem input2588_def : input2588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25397 (Flapjack.WordLangAddr.addr 25393 18446744073709551104#64))) := by
  unfold input2588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25397 (Flapjack.WordLangAddr.addr 25393 18446744073709551104#64)))).val
theorem output2588_def : output2588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25397 (Flapjack.WordLangAddr.addr 25393 18446744073709551104#64))) := by
  unfold output2588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2588_skip : Flapjack.WordAlloc.isSkip output2588 = false := by
  rw [output2588_def]
  conv => lhs; cbv
  try rfl
theorem node2588_eq : Flapjack.WordAlloc.removeDeadStructural input2588 value1298 value1 value2 = (output2588, value1299, value1) := by
  rw [input2588_def, output2588_def]
  try (conv => lhs; cbv)
  try rfl

def value1300 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25393 25389)).val
theorem input2589_def : input2589 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25393 25389) := by
  unfold input2589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25393 25389)).val
theorem output2589_def : output2589 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25393 25389) := by
  unfold output2589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2589_skip : Flapjack.WordAlloc.isSkip output2589 = false := by
  rw [output2589_def]
  conv => lhs; cbv
  try rfl
theorem node2589_eq : Flapjack.WordAlloc.removeDeadStructural input2589 value1299 value1 value2 = (output2589, value1300, value1) := by
  rw [input2589_def, output2589_def]
  try (conv => lhs; cbv)
  try rfl

def value1301 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25389 25385 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2590_def : input2590 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25389 25385 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25389 25385 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2590_def : output2590 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25389 25385 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2590_skip : Flapjack.WordAlloc.isSkip output2590 = false := by
  rw [output2590_def]
  conv => lhs; cbv
  try rfl
theorem node2590_eq : Flapjack.WordAlloc.removeDeadStructural input2590 value1300 value1 value2 = (output2590, value1301, value1) := by
  rw [input2590_def, output2590_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25385 Flapjack.WordStore.heapLength)).val
theorem input2591_def : input2591 = (Flapjack.WordLangProgHOL.get 25385 Flapjack.WordStore.heapLength) := by
  unfold input2591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25385 Flapjack.WordStore.heapLength)).val
theorem output2591_def : output2591 = (Flapjack.WordLangProgHOL.get 25385 Flapjack.WordStore.heapLength) := by
  unfold output2591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2591_skip : Flapjack.WordAlloc.isSkip output2591 = false := by
  rw [output2591_def]
  conv => lhs; cbv
  try rfl
theorem node2591_eq : Flapjack.WordAlloc.removeDeadStructural input2591 value1301 value1 value2 = (output2591, value5, value1) := by
  rw [input2591_def, output2591_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2591 input2590)).val
theorem input2592_def : input2592 = (.seq input2591 input2590) := by
  unfold input2592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2591 output2590)).val
theorem output2592_def : output2592 = (.seq output2591 output2590) := by
  unfold output2592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2592_skip : Flapjack.WordAlloc.isSkip output2592 = false := by
  rw [output2592_def]
  conv => lhs; cbv
  try rfl
theorem node2592_eq : Flapjack.WordAlloc.removeDeadStructural input2592 value1300 value1 value2 = (output2592, value5, value1) := by
  rw [input2592_def, output2592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2590_eq]
  dsimp only
  rw [node2591_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2592 input2589)).val
theorem input2593_def : input2593 = (.seq input2592 input2589) := by
  unfold input2593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2592 output2589)).val
theorem output2593_def : output2593 = (.seq output2592 output2589) := by
  unfold output2593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2593_skip : Flapjack.WordAlloc.isSkip output2593 = false := by
  rw [output2593_def]
  conv => lhs; cbv
  try rfl
theorem node2593_eq : Flapjack.WordAlloc.removeDeadStructural input2593 value1299 value1 value2 = (output2593, value5, value1) := by
  rw [input2593_def, output2593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2589_eq]
  dsimp only
  rw [node2592_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2593 input2588)).val
theorem input2594_def : input2594 = (.seq input2593 input2588) := by
  unfold input2594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2593 output2588)).val
theorem output2594_def : output2594 = (.seq output2593 output2588) := by
  unfold output2594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2594_skip : Flapjack.WordAlloc.isSkip output2594 = false := by
  rw [output2594_def]
  conv => lhs; cbv
  try rfl
theorem node2594_eq : Flapjack.WordAlloc.removeDeadStructural input2594 value1298 value1 value2 = (output2594, value5, value1) := by
  rw [input2594_def, output2594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2588_eq]
  dsimp only
  rw [node2593_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2594 input2587)).val
theorem input2595_def : input2595 = (.seq input2594 input2587) := by
  unfold input2595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2594 output2587)).val
theorem output2595_def : output2595 = (.seq output2594 output2587) := by
  unfold output2595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2595_skip : Flapjack.WordAlloc.isSkip output2595 = false := by
  rw [output2595_def]
  conv => lhs; cbv
  try rfl
theorem node2595_eq : Flapjack.WordAlloc.removeDeadStructural input2595 value1296 value1 value2 = (output2595, value5, value1) := by
  rw [input2595_def, output2595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2587_eq]
  dsimp only
  rw [node2594_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1302 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25377 (Flapjack.WordLangAddr.addr 25381 0#64)))).val
theorem input2596_def : input2596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25377 (Flapjack.WordLangAddr.addr 25381 0#64))) := by
  unfold input2596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25377 (Flapjack.WordLangAddr.addr 25381 0#64)))).val
theorem output2596_def : output2596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25377 (Flapjack.WordLangAddr.addr 25381 0#64))) := by
  unfold output2596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2596_skip : Flapjack.WordAlloc.isSkip output2596 = false := by
  rw [output2596_def]
  conv => lhs; cbv
  try rfl
theorem node2596_eq : Flapjack.WordAlloc.removeDeadStructural input2596 value5 value1 value2 = (output2596, value1302, value1) := by
  rw [input2596_def, output2596_def]
  try (conv => lhs; cbv)
  try rfl

def value1303 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25381, 25369)])).val
theorem input2597_def : input2597 = (Flapjack.WordLangProgHOL.move 0 [(25381, 25369)]) := by
  unfold input2597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25381, 25369)])).val
theorem output2597_def : output2597 = (Flapjack.WordLangProgHOL.move 0 [(25381, 25369)]) := by
  unfold output2597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2597_skip : Flapjack.WordAlloc.isSkip output2597 = false := by
  rw [output2597_def]
  conv => lhs; cbv
  try rfl
theorem node2597_eq : Flapjack.WordAlloc.removeDeadStructural input2597 value1302 value1 value2 = (output2597, value1303, value1) := by
  rw [input2597_def, output2597_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2597 input2596)).val
theorem input2598_def : input2598 = (.seq input2597 input2596) := by
  unfold input2598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2597 output2596)).val
theorem output2598_def : output2598 = (.seq output2597 output2596) := by
  unfold output2598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2598_skip : Flapjack.WordAlloc.isSkip output2598 = false := by
  rw [output2598_def]
  conv => lhs; cbv
  try rfl
theorem node2598_eq : Flapjack.WordAlloc.removeDeadStructural input2598 value5 value1 value2 = (output2598, value1303, value1) := by
  rw [input2598_def, output2598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2596_eq]
  dsimp only
  rw [node2597_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1304 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25377 1249199078431693244#64))).val
theorem input2599_def : input2599 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25377 1249199078431693244#64)) := by
  unfold input2599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25377 1249199078431693244#64))).val
theorem output2599_def : output2599 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25377 1249199078431693244#64)) := by
  unfold output2599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2599_skip : Flapjack.WordAlloc.isSkip output2599 = false := by
  rw [output2599_def]
  conv => lhs; cbv
  try rfl
theorem node2599_eq : Flapjack.WordAlloc.removeDeadStructural input2599 value1303 value1 value2 = (output2599, value1304, value1) := by
  rw [input2599_def, output2599_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25373 1249199078431693244#64))).val
theorem input2600_def : input2600 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25373 1249199078431693244#64)) := by
  unfold input2600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2600_def : output2600 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2600_skip : Flapjack.WordAlloc.isSkip output2600 = true := by
  rw [output2600_def]
  conv => lhs; cbv
  try rfl
theorem node2600_eq : Flapjack.WordAlloc.removeDeadStructural input2600 value1304 value1 value2 = (output2600, value1304, value1) := by
  rw [input2600_def, output2600_def]
  try (conv => lhs; cbv)
  try rfl

def value1305 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25369 25361 (Flapjack.WordRegImm.reg 25365))))).val
theorem input2601_def : input2601 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25369 25361 (Flapjack.WordRegImm.reg 25365)))) := by
  unfold input2601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25369 25361 (Flapjack.WordRegImm.reg 25365))))).val
theorem output2601_def : output2601 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25369 25361 (Flapjack.WordRegImm.reg 25365)))) := by
  unfold output2601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2601_skip : Flapjack.WordAlloc.isSkip output2601 = false := by
  rw [output2601_def]
  conv => lhs; cbv
  try rfl
theorem node2601_eq : Flapjack.WordAlloc.removeDeadStructural input2601 value1304 value1 value2 = (output2601, value1305, value1) := by
  rw [input2601_def, output2601_def]
  try (conv => lhs; cbv)
  try rfl

def value1306 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25365 5832#64))).val
theorem input2602_def : input2602 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25365 5832#64)) := by
  unfold input2602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25365 5832#64))).val
theorem output2602_def : output2602 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25365 5832#64)) := by
  unfold output2602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2602_skip : Flapjack.WordAlloc.isSkip output2602 = false := by
  rw [output2602_def]
  conv => lhs; cbv
  try rfl
theorem node2602_eq : Flapjack.WordAlloc.removeDeadStructural input2602 value1305 value1 value2 = (output2602, value1306, value1) := by
  rw [input2602_def, output2602_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2602 input2601)).val
theorem input2603_def : input2603 = (.seq input2602 input2601) := by
  unfold input2603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2602 output2601)).val
theorem output2603_def : output2603 = (.seq output2602 output2601) := by
  unfold output2603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2603_skip : Flapjack.WordAlloc.isSkip output2603 = false := by
  rw [output2603_def]
  conv => lhs; cbv
  try rfl
theorem node2603_eq : Flapjack.WordAlloc.removeDeadStructural input2603 value1304 value1 value2 = (output2603, value1306, value1) := by
  rw [input2603_def, output2603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2601_eq]
  dsimp only
  rw [node2602_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1307 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25361 (Flapjack.WordLangAddr.addr 25357 18446744073709551104#64)))).val
theorem input2604_def : input2604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25361 (Flapjack.WordLangAddr.addr 25357 18446744073709551104#64))) := by
  unfold input2604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25361 (Flapjack.WordLangAddr.addr 25357 18446744073709551104#64)))).val
theorem output2604_def : output2604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25361 (Flapjack.WordLangAddr.addr 25357 18446744073709551104#64))) := by
  unfold output2604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2604_skip : Flapjack.WordAlloc.isSkip output2604 = false := by
  rw [output2604_def]
  conv => lhs; cbv
  try rfl
theorem node2604_eq : Flapjack.WordAlloc.removeDeadStructural input2604 value1306 value1 value2 = (output2604, value1307, value1) := by
  rw [input2604_def, output2604_def]
  try (conv => lhs; cbv)
  try rfl

def value1308 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25357 25353)).val
theorem input2605_def : input2605 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25357 25353) := by
  unfold input2605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25357 25353)).val
theorem output2605_def : output2605 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25357 25353) := by
  unfold output2605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2605_skip : Flapjack.WordAlloc.isSkip output2605 = false := by
  rw [output2605_def]
  conv => lhs; cbv
  try rfl
theorem node2605_eq : Flapjack.WordAlloc.removeDeadStructural input2605 value1307 value1 value2 = (output2605, value1308, value1) := by
  rw [input2605_def, output2605_def]
  try (conv => lhs; cbv)
  try rfl

def value1309 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25353 25349 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2606_def : input2606 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25353 25349 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25353 25349 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2606_def : output2606 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25353 25349 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2606_skip : Flapjack.WordAlloc.isSkip output2606 = false := by
  rw [output2606_def]
  conv => lhs; cbv
  try rfl
theorem node2606_eq : Flapjack.WordAlloc.removeDeadStructural input2606 value1308 value1 value2 = (output2606, value1309, value1) := by
  rw [input2606_def, output2606_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25349 Flapjack.WordStore.heapLength)).val
theorem input2607_def : input2607 = (Flapjack.WordLangProgHOL.get 25349 Flapjack.WordStore.heapLength) := by
  unfold input2607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25349 Flapjack.WordStore.heapLength)).val
theorem output2607_def : output2607 = (Flapjack.WordLangProgHOL.get 25349 Flapjack.WordStore.heapLength) := by
  unfold output2607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2607_skip : Flapjack.WordAlloc.isSkip output2607 = false := by
  rw [output2607_def]
  conv => lhs; cbv
  try rfl
theorem node2607_eq : Flapjack.WordAlloc.removeDeadStructural input2607 value1309 value1 value2 = (output2607, value5, value1) := by
  rw [input2607_def, output2607_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2607 input2606)).val
theorem input2608_def : input2608 = (.seq input2607 input2606) := by
  unfold input2608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2607 output2606)).val
theorem output2608_def : output2608 = (.seq output2607 output2606) := by
  unfold output2608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2608_skip : Flapjack.WordAlloc.isSkip output2608 = false := by
  rw [output2608_def]
  conv => lhs; cbv
  try rfl
theorem node2608_eq : Flapjack.WordAlloc.removeDeadStructural input2608 value1308 value1 value2 = (output2608, value5, value1) := by
  rw [input2608_def, output2608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2606_eq]
  dsimp only
  rw [node2607_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2608 input2605)).val
theorem input2609_def : input2609 = (.seq input2608 input2605) := by
  unfold input2609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2608 output2605)).val
theorem output2609_def : output2609 = (.seq output2608 output2605) := by
  unfold output2609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2609_skip : Flapjack.WordAlloc.isSkip output2609 = false := by
  rw [output2609_def]
  conv => lhs; cbv
  try rfl
theorem node2609_eq : Flapjack.WordAlloc.removeDeadStructural input2609 value1307 value1 value2 = (output2609, value5, value1) := by
  rw [input2609_def, output2609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2605_eq]
  dsimp only
  rw [node2608_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2609 input2604)).val
theorem input2610_def : input2610 = (.seq input2609 input2604) := by
  unfold input2610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2609 output2604)).val
theorem output2610_def : output2610 = (.seq output2609 output2604) := by
  unfold output2610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2610_skip : Flapjack.WordAlloc.isSkip output2610 = false := by
  rw [output2610_def]
  conv => lhs; cbv
  try rfl
theorem node2610_eq : Flapjack.WordAlloc.removeDeadStructural input2610 value1306 value1 value2 = (output2610, value5, value1) := by
  rw [input2610_def, output2610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2604_eq]
  dsimp only
  rw [node2609_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2610 input2603)).val
theorem input2611_def : input2611 = (.seq input2610 input2603) := by
  unfold input2611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2610 output2603)).val
theorem output2611_def : output2611 = (.seq output2610 output2603) := by
  unfold output2611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2611_skip : Flapjack.WordAlloc.isSkip output2611 = false := by
  rw [output2611_def]
  conv => lhs; cbv
  try rfl
theorem node2611_eq : Flapjack.WordAlloc.removeDeadStructural input2611 value1304 value1 value2 = (output2611, value5, value1) := by
  rw [input2611_def, output2611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2603_eq]
  dsimp only
  rw [node2610_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1310 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25341 (Flapjack.WordLangAddr.addr 25345 0#64)))).val
theorem input2612_def : input2612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25341 (Flapjack.WordLangAddr.addr 25345 0#64))) := by
  unfold input2612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25341 (Flapjack.WordLangAddr.addr 25345 0#64)))).val
theorem output2612_def : output2612 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25341 (Flapjack.WordLangAddr.addr 25345 0#64))) := by
  unfold output2612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2612_skip : Flapjack.WordAlloc.isSkip output2612 = false := by
  rw [output2612_def]
  conv => lhs; cbv
  try rfl
theorem node2612_eq : Flapjack.WordAlloc.removeDeadStructural input2612 value5 value1 value2 = (output2612, value1310, value1) := by
  rw [input2612_def, output2612_def]
  try (conv => lhs; cbv)
  try rfl

def value1311 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25345, 25333)])).val
theorem input2613_def : input2613 = (Flapjack.WordLangProgHOL.move 0 [(25345, 25333)]) := by
  unfold input2613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25345, 25333)])).val
theorem output2613_def : output2613 = (Flapjack.WordLangProgHOL.move 0 [(25345, 25333)]) := by
  unfold output2613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2613_skip : Flapjack.WordAlloc.isSkip output2613 = false := by
  rw [output2613_def]
  conv => lhs; cbv
  try rfl
theorem node2613_eq : Flapjack.WordAlloc.removeDeadStructural input2613 value1310 value1 value2 = (output2613, value1311, value1) := by
  rw [input2613_def, output2613_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2613 input2612)).val
theorem input2614_def : input2614 = (.seq input2613 input2612) := by
  unfold input2614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2613 output2612)).val
theorem output2614_def : output2614 = (.seq output2613 output2612) := by
  unfold output2614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2614_skip : Flapjack.WordAlloc.isSkip output2614 = false := by
  rw [output2614_def]
  conv => lhs; cbv
  try rfl
theorem node2614_eq : Flapjack.WordAlloc.removeDeadStructural input2614 value5 value1 value2 = (output2614, value1311, value1) := by
  rw [input2614_def, output2614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2612_eq]
  dsimp only
  rw [node2613_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1312 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25341 3608069185647134863#64))).val
theorem input2615_def : input2615 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25341 3608069185647134863#64)) := by
  unfold input2615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25341 3608069185647134863#64))).val
theorem output2615_def : output2615 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25341 3608069185647134863#64)) := by
  unfold output2615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2615_skip : Flapjack.WordAlloc.isSkip output2615 = false := by
  rw [output2615_def]
  conv => lhs; cbv
  try rfl
theorem node2615_eq : Flapjack.WordAlloc.removeDeadStructural input2615 value1311 value1 value2 = (output2615, value1312, value1) := by
  rw [input2615_def, output2615_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25337 3608069185647134863#64))).val
theorem input2616_def : input2616 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25337 3608069185647134863#64)) := by
  unfold input2616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2616_def : output2616 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2616_skip : Flapjack.WordAlloc.isSkip output2616 = true := by
  rw [output2616_def]
  conv => lhs; cbv
  try rfl
theorem node2616_eq : Flapjack.WordAlloc.removeDeadStructural input2616 value1312 value1 value2 = (output2616, value1312, value1) := by
  rw [input2616_def, output2616_def]
  try (conv => lhs; cbv)
  try rfl

def value1313 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25333 25325 (Flapjack.WordRegImm.reg 25329))))).val
theorem input2617_def : input2617 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25333 25325 (Flapjack.WordRegImm.reg 25329)))) := by
  unfold input2617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25333 25325 (Flapjack.WordRegImm.reg 25329))))).val
theorem output2617_def : output2617 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25333 25325 (Flapjack.WordRegImm.reg 25329)))) := by
  unfold output2617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2617_skip : Flapjack.WordAlloc.isSkip output2617 = false := by
  rw [output2617_def]
  conv => lhs; cbv
  try rfl
theorem node2617_eq : Flapjack.WordAlloc.removeDeadStructural input2617 value1312 value1 value2 = (output2617, value1313, value1) := by
  rw [input2617_def, output2617_def]
  try (conv => lhs; cbv)
  try rfl

def value1314 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25329 5824#64))).val
theorem input2618_def : input2618 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25329 5824#64)) := by
  unfold input2618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25329 5824#64))).val
theorem output2618_def : output2618 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25329 5824#64)) := by
  unfold output2618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2618_skip : Flapjack.WordAlloc.isSkip output2618 = false := by
  rw [output2618_def]
  conv => lhs; cbv
  try rfl
theorem node2618_eq : Flapjack.WordAlloc.removeDeadStructural input2618 value1313 value1 value2 = (output2618, value1314, value1) := by
  rw [input2618_def, output2618_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2618 input2617)).val
theorem input2619_def : input2619 = (.seq input2618 input2617) := by
  unfold input2619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2618 output2617)).val
theorem output2619_def : output2619 = (.seq output2618 output2617) := by
  unfold output2619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2619_skip : Flapjack.WordAlloc.isSkip output2619 = false := by
  rw [output2619_def]
  conv => lhs; cbv
  try rfl
theorem node2619_eq : Flapjack.WordAlloc.removeDeadStructural input2619 value1312 value1 value2 = (output2619, value1314, value1) := by
  rw [input2619_def, output2619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2617_eq]
  dsimp only
  rw [node2618_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1315 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25325 (Flapjack.WordLangAddr.addr 25321 18446744073709551104#64)))).val
theorem input2620_def : input2620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25325 (Flapjack.WordLangAddr.addr 25321 18446744073709551104#64))) := by
  unfold input2620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25325 (Flapjack.WordLangAddr.addr 25321 18446744073709551104#64)))).val
theorem output2620_def : output2620 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25325 (Flapjack.WordLangAddr.addr 25321 18446744073709551104#64))) := by
  unfold output2620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2620_skip : Flapjack.WordAlloc.isSkip output2620 = false := by
  rw [output2620_def]
  conv => lhs; cbv
  try rfl
theorem node2620_eq : Flapjack.WordAlloc.removeDeadStructural input2620 value1314 value1 value2 = (output2620, value1315, value1) := by
  rw [input2620_def, output2620_def]
  try (conv => lhs; cbv)
  try rfl

def value1316 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25321 25317)).val
theorem input2621_def : input2621 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25321 25317) := by
  unfold input2621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25321 25317)).val
theorem output2621_def : output2621 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25321 25317) := by
  unfold output2621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2621_skip : Flapjack.WordAlloc.isSkip output2621 = false := by
  rw [output2621_def]
  conv => lhs; cbv
  try rfl
theorem node2621_eq : Flapjack.WordAlloc.removeDeadStructural input2621 value1315 value1 value2 = (output2621, value1316, value1) := by
  rw [input2621_def, output2621_def]
  try (conv => lhs; cbv)
  try rfl

def value1317 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25317 25313 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2622_def : input2622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25317 25313 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25317 25313 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2622_def : output2622 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25317 25313 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2622_skip : Flapjack.WordAlloc.isSkip output2622 = false := by
  rw [output2622_def]
  conv => lhs; cbv
  try rfl
theorem node2622_eq : Flapjack.WordAlloc.removeDeadStructural input2622 value1316 value1 value2 = (output2622, value1317, value1) := by
  rw [input2622_def, output2622_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25313 Flapjack.WordStore.heapLength)).val
theorem input2623_def : input2623 = (Flapjack.WordLangProgHOL.get 25313 Flapjack.WordStore.heapLength) := by
  unfold input2623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25313 Flapjack.WordStore.heapLength)).val
theorem output2623_def : output2623 = (Flapjack.WordLangProgHOL.get 25313 Flapjack.WordStore.heapLength) := by
  unfold output2623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2623_skip : Flapjack.WordAlloc.isSkip output2623 = false := by
  rw [output2623_def]
  conv => lhs; cbv
  try rfl
theorem node2623_eq : Flapjack.WordAlloc.removeDeadStructural input2623 value1317 value1 value2 = (output2623, value5, value1) := by
  rw [input2623_def, output2623_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2623 input2622)).val
theorem input2624_def : input2624 = (.seq input2623 input2622) := by
  unfold input2624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2623 output2622)).val
theorem output2624_def : output2624 = (.seq output2623 output2622) := by
  unfold output2624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2624_skip : Flapjack.WordAlloc.isSkip output2624 = false := by
  rw [output2624_def]
  conv => lhs; cbv
  try rfl
theorem node2624_eq : Flapjack.WordAlloc.removeDeadStructural input2624 value1316 value1 value2 = (output2624, value5, value1) := by
  rw [input2624_def, output2624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2622_eq]
  dsimp only
  rw [node2623_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2624 input2621)).val
theorem input2625_def : input2625 = (.seq input2624 input2621) := by
  unfold input2625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2624 output2621)).val
theorem output2625_def : output2625 = (.seq output2624 output2621) := by
  unfold output2625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2625_skip : Flapjack.WordAlloc.isSkip output2625 = false := by
  rw [output2625_def]
  conv => lhs; cbv
  try rfl
theorem node2625_eq : Flapjack.WordAlloc.removeDeadStructural input2625 value1315 value1 value2 = (output2625, value5, value1) := by
  rw [input2625_def, output2625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2621_eq]
  dsimp only
  rw [node2624_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2625 input2620)).val
theorem input2626_def : input2626 = (.seq input2625 input2620) := by
  unfold input2626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2625 output2620)).val
theorem output2626_def : output2626 = (.seq output2625 output2620) := by
  unfold output2626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2626_skip : Flapjack.WordAlloc.isSkip output2626 = false := by
  rw [output2626_def]
  conv => lhs; cbv
  try rfl
theorem node2626_eq : Flapjack.WordAlloc.removeDeadStructural input2626 value1314 value1 value2 = (output2626, value5, value1) := by
  rw [input2626_def, output2626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2620_eq]
  dsimp only
  rw [node2625_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2626 input2619)).val
theorem input2627_def : input2627 = (.seq input2626 input2619) := by
  unfold input2627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2626 output2619)).val
theorem output2627_def : output2627 = (.seq output2626 output2619) := by
  unfold output2627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2627_skip : Flapjack.WordAlloc.isSkip output2627 = false := by
  rw [output2627_def]
  conv => lhs; cbv
  try rfl
theorem node2627_eq : Flapjack.WordAlloc.removeDeadStructural input2627 value1312 value1 value2 = (output2627, value5, value1) := by
  rw [input2627_def, output2627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2619_eq]
  dsimp only
  rw [node2626_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1318 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25305 (Flapjack.WordLangAddr.addr 25309 0#64)))).val
theorem input2628_def : input2628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25305 (Flapjack.WordLangAddr.addr 25309 0#64))) := by
  unfold input2628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25305 (Flapjack.WordLangAddr.addr 25309 0#64)))).val
theorem output2628_def : output2628 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25305 (Flapjack.WordLangAddr.addr 25309 0#64))) := by
  unfold output2628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2628_skip : Flapjack.WordAlloc.isSkip output2628 = false := by
  rw [output2628_def]
  conv => lhs; cbv
  try rfl
theorem node2628_eq : Flapjack.WordAlloc.removeDeadStructural input2628 value5 value1 value2 = (output2628, value1318, value1) := by
  rw [input2628_def, output2628_def]
  try (conv => lhs; cbv)
  try rfl

def value1319 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25309, 25297)])).val
theorem input2629_def : input2629 = (Flapjack.WordLangProgHOL.move 0 [(25309, 25297)]) := by
  unfold input2629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25309, 25297)])).val
theorem output2629_def : output2629 = (Flapjack.WordLangProgHOL.move 0 [(25309, 25297)]) := by
  unfold output2629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2629_skip : Flapjack.WordAlloc.isSkip output2629 = false := by
  rw [output2629_def]
  conv => lhs; cbv
  try rfl
theorem node2629_eq : Flapjack.WordAlloc.removeDeadStructural input2629 value1318 value1 value2 = (output2629, value1319, value1) := by
  rw [input2629_def, output2629_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2629 input2628)).val
theorem input2630_def : input2630 = (.seq input2629 input2628) := by
  unfold input2630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2629 output2628)).val
theorem output2630_def : output2630 = (.seq output2629 output2628) := by
  unfold output2630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2630_skip : Flapjack.WordAlloc.isSkip output2630 = false := by
  rw [output2630_def]
  conv => lhs; cbv
  try rfl
theorem node2630_eq : Flapjack.WordAlloc.removeDeadStructural input2630 value5 value1 value2 = (output2630, value1319, value1) := by
  rw [input2630_def, output2630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2628_eq]
  dsimp only
  rw [node2629_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1320 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25305 10975139998179658879#64))).val
theorem input2631_def : input2631 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25305 10975139998179658879#64)) := by
  unfold input2631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25305 10975139998179658879#64))).val
theorem output2631_def : output2631 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25305 10975139998179658879#64)) := by
  unfold output2631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2631_skip : Flapjack.WordAlloc.isSkip output2631 = false := by
  rw [output2631_def]
  conv => lhs; cbv
  try rfl
theorem node2631_eq : Flapjack.WordAlloc.removeDeadStructural input2631 value1319 value1 value2 = (output2631, value1320, value1) := by
  rw [input2631_def, output2631_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25301 10975139998179658879#64))).val
theorem input2632_def : input2632 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25301 10975139998179658879#64)) := by
  unfold input2632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2632_def : output2632 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2632_skip : Flapjack.WordAlloc.isSkip output2632 = true := by
  rw [output2632_def]
  conv => lhs; cbv
  try rfl
theorem node2632_eq : Flapjack.WordAlloc.removeDeadStructural input2632 value1320 value1 value2 = (output2632, value1320, value1) := by
  rw [input2632_def, output2632_def]
  try (conv => lhs; cbv)
  try rfl

def value1321 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25297 25289 (Flapjack.WordRegImm.reg 25293))))).val
theorem input2633_def : input2633 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25297 25289 (Flapjack.WordRegImm.reg 25293)))) := by
  unfold input2633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25297 25289 (Flapjack.WordRegImm.reg 25293))))).val
theorem output2633_def : output2633 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25297 25289 (Flapjack.WordRegImm.reg 25293)))) := by
  unfold output2633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2633_skip : Flapjack.WordAlloc.isSkip output2633 = false := by
  rw [output2633_def]
  conv => lhs; cbv
  try rfl
theorem node2633_eq : Flapjack.WordAlloc.removeDeadStructural input2633 value1320 value1 value2 = (output2633, value1321, value1) := by
  rw [input2633_def, output2633_def]
  try (conv => lhs; cbv)
  try rfl

def value1322 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25293 5816#64))).val
theorem input2634_def : input2634 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25293 5816#64)) := by
  unfold input2634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25293 5816#64))).val
theorem output2634_def : output2634 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25293 5816#64)) := by
  unfold output2634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2634_skip : Flapjack.WordAlloc.isSkip output2634 = false := by
  rw [output2634_def]
  conv => lhs; cbv
  try rfl
theorem node2634_eq : Flapjack.WordAlloc.removeDeadStructural input2634 value1321 value1 value2 = (output2634, value1322, value1) := by
  rw [input2634_def, output2634_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2634 input2633)).val
theorem input2635_def : input2635 = (.seq input2634 input2633) := by
  unfold input2635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2634 output2633)).val
theorem output2635_def : output2635 = (.seq output2634 output2633) := by
  unfold output2635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2635_skip : Flapjack.WordAlloc.isSkip output2635 = false := by
  rw [output2635_def]
  conv => lhs; cbv
  try rfl
theorem node2635_eq : Flapjack.WordAlloc.removeDeadStructural input2635 value1320 value1 value2 = (output2635, value1322, value1) := by
  rw [input2635_def, output2635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2633_eq]
  dsimp only
  rw [node2634_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1323 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25289 (Flapjack.WordLangAddr.addr 25285 18446744073709551104#64)))).val
theorem input2636_def : input2636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25289 (Flapjack.WordLangAddr.addr 25285 18446744073709551104#64))) := by
  unfold input2636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25289 (Flapjack.WordLangAddr.addr 25285 18446744073709551104#64)))).val
theorem output2636_def : output2636 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25289 (Flapjack.WordLangAddr.addr 25285 18446744073709551104#64))) := by
  unfold output2636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2636_skip : Flapjack.WordAlloc.isSkip output2636 = false := by
  rw [output2636_def]
  conv => lhs; cbv
  try rfl
theorem node2636_eq : Flapjack.WordAlloc.removeDeadStructural input2636 value1322 value1 value2 = (output2636, value1323, value1) := by
  rw [input2636_def, output2636_def]
  try (conv => lhs; cbv)
  try rfl

def value1324 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25285 25281)).val
theorem input2637_def : input2637 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25285 25281) := by
  unfold input2637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25285 25281)).val
theorem output2637_def : output2637 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25285 25281) := by
  unfold output2637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2637_skip : Flapjack.WordAlloc.isSkip output2637 = false := by
  rw [output2637_def]
  conv => lhs; cbv
  try rfl
theorem node2637_eq : Flapjack.WordAlloc.removeDeadStructural input2637 value1323 value1 value2 = (output2637, value1324, value1) := by
  rw [input2637_def, output2637_def]
  try (conv => lhs; cbv)
  try rfl

def value1325 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25281 25277 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2638_def : input2638 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25281 25277 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25281 25277 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2638_def : output2638 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25281 25277 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2638_skip : Flapjack.WordAlloc.isSkip output2638 = false := by
  rw [output2638_def]
  conv => lhs; cbv
  try rfl
theorem node2638_eq : Flapjack.WordAlloc.removeDeadStructural input2638 value1324 value1 value2 = (output2638, value1325, value1) := by
  rw [input2638_def, output2638_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25277 Flapjack.WordStore.heapLength)).val
theorem input2639_def : input2639 = (Flapjack.WordLangProgHOL.get 25277 Flapjack.WordStore.heapLength) := by
  unfold input2639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25277 Flapjack.WordStore.heapLength)).val
theorem output2639_def : output2639 = (Flapjack.WordLangProgHOL.get 25277 Flapjack.WordStore.heapLength) := by
  unfold output2639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2639_skip : Flapjack.WordAlloc.isSkip output2639 = false := by
  rw [output2639_def]
  conv => lhs; cbv
  try rfl
theorem node2639_eq : Flapjack.WordAlloc.removeDeadStructural input2639 value1325 value1 value2 = (output2639, value5, value1) := by
  rw [input2639_def, output2639_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2639 input2638)).val
theorem input2640_def : input2640 = (.seq input2639 input2638) := by
  unfold input2640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2639 output2638)).val
theorem output2640_def : output2640 = (.seq output2639 output2638) := by
  unfold output2640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2640_skip : Flapjack.WordAlloc.isSkip output2640 = false := by
  rw [output2640_def]
  conv => lhs; cbv
  try rfl
theorem node2640_eq : Flapjack.WordAlloc.removeDeadStructural input2640 value1324 value1 value2 = (output2640, value5, value1) := by
  rw [input2640_def, output2640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2638_eq]
  dsimp only
  rw [node2639_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2640 input2637)).val
theorem input2641_def : input2641 = (.seq input2640 input2637) := by
  unfold input2641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2640 output2637)).val
theorem output2641_def : output2641 = (.seq output2640 output2637) := by
  unfold output2641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2641_skip : Flapjack.WordAlloc.isSkip output2641 = false := by
  rw [output2641_def]
  conv => lhs; cbv
  try rfl
theorem node2641_eq : Flapjack.WordAlloc.removeDeadStructural input2641 value1323 value1 value2 = (output2641, value5, value1) := by
  rw [input2641_def, output2641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2637_eq]
  dsimp only
  rw [node2640_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2641 input2636)).val
theorem input2642_def : input2642 = (.seq input2641 input2636) := by
  unfold input2642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2641 output2636)).val
theorem output2642_def : output2642 = (.seq output2641 output2636) := by
  unfold output2642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2642_skip : Flapjack.WordAlloc.isSkip output2642 = false := by
  rw [output2642_def]
  conv => lhs; cbv
  try rfl
theorem node2642_eq : Flapjack.WordAlloc.removeDeadStructural input2642 value1322 value1 value2 = (output2642, value5, value1) := by
  rw [input2642_def, output2642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2636_eq]
  dsimp only
  rw [node2641_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2642 input2635)).val
theorem input2643_def : input2643 = (.seq input2642 input2635) := by
  unfold input2643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2642 output2635)).val
theorem output2643_def : output2643 = (.seq output2642 output2635) := by
  unfold output2643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2643_skip : Flapjack.WordAlloc.isSkip output2643 = false := by
  rw [output2643_def]
  conv => lhs; cbv
  try rfl
theorem node2643_eq : Flapjack.WordAlloc.removeDeadStructural input2643 value1320 value1 value2 = (output2643, value5, value1) := by
  rw [input2643_def, output2643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2635_eq]
  dsimp only
  rw [node2642_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1326 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25269 (Flapjack.WordLangAddr.addr 25273 0#64)))).val
theorem input2644_def : input2644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25269 (Flapjack.WordLangAddr.addr 25273 0#64))) := by
  unfold input2644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25269 (Flapjack.WordLangAddr.addr 25273 0#64)))).val
theorem output2644_def : output2644 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25269 (Flapjack.WordLangAddr.addr 25273 0#64))) := by
  unfold output2644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2644_skip : Flapjack.WordAlloc.isSkip output2644 = false := by
  rw [output2644_def]
  conv => lhs; cbv
  try rfl
theorem node2644_eq : Flapjack.WordAlloc.removeDeadStructural input2644 value5 value1 value2 = (output2644, value1326, value1) := by
  rw [input2644_def, output2644_def]
  try (conv => lhs; cbv)
  try rfl

def value1327 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25273, 25261)])).val
theorem input2645_def : input2645 = (Flapjack.WordLangProgHOL.move 0 [(25273, 25261)]) := by
  unfold input2645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25273, 25261)])).val
theorem output2645_def : output2645 = (Flapjack.WordLangProgHOL.move 0 [(25273, 25261)]) := by
  unfold output2645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2645_skip : Flapjack.WordAlloc.isSkip output2645 = false := by
  rw [output2645_def]
  conv => lhs; cbv
  try rfl
theorem node2645_eq : Flapjack.WordAlloc.removeDeadStructural input2645 value1326 value1 value2 = (output2645, value1327, value1) := by
  rw [input2645_def, output2645_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2645 input2644)).val
theorem input2646_def : input2646 = (.seq input2645 input2644) := by
  unfold input2646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2645 output2644)).val
theorem output2646_def : output2646 = (.seq output2645 output2644) := by
  unfold output2646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2646_skip : Flapjack.WordAlloc.isSkip output2646 = false := by
  rw [output2646_def]
  conv => lhs; cbv
  try rfl
theorem node2646_eq : Flapjack.WordAlloc.removeDeadStructural input2646 value5 value1 value2 = (output2646, value1327, value1) := by
  rw [input2646_def, output2646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2644_eq]
  dsimp only
  rw [node2645_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1328 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25269 11106031073612571672#64))).val
theorem input2647_def : input2647 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25269 11106031073612571672#64)) := by
  unfold input2647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25269 11106031073612571672#64))).val
theorem output2647_def : output2647 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25269 11106031073612571672#64)) := by
  unfold output2647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2647_skip : Flapjack.WordAlloc.isSkip output2647 = false := by
  rw [output2647_def]
  conv => lhs; cbv
  try rfl
theorem node2647_eq : Flapjack.WordAlloc.removeDeadStructural input2647 value1327 value1 value2 = (output2647, value1328, value1) := by
  rw [input2647_def, output2647_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25265 11106031073612571672#64))).val
theorem input2648_def : input2648 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25265 11106031073612571672#64)) := by
  unfold input2648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2648_def : output2648 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2648_skip : Flapjack.WordAlloc.isSkip output2648 = true := by
  rw [output2648_def]
  conv => lhs; cbv
  try rfl
theorem node2648_eq : Flapjack.WordAlloc.removeDeadStructural input2648 value1328 value1 value2 = (output2648, value1328, value1) := by
  rw [input2648_def, output2648_def]
  try (conv => lhs; cbv)
  try rfl

def value1329 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25261 25253 (Flapjack.WordRegImm.reg 25257))))).val
theorem input2649_def : input2649 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25261 25253 (Flapjack.WordRegImm.reg 25257)))) := by
  unfold input2649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25261 25253 (Flapjack.WordRegImm.reg 25257))))).val
theorem output2649_def : output2649 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25261 25253 (Flapjack.WordRegImm.reg 25257)))) := by
  unfold output2649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2649_skip : Flapjack.WordAlloc.isSkip output2649 = false := by
  rw [output2649_def]
  conv => lhs; cbv
  try rfl
theorem node2649_eq : Flapjack.WordAlloc.removeDeadStructural input2649 value1328 value1 value2 = (output2649, value1329, value1) := by
  rw [input2649_def, output2649_def]
  try (conv => lhs; cbv)
  try rfl

def value1330 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25257 5808#64))).val
theorem input2650_def : input2650 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25257 5808#64)) := by
  unfold input2650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25257 5808#64))).val
theorem output2650_def : output2650 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25257 5808#64)) := by
  unfold output2650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2650_skip : Flapjack.WordAlloc.isSkip output2650 = false := by
  rw [output2650_def]
  conv => lhs; cbv
  try rfl
theorem node2650_eq : Flapjack.WordAlloc.removeDeadStructural input2650 value1329 value1 value2 = (output2650, value1330, value1) := by
  rw [input2650_def, output2650_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2650 input2649)).val
theorem input2651_def : input2651 = (.seq input2650 input2649) := by
  unfold input2651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2650 output2649)).val
theorem output2651_def : output2651 = (.seq output2650 output2649) := by
  unfold output2651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2651_skip : Flapjack.WordAlloc.isSkip output2651 = false := by
  rw [output2651_def]
  conv => lhs; cbv
  try rfl
theorem node2651_eq : Flapjack.WordAlloc.removeDeadStructural input2651 value1328 value1 value2 = (output2651, value1330, value1) := by
  rw [input2651_def, output2651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2649_eq]
  dsimp only
  rw [node2650_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1331 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25253 (Flapjack.WordLangAddr.addr 25249 18446744073709551104#64)))).val
theorem input2652_def : input2652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25253 (Flapjack.WordLangAddr.addr 25249 18446744073709551104#64))) := by
  unfold input2652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25253 (Flapjack.WordLangAddr.addr 25249 18446744073709551104#64)))).val
theorem output2652_def : output2652 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25253 (Flapjack.WordLangAddr.addr 25249 18446744073709551104#64))) := by
  unfold output2652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2652_skip : Flapjack.WordAlloc.isSkip output2652 = false := by
  rw [output2652_def]
  conv => lhs; cbv
  try rfl
theorem node2652_eq : Flapjack.WordAlloc.removeDeadStructural input2652 value1330 value1 value2 = (output2652, value1331, value1) := by
  rw [input2652_def, output2652_def]
  try (conv => lhs; cbv)
  try rfl

def value1332 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25249 25245)).val
theorem input2653_def : input2653 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25249 25245) := by
  unfold input2653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25249 25245)).val
theorem output2653_def : output2653 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25249 25245) := by
  unfold output2653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2653_skip : Flapjack.WordAlloc.isSkip output2653 = false := by
  rw [output2653_def]
  conv => lhs; cbv
  try rfl
theorem node2653_eq : Flapjack.WordAlloc.removeDeadStructural input2653 value1331 value1 value2 = (output2653, value1332, value1) := by
  rw [input2653_def, output2653_def]
  try (conv => lhs; cbv)
  try rfl

def value1333 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25245 25241 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2654_def : input2654 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25245 25241 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25245 25241 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2654_def : output2654 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25245 25241 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2654_skip : Flapjack.WordAlloc.isSkip output2654 = false := by
  rw [output2654_def]
  conv => lhs; cbv
  try rfl
theorem node2654_eq : Flapjack.WordAlloc.removeDeadStructural input2654 value1332 value1 value2 = (output2654, value1333, value1) := by
  rw [input2654_def, output2654_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25241 Flapjack.WordStore.heapLength)).val
theorem input2655_def : input2655 = (Flapjack.WordLangProgHOL.get 25241 Flapjack.WordStore.heapLength) := by
  unfold input2655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25241 Flapjack.WordStore.heapLength)).val
theorem output2655_def : output2655 = (Flapjack.WordLangProgHOL.get 25241 Flapjack.WordStore.heapLength) := by
  unfold output2655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2655_skip : Flapjack.WordAlloc.isSkip output2655 = false := by
  rw [output2655_def]
  conv => lhs; cbv
  try rfl
theorem node2655_eq : Flapjack.WordAlloc.removeDeadStructural input2655 value1333 value1 value2 = (output2655, value5, value1) := by
  rw [input2655_def, output2655_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2655 input2654)).val
theorem input2656_def : input2656 = (.seq input2655 input2654) := by
  unfold input2656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2655 output2654)).val
theorem output2656_def : output2656 = (.seq output2655 output2654) := by
  unfold output2656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2656_skip : Flapjack.WordAlloc.isSkip output2656 = false := by
  rw [output2656_def]
  conv => lhs; cbv
  try rfl
theorem node2656_eq : Flapjack.WordAlloc.removeDeadStructural input2656 value1332 value1 value2 = (output2656, value5, value1) := by
  rw [input2656_def, output2656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2654_eq]
  dsimp only
  rw [node2655_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2656 input2653)).val
theorem input2657_def : input2657 = (.seq input2656 input2653) := by
  unfold input2657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2656 output2653)).val
theorem output2657_def : output2657 = (.seq output2656 output2653) := by
  unfold output2657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2657_skip : Flapjack.WordAlloc.isSkip output2657 = false := by
  rw [output2657_def]
  conv => lhs; cbv
  try rfl
theorem node2657_eq : Flapjack.WordAlloc.removeDeadStructural input2657 value1331 value1 value2 = (output2657, value5, value1) := by
  rw [input2657_def, output2657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2653_eq]
  dsimp only
  rw [node2656_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2657 input2652)).val
theorem input2658_def : input2658 = (.seq input2657 input2652) := by
  unfold input2658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2657 output2652)).val
theorem output2658_def : output2658 = (.seq output2657 output2652) := by
  unfold output2658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2658_skip : Flapjack.WordAlloc.isSkip output2658 = false := by
  rw [output2658_def]
  conv => lhs; cbv
  try rfl
theorem node2658_eq : Flapjack.WordAlloc.removeDeadStructural input2658 value1330 value1 value2 = (output2658, value5, value1) := by
  rw [input2658_def, output2658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2652_eq]
  dsimp only
  rw [node2657_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2658 input2651)).val
theorem input2659_def : input2659 = (.seq input2658 input2651) := by
  unfold input2659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2658 output2651)).val
theorem output2659_def : output2659 = (.seq output2658 output2651) := by
  unfold output2659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2659_skip : Flapjack.WordAlloc.isSkip output2659 = false := by
  rw [output2659_def]
  conv => lhs; cbv
  try rfl
theorem node2659_eq : Flapjack.WordAlloc.removeDeadStructural input2659 value1328 value1 value2 = (output2659, value5, value1) := by
  rw [input2659_def, output2659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2651_eq]
  dsimp only
  rw [node2658_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1334 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25233 (Flapjack.WordLangAddr.addr 25237 0#64)))).val
theorem input2660_def : input2660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25233 (Flapjack.WordLangAddr.addr 25237 0#64))) := by
  unfold input2660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25233 (Flapjack.WordLangAddr.addr 25237 0#64)))).val
theorem output2660_def : output2660 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25233 (Flapjack.WordLangAddr.addr 25237 0#64))) := by
  unfold output2660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2660_skip : Flapjack.WordAlloc.isSkip output2660 = false := by
  rw [output2660_def]
  conv => lhs; cbv
  try rfl
theorem node2660_eq : Flapjack.WordAlloc.removeDeadStructural input2660 value5 value1 value2 = (output2660, value1334, value1) := by
  rw [input2660_def, output2660_def]
  try (conv => lhs; cbv)
  try rfl

def value1335 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25237, 25225)])).val
theorem input2661_def : input2661 = (Flapjack.WordLangProgHOL.move 0 [(25237, 25225)]) := by
  unfold input2661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25237, 25225)])).val
theorem output2661_def : output2661 = (Flapjack.WordLangProgHOL.move 0 [(25237, 25225)]) := by
  unfold output2661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2661_skip : Flapjack.WordAlloc.isSkip output2661 = false := by
  rw [output2661_def]
  conv => lhs; cbv
  try rfl
theorem node2661_eq : Flapjack.WordAlloc.removeDeadStructural input2661 value1334 value1 value2 = (output2661, value1335, value1) := by
  rw [input2661_def, output2661_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2661 input2660)).val
theorem input2662_def : input2662 = (.seq input2661 input2660) := by
  unfold input2662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2661 output2660)).val
theorem output2662_def : output2662 = (.seq output2661 output2660) := by
  unfold output2662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2662_skip : Flapjack.WordAlloc.isSkip output2662 = false := by
  rw [output2662_def]
  conv => lhs; cbv
  try rfl
theorem node2662_eq : Flapjack.WordAlloc.removeDeadStructural input2662 value5 value1 value2 = (output2662, value1335, value1) := by
  rw [input2662_def, output2662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2660_eq]
  dsimp only
  rw [node2661_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1336 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25233 1473427674344805717#64))).val
theorem input2663_def : input2663 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25233 1473427674344805717#64)) := by
  unfold input2663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25233 1473427674344805717#64))).val
theorem output2663_def : output2663 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25233 1473427674344805717#64)) := by
  unfold output2663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2663_skip : Flapjack.WordAlloc.isSkip output2663 = false := by
  rw [output2663_def]
  conv => lhs; cbv
  try rfl
theorem node2663_eq : Flapjack.WordAlloc.removeDeadStructural input2663 value1335 value1 value2 = (output2663, value1336, value1) := by
  rw [input2663_def, output2663_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25229 1473427674344805717#64))).val
theorem input2664_def : input2664 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25229 1473427674344805717#64)) := by
  unfold input2664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2664_def : output2664 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2664_skip : Flapjack.WordAlloc.isSkip output2664 = true := by
  rw [output2664_def]
  conv => lhs; cbv
  try rfl
theorem node2664_eq : Flapjack.WordAlloc.removeDeadStructural input2664 value1336 value1 value2 = (output2664, value1336, value1) := by
  rw [input2664_def, output2664_def]
  try (conv => lhs; cbv)
  try rfl

def value1337 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25225 25217 (Flapjack.WordRegImm.reg 25221))))).val
theorem input2665_def : input2665 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25225 25217 (Flapjack.WordRegImm.reg 25221)))) := by
  unfold input2665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25225 25217 (Flapjack.WordRegImm.reg 25221))))).val
theorem output2665_def : output2665 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25225 25217 (Flapjack.WordRegImm.reg 25221)))) := by
  unfold output2665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2665_skip : Flapjack.WordAlloc.isSkip output2665 = false := by
  rw [output2665_def]
  conv => lhs; cbv
  try rfl
theorem node2665_eq : Flapjack.WordAlloc.removeDeadStructural input2665 value1336 value1 value2 = (output2665, value1337, value1) := by
  rw [input2665_def, output2665_def]
  try (conv => lhs; cbv)
  try rfl

def value1338 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25221 5800#64))).val
theorem input2666_def : input2666 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25221 5800#64)) := by
  unfold input2666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25221 5800#64))).val
theorem output2666_def : output2666 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25221 5800#64)) := by
  unfold output2666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2666_skip : Flapjack.WordAlloc.isSkip output2666 = false := by
  rw [output2666_def]
  conv => lhs; cbv
  try rfl
theorem node2666_eq : Flapjack.WordAlloc.removeDeadStructural input2666 value1337 value1 value2 = (output2666, value1338, value1) := by
  rw [input2666_def, output2666_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2666 input2665)).val
theorem input2667_def : input2667 = (.seq input2666 input2665) := by
  unfold input2667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2666 output2665)).val
theorem output2667_def : output2667 = (.seq output2666 output2665) := by
  unfold output2667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2667_skip : Flapjack.WordAlloc.isSkip output2667 = false := by
  rw [output2667_def]
  conv => lhs; cbv
  try rfl
theorem node2667_eq : Flapjack.WordAlloc.removeDeadStructural input2667 value1336 value1 value2 = (output2667, value1338, value1) := by
  rw [input2667_def, output2667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2665_eq]
  dsimp only
  rw [node2666_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1339 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25217 (Flapjack.WordLangAddr.addr 25213 18446744073709551104#64)))).val
theorem input2668_def : input2668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25217 (Flapjack.WordLangAddr.addr 25213 18446744073709551104#64))) := by
  unfold input2668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25217 (Flapjack.WordLangAddr.addr 25213 18446744073709551104#64)))).val
theorem output2668_def : output2668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25217 (Flapjack.WordLangAddr.addr 25213 18446744073709551104#64))) := by
  unfold output2668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2668_skip : Flapjack.WordAlloc.isSkip output2668 = false := by
  rw [output2668_def]
  conv => lhs; cbv
  try rfl
theorem node2668_eq : Flapjack.WordAlloc.removeDeadStructural input2668 value1338 value1 value2 = (output2668, value1339, value1) := by
  rw [input2668_def, output2668_def]
  try (conv => lhs; cbv)
  try rfl

def value1340 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25213 25209)).val
theorem input2669_def : input2669 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25213 25209) := by
  unfold input2669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25213 25209)).val
theorem output2669_def : output2669 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25213 25209) := by
  unfold output2669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2669_skip : Flapjack.WordAlloc.isSkip output2669 = false := by
  rw [output2669_def]
  conv => lhs; cbv
  try rfl
theorem node2669_eq : Flapjack.WordAlloc.removeDeadStructural input2669 value1339 value1 value2 = (output2669, value1340, value1) := by
  rw [input2669_def, output2669_def]
  try (conv => lhs; cbv)
  try rfl

def value1341 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25209 25205 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2670_def : input2670 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25209 25205 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25209 25205 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2670_def : output2670 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25209 25205 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2670_skip : Flapjack.WordAlloc.isSkip output2670 = false := by
  rw [output2670_def]
  conv => lhs; cbv
  try rfl
theorem node2670_eq : Flapjack.WordAlloc.removeDeadStructural input2670 value1340 value1 value2 = (output2670, value1341, value1) := by
  rw [input2670_def, output2670_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25205 Flapjack.WordStore.heapLength)).val
theorem input2671_def : input2671 = (Flapjack.WordLangProgHOL.get 25205 Flapjack.WordStore.heapLength) := by
  unfold input2671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25205 Flapjack.WordStore.heapLength)).val
theorem output2671_def : output2671 = (Flapjack.WordLangProgHOL.get 25205 Flapjack.WordStore.heapLength) := by
  unfold output2671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2671_skip : Flapjack.WordAlloc.isSkip output2671 = false := by
  rw [output2671_def]
  conv => lhs; cbv
  try rfl
theorem node2671_eq : Flapjack.WordAlloc.removeDeadStructural input2671 value1341 value1 value2 = (output2671, value5, value1) := by
  rw [input2671_def, output2671_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2671 input2670)).val
theorem input2672_def : input2672 = (.seq input2671 input2670) := by
  unfold input2672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2671 output2670)).val
theorem output2672_def : output2672 = (.seq output2671 output2670) := by
  unfold output2672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2672_skip : Flapjack.WordAlloc.isSkip output2672 = false := by
  rw [output2672_def]
  conv => lhs; cbv
  try rfl
theorem node2672_eq : Flapjack.WordAlloc.removeDeadStructural input2672 value1340 value1 value2 = (output2672, value5, value1) := by
  rw [input2672_def, output2672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2670_eq]
  dsimp only
  rw [node2671_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2672 input2669)).val
theorem input2673_def : input2673 = (.seq input2672 input2669) := by
  unfold input2673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2672 output2669)).val
theorem output2673_def : output2673 = (.seq output2672 output2669) := by
  unfold output2673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2673_skip : Flapjack.WordAlloc.isSkip output2673 = false := by
  rw [output2673_def]
  conv => lhs; cbv
  try rfl
theorem node2673_eq : Flapjack.WordAlloc.removeDeadStructural input2673 value1339 value1 value2 = (output2673, value5, value1) := by
  rw [input2673_def, output2673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2669_eq]
  dsimp only
  rw [node2672_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2673 input2668)).val
theorem input2674_def : input2674 = (.seq input2673 input2668) := by
  unfold input2674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2673 output2668)).val
theorem output2674_def : output2674 = (.seq output2673 output2668) := by
  unfold output2674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2674_skip : Flapjack.WordAlloc.isSkip output2674 = false := by
  rw [output2674_def]
  conv => lhs; cbv
  try rfl
theorem node2674_eq : Flapjack.WordAlloc.removeDeadStructural input2674 value1338 value1 value2 = (output2674, value5, value1) := by
  rw [input2674_def, output2674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2668_eq]
  dsimp only
  rw [node2673_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2674 input2667)).val
theorem input2675_def : input2675 = (.seq input2674 input2667) := by
  unfold input2675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2674 output2667)).val
theorem output2675_def : output2675 = (.seq output2674 output2667) := by
  unfold output2675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2675_skip : Flapjack.WordAlloc.isSkip output2675 = false := by
  rw [output2675_def]
  conv => lhs; cbv
  try rfl
theorem node2675_eq : Flapjack.WordAlloc.removeDeadStructural input2675 value1336 value1 value2 = (output2675, value5, value1) := by
  rw [input2675_def, output2675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2667_eq]
  dsimp only
  rw [node2674_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1342 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25197 (Flapjack.WordLangAddr.addr 25201 0#64)))).val
theorem input2676_def : input2676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25197 (Flapjack.WordLangAddr.addr 25201 0#64))) := by
  unfold input2676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25197 (Flapjack.WordLangAddr.addr 25201 0#64)))).val
theorem output2676_def : output2676 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25197 (Flapjack.WordLangAddr.addr 25201 0#64))) := by
  unfold output2676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2676_skip : Flapjack.WordAlloc.isSkip output2676 = false := by
  rw [output2676_def]
  conv => lhs; cbv
  try rfl
theorem node2676_eq : Flapjack.WordAlloc.removeDeadStructural input2676 value5 value1 value2 = (output2676, value1342, value1) := by
  rw [input2676_def, output2676_def]
  try (conv => lhs; cbv)
  try rfl

def value1343 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25201, 25189)])).val
theorem input2677_def : input2677 = (Flapjack.WordLangProgHOL.move 0 [(25201, 25189)]) := by
  unfold input2677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25201, 25189)])).val
theorem output2677_def : output2677 = (Flapjack.WordLangProgHOL.move 0 [(25201, 25189)]) := by
  unfold output2677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2677_skip : Flapjack.WordAlloc.isSkip output2677 = false := by
  rw [output2677_def]
  conv => lhs; cbv
  try rfl
theorem node2677_eq : Flapjack.WordAlloc.removeDeadStructural input2677 value1342 value1 value2 = (output2677, value1343, value1) := by
  rw [input2677_def, output2677_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2677 input2676)).val
theorem input2678_def : input2678 = (.seq input2677 input2676) := by
  unfold input2678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2677 output2676)).val
theorem output2678_def : output2678 = (.seq output2677 output2676) := by
  unfold output2678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2678_skip : Flapjack.WordAlloc.isSkip output2678 = false := by
  rw [output2678_def]
  conv => lhs; cbv
  try rfl
theorem node2678_eq : Flapjack.WordAlloc.removeDeadStructural input2678 value5 value1 value2 = (output2678, value1343, value1) := by
  rw [input2678_def, output2678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2676_eq]
  dsimp only
  rw [node2677_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1344 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25197 2786039319482058526#64))).val
theorem input2679_def : input2679 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25197 2786039319482058526#64)) := by
  unfold input2679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25197 2786039319482058526#64))).val
theorem output2679_def : output2679 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25197 2786039319482058526#64)) := by
  unfold output2679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2679_skip : Flapjack.WordAlloc.isSkip output2679 = false := by
  rw [output2679_def]
  conv => lhs; cbv
  try rfl
theorem node2679_eq : Flapjack.WordAlloc.removeDeadStructural input2679 value1343 value1 value2 = (output2679, value1344, value1) := by
  rw [input2679_def, output2679_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25193 2786039319482058526#64))).val
theorem input2680_def : input2680 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25193 2786039319482058526#64)) := by
  unfold input2680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2680_def : output2680 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2680_skip : Flapjack.WordAlloc.isSkip output2680 = true := by
  rw [output2680_def]
  conv => lhs; cbv
  try rfl
theorem node2680_eq : Flapjack.WordAlloc.removeDeadStructural input2680 value1344 value1 value2 = (output2680, value1344, value1) := by
  rw [input2680_def, output2680_def]
  try (conv => lhs; cbv)
  try rfl

def value1345 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25189 25181 (Flapjack.WordRegImm.reg 25185))))).val
theorem input2681_def : input2681 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25189 25181 (Flapjack.WordRegImm.reg 25185)))) := by
  unfold input2681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25189 25181 (Flapjack.WordRegImm.reg 25185))))).val
theorem output2681_def : output2681 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25189 25181 (Flapjack.WordRegImm.reg 25185)))) := by
  unfold output2681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2681_skip : Flapjack.WordAlloc.isSkip output2681 = false := by
  rw [output2681_def]
  conv => lhs; cbv
  try rfl
theorem node2681_eq : Flapjack.WordAlloc.removeDeadStructural input2681 value1344 value1 value2 = (output2681, value1345, value1) := by
  rw [input2681_def, output2681_def]
  try (conv => lhs; cbv)
  try rfl

def value1346 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25185 5792#64))).val
theorem input2682_def : input2682 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25185 5792#64)) := by
  unfold input2682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25185 5792#64))).val
theorem output2682_def : output2682 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25185 5792#64)) := by
  unfold output2682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2682_skip : Flapjack.WordAlloc.isSkip output2682 = false := by
  rw [output2682_def]
  conv => lhs; cbv
  try rfl
theorem node2682_eq : Flapjack.WordAlloc.removeDeadStructural input2682 value1345 value1 value2 = (output2682, value1346, value1) := by
  rw [input2682_def, output2682_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2682 input2681)).val
theorem input2683_def : input2683 = (.seq input2682 input2681) := by
  unfold input2683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2682 output2681)).val
theorem output2683_def : output2683 = (.seq output2682 output2681) := by
  unfold output2683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2683_skip : Flapjack.WordAlloc.isSkip output2683 = false := by
  rw [output2683_def]
  conv => lhs; cbv
  try rfl
theorem node2683_eq : Flapjack.WordAlloc.removeDeadStructural input2683 value1344 value1 value2 = (output2683, value1346, value1) := by
  rw [input2683_def, output2683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2681_eq]
  dsimp only
  rw [node2682_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1347 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25181 (Flapjack.WordLangAddr.addr 25177 18446744073709551104#64)))).val
theorem input2684_def : input2684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25181 (Flapjack.WordLangAddr.addr 25177 18446744073709551104#64))) := by
  unfold input2684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25181 (Flapjack.WordLangAddr.addr 25177 18446744073709551104#64)))).val
theorem output2684_def : output2684 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25181 (Flapjack.WordLangAddr.addr 25177 18446744073709551104#64))) := by
  unfold output2684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2684_skip : Flapjack.WordAlloc.isSkip output2684 = false := by
  rw [output2684_def]
  conv => lhs; cbv
  try rfl
theorem node2684_eq : Flapjack.WordAlloc.removeDeadStructural input2684 value1346 value1 value2 = (output2684, value1347, value1) := by
  rw [input2684_def, output2684_def]
  try (conv => lhs; cbv)
  try rfl

def value1348 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25177 25173)).val
theorem input2685_def : input2685 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25177 25173) := by
  unfold input2685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25177 25173)).val
theorem output2685_def : output2685 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25177 25173) := by
  unfold output2685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2685_skip : Flapjack.WordAlloc.isSkip output2685 = false := by
  rw [output2685_def]
  conv => lhs; cbv
  try rfl
theorem node2685_eq : Flapjack.WordAlloc.removeDeadStructural input2685 value1347 value1 value2 = (output2685, value1348, value1) := by
  rw [input2685_def, output2685_def]
  try (conv => lhs; cbv)
  try rfl

def value1349 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25173 25169 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2686_def : input2686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25173 25169 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25173 25169 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2686_def : output2686 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25173 25169 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2686_skip : Flapjack.WordAlloc.isSkip output2686 = false := by
  rw [output2686_def]
  conv => lhs; cbv
  try rfl
theorem node2686_eq : Flapjack.WordAlloc.removeDeadStructural input2686 value1348 value1 value2 = (output2686, value1349, value1) := by
  rw [input2686_def, output2686_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25169 Flapjack.WordStore.heapLength)).val
theorem input2687_def : input2687 = (Flapjack.WordLangProgHOL.get 25169 Flapjack.WordStore.heapLength) := by
  unfold input2687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25169 Flapjack.WordStore.heapLength)).val
theorem output2687_def : output2687 = (Flapjack.WordLangProgHOL.get 25169 Flapjack.WordStore.heapLength) := by
  unfold output2687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2687_skip : Flapjack.WordAlloc.isSkip output2687 = false := by
  rw [output2687_def]
  conv => lhs; cbv
  try rfl
theorem node2687_eq : Flapjack.WordAlloc.removeDeadStructural input2687 value1349 value1 value2 = (output2687, value5, value1) := by
  rw [input2687_def, output2687_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2687 input2686)).val
theorem input2688_def : input2688 = (.seq input2687 input2686) := by
  unfold input2688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2687 output2686)).val
theorem output2688_def : output2688 = (.seq output2687 output2686) := by
  unfold output2688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2688_skip : Flapjack.WordAlloc.isSkip output2688 = false := by
  rw [output2688_def]
  conv => lhs; cbv
  try rfl
theorem node2688_eq : Flapjack.WordAlloc.removeDeadStructural input2688 value1348 value1 value2 = (output2688, value5, value1) := by
  rw [input2688_def, output2688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2686_eq]
  dsimp only
  rw [node2687_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2688 input2685)).val
theorem input2689_def : input2689 = (.seq input2688 input2685) := by
  unfold input2689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2688 output2685)).val
theorem output2689_def : output2689 = (.seq output2688 output2685) := by
  unfold output2689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2689_skip : Flapjack.WordAlloc.isSkip output2689 = false := by
  rw [output2689_def]
  conv => lhs; cbv
  try rfl
theorem node2689_eq : Flapjack.WordAlloc.removeDeadStructural input2689 value1347 value1 value2 = (output2689, value5, value1) := by
  rw [input2689_def, output2689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2685_eq]
  dsimp only
  rw [node2688_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2689 input2684)).val
theorem input2690_def : input2690 = (.seq input2689 input2684) := by
  unfold input2690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2689 output2684)).val
theorem output2690_def : output2690 = (.seq output2689 output2684) := by
  unfold output2690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2690_skip : Flapjack.WordAlloc.isSkip output2690 = false := by
  rw [output2690_def]
  conv => lhs; cbv
  try rfl
theorem node2690_eq : Flapjack.WordAlloc.removeDeadStructural input2690 value1346 value1 value2 = (output2690, value5, value1) := by
  rw [input2690_def, output2690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2684_eq]
  dsimp only
  rw [node2689_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2690 input2683)).val
theorem input2691_def : input2691 = (.seq input2690 input2683) := by
  unfold input2691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2690 output2683)).val
theorem output2691_def : output2691 = (.seq output2690 output2683) := by
  unfold output2691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2691_skip : Flapjack.WordAlloc.isSkip output2691 = false := by
  rw [output2691_def]
  conv => lhs; cbv
  try rfl
theorem node2691_eq : Flapjack.WordAlloc.removeDeadStructural input2691 value1344 value1 value2 = (output2691, value5, value1) := by
  rw [input2691_def, output2691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2683_eq]
  dsimp only
  rw [node2690_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1350 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25161 (Flapjack.WordLangAddr.addr 25165 0#64)))).val
theorem input2692_def : input2692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25161 (Flapjack.WordLangAddr.addr 25165 0#64))) := by
  unfold input2692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25161 (Flapjack.WordLangAddr.addr 25165 0#64)))).val
theorem output2692_def : output2692 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25161 (Flapjack.WordLangAddr.addr 25165 0#64))) := by
  unfold output2692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2692_skip : Flapjack.WordAlloc.isSkip output2692 = false := by
  rw [output2692_def]
  conv => lhs; cbv
  try rfl
theorem node2692_eq : Flapjack.WordAlloc.removeDeadStructural input2692 value5 value1 value2 = (output2692, value1350, value1) := by
  rw [input2692_def, output2692_def]
  try (conv => lhs; cbv)
  try rfl

def value1351 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25165, 25153)])).val
theorem input2693_def : input2693 = (Flapjack.WordLangProgHOL.move 0 [(25165, 25153)]) := by
  unfold input2693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25165, 25153)])).val
theorem output2693_def : output2693 = (Flapjack.WordLangProgHOL.move 0 [(25165, 25153)]) := by
  unfold output2693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2693_skip : Flapjack.WordAlloc.isSkip output2693 = false := by
  rw [output2693_def]
  conv => lhs; cbv
  try rfl
theorem node2693_eq : Flapjack.WordAlloc.removeDeadStructural input2693 value1350 value1 value2 = (output2693, value1351, value1) := by
  rw [input2693_def, output2693_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2693 input2692)).val
theorem input2694_def : input2694 = (.seq input2693 input2692) := by
  unfold input2694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2693 output2692)).val
theorem output2694_def : output2694 = (.seq output2693 output2692) := by
  unfold output2694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2694_skip : Flapjack.WordAlloc.isSkip output2694 = false := by
  rw [output2694_def]
  conv => lhs; cbv
  try rfl
theorem node2694_eq : Flapjack.WordAlloc.removeDeadStructural input2694 value5 value1 value2 = (output2694, value1351, value1) := by
  rw [input2694_def, output2694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2692_eq]
  dsimp only
  rw [node2693_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1352 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25161 1249199078431693244#64))).val
theorem input2695_def : input2695 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25161 1249199078431693244#64)) := by
  unfold input2695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25161 1249199078431693244#64))).val
theorem output2695_def : output2695 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25161 1249199078431693244#64)) := by
  unfold output2695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2695_skip : Flapjack.WordAlloc.isSkip output2695 = false := by
  rw [output2695_def]
  conv => lhs; cbv
  try rfl
theorem node2695_eq : Flapjack.WordAlloc.removeDeadStructural input2695 value1351 value1 value2 = (output2695, value1352, value1) := by
  rw [input2695_def, output2695_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25157 1249199078431693244#64))).val
theorem input2696_def : input2696 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25157 1249199078431693244#64)) := by
  unfold input2696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2696_def : output2696 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2696_skip : Flapjack.WordAlloc.isSkip output2696 = true := by
  rw [output2696_def]
  conv => lhs; cbv
  try rfl
theorem node2696_eq : Flapjack.WordAlloc.removeDeadStructural input2696 value1352 value1 value2 = (output2696, value1352, value1) := by
  rw [input2696_def, output2696_def]
  try (conv => lhs; cbv)
  try rfl

def value1353 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25153 25145 (Flapjack.WordRegImm.reg 25149))))).val
theorem input2697_def : input2697 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25153 25145 (Flapjack.WordRegImm.reg 25149)))) := by
  unfold input2697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25153 25145 (Flapjack.WordRegImm.reg 25149))))).val
theorem output2697_def : output2697 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25153 25145 (Flapjack.WordRegImm.reg 25149)))) := by
  unfold output2697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2697_skip : Flapjack.WordAlloc.isSkip output2697 = false := by
  rw [output2697_def]
  conv => lhs; cbv
  try rfl
theorem node2697_eq : Flapjack.WordAlloc.removeDeadStructural input2697 value1352 value1 value2 = (output2697, value1353, value1) := by
  rw [input2697_def, output2697_def]
  try (conv => lhs; cbv)
  try rfl

def value1354 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25149 5784#64))).val
theorem input2698_def : input2698 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25149 5784#64)) := by
  unfold input2698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25149 5784#64))).val
theorem output2698_def : output2698 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25149 5784#64)) := by
  unfold output2698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2698_skip : Flapjack.WordAlloc.isSkip output2698 = false := by
  rw [output2698_def]
  conv => lhs; cbv
  try rfl
theorem node2698_eq : Flapjack.WordAlloc.removeDeadStructural input2698 value1353 value1 value2 = (output2698, value1354, value1) := by
  rw [input2698_def, output2698_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2698 input2697)).val
theorem input2699_def : input2699 = (.seq input2698 input2697) := by
  unfold input2699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2698 output2697)).val
theorem output2699_def : output2699 = (.seq output2698 output2697) := by
  unfold output2699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2699_skip : Flapjack.WordAlloc.isSkip output2699 = false := by
  rw [output2699_def]
  conv => lhs; cbv
  try rfl
theorem node2699_eq : Flapjack.WordAlloc.removeDeadStructural input2699 value1352 value1 value2 = (output2699, value1354, value1) := by
  rw [input2699_def, output2699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2697_eq]
  dsimp only
  rw [node2698_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1355 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25145 (Flapjack.WordLangAddr.addr 25141 18446744073709551104#64)))).val
theorem input2700_def : input2700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25145 (Flapjack.WordLangAddr.addr 25141 18446744073709551104#64))) := by
  unfold input2700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25145 (Flapjack.WordLangAddr.addr 25141 18446744073709551104#64)))).val
theorem output2700_def : output2700 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25145 (Flapjack.WordLangAddr.addr 25141 18446744073709551104#64))) := by
  unfold output2700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2700_skip : Flapjack.WordAlloc.isSkip output2700 = false := by
  rw [output2700_def]
  conv => lhs; cbv
  try rfl
theorem node2700_eq : Flapjack.WordAlloc.removeDeadStructural input2700 value1354 value1 value2 = (output2700, value1355, value1) := by
  rw [input2700_def, output2700_def]
  try (conv => lhs; cbv)
  try rfl

def value1356 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25141 25137)).val
theorem input2701_def : input2701 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25141 25137) := by
  unfold input2701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25141 25137)).val
theorem output2701_def : output2701 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25141 25137) := by
  unfold output2701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2701_skip : Flapjack.WordAlloc.isSkip output2701 = false := by
  rw [output2701_def]
  conv => lhs; cbv
  try rfl
theorem node2701_eq : Flapjack.WordAlloc.removeDeadStructural input2701 value1355 value1 value2 = (output2701, value1356, value1) := by
  rw [input2701_def, output2701_def]
  try (conv => lhs; cbv)
  try rfl

def value1357 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25137 25133 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2702_def : input2702 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25137 25133 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25137 25133 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2702_def : output2702 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25137 25133 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2702_skip : Flapjack.WordAlloc.isSkip output2702 = false := by
  rw [output2702_def]
  conv => lhs; cbv
  try rfl
theorem node2702_eq : Flapjack.WordAlloc.removeDeadStructural input2702 value1356 value1 value2 = (output2702, value1357, value1) := by
  rw [input2702_def, output2702_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25133 Flapjack.WordStore.heapLength)).val
theorem input2703_def : input2703 = (Flapjack.WordLangProgHOL.get 25133 Flapjack.WordStore.heapLength) := by
  unfold input2703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25133 Flapjack.WordStore.heapLength)).val
theorem output2703_def : output2703 = (Flapjack.WordLangProgHOL.get 25133 Flapjack.WordStore.heapLength) := by
  unfold output2703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2703_skip : Flapjack.WordAlloc.isSkip output2703 = false := by
  rw [output2703_def]
  conv => lhs; cbv
  try rfl
theorem node2703_eq : Flapjack.WordAlloc.removeDeadStructural input2703 value1357 value1 value2 = (output2703, value5, value1) := by
  rw [input2703_def, output2703_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2703 input2702)).val
theorem input2704_def : input2704 = (.seq input2703 input2702) := by
  unfold input2704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2703 output2702)).val
theorem output2704_def : output2704 = (.seq output2703 output2702) := by
  unfold output2704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2704_skip : Flapjack.WordAlloc.isSkip output2704 = false := by
  rw [output2704_def]
  conv => lhs; cbv
  try rfl
theorem node2704_eq : Flapjack.WordAlloc.removeDeadStructural input2704 value1356 value1 value2 = (output2704, value5, value1) := by
  rw [input2704_def, output2704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2702_eq]
  dsimp only
  rw [node2703_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2704 input2701)).val
theorem input2705_def : input2705 = (.seq input2704 input2701) := by
  unfold input2705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2704 output2701)).val
theorem output2705_def : output2705 = (.seq output2704 output2701) := by
  unfold output2705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2705_skip : Flapjack.WordAlloc.isSkip output2705 = false := by
  rw [output2705_def]
  conv => lhs; cbv
  try rfl
theorem node2705_eq : Flapjack.WordAlloc.removeDeadStructural input2705 value1355 value1 value2 = (output2705, value5, value1) := by
  rw [input2705_def, output2705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2701_eq]
  dsimp only
  rw [node2704_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2705 input2700)).val
theorem input2706_def : input2706 = (.seq input2705 input2700) := by
  unfold input2706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2705 output2700)).val
theorem output2706_def : output2706 = (.seq output2705 output2700) := by
  unfold output2706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2706_skip : Flapjack.WordAlloc.isSkip output2706 = false := by
  rw [output2706_def]
  conv => lhs; cbv
  try rfl
theorem node2706_eq : Flapjack.WordAlloc.removeDeadStructural input2706 value1354 value1 value2 = (output2706, value5, value1) := by
  rw [input2706_def, output2706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2700_eq]
  dsimp only
  rw [node2705_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2706 input2699)).val
theorem input2707_def : input2707 = (.seq input2706 input2699) := by
  unfold input2707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2706 output2699)).val
theorem output2707_def : output2707 = (.seq output2706 output2699) := by
  unfold output2707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2707_skip : Flapjack.WordAlloc.isSkip output2707 = false := by
  rw [output2707_def]
  conv => lhs; cbv
  try rfl
theorem node2707_eq : Flapjack.WordAlloc.removeDeadStructural input2707 value1352 value1 value2 = (output2707, value5, value1) := by
  rw [input2707_def, output2707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2699_eq]
  dsimp only
  rw [node2706_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1358 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25125 (Flapjack.WordLangAddr.addr 25129 0#64)))).val
theorem input2708_def : input2708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25125 (Flapjack.WordLangAddr.addr 25129 0#64))) := by
  unfold input2708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25125 (Flapjack.WordLangAddr.addr 25129 0#64)))).val
theorem output2708_def : output2708 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25125 (Flapjack.WordLangAddr.addr 25129 0#64))) := by
  unfold output2708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2708_skip : Flapjack.WordAlloc.isSkip output2708 = false := by
  rw [output2708_def]
  conv => lhs; cbv
  try rfl
theorem node2708_eq : Flapjack.WordAlloc.removeDeadStructural input2708 value5 value1 value2 = (output2708, value1358, value1) := by
  rw [input2708_def, output2708_def]
  try (conv => lhs; cbv)
  try rfl

def value1359 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25129, 25117)])).val
theorem input2709_def : input2709 = (Flapjack.WordLangProgHOL.move 0 [(25129, 25117)]) := by
  unfold input2709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25129, 25117)])).val
theorem output2709_def : output2709 = (Flapjack.WordLangProgHOL.move 0 [(25129, 25117)]) := by
  unfold output2709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2709_skip : Flapjack.WordAlloc.isSkip output2709 = false := by
  rw [output2709_def]
  conv => lhs; cbv
  try rfl
theorem node2709_eq : Flapjack.WordAlloc.removeDeadStructural input2709 value1358 value1 value2 = (output2709, value1359, value1) := by
  rw [input2709_def, output2709_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2709 input2708)).val
theorem input2710_def : input2710 = (.seq input2709 input2708) := by
  unfold input2710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2709 output2708)).val
theorem output2710_def : output2710 = (.seq output2709 output2708) := by
  unfold output2710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2710_skip : Flapjack.WordAlloc.isSkip output2710 = false := by
  rw [output2710_def]
  conv => lhs; cbv
  try rfl
theorem node2710_eq : Flapjack.WordAlloc.removeDeadStructural input2710 value5 value1 value2 = (output2710, value1359, value1) := by
  rw [input2710_def, output2710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2708_eq]
  dsimp only
  rw [node2709_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1360 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25125 3608069185647134863#64))).val
theorem input2711_def : input2711 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25125 3608069185647134863#64)) := by
  unfold input2711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25125 3608069185647134863#64))).val
theorem output2711_def : output2711 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25125 3608069185647134863#64)) := by
  unfold output2711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2711_skip : Flapjack.WordAlloc.isSkip output2711 = false := by
  rw [output2711_def]
  conv => lhs; cbv
  try rfl
theorem node2711_eq : Flapjack.WordAlloc.removeDeadStructural input2711 value1359 value1 value2 = (output2711, value1360, value1) := by
  rw [input2711_def, output2711_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25121 3608069185647134863#64))).val
theorem input2712_def : input2712 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25121 3608069185647134863#64)) := by
  unfold input2712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2712_def : output2712 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2712_skip : Flapjack.WordAlloc.isSkip output2712 = true := by
  rw [output2712_def]
  conv => lhs; cbv
  try rfl
theorem node2712_eq : Flapjack.WordAlloc.removeDeadStructural input2712 value1360 value1 value2 = (output2712, value1360, value1) := by
  rw [input2712_def, output2712_def]
  try (conv => lhs; cbv)
  try rfl

def value1361 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25117 25109 (Flapjack.WordRegImm.reg 25113))))).val
theorem input2713_def : input2713 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25117 25109 (Flapjack.WordRegImm.reg 25113)))) := by
  unfold input2713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25117 25109 (Flapjack.WordRegImm.reg 25113))))).val
theorem output2713_def : output2713 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25117 25109 (Flapjack.WordRegImm.reg 25113)))) := by
  unfold output2713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2713_skip : Flapjack.WordAlloc.isSkip output2713 = false := by
  rw [output2713_def]
  conv => lhs; cbv
  try rfl
theorem node2713_eq : Flapjack.WordAlloc.removeDeadStructural input2713 value1360 value1 value2 = (output2713, value1361, value1) := by
  rw [input2713_def, output2713_def]
  try (conv => lhs; cbv)
  try rfl

def value1362 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25113 5776#64))).val
theorem input2714_def : input2714 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25113 5776#64)) := by
  unfold input2714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25113 5776#64))).val
theorem output2714_def : output2714 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25113 5776#64)) := by
  unfold output2714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2714_skip : Flapjack.WordAlloc.isSkip output2714 = false := by
  rw [output2714_def]
  conv => lhs; cbv
  try rfl
theorem node2714_eq : Flapjack.WordAlloc.removeDeadStructural input2714 value1361 value1 value2 = (output2714, value1362, value1) := by
  rw [input2714_def, output2714_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2714 input2713)).val
theorem input2715_def : input2715 = (.seq input2714 input2713) := by
  unfold input2715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2714 output2713)).val
theorem output2715_def : output2715 = (.seq output2714 output2713) := by
  unfold output2715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2715_skip : Flapjack.WordAlloc.isSkip output2715 = false := by
  rw [output2715_def]
  conv => lhs; cbv
  try rfl
theorem node2715_eq : Flapjack.WordAlloc.removeDeadStructural input2715 value1360 value1 value2 = (output2715, value1362, value1) := by
  rw [input2715_def, output2715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2713_eq]
  dsimp only
  rw [node2714_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1363 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25109 (Flapjack.WordLangAddr.addr 25105 18446744073709551104#64)))).val
theorem input2716_def : input2716 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25109 (Flapjack.WordLangAddr.addr 25105 18446744073709551104#64))) := by
  unfold input2716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25109 (Flapjack.WordLangAddr.addr 25105 18446744073709551104#64)))).val
theorem output2716_def : output2716 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25109 (Flapjack.WordLangAddr.addr 25105 18446744073709551104#64))) := by
  unfold output2716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2716_skip : Flapjack.WordAlloc.isSkip output2716 = false := by
  rw [output2716_def]
  conv => lhs; cbv
  try rfl
theorem node2716_eq : Flapjack.WordAlloc.removeDeadStructural input2716 value1362 value1 value2 = (output2716, value1363, value1) := by
  rw [input2716_def, output2716_def]
  try (conv => lhs; cbv)
  try rfl

def value1364 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25105 25101)).val
theorem input2717_def : input2717 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25105 25101) := by
  unfold input2717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25105 25101)).val
theorem output2717_def : output2717 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25105 25101) := by
  unfold output2717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2717_skip : Flapjack.WordAlloc.isSkip output2717 = false := by
  rw [output2717_def]
  conv => lhs; cbv
  try rfl
theorem node2717_eq : Flapjack.WordAlloc.removeDeadStructural input2717 value1363 value1 value2 = (output2717, value1364, value1) := by
  rw [input2717_def, output2717_def]
  try (conv => lhs; cbv)
  try rfl

def value1365 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25101 25097 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2718_def : input2718 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25101 25097 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25101 25097 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2718_def : output2718 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25101 25097 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2718_skip : Flapjack.WordAlloc.isSkip output2718 = false := by
  rw [output2718_def]
  conv => lhs; cbv
  try rfl
theorem node2718_eq : Flapjack.WordAlloc.removeDeadStructural input2718 value1364 value1 value2 = (output2718, value1365, value1) := by
  rw [input2718_def, output2718_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25097 Flapjack.WordStore.heapLength)).val
theorem input2719_def : input2719 = (Flapjack.WordLangProgHOL.get 25097 Flapjack.WordStore.heapLength) := by
  unfold input2719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25097 Flapjack.WordStore.heapLength)).val
theorem output2719_def : output2719 = (Flapjack.WordLangProgHOL.get 25097 Flapjack.WordStore.heapLength) := by
  unfold output2719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2719_skip : Flapjack.WordAlloc.isSkip output2719 = false := by
  rw [output2719_def]
  conv => lhs; cbv
  try rfl
theorem node2719_eq : Flapjack.WordAlloc.removeDeadStructural input2719 value1365 value1 value2 = (output2719, value5, value1) := by
  rw [input2719_def, output2719_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2719 input2718)).val
theorem input2720_def : input2720 = (.seq input2719 input2718) := by
  unfold input2720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2719 output2718)).val
theorem output2720_def : output2720 = (.seq output2719 output2718) := by
  unfold output2720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2720_skip : Flapjack.WordAlloc.isSkip output2720 = false := by
  rw [output2720_def]
  conv => lhs; cbv
  try rfl
theorem node2720_eq : Flapjack.WordAlloc.removeDeadStructural input2720 value1364 value1 value2 = (output2720, value5, value1) := by
  rw [input2720_def, output2720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2718_eq]
  dsimp only
  rw [node2719_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2720 input2717)).val
theorem input2721_def : input2721 = (.seq input2720 input2717) := by
  unfold input2721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2720 output2717)).val
theorem output2721_def : output2721 = (.seq output2720 output2717) := by
  unfold output2721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2721_skip : Flapjack.WordAlloc.isSkip output2721 = false := by
  rw [output2721_def]
  conv => lhs; cbv
  try rfl
theorem node2721_eq : Flapjack.WordAlloc.removeDeadStructural input2721 value1363 value1 value2 = (output2721, value5, value1) := by
  rw [input2721_def, output2721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2717_eq]
  dsimp only
  rw [node2720_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2721 input2716)).val
theorem input2722_def : input2722 = (.seq input2721 input2716) := by
  unfold input2722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2721 output2716)).val
theorem output2722_def : output2722 = (.seq output2721 output2716) := by
  unfold output2722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2722_skip : Flapjack.WordAlloc.isSkip output2722 = false := by
  rw [output2722_def]
  conv => lhs; cbv
  try rfl
theorem node2722_eq : Flapjack.WordAlloc.removeDeadStructural input2722 value1362 value1 value2 = (output2722, value5, value1) := by
  rw [input2722_def, output2722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2716_eq]
  dsimp only
  rw [node2721_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2722 input2715)).val
theorem input2723_def : input2723 = (.seq input2722 input2715) := by
  unfold input2723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2722 output2715)).val
theorem output2723_def : output2723 = (.seq output2722 output2715) := by
  unfold output2723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2723_skip : Flapjack.WordAlloc.isSkip output2723 = false := by
  rw [output2723_def]
  conv => lhs; cbv
  try rfl
theorem node2723_eq : Flapjack.WordAlloc.removeDeadStructural input2723 value1360 value1 value2 = (output2723, value5, value1) := by
  rw [input2723_def, output2723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2715_eq]
  dsimp only
  rw [node2722_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1366 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25089 (Flapjack.WordLangAddr.addr 25093 0#64)))).val
theorem input2724_def : input2724 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25089 (Flapjack.WordLangAddr.addr 25093 0#64))) := by
  unfold input2724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25089 (Flapjack.WordLangAddr.addr 25093 0#64)))).val
theorem output2724_def : output2724 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25089 (Flapjack.WordLangAddr.addr 25093 0#64))) := by
  unfold output2724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2724_skip : Flapjack.WordAlloc.isSkip output2724 = false := by
  rw [output2724_def]
  conv => lhs; cbv
  try rfl
theorem node2724_eq : Flapjack.WordAlloc.removeDeadStructural input2724 value5 value1 value2 = (output2724, value1366, value1) := by
  rw [input2724_def, output2724_def]
  try (conv => lhs; cbv)
  try rfl

def value1367 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25093, 25081)])).val
theorem input2725_def : input2725 = (Flapjack.WordLangProgHOL.move 0 [(25093, 25081)]) := by
  unfold input2725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25093, 25081)])).val
theorem output2725_def : output2725 = (Flapjack.WordLangProgHOL.move 0 [(25093, 25081)]) := by
  unfold output2725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2725_skip : Flapjack.WordAlloc.isSkip output2725 = false := by
  rw [output2725_def]
  conv => lhs; cbv
  try rfl
theorem node2725_eq : Flapjack.WordAlloc.removeDeadStructural input2725 value1366 value1 value2 = (output2725, value1367, value1) := by
  rw [input2725_def, output2725_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2725 input2724)).val
theorem input2726_def : input2726 = (.seq input2725 input2724) := by
  unfold input2726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2725 output2724)).val
theorem output2726_def : output2726 = (.seq output2725 output2724) := by
  unfold output2726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2726_skip : Flapjack.WordAlloc.isSkip output2726 = false := by
  rw [output2726_def]
  conv => lhs; cbv
  try rfl
theorem node2726_eq : Flapjack.WordAlloc.removeDeadStructural input2726 value5 value1 value2 = (output2726, value1367, value1) := by
  rw [input2726_def, output2726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2724_eq]
  dsimp only
  rw [node2725_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1368 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25089 10975139998179658879#64))).val
theorem input2727_def : input2727 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25089 10975139998179658879#64)) := by
  unfold input2727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25089 10975139998179658879#64))).val
theorem output2727_def : output2727 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25089 10975139998179658879#64)) := by
  unfold output2727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2727_skip : Flapjack.WordAlloc.isSkip output2727 = false := by
  rw [output2727_def]
  conv => lhs; cbv
  try rfl
theorem node2727_eq : Flapjack.WordAlloc.removeDeadStructural input2727 value1367 value1 value2 = (output2727, value1368, value1) := by
  rw [input2727_def, output2727_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25085 10975139998179658879#64))).val
theorem input2728_def : input2728 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25085 10975139998179658879#64)) := by
  unfold input2728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2728_def : output2728 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2728_skip : Flapjack.WordAlloc.isSkip output2728 = true := by
  rw [output2728_def]
  conv => lhs; cbv
  try rfl
theorem node2728_eq : Flapjack.WordAlloc.removeDeadStructural input2728 value1368 value1 value2 = (output2728, value1368, value1) := by
  rw [input2728_def, output2728_def]
  try (conv => lhs; cbv)
  try rfl

def value1369 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25081 25073 (Flapjack.WordRegImm.reg 25077))))).val
theorem input2729_def : input2729 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25081 25073 (Flapjack.WordRegImm.reg 25077)))) := by
  unfold input2729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25081 25073 (Flapjack.WordRegImm.reg 25077))))).val
theorem output2729_def : output2729 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25081 25073 (Flapjack.WordRegImm.reg 25077)))) := by
  unfold output2729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2729_skip : Flapjack.WordAlloc.isSkip output2729 = false := by
  rw [output2729_def]
  conv => lhs; cbv
  try rfl
theorem node2729_eq : Flapjack.WordAlloc.removeDeadStructural input2729 value1368 value1 value2 = (output2729, value1369, value1) := by
  rw [input2729_def, output2729_def]
  try (conv => lhs; cbv)
  try rfl

def value1370 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25077 5768#64))).val
theorem input2730_def : input2730 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25077 5768#64)) := by
  unfold input2730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25077 5768#64))).val
theorem output2730_def : output2730 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25077 5768#64)) := by
  unfold output2730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2730_skip : Flapjack.WordAlloc.isSkip output2730 = false := by
  rw [output2730_def]
  conv => lhs; cbv
  try rfl
theorem node2730_eq : Flapjack.WordAlloc.removeDeadStructural input2730 value1369 value1 value2 = (output2730, value1370, value1) := by
  rw [input2730_def, output2730_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2730 input2729)).val
theorem input2731_def : input2731 = (.seq input2730 input2729) := by
  unfold input2731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2730 output2729)).val
theorem output2731_def : output2731 = (.seq output2730 output2729) := by
  unfold output2731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2731_skip : Flapjack.WordAlloc.isSkip output2731 = false := by
  rw [output2731_def]
  conv => lhs; cbv
  try rfl
theorem node2731_eq : Flapjack.WordAlloc.removeDeadStructural input2731 value1368 value1 value2 = (output2731, value1370, value1) := by
  rw [input2731_def, output2731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2729_eq]
  dsimp only
  rw [node2730_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1371 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25073 (Flapjack.WordLangAddr.addr 25069 18446744073709551104#64)))).val
theorem input2732_def : input2732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25073 (Flapjack.WordLangAddr.addr 25069 18446744073709551104#64))) := by
  unfold input2732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25073 (Flapjack.WordLangAddr.addr 25069 18446744073709551104#64)))).val
theorem output2732_def : output2732 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25073 (Flapjack.WordLangAddr.addr 25069 18446744073709551104#64))) := by
  unfold output2732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2732_skip : Flapjack.WordAlloc.isSkip output2732 = false := by
  rw [output2732_def]
  conv => lhs; cbv
  try rfl
theorem node2732_eq : Flapjack.WordAlloc.removeDeadStructural input2732 value1370 value1 value2 = (output2732, value1371, value1) := by
  rw [input2732_def, output2732_def]
  try (conv => lhs; cbv)
  try rfl

def value1372 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25069 25065)).val
theorem input2733_def : input2733 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25069 25065) := by
  unfold input2733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25069 25065)).val
theorem output2733_def : output2733 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25069 25065) := by
  unfold output2733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2733_skip : Flapjack.WordAlloc.isSkip output2733 = false := by
  rw [output2733_def]
  conv => lhs; cbv
  try rfl
theorem node2733_eq : Flapjack.WordAlloc.removeDeadStructural input2733 value1371 value1 value2 = (output2733, value1372, value1) := by
  rw [input2733_def, output2733_def]
  try (conv => lhs; cbv)
  try rfl

def value1373 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25065 25061 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2734_def : input2734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25065 25061 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25065 25061 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2734_def : output2734 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25065 25061 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2734_skip : Flapjack.WordAlloc.isSkip output2734 = false := by
  rw [output2734_def]
  conv => lhs; cbv
  try rfl
theorem node2734_eq : Flapjack.WordAlloc.removeDeadStructural input2734 value1372 value1 value2 = (output2734, value1373, value1) := by
  rw [input2734_def, output2734_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25061 Flapjack.WordStore.heapLength)).val
theorem input2735_def : input2735 = (Flapjack.WordLangProgHOL.get 25061 Flapjack.WordStore.heapLength) := by
  unfold input2735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25061 Flapjack.WordStore.heapLength)).val
theorem output2735_def : output2735 = (Flapjack.WordLangProgHOL.get 25061 Flapjack.WordStore.heapLength) := by
  unfold output2735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2735_skip : Flapjack.WordAlloc.isSkip output2735 = false := by
  rw [output2735_def]
  conv => lhs; cbv
  try rfl
theorem node2735_eq : Flapjack.WordAlloc.removeDeadStructural input2735 value1373 value1 value2 = (output2735, value5, value1) := by
  rw [input2735_def, output2735_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2735 input2734)).val
theorem input2736_def : input2736 = (.seq input2735 input2734) := by
  unfold input2736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2735 output2734)).val
theorem output2736_def : output2736 = (.seq output2735 output2734) := by
  unfold output2736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2736_skip : Flapjack.WordAlloc.isSkip output2736 = false := by
  rw [output2736_def]
  conv => lhs; cbv
  try rfl
theorem node2736_eq : Flapjack.WordAlloc.removeDeadStructural input2736 value1372 value1 value2 = (output2736, value5, value1) := by
  rw [input2736_def, output2736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2734_eq]
  dsimp only
  rw [node2735_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2736 input2733)).val
theorem input2737_def : input2737 = (.seq input2736 input2733) := by
  unfold input2737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2736 output2733)).val
theorem output2737_def : output2737 = (.seq output2736 output2733) := by
  unfold output2737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2737_skip : Flapjack.WordAlloc.isSkip output2737 = false := by
  rw [output2737_def]
  conv => lhs; cbv
  try rfl
theorem node2737_eq : Flapjack.WordAlloc.removeDeadStructural input2737 value1371 value1 value2 = (output2737, value5, value1) := by
  rw [input2737_def, output2737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2733_eq]
  dsimp only
  rw [node2736_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2737 input2732)).val
theorem input2738_def : input2738 = (.seq input2737 input2732) := by
  unfold input2738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2737 output2732)).val
theorem output2738_def : output2738 = (.seq output2737 output2732) := by
  unfold output2738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2738_skip : Flapjack.WordAlloc.isSkip output2738 = false := by
  rw [output2738_def]
  conv => lhs; cbv
  try rfl
theorem node2738_eq : Flapjack.WordAlloc.removeDeadStructural input2738 value1370 value1 value2 = (output2738, value5, value1) := by
  rw [input2738_def, output2738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2732_eq]
  dsimp only
  rw [node2737_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2738 input2731)).val
theorem input2739_def : input2739 = (.seq input2738 input2731) := by
  unfold input2739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2738 output2731)).val
theorem output2739_def : output2739 = (.seq output2738 output2731) := by
  unfold output2739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2739_skip : Flapjack.WordAlloc.isSkip output2739 = false := by
  rw [output2739_def]
  conv => lhs; cbv
  try rfl
theorem node2739_eq : Flapjack.WordAlloc.removeDeadStructural input2739 value1368 value1 value2 = (output2739, value5, value1) := by
  rw [input2739_def, output2739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2731_eq]
  dsimp only
  rw [node2738_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1374 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25053 (Flapjack.WordLangAddr.addr 25057 0#64)))).val
theorem input2740_def : input2740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25053 (Flapjack.WordLangAddr.addr 25057 0#64))) := by
  unfold input2740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25053 (Flapjack.WordLangAddr.addr 25057 0#64)))).val
theorem output2740_def : output2740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25053 (Flapjack.WordLangAddr.addr 25057 0#64))) := by
  unfold output2740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2740_skip : Flapjack.WordAlloc.isSkip output2740 = false := by
  rw [output2740_def]
  conv => lhs; cbv
  try rfl
theorem node2740_eq : Flapjack.WordAlloc.removeDeadStructural input2740 value5 value1 value2 = (output2740, value1374, value1) := by
  rw [input2740_def, output2740_def]
  try (conv => lhs; cbv)
  try rfl

def value1375 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25057, 25045)])).val
theorem input2741_def : input2741 = (Flapjack.WordLangProgHOL.move 0 [(25057, 25045)]) := by
  unfold input2741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25057, 25045)])).val
theorem output2741_def : output2741 = (Flapjack.WordLangProgHOL.move 0 [(25057, 25045)]) := by
  unfold output2741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2741_skip : Flapjack.WordAlloc.isSkip output2741 = false := by
  rw [output2741_def]
  conv => lhs; cbv
  try rfl
theorem node2741_eq : Flapjack.WordAlloc.removeDeadStructural input2741 value1374 value1 value2 = (output2741, value1375, value1) := by
  rw [input2741_def, output2741_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2741 input2740)).val
theorem input2742_def : input2742 = (.seq input2741 input2740) := by
  unfold input2742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2741 output2740)).val
theorem output2742_def : output2742 = (.seq output2741 output2740) := by
  unfold output2742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2742_skip : Flapjack.WordAlloc.isSkip output2742 = false := by
  rw [output2742_def]
  conv => lhs; cbv
  try rfl
theorem node2742_eq : Flapjack.WordAlloc.removeDeadStructural input2742 value5 value1 value2 = (output2742, value1375, value1) := by
  rw [input2742_def, output2742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2740_eq]
  dsimp only
  rw [node2741_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1376 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25053 11106031073612571672#64))).val
theorem input2743_def : input2743 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25053 11106031073612571672#64)) := by
  unfold input2743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25053 11106031073612571672#64))).val
theorem output2743_def : output2743 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25053 11106031073612571672#64)) := by
  unfold output2743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2743_skip : Flapjack.WordAlloc.isSkip output2743 = false := by
  rw [output2743_def]
  conv => lhs; cbv
  try rfl
theorem node2743_eq : Flapjack.WordAlloc.removeDeadStructural input2743 value1375 value1 value2 = (output2743, value1376, value1) := by
  rw [input2743_def, output2743_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25049 11106031073612571672#64))).val
theorem input2744_def : input2744 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25049 11106031073612571672#64)) := by
  unfold input2744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2744_def : output2744 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2744_skip : Flapjack.WordAlloc.isSkip output2744 = true := by
  rw [output2744_def]
  conv => lhs; cbv
  try rfl
theorem node2744_eq : Flapjack.WordAlloc.removeDeadStructural input2744 value1376 value1 value2 = (output2744, value1376, value1) := by
  rw [input2744_def, output2744_def]
  try (conv => lhs; cbv)
  try rfl

def value1377 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25045 25037 (Flapjack.WordRegImm.reg 25041))))).val
theorem input2745_def : input2745 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25045 25037 (Flapjack.WordRegImm.reg 25041)))) := by
  unfold input2745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25045 25037 (Flapjack.WordRegImm.reg 25041))))).val
theorem output2745_def : output2745 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25045 25037 (Flapjack.WordRegImm.reg 25041)))) := by
  unfold output2745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2745_skip : Flapjack.WordAlloc.isSkip output2745 = false := by
  rw [output2745_def]
  conv => lhs; cbv
  try rfl
theorem node2745_eq : Flapjack.WordAlloc.removeDeadStructural input2745 value1376 value1 value2 = (output2745, value1377, value1) := by
  rw [input2745_def, output2745_def]
  try (conv => lhs; cbv)
  try rfl

def value1378 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25041 5760#64))).val
theorem input2746_def : input2746 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25041 5760#64)) := by
  unfold input2746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25041 5760#64))).val
theorem output2746_def : output2746 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25041 5760#64)) := by
  unfold output2746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2746_skip : Flapjack.WordAlloc.isSkip output2746 = false := by
  rw [output2746_def]
  conv => lhs; cbv
  try rfl
theorem node2746_eq : Flapjack.WordAlloc.removeDeadStructural input2746 value1377 value1 value2 = (output2746, value1378, value1) := by
  rw [input2746_def, output2746_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2746 input2745)).val
theorem input2747_def : input2747 = (.seq input2746 input2745) := by
  unfold input2747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2746 output2745)).val
theorem output2747_def : output2747 = (.seq output2746 output2745) := by
  unfold output2747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2747_skip : Flapjack.WordAlloc.isSkip output2747 = false := by
  rw [output2747_def]
  conv => lhs; cbv
  try rfl
theorem node2747_eq : Flapjack.WordAlloc.removeDeadStructural input2747 value1376 value1 value2 = (output2747, value1378, value1) := by
  rw [input2747_def, output2747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2745_eq]
  dsimp only
  rw [node2746_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1379 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25037 (Flapjack.WordLangAddr.addr 25033 18446744073709551104#64)))).val
theorem input2748_def : input2748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25037 (Flapjack.WordLangAddr.addr 25033 18446744073709551104#64))) := by
  unfold input2748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25037 (Flapjack.WordLangAddr.addr 25033 18446744073709551104#64)))).val
theorem output2748_def : output2748 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25037 (Flapjack.WordLangAddr.addr 25033 18446744073709551104#64))) := by
  unfold output2748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2748_skip : Flapjack.WordAlloc.isSkip output2748 = false := by
  rw [output2748_def]
  conv => lhs; cbv
  try rfl
theorem node2748_eq : Flapjack.WordAlloc.removeDeadStructural input2748 value1378 value1 value2 = (output2748, value1379, value1) := by
  rw [input2748_def, output2748_def]
  try (conv => lhs; cbv)
  try rfl

def value1380 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25033 25029)).val
theorem input2749_def : input2749 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25033 25029) := by
  unfold input2749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25033 25029)).val
theorem output2749_def : output2749 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 25033 25029) := by
  unfold output2749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2749_skip : Flapjack.WordAlloc.isSkip output2749 = false := by
  rw [output2749_def]
  conv => lhs; cbv
  try rfl
theorem node2749_eq : Flapjack.WordAlloc.removeDeadStructural input2749 value1379 value1 value2 = (output2749, value1380, value1) := by
  rw [input2749_def, output2749_def]
  try (conv => lhs; cbv)
  try rfl

def value1381 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25029 25025 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2750_def : input2750 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25029 25025 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25029 25025 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2750_def : output2750 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 25029 25025 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2750_skip : Flapjack.WordAlloc.isSkip output2750 = false := by
  rw [output2750_def]
  conv => lhs; cbv
  try rfl
theorem node2750_eq : Flapjack.WordAlloc.removeDeadStructural input2750 value1380 value1 value2 = (output2750, value1381, value1) := by
  rw [input2750_def, output2750_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25025 Flapjack.WordStore.heapLength)).val
theorem input2751_def : input2751 = (Flapjack.WordLangProgHOL.get 25025 Flapjack.WordStore.heapLength) := by
  unfold input2751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 25025 Flapjack.WordStore.heapLength)).val
theorem output2751_def : output2751 = (Flapjack.WordLangProgHOL.get 25025 Flapjack.WordStore.heapLength) := by
  unfold output2751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2751_skip : Flapjack.WordAlloc.isSkip output2751 = false := by
  rw [output2751_def]
  conv => lhs; cbv
  try rfl
theorem node2751_eq : Flapjack.WordAlloc.removeDeadStructural input2751 value1381 value1 value2 = (output2751, value5, value1) := by
  rw [input2751_def, output2751_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2751 input2750)).val
theorem input2752_def : input2752 = (.seq input2751 input2750) := by
  unfold input2752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2751 output2750)).val
theorem output2752_def : output2752 = (.seq output2751 output2750) := by
  unfold output2752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2752_skip : Flapjack.WordAlloc.isSkip output2752 = false := by
  rw [output2752_def]
  conv => lhs; cbv
  try rfl
theorem node2752_eq : Flapjack.WordAlloc.removeDeadStructural input2752 value1380 value1 value2 = (output2752, value5, value1) := by
  rw [input2752_def, output2752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2750_eq]
  dsimp only
  rw [node2751_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2752 input2749)).val
theorem input2753_def : input2753 = (.seq input2752 input2749) := by
  unfold input2753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2752 output2749)).val
theorem output2753_def : output2753 = (.seq output2752 output2749) := by
  unfold output2753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2753_skip : Flapjack.WordAlloc.isSkip output2753 = false := by
  rw [output2753_def]
  conv => lhs; cbv
  try rfl
theorem node2753_eq : Flapjack.WordAlloc.removeDeadStructural input2753 value1379 value1 value2 = (output2753, value5, value1) := by
  rw [input2753_def, output2753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2749_eq]
  dsimp only
  rw [node2752_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2753 input2748)).val
theorem input2754_def : input2754 = (.seq input2753 input2748) := by
  unfold input2754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2753 output2748)).val
theorem output2754_def : output2754 = (.seq output2753 output2748) := by
  unfold output2754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2754_skip : Flapjack.WordAlloc.isSkip output2754 = false := by
  rw [output2754_def]
  conv => lhs; cbv
  try rfl
theorem node2754_eq : Flapjack.WordAlloc.removeDeadStructural input2754 value1378 value1 value2 = (output2754, value5, value1) := by
  rw [input2754_def, output2754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2748_eq]
  dsimp only
  rw [node2753_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2754 input2747)).val
theorem input2755_def : input2755 = (.seq input2754 input2747) := by
  unfold input2755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2754 output2747)).val
theorem output2755_def : output2755 = (.seq output2754 output2747) := by
  unfold output2755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2755_skip : Flapjack.WordAlloc.isSkip output2755 = false := by
  rw [output2755_def]
  conv => lhs; cbv
  try rfl
theorem node2755_eq : Flapjack.WordAlloc.removeDeadStructural input2755 value1376 value1 value2 = (output2755, value5, value1) := by
  rw [input2755_def, output2755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2747_eq]
  dsimp only
  rw [node2754_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1382 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25017 (Flapjack.WordLangAddr.addr 25021 0#64)))).val
theorem input2756_def : input2756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25017 (Flapjack.WordLangAddr.addr 25021 0#64))) := by
  unfold input2756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25017 (Flapjack.WordLangAddr.addr 25021 0#64)))).val
theorem output2756_def : output2756 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 25017 (Flapjack.WordLangAddr.addr 25021 0#64))) := by
  unfold output2756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2756_skip : Flapjack.WordAlloc.isSkip output2756 = false := by
  rw [output2756_def]
  conv => lhs; cbv
  try rfl
theorem node2756_eq : Flapjack.WordAlloc.removeDeadStructural input2756 value5 value1 value2 = (output2756, value1382, value1) := by
  rw [input2756_def, output2756_def]
  try (conv => lhs; cbv)
  try rfl

def value1383 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25021, 25009)])).val
theorem input2757_def : input2757 = (Flapjack.WordLangProgHOL.move 0 [(25021, 25009)]) := by
  unfold input2757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(25021, 25009)])).val
theorem output2757_def : output2757 = (Flapjack.WordLangProgHOL.move 0 [(25021, 25009)]) := by
  unfold output2757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2757_skip : Flapjack.WordAlloc.isSkip output2757 = false := by
  rw [output2757_def]
  conv => lhs; cbv
  try rfl
theorem node2757_eq : Flapjack.WordAlloc.removeDeadStructural input2757 value1382 value1 value2 = (output2757, value1383, value1) := by
  rw [input2757_def, output2757_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2757 input2756)).val
theorem input2758_def : input2758 = (.seq input2757 input2756) := by
  unfold input2758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2757 output2756)).val
theorem output2758_def : output2758 = (.seq output2757 output2756) := by
  unfold output2758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2758_skip : Flapjack.WordAlloc.isSkip output2758 = false := by
  rw [output2758_def]
  conv => lhs; cbv
  try rfl
theorem node2758_eq : Flapjack.WordAlloc.removeDeadStructural input2758 value5 value1 value2 = (output2758, value1383, value1) := by
  rw [input2758_def, output2758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2756_eq]
  dsimp only
  rw [node2757_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1384 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25017 1473427674344805717#64))).val
theorem input2759_def : input2759 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25017 1473427674344805717#64)) := by
  unfold input2759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25017 1473427674344805717#64))).val
theorem output2759_def : output2759 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25017 1473427674344805717#64)) := by
  unfold output2759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2759_skip : Flapjack.WordAlloc.isSkip output2759 = false := by
  rw [output2759_def]
  conv => lhs; cbv
  try rfl
theorem node2759_eq : Flapjack.WordAlloc.removeDeadStructural input2759 value1383 value1 value2 = (output2759, value1384, value1) := by
  rw [input2759_def, output2759_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25013 1473427674344805717#64))).val
theorem input2760_def : input2760 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25013 1473427674344805717#64)) := by
  unfold input2760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2760_def : output2760 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2760_skip : Flapjack.WordAlloc.isSkip output2760 = true := by
  rw [output2760_def]
  conv => lhs; cbv
  try rfl
theorem node2760_eq : Flapjack.WordAlloc.removeDeadStructural input2760 value1384 value1 value2 = (output2760, value1384, value1) := by
  rw [input2760_def, output2760_def]
  try (conv => lhs; cbv)
  try rfl

def value1385 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25009 25001 (Flapjack.WordRegImm.reg 25005))))).val
theorem input2761_def : input2761 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25009 25001 (Flapjack.WordRegImm.reg 25005)))) := by
  unfold input2761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25009 25001 (Flapjack.WordRegImm.reg 25005))))).val
theorem output2761_def : output2761 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 25009 25001 (Flapjack.WordRegImm.reg 25005)))) := by
  unfold output2761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2761_skip : Flapjack.WordAlloc.isSkip output2761 = false := by
  rw [output2761_def]
  conv => lhs; cbv
  try rfl
theorem node2761_eq : Flapjack.WordAlloc.removeDeadStructural input2761 value1384 value1 value2 = (output2761, value1385, value1) := by
  rw [input2761_def, output2761_def]
  try (conv => lhs; cbv)
  try rfl

def value1386 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25005 5752#64))).val
theorem input2762_def : input2762 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25005 5752#64)) := by
  unfold input2762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25005 5752#64))).val
theorem output2762_def : output2762 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25005 5752#64)) := by
  unfold output2762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2762_skip : Flapjack.WordAlloc.isSkip output2762 = false := by
  rw [output2762_def]
  conv => lhs; cbv
  try rfl
theorem node2762_eq : Flapjack.WordAlloc.removeDeadStructural input2762 value1385 value1 value2 = (output2762, value1386, value1) := by
  rw [input2762_def, output2762_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2762 input2761)).val
theorem input2763_def : input2763 = (.seq input2762 input2761) := by
  unfold input2763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2762 output2761)).val
theorem output2763_def : output2763 = (.seq output2762 output2761) := by
  unfold output2763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2763_skip : Flapjack.WordAlloc.isSkip output2763 = false := by
  rw [output2763_def]
  conv => lhs; cbv
  try rfl
theorem node2763_eq : Flapjack.WordAlloc.removeDeadStructural input2763 value1384 value1 value2 = (output2763, value1386, value1) := by
  rw [input2763_def, output2763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2761_eq]
  dsimp only
  rw [node2762_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1387 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25001 (Flapjack.WordLangAddr.addr 24997 18446744073709551104#64)))).val
theorem input2764_def : input2764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25001 (Flapjack.WordLangAddr.addr 24997 18446744073709551104#64))) := by
  unfold input2764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25001 (Flapjack.WordLangAddr.addr 24997 18446744073709551104#64)))).val
theorem output2764_def : output2764 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 25001 (Flapjack.WordLangAddr.addr 24997 18446744073709551104#64))) := by
  unfold output2764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2764_skip : Flapjack.WordAlloc.isSkip output2764 = false := by
  rw [output2764_def]
  conv => lhs; cbv
  try rfl
theorem node2764_eq : Flapjack.WordAlloc.removeDeadStructural input2764 value1386 value1 value2 = (output2764, value1387, value1) := by
  rw [input2764_def, output2764_def]
  try (conv => lhs; cbv)
  try rfl

def value1388 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24997 24993)).val
theorem input2765_def : input2765 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24997 24993) := by
  unfold input2765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24997 24993)).val
theorem output2765_def : output2765 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24997 24993) := by
  unfold output2765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2765_skip : Flapjack.WordAlloc.isSkip output2765 = false := by
  rw [output2765_def]
  conv => lhs; cbv
  try rfl
theorem node2765_eq : Flapjack.WordAlloc.removeDeadStructural input2765 value1387 value1 value2 = (output2765, value1388, value1) := by
  rw [input2765_def, output2765_def]
  try (conv => lhs; cbv)
  try rfl

def value1389 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24993 24989 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2766_def : input2766 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24993 24989 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24993 24989 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2766_def : output2766 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24993 24989 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2766_skip : Flapjack.WordAlloc.isSkip output2766 = false := by
  rw [output2766_def]
  conv => lhs; cbv
  try rfl
theorem node2766_eq : Flapjack.WordAlloc.removeDeadStructural input2766 value1388 value1 value2 = (output2766, value1389, value1) := by
  rw [input2766_def, output2766_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24989 Flapjack.WordStore.heapLength)).val
theorem input2767_def : input2767 = (Flapjack.WordLangProgHOL.get 24989 Flapjack.WordStore.heapLength) := by
  unfold input2767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24989 Flapjack.WordStore.heapLength)).val
theorem output2767_def : output2767 = (Flapjack.WordLangProgHOL.get 24989 Flapjack.WordStore.heapLength) := by
  unfold output2767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2767_skip : Flapjack.WordAlloc.isSkip output2767 = false := by
  rw [output2767_def]
  conv => lhs; cbv
  try rfl
theorem node2767_eq : Flapjack.WordAlloc.removeDeadStructural input2767 value1389 value1 value2 = (output2767, value5, value1) := by
  rw [input2767_def, output2767_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2767 input2766)).val
theorem input2768_def : input2768 = (.seq input2767 input2766) := by
  unfold input2768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2767 output2766)).val
theorem output2768_def : output2768 = (.seq output2767 output2766) := by
  unfold output2768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2768_skip : Flapjack.WordAlloc.isSkip output2768 = false := by
  rw [output2768_def]
  conv => lhs; cbv
  try rfl
theorem node2768_eq : Flapjack.WordAlloc.removeDeadStructural input2768 value1388 value1 value2 = (output2768, value5, value1) := by
  rw [input2768_def, output2768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2766_eq]
  dsimp only
  rw [node2767_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2768 input2765)).val
theorem input2769_def : input2769 = (.seq input2768 input2765) := by
  unfold input2769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2768 output2765)).val
theorem output2769_def : output2769 = (.seq output2768 output2765) := by
  unfold output2769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2769_skip : Flapjack.WordAlloc.isSkip output2769 = false := by
  rw [output2769_def]
  conv => lhs; cbv
  try rfl
theorem node2769_eq : Flapjack.WordAlloc.removeDeadStructural input2769 value1387 value1 value2 = (output2769, value5, value1) := by
  rw [input2769_def, output2769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2765_eq]
  dsimp only
  rw [node2768_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2769 input2764)).val
theorem input2770_def : input2770 = (.seq input2769 input2764) := by
  unfold input2770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2769 output2764)).val
theorem output2770_def : output2770 = (.seq output2769 output2764) := by
  unfold output2770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2770_skip : Flapjack.WordAlloc.isSkip output2770 = false := by
  rw [output2770_def]
  conv => lhs; cbv
  try rfl
theorem node2770_eq : Flapjack.WordAlloc.removeDeadStructural input2770 value1386 value1 value2 = (output2770, value5, value1) := by
  rw [input2770_def, output2770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2764_eq]
  dsimp only
  rw [node2769_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2770 input2763)).val
theorem input2771_def : input2771 = (.seq input2770 input2763) := by
  unfold input2771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2770 output2763)).val
theorem output2771_def : output2771 = (.seq output2770 output2763) := by
  unfold output2771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2771_skip : Flapjack.WordAlloc.isSkip output2771 = false := by
  rw [output2771_def]
  conv => lhs; cbv
  try rfl
theorem node2771_eq : Flapjack.WordAlloc.removeDeadStructural input2771 value1384 value1 value2 = (output2771, value5, value1) := by
  rw [input2771_def, output2771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2763_eq]
  dsimp only
  rw [node2770_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1390 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24981 (Flapjack.WordLangAddr.addr 24985 0#64)))).val
theorem input2772_def : input2772 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24981 (Flapjack.WordLangAddr.addr 24985 0#64))) := by
  unfold input2772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24981 (Flapjack.WordLangAddr.addr 24985 0#64)))).val
theorem output2772_def : output2772 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24981 (Flapjack.WordLangAddr.addr 24985 0#64))) := by
  unfold output2772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2772_skip : Flapjack.WordAlloc.isSkip output2772 = false := by
  rw [output2772_def]
  conv => lhs; cbv
  try rfl
theorem node2772_eq : Flapjack.WordAlloc.removeDeadStructural input2772 value5 value1 value2 = (output2772, value1390, value1) := by
  rw [input2772_def, output2772_def]
  try (conv => lhs; cbv)
  try rfl

def value1391 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24985, 24973)])).val
theorem input2773_def : input2773 = (Flapjack.WordLangProgHOL.move 0 [(24985, 24973)]) := by
  unfold input2773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24985, 24973)])).val
theorem output2773_def : output2773 = (Flapjack.WordLangProgHOL.move 0 [(24985, 24973)]) := by
  unfold output2773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2773_skip : Flapjack.WordAlloc.isSkip output2773 = false := by
  rw [output2773_def]
  conv => lhs; cbv
  try rfl
theorem node2773_eq : Flapjack.WordAlloc.removeDeadStructural input2773 value1390 value1 value2 = (output2773, value1391, value1) := by
  rw [input2773_def, output2773_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2773 input2772)).val
theorem input2774_def : input2774 = (.seq input2773 input2772) := by
  unfold input2774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2773 output2772)).val
theorem output2774_def : output2774 = (.seq output2773 output2772) := by
  unfold output2774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2774_skip : Flapjack.WordAlloc.isSkip output2774 = false := by
  rw [output2774_def]
  conv => lhs; cbv
  try rfl
theorem node2774_eq : Flapjack.WordAlloc.removeDeadStructural input2774 value5 value1 value2 = (output2774, value1391, value1) := by
  rw [input2774_def, output2774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2772_eq]
  dsimp only
  rw [node2773_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1392 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24981 2786039319482058522#64))).val
theorem input2775_def : input2775 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24981 2786039319482058522#64)) := by
  unfold input2775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24981 2786039319482058522#64))).val
theorem output2775_def : output2775 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24981 2786039319482058522#64)) := by
  unfold output2775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2775_skip : Flapjack.WordAlloc.isSkip output2775 = false := by
  rw [output2775_def]
  conv => lhs; cbv
  try rfl
theorem node2775_eq : Flapjack.WordAlloc.removeDeadStructural input2775 value1391 value1 value2 = (output2775, value1392, value1) := by
  rw [input2775_def, output2775_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24977 2786039319482058522#64))).val
theorem input2776_def : input2776 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24977 2786039319482058522#64)) := by
  unfold input2776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2776_def : output2776 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2776_skip : Flapjack.WordAlloc.isSkip output2776 = true := by
  rw [output2776_def]
  conv => lhs; cbv
  try rfl
theorem node2776_eq : Flapjack.WordAlloc.removeDeadStructural input2776 value1392 value1 value2 = (output2776, value1392, value1) := by
  rw [input2776_def, output2776_def]
  try (conv => lhs; cbv)
  try rfl

def value1393 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24973 24965 (Flapjack.WordRegImm.reg 24969))))).val
theorem input2777_def : input2777 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24973 24965 (Flapjack.WordRegImm.reg 24969)))) := by
  unfold input2777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24973 24965 (Flapjack.WordRegImm.reg 24969))))).val
theorem output2777_def : output2777 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24973 24965 (Flapjack.WordRegImm.reg 24969)))) := by
  unfold output2777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2777_skip : Flapjack.WordAlloc.isSkip output2777 = false := by
  rw [output2777_def]
  conv => lhs; cbv
  try rfl
theorem node2777_eq : Flapjack.WordAlloc.removeDeadStructural input2777 value1392 value1 value2 = (output2777, value1393, value1) := by
  rw [input2777_def, output2777_def]
  try (conv => lhs; cbv)
  try rfl

def value1394 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24969 5744#64))).val
theorem input2778_def : input2778 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24969 5744#64)) := by
  unfold input2778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24969 5744#64))).val
theorem output2778_def : output2778 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24969 5744#64)) := by
  unfold output2778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2778_skip : Flapjack.WordAlloc.isSkip output2778 = false := by
  rw [output2778_def]
  conv => lhs; cbv
  try rfl
theorem node2778_eq : Flapjack.WordAlloc.removeDeadStructural input2778 value1393 value1 value2 = (output2778, value1394, value1) := by
  rw [input2778_def, output2778_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2778 input2777)).val
theorem input2779_def : input2779 = (.seq input2778 input2777) := by
  unfold input2779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2778 output2777)).val
theorem output2779_def : output2779 = (.seq output2778 output2777) := by
  unfold output2779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2779_skip : Flapjack.WordAlloc.isSkip output2779 = false := by
  rw [output2779_def]
  conv => lhs; cbv
  try rfl
theorem node2779_eq : Flapjack.WordAlloc.removeDeadStructural input2779 value1392 value1 value2 = (output2779, value1394, value1) := by
  rw [input2779_def, output2779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2777_eq]
  dsimp only
  rw [node2778_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1395 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24965 (Flapjack.WordLangAddr.addr 24961 18446744073709551104#64)))).val
theorem input2780_def : input2780 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24965 (Flapjack.WordLangAddr.addr 24961 18446744073709551104#64))) := by
  unfold input2780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24965 (Flapjack.WordLangAddr.addr 24961 18446744073709551104#64)))).val
theorem output2780_def : output2780 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24965 (Flapjack.WordLangAddr.addr 24961 18446744073709551104#64))) := by
  unfold output2780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2780_skip : Flapjack.WordAlloc.isSkip output2780 = false := by
  rw [output2780_def]
  conv => lhs; cbv
  try rfl
theorem node2780_eq : Flapjack.WordAlloc.removeDeadStructural input2780 value1394 value1 value2 = (output2780, value1395, value1) := by
  rw [input2780_def, output2780_def]
  try (conv => lhs; cbv)
  try rfl

def value1396 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24961 24957)).val
theorem input2781_def : input2781 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24961 24957) := by
  unfold input2781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24961 24957)).val
theorem output2781_def : output2781 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24961 24957) := by
  unfold output2781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2781_skip : Flapjack.WordAlloc.isSkip output2781 = false := by
  rw [output2781_def]
  conv => lhs; cbv
  try rfl
theorem node2781_eq : Flapjack.WordAlloc.removeDeadStructural input2781 value1395 value1 value2 = (output2781, value1396, value1) := by
  rw [input2781_def, output2781_def]
  try (conv => lhs; cbv)
  try rfl

def value1397 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24957 24953 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2782_def : input2782 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24957 24953 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24957 24953 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2782_def : output2782 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24957 24953 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2782_skip : Flapjack.WordAlloc.isSkip output2782 = false := by
  rw [output2782_def]
  conv => lhs; cbv
  try rfl
theorem node2782_eq : Flapjack.WordAlloc.removeDeadStructural input2782 value1396 value1 value2 = (output2782, value1397, value1) := by
  rw [input2782_def, output2782_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24953 Flapjack.WordStore.heapLength)).val
theorem input2783_def : input2783 = (Flapjack.WordLangProgHOL.get 24953 Flapjack.WordStore.heapLength) := by
  unfold input2783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24953 Flapjack.WordStore.heapLength)).val
theorem output2783_def : output2783 = (Flapjack.WordLangProgHOL.get 24953 Flapjack.WordStore.heapLength) := by
  unfold output2783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2783_skip : Flapjack.WordAlloc.isSkip output2783 = false := by
  rw [output2783_def]
  conv => lhs; cbv
  try rfl
theorem node2783_eq : Flapjack.WordAlloc.removeDeadStructural input2783 value1397 value1 value2 = (output2783, value5, value1) := by
  rw [input2783_def, output2783_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2783 input2782)).val
theorem input2784_def : input2784 = (.seq input2783 input2782) := by
  unfold input2784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2783 output2782)).val
theorem output2784_def : output2784 = (.seq output2783 output2782) := by
  unfold output2784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2784_skip : Flapjack.WordAlloc.isSkip output2784 = false := by
  rw [output2784_def]
  conv => lhs; cbv
  try rfl
theorem node2784_eq : Flapjack.WordAlloc.removeDeadStructural input2784 value1396 value1 value2 = (output2784, value5, value1) := by
  rw [input2784_def, output2784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2782_eq]
  dsimp only
  rw [node2783_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2784 input2781)).val
theorem input2785_def : input2785 = (.seq input2784 input2781) := by
  unfold input2785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2784 output2781)).val
theorem output2785_def : output2785 = (.seq output2784 output2781) := by
  unfold output2785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2785_skip : Flapjack.WordAlloc.isSkip output2785 = false := by
  rw [output2785_def]
  conv => lhs; cbv
  try rfl
theorem node2785_eq : Flapjack.WordAlloc.removeDeadStructural input2785 value1395 value1 value2 = (output2785, value5, value1) := by
  rw [input2785_def, output2785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2781_eq]
  dsimp only
  rw [node2784_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2785 input2780)).val
theorem input2786_def : input2786 = (.seq input2785 input2780) := by
  unfold input2786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2785 output2780)).val
theorem output2786_def : output2786 = (.seq output2785 output2780) := by
  unfold output2786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2786_skip : Flapjack.WordAlloc.isSkip output2786 = false := by
  rw [output2786_def]
  conv => lhs; cbv
  try rfl
theorem node2786_eq : Flapjack.WordAlloc.removeDeadStructural input2786 value1394 value1 value2 = (output2786, value5, value1) := by
  rw [input2786_def, output2786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2780_eq]
  dsimp only
  rw [node2785_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2786 input2779)).val
theorem input2787_def : input2787 = (.seq input2786 input2779) := by
  unfold input2787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2786 output2779)).val
theorem output2787_def : output2787 = (.seq output2786 output2779) := by
  unfold output2787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2787_skip : Flapjack.WordAlloc.isSkip output2787 = false := by
  rw [output2787_def]
  conv => lhs; cbv
  try rfl
theorem node2787_eq : Flapjack.WordAlloc.removeDeadStructural input2787 value1392 value1 value2 = (output2787, value5, value1) := by
  rw [input2787_def, output2787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2779_eq]
  dsimp only
  rw [node2786_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1398 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24945 (Flapjack.WordLangAddr.addr 24949 0#64)))).val
theorem input2788_def : input2788 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24945 (Flapjack.WordLangAddr.addr 24949 0#64))) := by
  unfold input2788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24945 (Flapjack.WordLangAddr.addr 24949 0#64)))).val
theorem output2788_def : output2788 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24945 (Flapjack.WordLangAddr.addr 24949 0#64))) := by
  unfold output2788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2788_skip : Flapjack.WordAlloc.isSkip output2788 = false := by
  rw [output2788_def]
  conv => lhs; cbv
  try rfl
theorem node2788_eq : Flapjack.WordAlloc.removeDeadStructural input2788 value5 value1 value2 = (output2788, value1398, value1) := by
  rw [input2788_def, output2788_def]
  try (conv => lhs; cbv)
  try rfl

def value1399 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24949, 24937)])).val
theorem input2789_def : input2789 = (Flapjack.WordLangProgHOL.move 0 [(24949, 24937)]) := by
  unfold input2789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24949, 24937)])).val
theorem output2789_def : output2789 = (Flapjack.WordLangProgHOL.move 0 [(24949, 24937)]) := by
  unfold output2789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2789_skip : Flapjack.WordAlloc.isSkip output2789 = false := by
  rw [output2789_def]
  conv => lhs; cbv
  try rfl
theorem node2789_eq : Flapjack.WordAlloc.removeDeadStructural input2789 value1398 value1 value2 = (output2789, value1399, value1) := by
  rw [input2789_def, output2789_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2789 input2788)).val
theorem input2790_def : input2790 = (.seq input2789 input2788) := by
  unfold input2790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2789 output2788)).val
theorem output2790_def : output2790 = (.seq output2789 output2788) := by
  unfold output2790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2790_skip : Flapjack.WordAlloc.isSkip output2790 = false := by
  rw [output2790_def]
  conv => lhs; cbv
  try rfl
theorem node2790_eq : Flapjack.WordAlloc.removeDeadStructural input2790 value5 value1 value2 = (output2790, value1399, value1) := by
  rw [input2790_def, output2790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2788_eq]
  dsimp only
  rw [node2789_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1400 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24945 0#64))).val
theorem input2791_def : input2791 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24945 0#64)) := by
  unfold input2791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24945 0#64))).val
theorem output2791_def : output2791 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24945 0#64)) := by
  unfold output2791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2791_skip : Flapjack.WordAlloc.isSkip output2791 = false := by
  rw [output2791_def]
  conv => lhs; cbv
  try rfl
theorem node2791_eq : Flapjack.WordAlloc.removeDeadStructural input2791 value1399 value1 value2 = (output2791, value1400, value1) := by
  rw [input2791_def, output2791_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24941 0#64))).val
theorem input2792_def : input2792 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24941 0#64)) := by
  unfold input2792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2792_def : output2792 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2792_skip : Flapjack.WordAlloc.isSkip output2792 = true := by
  rw [output2792_def]
  conv => lhs; cbv
  try rfl
theorem node2792_eq : Flapjack.WordAlloc.removeDeadStructural input2792 value1400 value1 value2 = (output2792, value1400, value1) := by
  rw [input2792_def, output2792_def]
  try (conv => lhs; cbv)
  try rfl

def value1401 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24937 24929 (Flapjack.WordRegImm.reg 24933))))).val
theorem input2793_def : input2793 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24937 24929 (Flapjack.WordRegImm.reg 24933)))) := by
  unfold input2793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24937 24929 (Flapjack.WordRegImm.reg 24933))))).val
theorem output2793_def : output2793 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24937 24929 (Flapjack.WordRegImm.reg 24933)))) := by
  unfold output2793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2793_skip : Flapjack.WordAlloc.isSkip output2793 = false := by
  rw [output2793_def]
  conv => lhs; cbv
  try rfl
theorem node2793_eq : Flapjack.WordAlloc.removeDeadStructural input2793 value1400 value1 value2 = (output2793, value1401, value1) := by
  rw [input2793_def, output2793_def]
  try (conv => lhs; cbv)
  try rfl

def value1402 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24933 5736#64))).val
theorem input2794_def : input2794 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24933 5736#64)) := by
  unfold input2794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24933 5736#64))).val
theorem output2794_def : output2794 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24933 5736#64)) := by
  unfold output2794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2794_skip : Flapjack.WordAlloc.isSkip output2794 = false := by
  rw [output2794_def]
  conv => lhs; cbv
  try rfl
theorem node2794_eq : Flapjack.WordAlloc.removeDeadStructural input2794 value1401 value1 value2 = (output2794, value1402, value1) := by
  rw [input2794_def, output2794_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2794 input2793)).val
theorem input2795_def : input2795 = (.seq input2794 input2793) := by
  unfold input2795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2794 output2793)).val
theorem output2795_def : output2795 = (.seq output2794 output2793) := by
  unfold output2795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2795_skip : Flapjack.WordAlloc.isSkip output2795 = false := by
  rw [output2795_def]
  conv => lhs; cbv
  try rfl
theorem node2795_eq : Flapjack.WordAlloc.removeDeadStructural input2795 value1400 value1 value2 = (output2795, value1402, value1) := by
  rw [input2795_def, output2795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2793_eq]
  dsimp only
  rw [node2794_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1403 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24929 (Flapjack.WordLangAddr.addr 24925 18446744073709551104#64)))).val
theorem input2796_def : input2796 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24929 (Flapjack.WordLangAddr.addr 24925 18446744073709551104#64))) := by
  unfold input2796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24929 (Flapjack.WordLangAddr.addr 24925 18446744073709551104#64)))).val
theorem output2796_def : output2796 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24929 (Flapjack.WordLangAddr.addr 24925 18446744073709551104#64))) := by
  unfold output2796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2796_skip : Flapjack.WordAlloc.isSkip output2796 = false := by
  rw [output2796_def]
  conv => lhs; cbv
  try rfl
theorem node2796_eq : Flapjack.WordAlloc.removeDeadStructural input2796 value1402 value1 value2 = (output2796, value1403, value1) := by
  rw [input2796_def, output2796_def]
  try (conv => lhs; cbv)
  try rfl

def value1404 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24925 24921)).val
theorem input2797_def : input2797 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24925 24921) := by
  unfold input2797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24925 24921)).val
theorem output2797_def : output2797 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24925 24921) := by
  unfold output2797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2797_skip : Flapjack.WordAlloc.isSkip output2797 = false := by
  rw [output2797_def]
  conv => lhs; cbv
  try rfl
theorem node2797_eq : Flapjack.WordAlloc.removeDeadStructural input2797 value1403 value1 value2 = (output2797, value1404, value1) := by
  rw [input2797_def, output2797_def]
  try (conv => lhs; cbv)
  try rfl

def value1405 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24921 24917 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2798_def : input2798 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24921 24917 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24921 24917 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2798_def : output2798 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24921 24917 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2798_skip : Flapjack.WordAlloc.isSkip output2798 = false := by
  rw [output2798_def]
  conv => lhs; cbv
  try rfl
theorem node2798_eq : Flapjack.WordAlloc.removeDeadStructural input2798 value1404 value1 value2 = (output2798, value1405, value1) := by
  rw [input2798_def, output2798_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24917 Flapjack.WordStore.heapLength)).val
theorem input2799_def : input2799 = (Flapjack.WordLangProgHOL.get 24917 Flapjack.WordStore.heapLength) := by
  unfold input2799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24917 Flapjack.WordStore.heapLength)).val
theorem output2799_def : output2799 = (Flapjack.WordLangProgHOL.get 24917 Flapjack.WordStore.heapLength) := by
  unfold output2799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2799_skip : Flapjack.WordAlloc.isSkip output2799 = false := by
  rw [output2799_def]
  conv => lhs; cbv
  try rfl
theorem node2799_eq : Flapjack.WordAlloc.removeDeadStructural input2799 value1405 value1 value2 = (output2799, value5, value1) := by
  rw [input2799_def, output2799_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2799 input2798)).val
theorem input2800_def : input2800 = (.seq input2799 input2798) := by
  unfold input2800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2799 output2798)).val
theorem output2800_def : output2800 = (.seq output2799 output2798) := by
  unfold output2800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2800_skip : Flapjack.WordAlloc.isSkip output2800 = false := by
  rw [output2800_def]
  conv => lhs; cbv
  try rfl
theorem node2800_eq : Flapjack.WordAlloc.removeDeadStructural input2800 value1404 value1 value2 = (output2800, value5, value1) := by
  rw [input2800_def, output2800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2798_eq]
  dsimp only
  rw [node2799_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2800 input2797)).val
theorem input2801_def : input2801 = (.seq input2800 input2797) := by
  unfold input2801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2800 output2797)).val
theorem output2801_def : output2801 = (.seq output2800 output2797) := by
  unfold output2801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2801_skip : Flapjack.WordAlloc.isSkip output2801 = false := by
  rw [output2801_def]
  conv => lhs; cbv
  try rfl
theorem node2801_eq : Flapjack.WordAlloc.removeDeadStructural input2801 value1403 value1 value2 = (output2801, value5, value1) := by
  rw [input2801_def, output2801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2797_eq]
  dsimp only
  rw [node2800_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2801 input2796)).val
theorem input2802_def : input2802 = (.seq input2801 input2796) := by
  unfold input2802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2801 output2796)).val
theorem output2802_def : output2802 = (.seq output2801 output2796) := by
  unfold output2802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2802_skip : Flapjack.WordAlloc.isSkip output2802 = false := by
  rw [output2802_def]
  conv => lhs; cbv
  try rfl
theorem node2802_eq : Flapjack.WordAlloc.removeDeadStructural input2802 value1402 value1 value2 = (output2802, value5, value1) := by
  rw [input2802_def, output2802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2796_eq]
  dsimp only
  rw [node2801_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2802 input2795)).val
theorem input2803_def : input2803 = (.seq input2802 input2795) := by
  unfold input2803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2802 output2795)).val
theorem output2803_def : output2803 = (.seq output2802 output2795) := by
  unfold output2803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2803_skip : Flapjack.WordAlloc.isSkip output2803 = false := by
  rw [output2803_def]
  conv => lhs; cbv
  try rfl
theorem node2803_eq : Flapjack.WordAlloc.removeDeadStructural input2803 value1400 value1 value2 = (output2803, value5, value1) := by
  rw [input2803_def, output2803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2795_eq]
  dsimp only
  rw [node2802_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1406 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24909 (Flapjack.WordLangAddr.addr 24913 0#64)))).val
theorem input2804_def : input2804 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24909 (Flapjack.WordLangAddr.addr 24913 0#64))) := by
  unfold input2804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24909 (Flapjack.WordLangAddr.addr 24913 0#64)))).val
theorem output2804_def : output2804 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24909 (Flapjack.WordLangAddr.addr 24913 0#64))) := by
  unfold output2804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2804_skip : Flapjack.WordAlloc.isSkip output2804 = false := by
  rw [output2804_def]
  conv => lhs; cbv
  try rfl
theorem node2804_eq : Flapjack.WordAlloc.removeDeadStructural input2804 value5 value1 value2 = (output2804, value1406, value1) := by
  rw [input2804_def, output2804_def]
  try (conv => lhs; cbv)
  try rfl

def value1407 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24913, 24901)])).val
theorem input2805_def : input2805 = (Flapjack.WordLangProgHOL.move 0 [(24913, 24901)]) := by
  unfold input2805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(24913, 24901)])).val
theorem output2805_def : output2805 = (Flapjack.WordLangProgHOL.move 0 [(24913, 24901)]) := by
  unfold output2805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2805_skip : Flapjack.WordAlloc.isSkip output2805 = false := by
  rw [output2805_def]
  conv => lhs; cbv
  try rfl
theorem node2805_eq : Flapjack.WordAlloc.removeDeadStructural input2805 value1406 value1 value2 = (output2805, value1407, value1) := by
  rw [input2805_def, output2805_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2805 input2804)).val
theorem input2806_def : input2806 = (.seq input2805 input2804) := by
  unfold input2806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2805 output2804)).val
theorem output2806_def : output2806 = (.seq output2805 output2804) := by
  unfold output2806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2806_skip : Flapjack.WordAlloc.isSkip output2806 = false := by
  rw [output2806_def]
  conv => lhs; cbv
  try rfl
theorem node2806_eq : Flapjack.WordAlloc.removeDeadStructural input2806 value5 value1 value2 = (output2806, value1407, value1) := by
  rw [input2806_def, output2806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2804_eq]
  dsimp only
  rw [node2805_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1408 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24909 0#64))).val
theorem input2807_def : input2807 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24909 0#64)) := by
  unfold input2807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24909 0#64))).val
theorem output2807_def : output2807 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24909 0#64)) := by
  unfold output2807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2807_skip : Flapjack.WordAlloc.isSkip output2807 = false := by
  rw [output2807_def]
  conv => lhs; cbv
  try rfl
theorem node2807_eq : Flapjack.WordAlloc.removeDeadStructural input2807 value1407 value1 value2 = (output2807, value1408, value1) := by
  rw [input2807_def, output2807_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24905 0#64))).val
theorem input2808_def : input2808 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24905 0#64)) := by
  unfold input2808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output2808_def : output2808 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output2808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2808_skip : Flapjack.WordAlloc.isSkip output2808 = true := by
  rw [output2808_def]
  conv => lhs; cbv
  try rfl
theorem node2808_eq : Flapjack.WordAlloc.removeDeadStructural input2808 value1408 value1 value2 = (output2808, value1408, value1) := by
  rw [input2808_def, output2808_def]
  try (conv => lhs; cbv)
  try rfl

def value1409 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24901 24893 (Flapjack.WordRegImm.reg 24897))))).val
theorem input2809_def : input2809 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24901 24893 (Flapjack.WordRegImm.reg 24897)))) := by
  unfold input2809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24901 24893 (Flapjack.WordRegImm.reg 24897))))).val
theorem output2809_def : output2809 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24901 24893 (Flapjack.WordRegImm.reg 24897)))) := by
  unfold output2809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2809_skip : Flapjack.WordAlloc.isSkip output2809 = false := by
  rw [output2809_def]
  conv => lhs; cbv
  try rfl
theorem node2809_eq : Flapjack.WordAlloc.removeDeadStructural input2809 value1408 value1 value2 = (output2809, value1409, value1) := by
  rw [input2809_def, output2809_def]
  try (conv => lhs; cbv)
  try rfl

def value1410 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24897 5728#64))).val
theorem input2810_def : input2810 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24897 5728#64)) := by
  unfold input2810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24897 5728#64))).val
theorem output2810_def : output2810 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24897 5728#64)) := by
  unfold output2810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2810_skip : Flapjack.WordAlloc.isSkip output2810 = false := by
  rw [output2810_def]
  conv => lhs; cbv
  try rfl
theorem node2810_eq : Flapjack.WordAlloc.removeDeadStructural input2810 value1409 value1 value2 = (output2810, value1410, value1) := by
  rw [input2810_def, output2810_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2810 input2809)).val
theorem input2811_def : input2811 = (.seq input2810 input2809) := by
  unfold input2811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2810 output2809)).val
theorem output2811_def : output2811 = (.seq output2810 output2809) := by
  unfold output2811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2811_skip : Flapjack.WordAlloc.isSkip output2811 = false := by
  rw [output2811_def]
  conv => lhs; cbv
  try rfl
theorem node2811_eq : Flapjack.WordAlloc.removeDeadStructural input2811 value1408 value1 value2 = (output2811, value1410, value1) := by
  rw [input2811_def, output2811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2809_eq]
  dsimp only
  rw [node2810_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1411 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24893 (Flapjack.WordLangAddr.addr 24889 18446744073709551104#64)))).val
theorem input2812_def : input2812 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24893 (Flapjack.WordLangAddr.addr 24889 18446744073709551104#64))) := by
  unfold input2812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24893 (Flapjack.WordLangAddr.addr 24889 18446744073709551104#64)))).val
theorem output2812_def : output2812 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24893 (Flapjack.WordLangAddr.addr 24889 18446744073709551104#64))) := by
  unfold output2812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2812_skip : Flapjack.WordAlloc.isSkip output2812 = false := by
  rw [output2812_def]
  conv => lhs; cbv
  try rfl
theorem node2812_eq : Flapjack.WordAlloc.removeDeadStructural input2812 value1410 value1 value2 = (output2812, value1411, value1) := by
  rw [input2812_def, output2812_def]
  try (conv => lhs; cbv)
  try rfl

def value1412 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24889 24885)).val
theorem input2813_def : input2813 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24889 24885) := by
  unfold input2813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24889 24885)).val
theorem output2813_def : output2813 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 24889 24885) := by
  unfold output2813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2813_skip : Flapjack.WordAlloc.isSkip output2813 = false := by
  rw [output2813_def]
  conv => lhs; cbv
  try rfl
theorem node2813_eq : Flapjack.WordAlloc.removeDeadStructural input2813 value1411 value1 value2 = (output2813, value1412, value1) := by
  rw [input2813_def, output2813_def]
  try (conv => lhs; cbv)
  try rfl

def value1413 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24885 24881 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input2814_def : input2814 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24885 24881 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input2814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24885 24881 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output2814_def : output2814 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24885 24881 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output2814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2814_skip : Flapjack.WordAlloc.isSkip output2814 = false := by
  rw [output2814_def]
  conv => lhs; cbv
  try rfl
theorem node2814_eq : Flapjack.WordAlloc.removeDeadStructural input2814 value1412 value1 value2 = (output2814, value1413, value1) := by
  rw [input2814_def, output2814_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24881 Flapjack.WordStore.heapLength)).val
theorem input2815_def : input2815 = (Flapjack.WordLangProgHOL.get 24881 Flapjack.WordStore.heapLength) := by
  unfold input2815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 24881 Flapjack.WordStore.heapLength)).val
theorem output2815_def : output2815 = (Flapjack.WordLangProgHOL.get 24881 Flapjack.WordStore.heapLength) := by
  unfold output2815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2815_skip : Flapjack.WordAlloc.isSkip output2815 = false := by
  rw [output2815_def]
  conv => lhs; cbv
  try rfl
theorem node2815_eq : Flapjack.WordAlloc.removeDeadStructural input2815 value1413 value1 value2 = (output2815, value5, value1) := by
  rw [input2815_def, output2815_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node2815_eq
end InitECandidate.Proofs.DeadStages713
