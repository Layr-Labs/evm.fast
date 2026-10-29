import InitECandidate.Proofs.DeadStages713.Chunk016
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input4352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4351 input4350)).val
theorem input4352_def : input4352 = (.seq input4351 input4350) := by
  unfold input4352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4351 output4350)).val
theorem output4352_def : output4352 = (.seq output4351 output4350) := by
  unfold output4352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4352_skip : Flapjack.WordAlloc.isSkip output4352 = false := by
  rw [output4352_def]
  conv => lhs; cbv
  try rfl
theorem node4352_eq : Flapjack.WordAlloc.removeDeadStructural input4352 value2180 value1 value2 = (output4352, value5, value1) := by
  rw [input4352_def, output4352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4350_eq]
  dsimp only
  rw [node4351_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4352 input4349)).val
theorem input4353_def : input4353 = (.seq input4352 input4349) := by
  unfold input4353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4352 output4349)).val
theorem output4353_def : output4353 = (.seq output4352 output4349) := by
  unfold output4353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4353_skip : Flapjack.WordAlloc.isSkip output4353 = false := by
  rw [output4353_def]
  conv => lhs; cbv
  try rfl
theorem node4353_eq : Flapjack.WordAlloc.removeDeadStructural input4353 value2179 value1 value2 = (output4353, value5, value1) := by
  rw [input4353_def, output4353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4349_eq]
  dsimp only
  rw [node4352_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4353 input4348)).val
theorem input4354_def : input4354 = (.seq input4353 input4348) := by
  unfold input4354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4353 output4348)).val
theorem output4354_def : output4354 = (.seq output4353 output4348) := by
  unfold output4354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4354_skip : Flapjack.WordAlloc.isSkip output4354 = false := by
  rw [output4354_def]
  conv => lhs; cbv
  try rfl
theorem node4354_eq : Flapjack.WordAlloc.removeDeadStructural input4354 value2178 value1 value2 = (output4354, value5, value1) := by
  rw [input4354_def, output4354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4348_eq]
  dsimp only
  rw [node4353_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4354 input4347)).val
theorem input4355_def : input4355 = (.seq input4354 input4347) := by
  unfold input4355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4354 output4347)).val
theorem output4355_def : output4355 = (.seq output4354 output4347) := by
  unfold output4355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4355_skip : Flapjack.WordAlloc.isSkip output4355 = false := by
  rw [output4355_def]
  conv => lhs; cbv
  try rfl
theorem node4355_eq : Flapjack.WordAlloc.removeDeadStructural input4355 value2176 value1 value2 = (output4355, value5, value1) := by
  rw [input4355_def, output4355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4347_eq]
  dsimp only
  rw [node4354_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2182 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21417 (Flapjack.WordLangAddr.addr 21421 0#64)))).val
theorem input4356_def : input4356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21417 (Flapjack.WordLangAddr.addr 21421 0#64))) := by
  unfold input4356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21417 (Flapjack.WordLangAddr.addr 21421 0#64)))).val
theorem output4356_def : output4356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21417 (Flapjack.WordLangAddr.addr 21421 0#64))) := by
  unfold output4356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4356_skip : Flapjack.WordAlloc.isSkip output4356 = false := by
  rw [output4356_def]
  conv => lhs; cbv
  try rfl
theorem node4356_eq : Flapjack.WordAlloc.removeDeadStructural input4356 value5 value1 value2 = (output4356, value2182, value1) := by
  rw [input4356_def, output4356_def]
  try (conv => lhs; cbv)
  try rfl

def value2183 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21421, 21409)])).val
theorem input4357_def : input4357 = (Flapjack.WordLangProgHOL.move 0 [(21421, 21409)]) := by
  unfold input4357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21421, 21409)])).val
theorem output4357_def : output4357 = (Flapjack.WordLangProgHOL.move 0 [(21421, 21409)]) := by
  unfold output4357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4357_skip : Flapjack.WordAlloc.isSkip output4357 = false := by
  rw [output4357_def]
  conv => lhs; cbv
  try rfl
theorem node4357_eq : Flapjack.WordAlloc.removeDeadStructural input4357 value2182 value1 value2 = (output4357, value2183, value1) := by
  rw [input4357_def, output4357_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4357 input4356)).val
theorem input4358_def : input4358 = (.seq input4357 input4356) := by
  unfold input4358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4357 output4356)).val
theorem output4358_def : output4358 = (.seq output4357 output4356) := by
  unfold output4358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4358_skip : Flapjack.WordAlloc.isSkip output4358 = false := by
  rw [output4358_def]
  conv => lhs; cbv
  try rfl
theorem node4358_eq : Flapjack.WordAlloc.removeDeadStructural input4358 value5 value1 value2 = (output4358, value2183, value1) := by
  rw [input4358_def, output4358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4356_eq]
  dsimp only
  rw [node4357_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2184 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21417 4320969437019325989#64))).val
theorem input4359_def : input4359 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21417 4320969437019325989#64)) := by
  unfold input4359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21417 4320969437019325989#64))).val
theorem output4359_def : output4359 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21417 4320969437019325989#64)) := by
  unfold output4359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4359_skip : Flapjack.WordAlloc.isSkip output4359 = false := by
  rw [output4359_def]
  conv => lhs; cbv
  try rfl
theorem node4359_eq : Flapjack.WordAlloc.removeDeadStructural input4359 value2183 value1 value2 = (output4359, value2184, value1) := by
  rw [input4359_def, output4359_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21413 4320969437019325989#64))).val
theorem input4360_def : input4360 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21413 4320969437019325989#64)) := by
  unfold input4360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4360_def : output4360 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4360_skip : Flapjack.WordAlloc.isSkip output4360 = true := by
  rw [output4360_def]
  conv => lhs; cbv
  try rfl
theorem node4360_eq : Flapjack.WordAlloc.removeDeadStructural input4360 value2184 value1 value2 = (output4360, value2184, value1) := by
  rw [input4360_def, output4360_def]
  try (conv => lhs; cbv)
  try rfl

def value2185 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21409 21401 (Flapjack.WordRegImm.reg 21405))))).val
theorem input4361_def : input4361 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21409 21401 (Flapjack.WordRegImm.reg 21405)))) := by
  unfold input4361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21409 21401 (Flapjack.WordRegImm.reg 21405))))).val
theorem output4361_def : output4361 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21409 21401 (Flapjack.WordRegImm.reg 21405)))) := by
  unfold output4361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4361_skip : Flapjack.WordAlloc.isSkip output4361 = false := by
  rw [output4361_def]
  conv => lhs; cbv
  try rfl
theorem node4361_eq : Flapjack.WordAlloc.removeDeadStructural input4361 value2184 value1 value2 = (output4361, value2185, value1) := by
  rw [input4361_def, output4361_def]
  try (conv => lhs; cbv)
  try rfl

def value2186 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21405 4952#64))).val
theorem input4362_def : input4362 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21405 4952#64)) := by
  unfold input4362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21405 4952#64))).val
theorem output4362_def : output4362 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21405 4952#64)) := by
  unfold output4362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4362_skip : Flapjack.WordAlloc.isSkip output4362 = false := by
  rw [output4362_def]
  conv => lhs; cbv
  try rfl
theorem node4362_eq : Flapjack.WordAlloc.removeDeadStructural input4362 value2185 value1 value2 = (output4362, value2186, value1) := by
  rw [input4362_def, output4362_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4362 input4361)).val
theorem input4363_def : input4363 = (.seq input4362 input4361) := by
  unfold input4363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4362 output4361)).val
theorem output4363_def : output4363 = (.seq output4362 output4361) := by
  unfold output4363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4363_skip : Flapjack.WordAlloc.isSkip output4363 = false := by
  rw [output4363_def]
  conv => lhs; cbv
  try rfl
theorem node4363_eq : Flapjack.WordAlloc.removeDeadStructural input4363 value2184 value1 value2 = (output4363, value2186, value1) := by
  rw [input4363_def, output4363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4361_eq]
  dsimp only
  rw [node4362_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2187 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21401 (Flapjack.WordLangAddr.addr 21397 18446744073709551104#64)))).val
theorem input4364_def : input4364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21401 (Flapjack.WordLangAddr.addr 21397 18446744073709551104#64))) := by
  unfold input4364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21401 (Flapjack.WordLangAddr.addr 21397 18446744073709551104#64)))).val
theorem output4364_def : output4364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21401 (Flapjack.WordLangAddr.addr 21397 18446744073709551104#64))) := by
  unfold output4364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4364_skip : Flapjack.WordAlloc.isSkip output4364 = false := by
  rw [output4364_def]
  conv => lhs; cbv
  try rfl
theorem node4364_eq : Flapjack.WordAlloc.removeDeadStructural input4364 value2186 value1 value2 = (output4364, value2187, value1) := by
  rw [input4364_def, output4364_def]
  try (conv => lhs; cbv)
  try rfl

def value2188 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21397 21393)).val
theorem input4365_def : input4365 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21397 21393) := by
  unfold input4365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21397 21393)).val
theorem output4365_def : output4365 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21397 21393) := by
  unfold output4365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4365_skip : Flapjack.WordAlloc.isSkip output4365 = false := by
  rw [output4365_def]
  conv => lhs; cbv
  try rfl
theorem node4365_eq : Flapjack.WordAlloc.removeDeadStructural input4365 value2187 value1 value2 = (output4365, value2188, value1) := by
  rw [input4365_def, output4365_def]
  try (conv => lhs; cbv)
  try rfl

def value2189 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21393 21389 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4366_def : input4366 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21393 21389 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21393 21389 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4366_def : output4366 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21393 21389 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4366_skip : Flapjack.WordAlloc.isSkip output4366 = false := by
  rw [output4366_def]
  conv => lhs; cbv
  try rfl
theorem node4366_eq : Flapjack.WordAlloc.removeDeadStructural input4366 value2188 value1 value2 = (output4366, value2189, value1) := by
  rw [input4366_def, output4366_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21389 Flapjack.WordStore.heapLength)).val
theorem input4367_def : input4367 = (Flapjack.WordLangProgHOL.get 21389 Flapjack.WordStore.heapLength) := by
  unfold input4367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21389 Flapjack.WordStore.heapLength)).val
theorem output4367_def : output4367 = (Flapjack.WordLangProgHOL.get 21389 Flapjack.WordStore.heapLength) := by
  unfold output4367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4367_skip : Flapjack.WordAlloc.isSkip output4367 = false := by
  rw [output4367_def]
  conv => lhs; cbv
  try rfl
theorem node4367_eq : Flapjack.WordAlloc.removeDeadStructural input4367 value2189 value1 value2 = (output4367, value5, value1) := by
  rw [input4367_def, output4367_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4367 input4366)).val
theorem input4368_def : input4368 = (.seq input4367 input4366) := by
  unfold input4368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4367 output4366)).val
theorem output4368_def : output4368 = (.seq output4367 output4366) := by
  unfold output4368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4368_skip : Flapjack.WordAlloc.isSkip output4368 = false := by
  rw [output4368_def]
  conv => lhs; cbv
  try rfl
theorem node4368_eq : Flapjack.WordAlloc.removeDeadStructural input4368 value2188 value1 value2 = (output4368, value5, value1) := by
  rw [input4368_def, output4368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4366_eq]
  dsimp only
  rw [node4367_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4368 input4365)).val
theorem input4369_def : input4369 = (.seq input4368 input4365) := by
  unfold input4369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4368 output4365)).val
theorem output4369_def : output4369 = (.seq output4368 output4365) := by
  unfold output4369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4369_skip : Flapjack.WordAlloc.isSkip output4369 = false := by
  rw [output4369_def]
  conv => lhs; cbv
  try rfl
theorem node4369_eq : Flapjack.WordAlloc.removeDeadStructural input4369 value2187 value1 value2 = (output4369, value5, value1) := by
  rw [input4369_def, output4369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4365_eq]
  dsimp only
  rw [node4368_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4369 input4364)).val
theorem input4370_def : input4370 = (.seq input4369 input4364) := by
  unfold input4370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4369 output4364)).val
theorem output4370_def : output4370 = (.seq output4369 output4364) := by
  unfold output4370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4370_skip : Flapjack.WordAlloc.isSkip output4370 = false := by
  rw [output4370_def]
  conv => lhs; cbv
  try rfl
theorem node4370_eq : Flapjack.WordAlloc.removeDeadStructural input4370 value2186 value1 value2 = (output4370, value5, value1) := by
  rw [input4370_def, output4370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4364_eq]
  dsimp only
  rw [node4369_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4370 input4363)).val
theorem input4371_def : input4371 = (.seq input4370 input4363) := by
  unfold input4371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4370 output4363)).val
theorem output4371_def : output4371 = (.seq output4370 output4363) := by
  unfold output4371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4371_skip : Flapjack.WordAlloc.isSkip output4371 = false := by
  rw [output4371_def]
  conv => lhs; cbv
  try rfl
theorem node4371_eq : Flapjack.WordAlloc.removeDeadStructural input4371 value2184 value1 value2 = (output4371, value5, value1) := by
  rw [input4371_def, output4371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4363_eq]
  dsimp only
  rw [node4370_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2190 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21381 (Flapjack.WordLangAddr.addr 21385 0#64)))).val
theorem input4372_def : input4372 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21381 (Flapjack.WordLangAddr.addr 21385 0#64))) := by
  unfold input4372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21381 (Flapjack.WordLangAddr.addr 21385 0#64)))).val
theorem output4372_def : output4372 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21381 (Flapjack.WordLangAddr.addr 21385 0#64))) := by
  unfold output4372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4372_skip : Flapjack.WordAlloc.isSkip output4372 = false := by
  rw [output4372_def]
  conv => lhs; cbv
  try rfl
theorem node4372_eq : Flapjack.WordAlloc.removeDeadStructural input4372 value5 value1 value2 = (output4372, value2190, value1) := by
  rw [input4372_def, output4372_def]
  try (conv => lhs; cbv)
  try rfl

def value2191 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21385, 21373)])).val
theorem input4373_def : input4373 = (Flapjack.WordLangProgHOL.move 0 [(21385, 21373)]) := by
  unfold input4373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21385, 21373)])).val
theorem output4373_def : output4373 = (Flapjack.WordLangProgHOL.move 0 [(21385, 21373)]) := by
  unfold output4373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4373_skip : Flapjack.WordAlloc.isSkip output4373 = false := by
  rw [output4373_def]
  conv => lhs; cbv
  try rfl
theorem node4373_eq : Flapjack.WordAlloc.removeDeadStructural input4373 value2190 value1 value2 = (output4373, value2191, value1) := by
  rw [input4373_def, output4373_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4373 input4372)).val
theorem input4374_def : input4374 = (.seq input4373 input4372) := by
  unfold input4374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4373 output4372)).val
theorem output4374_def : output4374 = (.seq output4373 output4372) := by
  unfold output4374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4374_skip : Flapjack.WordAlloc.isSkip output4374 = false := by
  rw [output4374_def]
  conv => lhs; cbv
  try rfl
theorem node4374_eq : Flapjack.WordAlloc.removeDeadStructural input4374 value5 value1 value2 = (output4374, value2191, value1) := by
  rw [input4374_def, output4374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4372_eq]
  dsimp only
  rw [node4373_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2192 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21381 11324565353801852927#64))).val
theorem input4375_def : input4375 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21381 11324565353801852927#64)) := by
  unfold input4375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21381 11324565353801852927#64))).val
theorem output4375_def : output4375 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21381 11324565353801852927#64)) := by
  unfold output4375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4375_skip : Flapjack.WordAlloc.isSkip output4375 = false := by
  rw [output4375_def]
  conv => lhs; cbv
  try rfl
theorem node4375_eq : Flapjack.WordAlloc.removeDeadStructural input4375 value2191 value1 value2 = (output4375, value2192, value1) := by
  rw [input4375_def, output4375_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21377 11324565353801852927#64))).val
theorem input4376_def : input4376 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21377 11324565353801852927#64)) := by
  unfold input4376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4376_def : output4376 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4376_skip : Flapjack.WordAlloc.isSkip output4376 = true := by
  rw [output4376_def]
  conv => lhs; cbv
  try rfl
theorem node4376_eq : Flapjack.WordAlloc.removeDeadStructural input4376 value2192 value1 value2 = (output4376, value2192, value1) := by
  rw [input4376_def, output4376_def]
  try (conv => lhs; cbv)
  try rfl

def value2193 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21373 21365 (Flapjack.WordRegImm.reg 21369))))).val
theorem input4377_def : input4377 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21373 21365 (Flapjack.WordRegImm.reg 21369)))) := by
  unfold input4377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21373 21365 (Flapjack.WordRegImm.reg 21369))))).val
theorem output4377_def : output4377 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21373 21365 (Flapjack.WordRegImm.reg 21369)))) := by
  unfold output4377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4377_skip : Flapjack.WordAlloc.isSkip output4377 = false := by
  rw [output4377_def]
  conv => lhs; cbv
  try rfl
theorem node4377_eq : Flapjack.WordAlloc.removeDeadStructural input4377 value2192 value1 value2 = (output4377, value2193, value1) := by
  rw [input4377_def, output4377_def]
  try (conv => lhs; cbv)
  try rfl

def value2194 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21369 4944#64))).val
theorem input4378_def : input4378 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21369 4944#64)) := by
  unfold input4378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21369 4944#64))).val
theorem output4378_def : output4378 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21369 4944#64)) := by
  unfold output4378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4378_skip : Flapjack.WordAlloc.isSkip output4378 = false := by
  rw [output4378_def]
  conv => lhs; cbv
  try rfl
theorem node4378_eq : Flapjack.WordAlloc.removeDeadStructural input4378 value2193 value1 value2 = (output4378, value2194, value1) := by
  rw [input4378_def, output4378_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4378 input4377)).val
theorem input4379_def : input4379 = (.seq input4378 input4377) := by
  unfold input4379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4378 output4377)).val
theorem output4379_def : output4379 = (.seq output4378 output4377) := by
  unfold output4379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4379_skip : Flapjack.WordAlloc.isSkip output4379 = false := by
  rw [output4379_def]
  conv => lhs; cbv
  try rfl
theorem node4379_eq : Flapjack.WordAlloc.removeDeadStructural input4379 value2192 value1 value2 = (output4379, value2194, value1) := by
  rw [input4379_def, output4379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4377_eq]
  dsimp only
  rw [node4378_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2195 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21365 (Flapjack.WordLangAddr.addr 21361 18446744073709551104#64)))).val
theorem input4380_def : input4380 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21365 (Flapjack.WordLangAddr.addr 21361 18446744073709551104#64))) := by
  unfold input4380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21365 (Flapjack.WordLangAddr.addr 21361 18446744073709551104#64)))).val
theorem output4380_def : output4380 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21365 (Flapjack.WordLangAddr.addr 21361 18446744073709551104#64))) := by
  unfold output4380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4380_skip : Flapjack.WordAlloc.isSkip output4380 = false := by
  rw [output4380_def]
  conv => lhs; cbv
  try rfl
theorem node4380_eq : Flapjack.WordAlloc.removeDeadStructural input4380 value2194 value1 value2 = (output4380, value2195, value1) := by
  rw [input4380_def, output4380_def]
  try (conv => lhs; cbv)
  try rfl

def value2196 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21361 21357)).val
theorem input4381_def : input4381 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21361 21357) := by
  unfold input4381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21361 21357)).val
theorem output4381_def : output4381 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21361 21357) := by
  unfold output4381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4381_skip : Flapjack.WordAlloc.isSkip output4381 = false := by
  rw [output4381_def]
  conv => lhs; cbv
  try rfl
theorem node4381_eq : Flapjack.WordAlloc.removeDeadStructural input4381 value2195 value1 value2 = (output4381, value2196, value1) := by
  rw [input4381_def, output4381_def]
  try (conv => lhs; cbv)
  try rfl

def value2197 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21357 21353 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4382_def : input4382 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21357 21353 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21357 21353 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4382_def : output4382 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21357 21353 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4382_skip : Flapjack.WordAlloc.isSkip output4382 = false := by
  rw [output4382_def]
  conv => lhs; cbv
  try rfl
theorem node4382_eq : Flapjack.WordAlloc.removeDeadStructural input4382 value2196 value1 value2 = (output4382, value2197, value1) := by
  rw [input4382_def, output4382_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21353 Flapjack.WordStore.heapLength)).val
theorem input4383_def : input4383 = (Flapjack.WordLangProgHOL.get 21353 Flapjack.WordStore.heapLength) := by
  unfold input4383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21353 Flapjack.WordStore.heapLength)).val
theorem output4383_def : output4383 = (Flapjack.WordLangProgHOL.get 21353 Flapjack.WordStore.heapLength) := by
  unfold output4383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4383_skip : Flapjack.WordAlloc.isSkip output4383 = false := by
  rw [output4383_def]
  conv => lhs; cbv
  try rfl
theorem node4383_eq : Flapjack.WordAlloc.removeDeadStructural input4383 value2197 value1 value2 = (output4383, value5, value1) := by
  rw [input4383_def, output4383_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4383 input4382)).val
theorem input4384_def : input4384 = (.seq input4383 input4382) := by
  unfold input4384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4383 output4382)).val
theorem output4384_def : output4384 = (.seq output4383 output4382) := by
  unfold output4384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4384_skip : Flapjack.WordAlloc.isSkip output4384 = false := by
  rw [output4384_def]
  conv => lhs; cbv
  try rfl
theorem node4384_eq : Flapjack.WordAlloc.removeDeadStructural input4384 value2196 value1 value2 = (output4384, value5, value1) := by
  rw [input4384_def, output4384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4382_eq]
  dsimp only
  rw [node4383_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4384 input4381)).val
theorem input4385_def : input4385 = (.seq input4384 input4381) := by
  unfold input4385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4384 output4381)).val
theorem output4385_def : output4385 = (.seq output4384 output4381) := by
  unfold output4385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4385_skip : Flapjack.WordAlloc.isSkip output4385 = false := by
  rw [output4385_def]
  conv => lhs; cbv
  try rfl
theorem node4385_eq : Flapjack.WordAlloc.removeDeadStructural input4385 value2195 value1 value2 = (output4385, value5, value1) := by
  rw [input4385_def, output4385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4381_eq]
  dsimp only
  rw [node4384_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4385 input4380)).val
theorem input4386_def : input4386 = (.seq input4385 input4380) := by
  unfold input4386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4385 output4380)).val
theorem output4386_def : output4386 = (.seq output4385 output4380) := by
  unfold output4386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4386_skip : Flapjack.WordAlloc.isSkip output4386 = false := by
  rw [output4386_def]
  conv => lhs; cbv
  try rfl
theorem node4386_eq : Flapjack.WordAlloc.removeDeadStructural input4386 value2194 value1 value2 = (output4386, value5, value1) := by
  rw [input4386_def, output4386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4380_eq]
  dsimp only
  rw [node4385_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4386 input4379)).val
theorem input4387_def : input4387 = (.seq input4386 input4379) := by
  unfold input4387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4386 output4379)).val
theorem output4387_def : output4387 = (.seq output4386 output4379) := by
  unfold output4387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4387_skip : Flapjack.WordAlloc.isSkip output4387 = false := by
  rw [output4387_def]
  conv => lhs; cbv
  try rfl
theorem node4387_eq : Flapjack.WordAlloc.removeDeadStructural input4387 value2192 value1 value2 = (output4387, value5, value1) := by
  rw [input4387_def, output4387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4379_eq]
  dsimp only
  rw [node4386_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2198 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21345 (Flapjack.WordLangAddr.addr 21349 0#64)))).val
theorem input4388_def : input4388 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21345 (Flapjack.WordLangAddr.addr 21349 0#64))) := by
  unfold input4388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21345 (Flapjack.WordLangAddr.addr 21349 0#64)))).val
theorem output4388_def : output4388 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21345 (Flapjack.WordLangAddr.addr 21349 0#64))) := by
  unfold output4388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4388_skip : Flapjack.WordAlloc.isSkip output4388 = false := by
  rw [output4388_def]
  conv => lhs; cbv
  try rfl
theorem node4388_eq : Flapjack.WordAlloc.removeDeadStructural input4388 value5 value1 value2 = (output4388, value2198, value1) := by
  rw [input4388_def, output4388_def]
  try (conv => lhs; cbv)
  try rfl

def value2199 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21349, 21337)])).val
theorem input4389_def : input4389 = (Flapjack.WordLangProgHOL.move 0 [(21349, 21337)]) := by
  unfold input4389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21349, 21337)])).val
theorem output4389_def : output4389 = (Flapjack.WordLangProgHOL.move 0 [(21349, 21337)]) := by
  unfold output4389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4389_skip : Flapjack.WordAlloc.isSkip output4389 = false := by
  rw [output4389_def]
  conv => lhs; cbv
  try rfl
theorem node4389_eq : Flapjack.WordAlloc.removeDeadStructural input4389 value2198 value1 value2 = (output4389, value2199, value1) := by
  rw [input4389_def, output4389_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4389 input4388)).val
theorem input4390_def : input4390 = (.seq input4389 input4388) := by
  unfold input4390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4389 output4388)).val
theorem output4390_def : output4390 = (.seq output4389 output4388) := by
  unfold output4390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4390_skip : Flapjack.WordAlloc.isSkip output4390 = false := by
  rw [output4390_def]
  conv => lhs; cbv
  try rfl
theorem node4390_eq : Flapjack.WordAlloc.removeDeadStructural input4390 value5 value1 value2 = (output4390, value2199, value1) := by
  rw [input4390_def, output4390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4388_eq]
  dsimp only
  rw [node4389_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2200 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21345 16704584376175373328#64))).val
theorem input4391_def : input4391 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21345 16704584376175373328#64)) := by
  unfold input4391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21345 16704584376175373328#64))).val
theorem output4391_def : output4391 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21345 16704584376175373328#64)) := by
  unfold output4391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4391_skip : Flapjack.WordAlloc.isSkip output4391 = false := by
  rw [output4391_def]
  conv => lhs; cbv
  try rfl
theorem node4391_eq : Flapjack.WordAlloc.removeDeadStructural input4391 value2199 value1 value2 = (output4391, value2200, value1) := by
  rw [input4391_def, output4391_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21341 16704584376175373328#64))).val
theorem input4392_def : input4392 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21341 16704584376175373328#64)) := by
  unfold input4392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4392_def : output4392 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4392_skip : Flapjack.WordAlloc.isSkip output4392 = true := by
  rw [output4392_def]
  conv => lhs; cbv
  try rfl
theorem node4392_eq : Flapjack.WordAlloc.removeDeadStructural input4392 value2200 value1 value2 = (output4392, value2200, value1) := by
  rw [input4392_def, output4392_def]
  try (conv => lhs; cbv)
  try rfl

def value2201 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21337 21329 (Flapjack.WordRegImm.reg 21333))))).val
theorem input4393_def : input4393 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21337 21329 (Flapjack.WordRegImm.reg 21333)))) := by
  unfold input4393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21337 21329 (Flapjack.WordRegImm.reg 21333))))).val
theorem output4393_def : output4393 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21337 21329 (Flapjack.WordRegImm.reg 21333)))) := by
  unfold output4393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4393_skip : Flapjack.WordAlloc.isSkip output4393 = false := by
  rw [output4393_def]
  conv => lhs; cbv
  try rfl
theorem node4393_eq : Flapjack.WordAlloc.removeDeadStructural input4393 value2200 value1 value2 = (output4393, value2201, value1) := by
  rw [input4393_def, output4393_def]
  try (conv => lhs; cbv)
  try rfl

def value2202 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21333 4936#64))).val
theorem input4394_def : input4394 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21333 4936#64)) := by
  unfold input4394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21333 4936#64))).val
theorem output4394_def : output4394 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21333 4936#64)) := by
  unfold output4394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4394_skip : Flapjack.WordAlloc.isSkip output4394 = false := by
  rw [output4394_def]
  conv => lhs; cbv
  try rfl
theorem node4394_eq : Flapjack.WordAlloc.removeDeadStructural input4394 value2201 value1 value2 = (output4394, value2202, value1) := by
  rw [input4394_def, output4394_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4394 input4393)).val
theorem input4395_def : input4395 = (.seq input4394 input4393) := by
  unfold input4395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4394 output4393)).val
theorem output4395_def : output4395 = (.seq output4394 output4393) := by
  unfold output4395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4395_skip : Flapjack.WordAlloc.isSkip output4395 = false := by
  rw [output4395_def]
  conv => lhs; cbv
  try rfl
theorem node4395_eq : Flapjack.WordAlloc.removeDeadStructural input4395 value2200 value1 value2 = (output4395, value2202, value1) := by
  rw [input4395_def, output4395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4393_eq]
  dsimp only
  rw [node4394_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2203 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21329 (Flapjack.WordLangAddr.addr 21325 18446744073709551104#64)))).val
theorem input4396_def : input4396 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21329 (Flapjack.WordLangAddr.addr 21325 18446744073709551104#64))) := by
  unfold input4396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21329 (Flapjack.WordLangAddr.addr 21325 18446744073709551104#64)))).val
theorem output4396_def : output4396 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21329 (Flapjack.WordLangAddr.addr 21325 18446744073709551104#64))) := by
  unfold output4396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4396_skip : Flapjack.WordAlloc.isSkip output4396 = false := by
  rw [output4396_def]
  conv => lhs; cbv
  try rfl
theorem node4396_eq : Flapjack.WordAlloc.removeDeadStructural input4396 value2202 value1 value2 = (output4396, value2203, value1) := by
  rw [input4396_def, output4396_def]
  try (conv => lhs; cbv)
  try rfl

def value2204 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21325 21321)).val
theorem input4397_def : input4397 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21325 21321) := by
  unfold input4397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21325 21321)).val
theorem output4397_def : output4397 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21325 21321) := by
  unfold output4397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4397_skip : Flapjack.WordAlloc.isSkip output4397 = false := by
  rw [output4397_def]
  conv => lhs; cbv
  try rfl
theorem node4397_eq : Flapjack.WordAlloc.removeDeadStructural input4397 value2203 value1 value2 = (output4397, value2204, value1) := by
  rw [input4397_def, output4397_def]
  try (conv => lhs; cbv)
  try rfl

def value2205 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21321 21317 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4398_def : input4398 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21321 21317 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21321 21317 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4398_def : output4398 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21321 21317 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4398_skip : Flapjack.WordAlloc.isSkip output4398 = false := by
  rw [output4398_def]
  conv => lhs; cbv
  try rfl
theorem node4398_eq : Flapjack.WordAlloc.removeDeadStructural input4398 value2204 value1 value2 = (output4398, value2205, value1) := by
  rw [input4398_def, output4398_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21317 Flapjack.WordStore.heapLength)).val
theorem input4399_def : input4399 = (Flapjack.WordLangProgHOL.get 21317 Flapjack.WordStore.heapLength) := by
  unfold input4399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21317 Flapjack.WordStore.heapLength)).val
theorem output4399_def : output4399 = (Flapjack.WordLangProgHOL.get 21317 Flapjack.WordStore.heapLength) := by
  unfold output4399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4399_skip : Flapjack.WordAlloc.isSkip output4399 = false := by
  rw [output4399_def]
  conv => lhs; cbv
  try rfl
theorem node4399_eq : Flapjack.WordAlloc.removeDeadStructural input4399 value2205 value1 value2 = (output4399, value5, value1) := by
  rw [input4399_def, output4399_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4399 input4398)).val
theorem input4400_def : input4400 = (.seq input4399 input4398) := by
  unfold input4400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4399 output4398)).val
theorem output4400_def : output4400 = (.seq output4399 output4398) := by
  unfold output4400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4400_skip : Flapjack.WordAlloc.isSkip output4400 = false := by
  rw [output4400_def]
  conv => lhs; cbv
  try rfl
theorem node4400_eq : Flapjack.WordAlloc.removeDeadStructural input4400 value2204 value1 value2 = (output4400, value5, value1) := by
  rw [input4400_def, output4400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4398_eq]
  dsimp only
  rw [node4399_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4400 input4397)).val
theorem input4401_def : input4401 = (.seq input4400 input4397) := by
  unfold input4401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4400 output4397)).val
theorem output4401_def : output4401 = (.seq output4400 output4397) := by
  unfold output4401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4401_skip : Flapjack.WordAlloc.isSkip output4401 = false := by
  rw [output4401_def]
  conv => lhs; cbv
  try rfl
theorem node4401_eq : Flapjack.WordAlloc.removeDeadStructural input4401 value2203 value1 value2 = (output4401, value5, value1) := by
  rw [input4401_def, output4401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4397_eq]
  dsimp only
  rw [node4400_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4401 input4396)).val
theorem input4402_def : input4402 = (.seq input4401 input4396) := by
  unfold input4402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4401 output4396)).val
theorem output4402_def : output4402 = (.seq output4401 output4396) := by
  unfold output4402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4402_skip : Flapjack.WordAlloc.isSkip output4402 = false := by
  rw [output4402_def]
  conv => lhs; cbv
  try rfl
theorem node4402_eq : Flapjack.WordAlloc.removeDeadStructural input4402 value2202 value1 value2 = (output4402, value5, value1) := by
  rw [input4402_def, output4402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4396_eq]
  dsimp only
  rw [node4401_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4402 input4395)).val
theorem input4403_def : input4403 = (.seq input4402 input4395) := by
  unfold input4403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4402 output4395)).val
theorem output4403_def : output4403 = (.seq output4402 output4395) := by
  unfold output4403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4403_skip : Flapjack.WordAlloc.isSkip output4403 = false := by
  rw [output4403_def]
  conv => lhs; cbv
  try rfl
theorem node4403_eq : Flapjack.WordAlloc.removeDeadStructural input4403 value2200 value1 value2 = (output4403, value5, value1) := by
  rw [input4403_def, output4403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4395_eq]
  dsimp only
  rw [node4402_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2206 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21309 (Flapjack.WordLangAddr.addr 21313 0#64)))).val
theorem input4404_def : input4404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21309 (Flapjack.WordLangAddr.addr 21313 0#64))) := by
  unfold input4404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21309 (Flapjack.WordLangAddr.addr 21313 0#64)))).val
theorem output4404_def : output4404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21309 (Flapjack.WordLangAddr.addr 21313 0#64))) := by
  unfold output4404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4404_skip : Flapjack.WordAlloc.isSkip output4404 = false := by
  rw [output4404_def]
  conv => lhs; cbv
  try rfl
theorem node4404_eq : Flapjack.WordAlloc.removeDeadStructural input4404 value5 value1 value2 = (output4404, value2206, value1) := by
  rw [input4404_def, output4404_def]
  try (conv => lhs; cbv)
  try rfl

def value2207 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21313, 21301)])).val
theorem input4405_def : input4405 = (Flapjack.WordLangProgHOL.move 0 [(21313, 21301)]) := by
  unfold input4405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21313, 21301)])).val
theorem output4405_def : output4405 = (Flapjack.WordLangProgHOL.move 0 [(21313, 21301)]) := by
  unfold output4405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4405_skip : Flapjack.WordAlloc.isSkip output4405 = false := by
  rw [output4405_def]
  conv => lhs; cbv
  try rfl
theorem node4405_eq : Flapjack.WordAlloc.removeDeadStructural input4405 value2206 value1 value2 = (output4405, value2207, value1) := by
  rw [input4405_def, output4405_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4405 input4404)).val
theorem input4406_def : input4406 = (.seq input4405 input4404) := by
  unfold input4406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4405 output4404)).val
theorem output4406_def : output4406 = (.seq output4405 output4404) := by
  unfold output4406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4406_skip : Flapjack.WordAlloc.isSkip output4406 = false := by
  rw [output4406_def]
  conv => lhs; cbv
  try rfl
theorem node4406_eq : Flapjack.WordAlloc.removeDeadStructural input4406 value5 value1 value2 = (output4406, value2207, value1) := by
  rw [input4406_def, output4406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4404_eq]
  dsimp only
  rw [node4405_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2208 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21309 4491034961976738038#64))).val
theorem input4407_def : input4407 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21309 4491034961976738038#64)) := by
  unfold input4407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21309 4491034961976738038#64))).val
theorem output4407_def : output4407 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21309 4491034961976738038#64)) := by
  unfold output4407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4407_skip : Flapjack.WordAlloc.isSkip output4407 = false := by
  rw [output4407_def]
  conv => lhs; cbv
  try rfl
theorem node4407_eq : Flapjack.WordAlloc.removeDeadStructural input4407 value2207 value1 value2 = (output4407, value2208, value1) := by
  rw [input4407_def, output4407_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21305 4491034961976738038#64))).val
theorem input4408_def : input4408 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21305 4491034961976738038#64)) := by
  unfold input4408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4408_def : output4408 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4408_skip : Flapjack.WordAlloc.isSkip output4408 = true := by
  rw [output4408_def]
  conv => lhs; cbv
  try rfl
theorem node4408_eq : Flapjack.WordAlloc.removeDeadStructural input4408 value2208 value1 value2 = (output4408, value2208, value1) := by
  rw [input4408_def, output4408_def]
  try (conv => lhs; cbv)
  try rfl

def value2209 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21301 21293 (Flapjack.WordRegImm.reg 21297))))).val
theorem input4409_def : input4409 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21301 21293 (Flapjack.WordRegImm.reg 21297)))) := by
  unfold input4409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21301 21293 (Flapjack.WordRegImm.reg 21297))))).val
theorem output4409_def : output4409 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21301 21293 (Flapjack.WordRegImm.reg 21297)))) := by
  unfold output4409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4409_skip : Flapjack.WordAlloc.isSkip output4409 = false := by
  rw [output4409_def]
  conv => lhs; cbv
  try rfl
theorem node4409_eq : Flapjack.WordAlloc.removeDeadStructural input4409 value2208 value1 value2 = (output4409, value2209, value1) := by
  rw [input4409_def, output4409_def]
  try (conv => lhs; cbv)
  try rfl

def value2210 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21297 4928#64))).val
theorem input4410_def : input4410 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21297 4928#64)) := by
  unfold input4410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21297 4928#64))).val
theorem output4410_def : output4410 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21297 4928#64)) := by
  unfold output4410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4410_skip : Flapjack.WordAlloc.isSkip output4410 = false := by
  rw [output4410_def]
  conv => lhs; cbv
  try rfl
theorem node4410_eq : Flapjack.WordAlloc.removeDeadStructural input4410 value2209 value1 value2 = (output4410, value2210, value1) := by
  rw [input4410_def, output4410_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4410 input4409)).val
theorem input4411_def : input4411 = (.seq input4410 input4409) := by
  unfold input4411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4410 output4409)).val
theorem output4411_def : output4411 = (.seq output4410 output4409) := by
  unfold output4411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4411_skip : Flapjack.WordAlloc.isSkip output4411 = false := by
  rw [output4411_def]
  conv => lhs; cbv
  try rfl
theorem node4411_eq : Flapjack.WordAlloc.removeDeadStructural input4411 value2208 value1 value2 = (output4411, value2210, value1) := by
  rw [input4411_def, output4411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4409_eq]
  dsimp only
  rw [node4410_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2211 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21293 (Flapjack.WordLangAddr.addr 21289 18446744073709551104#64)))).val
theorem input4412_def : input4412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21293 (Flapjack.WordLangAddr.addr 21289 18446744073709551104#64))) := by
  unfold input4412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21293 (Flapjack.WordLangAddr.addr 21289 18446744073709551104#64)))).val
theorem output4412_def : output4412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21293 (Flapjack.WordLangAddr.addr 21289 18446744073709551104#64))) := by
  unfold output4412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4412_skip : Flapjack.WordAlloc.isSkip output4412 = false := by
  rw [output4412_def]
  conv => lhs; cbv
  try rfl
theorem node4412_eq : Flapjack.WordAlloc.removeDeadStructural input4412 value2210 value1 value2 = (output4412, value2211, value1) := by
  rw [input4412_def, output4412_def]
  try (conv => lhs; cbv)
  try rfl

def value2212 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21289 21285)).val
theorem input4413_def : input4413 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21289 21285) := by
  unfold input4413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21289 21285)).val
theorem output4413_def : output4413 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21289 21285) := by
  unfold output4413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4413_skip : Flapjack.WordAlloc.isSkip output4413 = false := by
  rw [output4413_def]
  conv => lhs; cbv
  try rfl
theorem node4413_eq : Flapjack.WordAlloc.removeDeadStructural input4413 value2211 value1 value2 = (output4413, value2212, value1) := by
  rw [input4413_def, output4413_def]
  try (conv => lhs; cbv)
  try rfl

def value2213 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21285 21281 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4414_def : input4414 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21285 21281 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21285 21281 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4414_def : output4414 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21285 21281 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4414_skip : Flapjack.WordAlloc.isSkip output4414 = false := by
  rw [output4414_def]
  conv => lhs; cbv
  try rfl
theorem node4414_eq : Flapjack.WordAlloc.removeDeadStructural input4414 value2212 value1 value2 = (output4414, value2213, value1) := by
  rw [input4414_def, output4414_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21281 Flapjack.WordStore.heapLength)).val
theorem input4415_def : input4415 = (Flapjack.WordLangProgHOL.get 21281 Flapjack.WordStore.heapLength) := by
  unfold input4415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21281 Flapjack.WordStore.heapLength)).val
theorem output4415_def : output4415 = (Flapjack.WordLangProgHOL.get 21281 Flapjack.WordStore.heapLength) := by
  unfold output4415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4415_skip : Flapjack.WordAlloc.isSkip output4415 = false := by
  rw [output4415_def]
  conv => lhs; cbv
  try rfl
theorem node4415_eq : Flapjack.WordAlloc.removeDeadStructural input4415 value2213 value1 value2 = (output4415, value5, value1) := by
  rw [input4415_def, output4415_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4415 input4414)).val
theorem input4416_def : input4416 = (.seq input4415 input4414) := by
  unfold input4416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4415 output4414)).val
theorem output4416_def : output4416 = (.seq output4415 output4414) := by
  unfold output4416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4416_skip : Flapjack.WordAlloc.isSkip output4416 = false := by
  rw [output4416_def]
  conv => lhs; cbv
  try rfl
theorem node4416_eq : Flapjack.WordAlloc.removeDeadStructural input4416 value2212 value1 value2 = (output4416, value5, value1) := by
  rw [input4416_def, output4416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4414_eq]
  dsimp only
  rw [node4415_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4416 input4413)).val
theorem input4417_def : input4417 = (.seq input4416 input4413) := by
  unfold input4417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4416 output4413)).val
theorem output4417_def : output4417 = (.seq output4416 output4413) := by
  unfold output4417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4417_skip : Flapjack.WordAlloc.isSkip output4417 = false := by
  rw [output4417_def]
  conv => lhs; cbv
  try rfl
theorem node4417_eq : Flapjack.WordAlloc.removeDeadStructural input4417 value2211 value1 value2 = (output4417, value5, value1) := by
  rw [input4417_def, output4417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4413_eq]
  dsimp only
  rw [node4416_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4417 input4412)).val
theorem input4418_def : input4418 = (.seq input4417 input4412) := by
  unfold input4418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4417 output4412)).val
theorem output4418_def : output4418 = (.seq output4417 output4412) := by
  unfold output4418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4418_skip : Flapjack.WordAlloc.isSkip output4418 = false := by
  rw [output4418_def]
  conv => lhs; cbv
  try rfl
theorem node4418_eq : Flapjack.WordAlloc.removeDeadStructural input4418 value2210 value1 value2 = (output4418, value5, value1) := by
  rw [input4418_def, output4418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4412_eq]
  dsimp only
  rw [node4417_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4418 input4411)).val
theorem input4419_def : input4419 = (.seq input4418 input4411) := by
  unfold input4419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4418 output4411)).val
theorem output4419_def : output4419 = (.seq output4418 output4411) := by
  unfold output4419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4419_skip : Flapjack.WordAlloc.isSkip output4419 = false := by
  rw [output4419_def]
  conv => lhs; cbv
  try rfl
theorem node4419_eq : Flapjack.WordAlloc.removeDeadStructural input4419 value2208 value1 value2 = (output4419, value5, value1) := by
  rw [input4419_def, output4419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4411_eq]
  dsimp only
  rw [node4418_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2214 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21273 (Flapjack.WordLangAddr.addr 21277 0#64)))).val
theorem input4420_def : input4420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21273 (Flapjack.WordLangAddr.addr 21277 0#64))) := by
  unfold input4420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21273 (Flapjack.WordLangAddr.addr 21277 0#64)))).val
theorem output4420_def : output4420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21273 (Flapjack.WordLangAddr.addr 21277 0#64))) := by
  unfold output4420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4420_skip : Flapjack.WordAlloc.isSkip output4420 = false := by
  rw [output4420_def]
  conv => lhs; cbv
  try rfl
theorem node4420_eq : Flapjack.WordAlloc.removeDeadStructural input4420 value5 value1 value2 = (output4420, value2214, value1) := by
  rw [input4420_def, output4420_def]
  try (conv => lhs; cbv)
  try rfl

def value2215 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21277, 21265)])).val
theorem input4421_def : input4421 = (Flapjack.WordLangProgHOL.move 0 [(21277, 21265)]) := by
  unfold input4421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21277, 21265)])).val
theorem output4421_def : output4421 = (Flapjack.WordLangProgHOL.move 0 [(21277, 21265)]) := by
  unfold output4421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4421_skip : Flapjack.WordAlloc.isSkip output4421 = false := by
  rw [output4421_def]
  conv => lhs; cbv
  try rfl
theorem node4421_eq : Flapjack.WordAlloc.removeDeadStructural input4421 value2214 value1 value2 = (output4421, value2215, value1) := by
  rw [input4421_def, output4421_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4421 input4420)).val
theorem input4422_def : input4422 = (.seq input4421 input4420) := by
  unfold input4422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4421 output4420)).val
theorem output4422_def : output4422 = (.seq output4421 output4420) := by
  unfold output4422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4422_skip : Flapjack.WordAlloc.isSkip output4422 = false := by
  rw [output4422_def]
  conv => lhs; cbv
  try rfl
theorem node4422_eq : Flapjack.WordAlloc.removeDeadStructural input4422 value5 value1 value2 = (output4422, value2215, value1) := by
  rw [input4422_def, output4422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4420_eq]
  dsimp only
  rw [node4421_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2216 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21273 582508994779039039#64))).val
theorem input4423_def : input4423 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21273 582508994779039039#64)) := by
  unfold input4423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21273 582508994779039039#64))).val
theorem output4423_def : output4423 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21273 582508994779039039#64)) := by
  unfold output4423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4423_skip : Flapjack.WordAlloc.isSkip output4423 = false := by
  rw [output4423_def]
  conv => lhs; cbv
  try rfl
theorem node4423_eq : Flapjack.WordAlloc.removeDeadStructural input4423 value2215 value1 value2 = (output4423, value2216, value1) := by
  rw [input4423_def, output4423_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21269 582508994779039039#64))).val
theorem input4424_def : input4424 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21269 582508994779039039#64)) := by
  unfold input4424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4424_def : output4424 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4424_skip : Flapjack.WordAlloc.isSkip output4424 = true := by
  rw [output4424_def]
  conv => lhs; cbv
  try rfl
theorem node4424_eq : Flapjack.WordAlloc.removeDeadStructural input4424 value2216 value1 value2 = (output4424, value2216, value1) := by
  rw [input4424_def, output4424_def]
  try (conv => lhs; cbv)
  try rfl

def value2217 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21265 21257 (Flapjack.WordRegImm.reg 21261))))).val
theorem input4425_def : input4425 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21265 21257 (Flapjack.WordRegImm.reg 21261)))) := by
  unfold input4425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21265 21257 (Flapjack.WordRegImm.reg 21261))))).val
theorem output4425_def : output4425 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21265 21257 (Flapjack.WordRegImm.reg 21261)))) := by
  unfold output4425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4425_skip : Flapjack.WordAlloc.isSkip output4425 = false := by
  rw [output4425_def]
  conv => lhs; cbv
  try rfl
theorem node4425_eq : Flapjack.WordAlloc.removeDeadStructural input4425 value2216 value1 value2 = (output4425, value2217, value1) := by
  rw [input4425_def, output4425_def]
  try (conv => lhs; cbv)
  try rfl

def value2218 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21261 4920#64))).val
theorem input4426_def : input4426 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21261 4920#64)) := by
  unfold input4426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21261 4920#64))).val
theorem output4426_def : output4426 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21261 4920#64)) := by
  unfold output4426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4426_skip : Flapjack.WordAlloc.isSkip output4426 = false := by
  rw [output4426_def]
  conv => lhs; cbv
  try rfl
theorem node4426_eq : Flapjack.WordAlloc.removeDeadStructural input4426 value2217 value1 value2 = (output4426, value2218, value1) := by
  rw [input4426_def, output4426_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4426 input4425)).val
theorem input4427_def : input4427 = (.seq input4426 input4425) := by
  unfold input4427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4426 output4425)).val
theorem output4427_def : output4427 = (.seq output4426 output4425) := by
  unfold output4427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4427_skip : Flapjack.WordAlloc.isSkip output4427 = false := by
  rw [output4427_def]
  conv => lhs; cbv
  try rfl
theorem node4427_eq : Flapjack.WordAlloc.removeDeadStructural input4427 value2216 value1 value2 = (output4427, value2218, value1) := by
  rw [input4427_def, output4427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4425_eq]
  dsimp only
  rw [node4426_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2219 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21257 (Flapjack.WordLangAddr.addr 21253 18446744073709551104#64)))).val
theorem input4428_def : input4428 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21257 (Flapjack.WordLangAddr.addr 21253 18446744073709551104#64))) := by
  unfold input4428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21257 (Flapjack.WordLangAddr.addr 21253 18446744073709551104#64)))).val
theorem output4428_def : output4428 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21257 (Flapjack.WordLangAddr.addr 21253 18446744073709551104#64))) := by
  unfold output4428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4428_skip : Flapjack.WordAlloc.isSkip output4428 = false := by
  rw [output4428_def]
  conv => lhs; cbv
  try rfl
theorem node4428_eq : Flapjack.WordAlloc.removeDeadStructural input4428 value2218 value1 value2 = (output4428, value2219, value1) := by
  rw [input4428_def, output4428_def]
  try (conv => lhs; cbv)
  try rfl

def value2220 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21253 21249)).val
theorem input4429_def : input4429 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21253 21249) := by
  unfold input4429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21253 21249)).val
theorem output4429_def : output4429 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21253 21249) := by
  unfold output4429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4429_skip : Flapjack.WordAlloc.isSkip output4429 = false := by
  rw [output4429_def]
  conv => lhs; cbv
  try rfl
theorem node4429_eq : Flapjack.WordAlloc.removeDeadStructural input4429 value2219 value1 value2 = (output4429, value2220, value1) := by
  rw [input4429_def, output4429_def]
  try (conv => lhs; cbv)
  try rfl

def value2221 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21249 21245 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4430_def : input4430 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21249 21245 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21249 21245 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4430_def : output4430 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21249 21245 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4430_skip : Flapjack.WordAlloc.isSkip output4430 = false := by
  rw [output4430_def]
  conv => lhs; cbv
  try rfl
theorem node4430_eq : Flapjack.WordAlloc.removeDeadStructural input4430 value2220 value1 value2 = (output4430, value2221, value1) := by
  rw [input4430_def, output4430_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21245 Flapjack.WordStore.heapLength)).val
theorem input4431_def : input4431 = (Flapjack.WordLangProgHOL.get 21245 Flapjack.WordStore.heapLength) := by
  unfold input4431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21245 Flapjack.WordStore.heapLength)).val
theorem output4431_def : output4431 = (Flapjack.WordLangProgHOL.get 21245 Flapjack.WordStore.heapLength) := by
  unfold output4431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4431_skip : Flapjack.WordAlloc.isSkip output4431 = false := by
  rw [output4431_def]
  conv => lhs; cbv
  try rfl
theorem node4431_eq : Flapjack.WordAlloc.removeDeadStructural input4431 value2221 value1 value2 = (output4431, value5, value1) := by
  rw [input4431_def, output4431_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4431 input4430)).val
theorem input4432_def : input4432 = (.seq input4431 input4430) := by
  unfold input4432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4431 output4430)).val
theorem output4432_def : output4432 = (.seq output4431 output4430) := by
  unfold output4432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4432_skip : Flapjack.WordAlloc.isSkip output4432 = false := by
  rw [output4432_def]
  conv => lhs; cbv
  try rfl
theorem node4432_eq : Flapjack.WordAlloc.removeDeadStructural input4432 value2220 value1 value2 = (output4432, value5, value1) := by
  rw [input4432_def, output4432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4430_eq]
  dsimp only
  rw [node4431_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4432 input4429)).val
theorem input4433_def : input4433 = (.seq input4432 input4429) := by
  unfold input4433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4432 output4429)).val
theorem output4433_def : output4433 = (.seq output4432 output4429) := by
  unfold output4433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4433_skip : Flapjack.WordAlloc.isSkip output4433 = false := by
  rw [output4433_def]
  conv => lhs; cbv
  try rfl
theorem node4433_eq : Flapjack.WordAlloc.removeDeadStructural input4433 value2219 value1 value2 = (output4433, value5, value1) := by
  rw [input4433_def, output4433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4429_eq]
  dsimp only
  rw [node4432_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4433 input4428)).val
theorem input4434_def : input4434 = (.seq input4433 input4428) := by
  unfold input4434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4433 output4428)).val
theorem output4434_def : output4434 = (.seq output4433 output4428) := by
  unfold output4434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4434_skip : Flapjack.WordAlloc.isSkip output4434 = false := by
  rw [output4434_def]
  conv => lhs; cbv
  try rfl
theorem node4434_eq : Flapjack.WordAlloc.removeDeadStructural input4434 value2218 value1 value2 = (output4434, value5, value1) := by
  rw [input4434_def, output4434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4428_eq]
  dsimp only
  rw [node4433_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4434 input4427)).val
theorem input4435_def : input4435 = (.seq input4434 input4427) := by
  unfold input4435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4434 output4427)).val
theorem output4435_def : output4435 = (.seq output4434 output4427) := by
  unfold output4435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4435_skip : Flapjack.WordAlloc.isSkip output4435 = false := by
  rw [output4435_def]
  conv => lhs; cbv
  try rfl
theorem node4435_eq : Flapjack.WordAlloc.removeDeadStructural input4435 value2216 value1 value2 = (output4435, value5, value1) := by
  rw [input4435_def, output4435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4427_eq]
  dsimp only
  rw [node4434_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2222 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21237 (Flapjack.WordLangAddr.addr 21241 0#64)))).val
theorem input4436_def : input4436 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21237 (Flapjack.WordLangAddr.addr 21241 0#64))) := by
  unfold input4436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21237 (Flapjack.WordLangAddr.addr 21241 0#64)))).val
theorem output4436_def : output4436 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21237 (Flapjack.WordLangAddr.addr 21241 0#64))) := by
  unfold output4436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4436_skip : Flapjack.WordAlloc.isSkip output4436 = false := by
  rw [output4436_def]
  conv => lhs; cbv
  try rfl
theorem node4436_eq : Flapjack.WordAlloc.removeDeadStructural input4436 value5 value1 value2 = (output4436, value2222, value1) := by
  rw [input4436_def, output4436_def]
  try (conv => lhs; cbv)
  try rfl

def value2223 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21241, 21229)])).val
theorem input4437_def : input4437 = (Flapjack.WordLangProgHOL.move 0 [(21241, 21229)]) := by
  unfold input4437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21241, 21229)])).val
theorem output4437_def : output4437 = (Flapjack.WordLangProgHOL.move 0 [(21241, 21229)]) := by
  unfold output4437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4437_skip : Flapjack.WordAlloc.isSkip output4437 = false := by
  rw [output4437_def]
  conv => lhs; cbv
  try rfl
theorem node4437_eq : Flapjack.WordAlloc.removeDeadStructural input4437 value2222 value1 value2 = (output4437, value2223, value1) := by
  rw [input4437_def, output4437_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4437 input4436)).val
theorem input4438_def : input4438 = (.seq input4437 input4436) := by
  unfold input4438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4437 output4436)).val
theorem output4438_def : output4438 = (.seq output4437 output4436) := by
  unfold output4438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4438_skip : Flapjack.WordAlloc.isSkip output4438 = false := by
  rw [output4438_def]
  conv => lhs; cbv
  try rfl
theorem node4438_eq : Flapjack.WordAlloc.removeDeadStructural input4438 value5 value1 value2 = (output4438, value2223, value1) := by
  rw [input4438_def, output4438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4436_eq]
  dsimp only
  rw [node4437_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2224 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21237 6760069253471750628#64))).val
theorem input4439_def : input4439 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21237 6760069253471750628#64)) := by
  unfold input4439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21237 6760069253471750628#64))).val
theorem output4439_def : output4439 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21237 6760069253471750628#64)) := by
  unfold output4439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4439_skip : Flapjack.WordAlloc.isSkip output4439 = false := by
  rw [output4439_def]
  conv => lhs; cbv
  try rfl
theorem node4439_eq : Flapjack.WordAlloc.removeDeadStructural input4439 value2223 value1 value2 = (output4439, value2224, value1) := by
  rw [input4439_def, output4439_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21233 6760069253471750628#64))).val
theorem input4440_def : input4440 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21233 6760069253471750628#64)) := by
  unfold input4440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4440_def : output4440 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4440_skip : Flapjack.WordAlloc.isSkip output4440 = true := by
  rw [output4440_def]
  conv => lhs; cbv
  try rfl
theorem node4440_eq : Flapjack.WordAlloc.removeDeadStructural input4440 value2224 value1 value2 = (output4440, value2224, value1) := by
  rw [input4440_def, output4440_def]
  try (conv => lhs; cbv)
  try rfl

def value2225 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21229 21221 (Flapjack.WordRegImm.reg 21225))))).val
theorem input4441_def : input4441 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21229 21221 (Flapjack.WordRegImm.reg 21225)))) := by
  unfold input4441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21229 21221 (Flapjack.WordRegImm.reg 21225))))).val
theorem output4441_def : output4441 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21229 21221 (Flapjack.WordRegImm.reg 21225)))) := by
  unfold output4441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4441_skip : Flapjack.WordAlloc.isSkip output4441 = false := by
  rw [output4441_def]
  conv => lhs; cbv
  try rfl
theorem node4441_eq : Flapjack.WordAlloc.removeDeadStructural input4441 value2224 value1 value2 = (output4441, value2225, value1) := by
  rw [input4441_def, output4441_def]
  try (conv => lhs; cbv)
  try rfl

def value2226 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21225 4912#64))).val
theorem input4442_def : input4442 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21225 4912#64)) := by
  unfold input4442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21225 4912#64))).val
theorem output4442_def : output4442 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21225 4912#64)) := by
  unfold output4442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4442_skip : Flapjack.WordAlloc.isSkip output4442 = false := by
  rw [output4442_def]
  conv => lhs; cbv
  try rfl
theorem node4442_eq : Flapjack.WordAlloc.removeDeadStructural input4442 value2225 value1 value2 = (output4442, value2226, value1) := by
  rw [input4442_def, output4442_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4442 input4441)).val
theorem input4443_def : input4443 = (.seq input4442 input4441) := by
  unfold input4443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4442 output4441)).val
theorem output4443_def : output4443 = (.seq output4442 output4441) := by
  unfold output4443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4443_skip : Flapjack.WordAlloc.isSkip output4443 = false := by
  rw [output4443_def]
  conv => lhs; cbv
  try rfl
theorem node4443_eq : Flapjack.WordAlloc.removeDeadStructural input4443 value2224 value1 value2 = (output4443, value2226, value1) := by
  rw [input4443_def, output4443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4441_eq]
  dsimp only
  rw [node4442_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2227 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21221 (Flapjack.WordLangAddr.addr 21217 18446744073709551104#64)))).val
theorem input4444_def : input4444 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21221 (Flapjack.WordLangAddr.addr 21217 18446744073709551104#64))) := by
  unfold input4444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21221 (Flapjack.WordLangAddr.addr 21217 18446744073709551104#64)))).val
theorem output4444_def : output4444 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21221 (Flapjack.WordLangAddr.addr 21217 18446744073709551104#64))) := by
  unfold output4444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4444_skip : Flapjack.WordAlloc.isSkip output4444 = false := by
  rw [output4444_def]
  conv => lhs; cbv
  try rfl
theorem node4444_eq : Flapjack.WordAlloc.removeDeadStructural input4444 value2226 value1 value2 = (output4444, value2227, value1) := by
  rw [input4444_def, output4444_def]
  try (conv => lhs; cbv)
  try rfl

def value2228 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21217 21213)).val
theorem input4445_def : input4445 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21217 21213) := by
  unfold input4445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21217 21213)).val
theorem output4445_def : output4445 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21217 21213) := by
  unfold output4445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4445_skip : Flapjack.WordAlloc.isSkip output4445 = false := by
  rw [output4445_def]
  conv => lhs; cbv
  try rfl
theorem node4445_eq : Flapjack.WordAlloc.removeDeadStructural input4445 value2227 value1 value2 = (output4445, value2228, value1) := by
  rw [input4445_def, output4445_def]
  try (conv => lhs; cbv)
  try rfl

def value2229 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21213 21209 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4446_def : input4446 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21213 21209 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21213 21209 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4446_def : output4446 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21213 21209 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4446_skip : Flapjack.WordAlloc.isSkip output4446 = false := by
  rw [output4446_def]
  conv => lhs; cbv
  try rfl
theorem node4446_eq : Flapjack.WordAlloc.removeDeadStructural input4446 value2228 value1 value2 = (output4446, value2229, value1) := by
  rw [input4446_def, output4446_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21209 Flapjack.WordStore.heapLength)).val
theorem input4447_def : input4447 = (Flapjack.WordLangProgHOL.get 21209 Flapjack.WordStore.heapLength) := by
  unfold input4447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21209 Flapjack.WordStore.heapLength)).val
theorem output4447_def : output4447 = (Flapjack.WordLangProgHOL.get 21209 Flapjack.WordStore.heapLength) := by
  unfold output4447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4447_skip : Flapjack.WordAlloc.isSkip output4447 = false := by
  rw [output4447_def]
  conv => lhs; cbv
  try rfl
theorem node4447_eq : Flapjack.WordAlloc.removeDeadStructural input4447 value2229 value1 value2 = (output4447, value5, value1) := by
  rw [input4447_def, output4447_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4447 input4446)).val
theorem input4448_def : input4448 = (.seq input4447 input4446) := by
  unfold input4448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4447 output4446)).val
theorem output4448_def : output4448 = (.seq output4447 output4446) := by
  unfold output4448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4448_skip : Flapjack.WordAlloc.isSkip output4448 = false := by
  rw [output4448_def]
  conv => lhs; cbv
  try rfl
theorem node4448_eq : Flapjack.WordAlloc.removeDeadStructural input4448 value2228 value1 value2 = (output4448, value5, value1) := by
  rw [input4448_def, output4448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4446_eq]
  dsimp only
  rw [node4447_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4448 input4445)).val
theorem input4449_def : input4449 = (.seq input4448 input4445) := by
  unfold input4449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4448 output4445)).val
theorem output4449_def : output4449 = (.seq output4448 output4445) := by
  unfold output4449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4449_skip : Flapjack.WordAlloc.isSkip output4449 = false := by
  rw [output4449_def]
  conv => lhs; cbv
  try rfl
theorem node4449_eq : Flapjack.WordAlloc.removeDeadStructural input4449 value2227 value1 value2 = (output4449, value5, value1) := by
  rw [input4449_def, output4449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4445_eq]
  dsimp only
  rw [node4448_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4449 input4444)).val
theorem input4450_def : input4450 = (.seq input4449 input4444) := by
  unfold input4450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4449 output4444)).val
theorem output4450_def : output4450 = (.seq output4449 output4444) := by
  unfold output4450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4450_skip : Flapjack.WordAlloc.isSkip output4450 = false := by
  rw [output4450_def]
  conv => lhs; cbv
  try rfl
theorem node4450_eq : Flapjack.WordAlloc.removeDeadStructural input4450 value2226 value1 value2 = (output4450, value5, value1) := by
  rw [input4450_def, output4450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4444_eq]
  dsimp only
  rw [node4449_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4450 input4443)).val
theorem input4451_def : input4451 = (.seq input4450 input4443) := by
  unfold input4451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4450 output4443)).val
theorem output4451_def : output4451 = (.seq output4450 output4443) := by
  unfold output4451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4451_skip : Flapjack.WordAlloc.isSkip output4451 = false := by
  rw [output4451_def]
  conv => lhs; cbv
  try rfl
theorem node4451_eq : Flapjack.WordAlloc.removeDeadStructural input4451 value2224 value1 value2 = (output4451, value5, value1) := by
  rw [input4451_def, output4451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4443_eq]
  dsimp only
  rw [node4450_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2230 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21201 (Flapjack.WordLangAddr.addr 21205 0#64)))).val
theorem input4452_def : input4452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21201 (Flapjack.WordLangAddr.addr 21205 0#64))) := by
  unfold input4452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21201 (Flapjack.WordLangAddr.addr 21205 0#64)))).val
theorem output4452_def : output4452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21201 (Flapjack.WordLangAddr.addr 21205 0#64))) := by
  unfold output4452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4452_skip : Flapjack.WordAlloc.isSkip output4452 = false := by
  rw [output4452_def]
  conv => lhs; cbv
  try rfl
theorem node4452_eq : Flapjack.WordAlloc.removeDeadStructural input4452 value5 value1 value2 = (output4452, value2230, value1) := by
  rw [input4452_def, output4452_def]
  try (conv => lhs; cbv)
  try rfl

def value2231 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21205, 21193)])).val
theorem input4453_def : input4453 = (Flapjack.WordLangProgHOL.move 0 [(21205, 21193)]) := by
  unfold input4453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21205, 21193)])).val
theorem output4453_def : output4453 = (Flapjack.WordLangProgHOL.move 0 [(21205, 21193)]) := by
  unfold output4453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4453_skip : Flapjack.WordAlloc.isSkip output4453 = false := by
  rw [output4453_def]
  conv => lhs; cbv
  try rfl
theorem node4453_eq : Flapjack.WordAlloc.removeDeadStructural input4453 value2230 value1 value2 = (output4453, value2231, value1) := by
  rw [input4453_def, output4453_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4453 input4452)).val
theorem input4454_def : input4454 = (.seq input4453 input4452) := by
  unfold input4454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4453 output4452)).val
theorem output4454_def : output4454 = (.seq output4453 output4452) := by
  unfold output4454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4454_skip : Flapjack.WordAlloc.isSkip output4454 = false := by
  rw [output4454_def]
  conv => lhs; cbv
  try rfl
theorem node4454_eq : Flapjack.WordAlloc.removeDeadStructural input4454 value5 value1 value2 = (output4454, value2231, value1) := by
  rw [input4454_def, output4454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4452_eq]
  dsimp only
  rw [node4453_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2232 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21201 2918368523395386521#64))).val
theorem input4455_def : input4455 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21201 2918368523395386521#64)) := by
  unfold input4455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21201 2918368523395386521#64))).val
theorem output4455_def : output4455 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21201 2918368523395386521#64)) := by
  unfold output4455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4455_skip : Flapjack.WordAlloc.isSkip output4455 = false := by
  rw [output4455_def]
  conv => lhs; cbv
  try rfl
theorem node4455_eq : Flapjack.WordAlloc.removeDeadStructural input4455 value2231 value1 value2 = (output4455, value2232, value1) := by
  rw [input4455_def, output4455_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21197 2918368523395386521#64))).val
theorem input4456_def : input4456 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21197 2918368523395386521#64)) := by
  unfold input4456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4456_def : output4456 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4456_skip : Flapjack.WordAlloc.isSkip output4456 = true := by
  rw [output4456_def]
  conv => lhs; cbv
  try rfl
theorem node4456_eq : Flapjack.WordAlloc.removeDeadStructural input4456 value2232 value1 value2 = (output4456, value2232, value1) := by
  rw [input4456_def, output4456_def]
  try (conv => lhs; cbv)
  try rfl

def value2233 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21193 21185 (Flapjack.WordRegImm.reg 21189))))).val
theorem input4457_def : input4457 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21193 21185 (Flapjack.WordRegImm.reg 21189)))) := by
  unfold input4457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21193 21185 (Flapjack.WordRegImm.reg 21189))))).val
theorem output4457_def : output4457 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21193 21185 (Flapjack.WordRegImm.reg 21189)))) := by
  unfold output4457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4457_skip : Flapjack.WordAlloc.isSkip output4457 = false := by
  rw [output4457_def]
  conv => lhs; cbv
  try rfl
theorem node4457_eq : Flapjack.WordAlloc.removeDeadStructural input4457 value2232 value1 value2 = (output4457, value2233, value1) := by
  rw [input4457_def, output4457_def]
  try (conv => lhs; cbv)
  try rfl

def value2234 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21189 4904#64))).val
theorem input4458_def : input4458 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21189 4904#64)) := by
  unfold input4458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21189 4904#64))).val
theorem output4458_def : output4458 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21189 4904#64)) := by
  unfold output4458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4458_skip : Flapjack.WordAlloc.isSkip output4458 = false := by
  rw [output4458_def]
  conv => lhs; cbv
  try rfl
theorem node4458_eq : Flapjack.WordAlloc.removeDeadStructural input4458 value2233 value1 value2 = (output4458, value2234, value1) := by
  rw [input4458_def, output4458_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4458 input4457)).val
theorem input4459_def : input4459 = (.seq input4458 input4457) := by
  unfold input4459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4458 output4457)).val
theorem output4459_def : output4459 = (.seq output4458 output4457) := by
  unfold output4459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4459_skip : Flapjack.WordAlloc.isSkip output4459 = false := by
  rw [output4459_def]
  conv => lhs; cbv
  try rfl
theorem node4459_eq : Flapjack.WordAlloc.removeDeadStructural input4459 value2232 value1 value2 = (output4459, value2234, value1) := by
  rw [input4459_def, output4459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4457_eq]
  dsimp only
  rw [node4458_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2235 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21185 (Flapjack.WordLangAddr.addr 21181 18446744073709551104#64)))).val
theorem input4460_def : input4460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21185 (Flapjack.WordLangAddr.addr 21181 18446744073709551104#64))) := by
  unfold input4460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21185 (Flapjack.WordLangAddr.addr 21181 18446744073709551104#64)))).val
theorem output4460_def : output4460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21185 (Flapjack.WordLangAddr.addr 21181 18446744073709551104#64))) := by
  unfold output4460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4460_skip : Flapjack.WordAlloc.isSkip output4460 = false := by
  rw [output4460_def]
  conv => lhs; cbv
  try rfl
theorem node4460_eq : Flapjack.WordAlloc.removeDeadStructural input4460 value2234 value1 value2 = (output4460, value2235, value1) := by
  rw [input4460_def, output4460_def]
  try (conv => lhs; cbv)
  try rfl

def value2236 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21181 21177)).val
theorem input4461_def : input4461 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21181 21177) := by
  unfold input4461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21181 21177)).val
theorem output4461_def : output4461 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21181 21177) := by
  unfold output4461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4461_skip : Flapjack.WordAlloc.isSkip output4461 = false := by
  rw [output4461_def]
  conv => lhs; cbv
  try rfl
theorem node4461_eq : Flapjack.WordAlloc.removeDeadStructural input4461 value2235 value1 value2 = (output4461, value2236, value1) := by
  rw [input4461_def, output4461_def]
  try (conv => lhs; cbv)
  try rfl

def value2237 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21177 21173 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4462_def : input4462 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21177 21173 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21177 21173 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4462_def : output4462 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21177 21173 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4462_skip : Flapjack.WordAlloc.isSkip output4462 = false := by
  rw [output4462_def]
  conv => lhs; cbv
  try rfl
theorem node4462_eq : Flapjack.WordAlloc.removeDeadStructural input4462 value2236 value1 value2 = (output4462, value2237, value1) := by
  rw [input4462_def, output4462_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21173 Flapjack.WordStore.heapLength)).val
theorem input4463_def : input4463 = (Flapjack.WordLangProgHOL.get 21173 Flapjack.WordStore.heapLength) := by
  unfold input4463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21173 Flapjack.WordStore.heapLength)).val
theorem output4463_def : output4463 = (Flapjack.WordLangProgHOL.get 21173 Flapjack.WordStore.heapLength) := by
  unfold output4463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4463_skip : Flapjack.WordAlloc.isSkip output4463 = false := by
  rw [output4463_def]
  conv => lhs; cbv
  try rfl
theorem node4463_eq : Flapjack.WordAlloc.removeDeadStructural input4463 value2237 value1 value2 = (output4463, value5, value1) := by
  rw [input4463_def, output4463_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4463 input4462)).val
theorem input4464_def : input4464 = (.seq input4463 input4462) := by
  unfold input4464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4463 output4462)).val
theorem output4464_def : output4464 = (.seq output4463 output4462) := by
  unfold output4464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4464_skip : Flapjack.WordAlloc.isSkip output4464 = false := by
  rw [output4464_def]
  conv => lhs; cbv
  try rfl
theorem node4464_eq : Flapjack.WordAlloc.removeDeadStructural input4464 value2236 value1 value2 = (output4464, value5, value1) := by
  rw [input4464_def, output4464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4462_eq]
  dsimp only
  rw [node4463_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4464 input4461)).val
theorem input4465_def : input4465 = (.seq input4464 input4461) := by
  unfold input4465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4464 output4461)).val
theorem output4465_def : output4465 = (.seq output4464 output4461) := by
  unfold output4465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4465_skip : Flapjack.WordAlloc.isSkip output4465 = false := by
  rw [output4465_def]
  conv => lhs; cbv
  try rfl
theorem node4465_eq : Flapjack.WordAlloc.removeDeadStructural input4465 value2235 value1 value2 = (output4465, value5, value1) := by
  rw [input4465_def, output4465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4461_eq]
  dsimp only
  rw [node4464_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4465 input4460)).val
theorem input4466_def : input4466 = (.seq input4465 input4460) := by
  unfold input4466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4465 output4460)).val
theorem output4466_def : output4466 = (.seq output4465 output4460) := by
  unfold output4466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4466_skip : Flapjack.WordAlloc.isSkip output4466 = false := by
  rw [output4466_def]
  conv => lhs; cbv
  try rfl
theorem node4466_eq : Flapjack.WordAlloc.removeDeadStructural input4466 value2234 value1 value2 = (output4466, value5, value1) := by
  rw [input4466_def, output4466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4460_eq]
  dsimp only
  rw [node4465_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4466 input4459)).val
theorem input4467_def : input4467 = (.seq input4466 input4459) := by
  unfold input4467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4466 output4459)).val
theorem output4467_def : output4467 = (.seq output4466 output4459) := by
  unfold output4467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4467_skip : Flapjack.WordAlloc.isSkip output4467 = false := by
  rw [output4467_def]
  conv => lhs; cbv
  try rfl
theorem node4467_eq : Flapjack.WordAlloc.removeDeadStructural input4467 value2232 value1 value2 = (output4467, value5, value1) := by
  rw [input4467_def, output4467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4459_eq]
  dsimp only
  rw [node4466_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2238 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21165 (Flapjack.WordLangAddr.addr 21169 0#64)))).val
theorem input4468_def : input4468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21165 (Flapjack.WordLangAddr.addr 21169 0#64))) := by
  unfold input4468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21165 (Flapjack.WordLangAddr.addr 21169 0#64)))).val
theorem output4468_def : output4468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21165 (Flapjack.WordLangAddr.addr 21169 0#64))) := by
  unfold output4468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4468_skip : Flapjack.WordAlloc.isSkip output4468 = false := by
  rw [output4468_def]
  conv => lhs; cbv
  try rfl
theorem node4468_eq : Flapjack.WordAlloc.removeDeadStructural input4468 value5 value1 value2 = (output4468, value2238, value1) := by
  rw [input4468_def, output4468_def]
  try (conv => lhs; cbv)
  try rfl

def value2239 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21169, 21157)])).val
theorem input4469_def : input4469 = (Flapjack.WordLangProgHOL.move 0 [(21169, 21157)]) := by
  unfold input4469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21169, 21157)])).val
theorem output4469_def : output4469 = (Flapjack.WordLangProgHOL.move 0 [(21169, 21157)]) := by
  unfold output4469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4469_skip : Flapjack.WordAlloc.isSkip output4469 = false := by
  rw [output4469_def]
  conv => lhs; cbv
  try rfl
theorem node4469_eq : Flapjack.WordAlloc.removeDeadStructural input4469 value2238 value1 value2 = (output4469, value2239, value1) := by
  rw [input4469_def, output4469_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4469 input4468)).val
theorem input4470_def : input4470 = (.seq input4469 input4468) := by
  unfold input4470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4469 output4468)).val
theorem output4470_def : output4470 = (.seq output4469 output4468) := by
  unfold output4470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4470_skip : Flapjack.WordAlloc.isSkip output4470 = false := by
  rw [output4470_def]
  conv => lhs; cbv
  try rfl
theorem node4470_eq : Flapjack.WordAlloc.removeDeadStructural input4470 value5 value1 value2 = (output4470, value2239, value1) := by
  rw [input4470_def, output4470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4468_eq]
  dsimp only
  rw [node4469_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2240 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21165 14557853293471780388#64))).val
theorem input4471_def : input4471 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21165 14557853293471780388#64)) := by
  unfold input4471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21165 14557853293471780388#64))).val
theorem output4471_def : output4471 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21165 14557853293471780388#64)) := by
  unfold output4471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4471_skip : Flapjack.WordAlloc.isSkip output4471 = false := by
  rw [output4471_def]
  conv => lhs; cbv
  try rfl
theorem node4471_eq : Flapjack.WordAlloc.removeDeadStructural input4471 value2239 value1 value2 = (output4471, value2240, value1) := by
  rw [input4471_def, output4471_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21161 14557853293471780388#64))).val
theorem input4472_def : input4472 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21161 14557853293471780388#64)) := by
  unfold input4472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4472_def : output4472 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4472_skip : Flapjack.WordAlloc.isSkip output4472 = true := by
  rw [output4472_def]
  conv => lhs; cbv
  try rfl
theorem node4472_eq : Flapjack.WordAlloc.removeDeadStructural input4472 value2240 value1 value2 = (output4472, value2240, value1) := by
  rw [input4472_def, output4472_def]
  try (conv => lhs; cbv)
  try rfl

def value2241 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21157 21149 (Flapjack.WordRegImm.reg 21153))))).val
theorem input4473_def : input4473 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21157 21149 (Flapjack.WordRegImm.reg 21153)))) := by
  unfold input4473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21157 21149 (Flapjack.WordRegImm.reg 21153))))).val
theorem output4473_def : output4473 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21157 21149 (Flapjack.WordRegImm.reg 21153)))) := by
  unfold output4473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4473_skip : Flapjack.WordAlloc.isSkip output4473 = false := by
  rw [output4473_def]
  conv => lhs; cbv
  try rfl
theorem node4473_eq : Flapjack.WordAlloc.removeDeadStructural input4473 value2240 value1 value2 = (output4473, value2241, value1) := by
  rw [input4473_def, output4473_def]
  try (conv => lhs; cbv)
  try rfl

def value2242 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21153 4896#64))).val
theorem input4474_def : input4474 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21153 4896#64)) := by
  unfold input4474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21153 4896#64))).val
theorem output4474_def : output4474 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21153 4896#64)) := by
  unfold output4474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4474_skip : Flapjack.WordAlloc.isSkip output4474 = false := by
  rw [output4474_def]
  conv => lhs; cbv
  try rfl
theorem node4474_eq : Flapjack.WordAlloc.removeDeadStructural input4474 value2241 value1 value2 = (output4474, value2242, value1) := by
  rw [input4474_def, output4474_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4474 input4473)).val
theorem input4475_def : input4475 = (.seq input4474 input4473) := by
  unfold input4475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4474 output4473)).val
theorem output4475_def : output4475 = (.seq output4474 output4473) := by
  unfold output4475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4475_skip : Flapjack.WordAlloc.isSkip output4475 = false := by
  rw [output4475_def]
  conv => lhs; cbv
  try rfl
theorem node4475_eq : Flapjack.WordAlloc.removeDeadStructural input4475 value2240 value1 value2 = (output4475, value2242, value1) := by
  rw [input4475_def, output4475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4473_eq]
  dsimp only
  rw [node4474_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2243 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21149 (Flapjack.WordLangAddr.addr 21145 18446744073709551104#64)))).val
theorem input4476_def : input4476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21149 (Flapjack.WordLangAddr.addr 21145 18446744073709551104#64))) := by
  unfold input4476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21149 (Flapjack.WordLangAddr.addr 21145 18446744073709551104#64)))).val
theorem output4476_def : output4476 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21149 (Flapjack.WordLangAddr.addr 21145 18446744073709551104#64))) := by
  unfold output4476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4476_skip : Flapjack.WordAlloc.isSkip output4476 = false := by
  rw [output4476_def]
  conv => lhs; cbv
  try rfl
theorem node4476_eq : Flapjack.WordAlloc.removeDeadStructural input4476 value2242 value1 value2 = (output4476, value2243, value1) := by
  rw [input4476_def, output4476_def]
  try (conv => lhs; cbv)
  try rfl

def value2244 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21145 21141)).val
theorem input4477_def : input4477 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21145 21141) := by
  unfold input4477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21145 21141)).val
theorem output4477_def : output4477 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21145 21141) := by
  unfold output4477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4477_skip : Flapjack.WordAlloc.isSkip output4477 = false := by
  rw [output4477_def]
  conv => lhs; cbv
  try rfl
theorem node4477_eq : Flapjack.WordAlloc.removeDeadStructural input4477 value2243 value1 value2 = (output4477, value2244, value1) := by
  rw [input4477_def, output4477_def]
  try (conv => lhs; cbv)
  try rfl

def value2245 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21141 21137 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4478_def : input4478 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21141 21137 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21141 21137 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4478_def : output4478 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21141 21137 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4478_skip : Flapjack.WordAlloc.isSkip output4478 = false := by
  rw [output4478_def]
  conv => lhs; cbv
  try rfl
theorem node4478_eq : Flapjack.WordAlloc.removeDeadStructural input4478 value2244 value1 value2 = (output4478, value2245, value1) := by
  rw [input4478_def, output4478_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21137 Flapjack.WordStore.heapLength)).val
theorem input4479_def : input4479 = (Flapjack.WordLangProgHOL.get 21137 Flapjack.WordStore.heapLength) := by
  unfold input4479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21137 Flapjack.WordStore.heapLength)).val
theorem output4479_def : output4479 = (Flapjack.WordLangProgHOL.get 21137 Flapjack.WordStore.heapLength) := by
  unfold output4479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4479_skip : Flapjack.WordAlloc.isSkip output4479 = false := by
  rw [output4479_def]
  conv => lhs; cbv
  try rfl
theorem node4479_eq : Flapjack.WordAlloc.removeDeadStructural input4479 value2245 value1 value2 = (output4479, value5, value1) := by
  rw [input4479_def, output4479_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4479 input4478)).val
theorem input4480_def : input4480 = (.seq input4479 input4478) := by
  unfold input4480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4479 output4478)).val
theorem output4480_def : output4480 = (.seq output4479 output4478) := by
  unfold output4480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4480_skip : Flapjack.WordAlloc.isSkip output4480 = false := by
  rw [output4480_def]
  conv => lhs; cbv
  try rfl
theorem node4480_eq : Flapjack.WordAlloc.removeDeadStructural input4480 value2244 value1 value2 = (output4480, value5, value1) := by
  rw [input4480_def, output4480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4478_eq]
  dsimp only
  rw [node4479_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4480 input4477)).val
theorem input4481_def : input4481 = (.seq input4480 input4477) := by
  unfold input4481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4480 output4477)).val
theorem output4481_def : output4481 = (.seq output4480 output4477) := by
  unfold output4481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4481_skip : Flapjack.WordAlloc.isSkip output4481 = false := by
  rw [output4481_def]
  conv => lhs; cbv
  try rfl
theorem node4481_eq : Flapjack.WordAlloc.removeDeadStructural input4481 value2243 value1 value2 = (output4481, value5, value1) := by
  rw [input4481_def, output4481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4477_eq]
  dsimp only
  rw [node4480_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4481 input4476)).val
theorem input4482_def : input4482 = (.seq input4481 input4476) := by
  unfold input4482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4481 output4476)).val
theorem output4482_def : output4482 = (.seq output4481 output4476) := by
  unfold output4482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4482_skip : Flapjack.WordAlloc.isSkip output4482 = false := by
  rw [output4482_def]
  conv => lhs; cbv
  try rfl
theorem node4482_eq : Flapjack.WordAlloc.removeDeadStructural input4482 value2242 value1 value2 = (output4482, value5, value1) := by
  rw [input4482_def, output4482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4476_eq]
  dsimp only
  rw [node4481_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4482 input4475)).val
theorem input4483_def : input4483 = (.seq input4482 input4475) := by
  unfold input4483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4482 output4475)).val
theorem output4483_def : output4483 = (.seq output4482 output4475) := by
  unfold output4483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4483_skip : Flapjack.WordAlloc.isSkip output4483 = false := by
  rw [output4483_def]
  conv => lhs; cbv
  try rfl
theorem node4483_eq : Flapjack.WordAlloc.removeDeadStructural input4483 value2240 value1 value2 = (output4483, value5, value1) := by
  rw [input4483_def, output4483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4475_eq]
  dsimp only
  rw [node4482_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2246 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21129 (Flapjack.WordLangAddr.addr 21133 0#64)))).val
theorem input4484_def : input4484 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21129 (Flapjack.WordLangAddr.addr 21133 0#64))) := by
  unfold input4484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21129 (Flapjack.WordLangAddr.addr 21133 0#64)))).val
theorem output4484_def : output4484 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21129 (Flapjack.WordLangAddr.addr 21133 0#64))) := by
  unfold output4484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4484_skip : Flapjack.WordAlloc.isSkip output4484 = false := by
  rw [output4484_def]
  conv => lhs; cbv
  try rfl
theorem node4484_eq : Flapjack.WordAlloc.removeDeadStructural input4484 value5 value1 value2 = (output4484, value2246, value1) := by
  rw [input4484_def, output4484_def]
  try (conv => lhs; cbv)
  try rfl

def value2247 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21133, 21121)])).val
theorem input4485_def : input4485 = (Flapjack.WordLangProgHOL.move 0 [(21133, 21121)]) := by
  unfold input4485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21133, 21121)])).val
theorem output4485_def : output4485 = (Flapjack.WordLangProgHOL.move 0 [(21133, 21121)]) := by
  unfold output4485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4485_skip : Flapjack.WordAlloc.isSkip output4485 = false := by
  rw [output4485_def]
  conv => lhs; cbv
  try rfl
theorem node4485_eq : Flapjack.WordAlloc.removeDeadStructural input4485 value2246 value1 value2 = (output4485, value2247, value1) := by
  rw [input4485_def, output4485_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4485 input4484)).val
theorem input4486_def : input4486 = (.seq input4485 input4484) := by
  unfold input4486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4485 output4484)).val
theorem output4486_def : output4486 = (.seq output4485 output4484) := by
  unfold output4486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4486_skip : Flapjack.WordAlloc.isSkip output4486 = false := by
  rw [output4486_def]
  conv => lhs; cbv
  try rfl
theorem node4486_eq : Flapjack.WordAlloc.removeDeadStructural input4486 value5 value1 value2 = (output4486, value2247, value1) := by
  rw [input4486_def, output4486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4484_eq]
  dsimp only
  rw [node4485_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2248 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21129 3952301209051386863#64))).val
theorem input4487_def : input4487 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21129 3952301209051386863#64)) := by
  unfold input4487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21129 3952301209051386863#64))).val
theorem output4487_def : output4487 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21129 3952301209051386863#64)) := by
  unfold output4487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4487_skip : Flapjack.WordAlloc.isSkip output4487 = false := by
  rw [output4487_def]
  conv => lhs; cbv
  try rfl
theorem node4487_eq : Flapjack.WordAlloc.removeDeadStructural input4487 value2247 value1 value2 = (output4487, value2248, value1) := by
  rw [input4487_def, output4487_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21125 3952301209051386863#64))).val
theorem input4488_def : input4488 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21125 3952301209051386863#64)) := by
  unfold input4488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4488_def : output4488 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4488_skip : Flapjack.WordAlloc.isSkip output4488 = true := by
  rw [output4488_def]
  conv => lhs; cbv
  try rfl
theorem node4488_eq : Flapjack.WordAlloc.removeDeadStructural input4488 value2248 value1 value2 = (output4488, value2248, value1) := by
  rw [input4488_def, output4488_def]
  try (conv => lhs; cbv)
  try rfl

def value2249 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21121 21113 (Flapjack.WordRegImm.reg 21117))))).val
theorem input4489_def : input4489 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21121 21113 (Flapjack.WordRegImm.reg 21117)))) := by
  unfold input4489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21121 21113 (Flapjack.WordRegImm.reg 21117))))).val
theorem output4489_def : output4489 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21121 21113 (Flapjack.WordRegImm.reg 21117)))) := by
  unfold output4489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4489_skip : Flapjack.WordAlloc.isSkip output4489 = false := by
  rw [output4489_def]
  conv => lhs; cbv
  try rfl
theorem node4489_eq : Flapjack.WordAlloc.removeDeadStructural input4489 value2248 value1 value2 = (output4489, value2249, value1) := by
  rw [input4489_def, output4489_def]
  try (conv => lhs; cbv)
  try rfl

def value2250 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21117 4888#64))).val
theorem input4490_def : input4490 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21117 4888#64)) := by
  unfold input4490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21117 4888#64))).val
theorem output4490_def : output4490 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21117 4888#64)) := by
  unfold output4490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4490_skip : Flapjack.WordAlloc.isSkip output4490 = false := by
  rw [output4490_def]
  conv => lhs; cbv
  try rfl
theorem node4490_eq : Flapjack.WordAlloc.removeDeadStructural input4490 value2249 value1 value2 = (output4490, value2250, value1) := by
  rw [input4490_def, output4490_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4490 input4489)).val
theorem input4491_def : input4491 = (.seq input4490 input4489) := by
  unfold input4491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4490 output4489)).val
theorem output4491_def : output4491 = (.seq output4490 output4489) := by
  unfold output4491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4491_skip : Flapjack.WordAlloc.isSkip output4491 = false := by
  rw [output4491_def]
  conv => lhs; cbv
  try rfl
theorem node4491_eq : Flapjack.WordAlloc.removeDeadStructural input4491 value2248 value1 value2 = (output4491, value2250, value1) := by
  rw [input4491_def, output4491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4489_eq]
  dsimp only
  rw [node4490_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2251 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21113 (Flapjack.WordLangAddr.addr 21109 18446744073709551104#64)))).val
theorem input4492_def : input4492 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21113 (Flapjack.WordLangAddr.addr 21109 18446744073709551104#64))) := by
  unfold input4492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21113 (Flapjack.WordLangAddr.addr 21109 18446744073709551104#64)))).val
theorem output4492_def : output4492 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21113 (Flapjack.WordLangAddr.addr 21109 18446744073709551104#64))) := by
  unfold output4492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4492_skip : Flapjack.WordAlloc.isSkip output4492 = false := by
  rw [output4492_def]
  conv => lhs; cbv
  try rfl
theorem node4492_eq : Flapjack.WordAlloc.removeDeadStructural input4492 value2250 value1 value2 = (output4492, value2251, value1) := by
  rw [input4492_def, output4492_def]
  try (conv => lhs; cbv)
  try rfl

def value2252 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21109 21105)).val
theorem input4493_def : input4493 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21109 21105) := by
  unfold input4493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21109 21105)).val
theorem output4493_def : output4493 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21109 21105) := by
  unfold output4493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4493_skip : Flapjack.WordAlloc.isSkip output4493 = false := by
  rw [output4493_def]
  conv => lhs; cbv
  try rfl
theorem node4493_eq : Flapjack.WordAlloc.removeDeadStructural input4493 value2251 value1 value2 = (output4493, value2252, value1) := by
  rw [input4493_def, output4493_def]
  try (conv => lhs; cbv)
  try rfl

def value2253 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21105 21101 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4494_def : input4494 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21105 21101 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21105 21101 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4494_def : output4494 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21105 21101 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4494_skip : Flapjack.WordAlloc.isSkip output4494 = false := by
  rw [output4494_def]
  conv => lhs; cbv
  try rfl
theorem node4494_eq : Flapjack.WordAlloc.removeDeadStructural input4494 value2252 value1 value2 = (output4494, value2253, value1) := by
  rw [input4494_def, output4494_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21101 Flapjack.WordStore.heapLength)).val
theorem input4495_def : input4495 = (Flapjack.WordLangProgHOL.get 21101 Flapjack.WordStore.heapLength) := by
  unfold input4495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21101 Flapjack.WordStore.heapLength)).val
theorem output4495_def : output4495 = (Flapjack.WordLangProgHOL.get 21101 Flapjack.WordStore.heapLength) := by
  unfold output4495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4495_skip : Flapjack.WordAlloc.isSkip output4495 = false := by
  rw [output4495_def]
  conv => lhs; cbv
  try rfl
theorem node4495_eq : Flapjack.WordAlloc.removeDeadStructural input4495 value2253 value1 value2 = (output4495, value5, value1) := by
  rw [input4495_def, output4495_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4495 input4494)).val
theorem input4496_def : input4496 = (.seq input4495 input4494) := by
  unfold input4496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4495 output4494)).val
theorem output4496_def : output4496 = (.seq output4495 output4494) := by
  unfold output4496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4496_skip : Flapjack.WordAlloc.isSkip output4496 = false := by
  rw [output4496_def]
  conv => lhs; cbv
  try rfl
theorem node4496_eq : Flapjack.WordAlloc.removeDeadStructural input4496 value2252 value1 value2 = (output4496, value5, value1) := by
  rw [input4496_def, output4496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4494_eq]
  dsimp only
  rw [node4495_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4496 input4493)).val
theorem input4497_def : input4497 = (.seq input4496 input4493) := by
  unfold input4497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4496 output4493)).val
theorem output4497_def : output4497 = (.seq output4496 output4493) := by
  unfold output4497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4497_skip : Flapjack.WordAlloc.isSkip output4497 = false := by
  rw [output4497_def]
  conv => lhs; cbv
  try rfl
theorem node4497_eq : Flapjack.WordAlloc.removeDeadStructural input4497 value2251 value1 value2 = (output4497, value5, value1) := by
  rw [input4497_def, output4497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4493_eq]
  dsimp only
  rw [node4496_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4497 input4492)).val
theorem input4498_def : input4498 = (.seq input4497 input4492) := by
  unfold input4498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4497 output4492)).val
theorem output4498_def : output4498 = (.seq output4497 output4492) := by
  unfold output4498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4498_skip : Flapjack.WordAlloc.isSkip output4498 = false := by
  rw [output4498_def]
  conv => lhs; cbv
  try rfl
theorem node4498_eq : Flapjack.WordAlloc.removeDeadStructural input4498 value2250 value1 value2 = (output4498, value5, value1) := by
  rw [input4498_def, output4498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4492_eq]
  dsimp only
  rw [node4497_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4498 input4491)).val
theorem input4499_def : input4499 = (.seq input4498 input4491) := by
  unfold input4499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4498 output4491)).val
theorem output4499_def : output4499 = (.seq output4498 output4491) := by
  unfold output4499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4499_skip : Flapjack.WordAlloc.isSkip output4499 = false := by
  rw [output4499_def]
  conv => lhs; cbv
  try rfl
theorem node4499_eq : Flapjack.WordAlloc.removeDeadStructural input4499 value2248 value1 value2 = (output4499, value5, value1) := by
  rw [input4499_def, output4499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4491_eq]
  dsimp only
  rw [node4498_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2254 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21093 (Flapjack.WordLangAddr.addr 21097 0#64)))).val
theorem input4500_def : input4500 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21093 (Flapjack.WordLangAddr.addr 21097 0#64))) := by
  unfold input4500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21093 (Flapjack.WordLangAddr.addr 21097 0#64)))).val
theorem output4500_def : output4500 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21093 (Flapjack.WordLangAddr.addr 21097 0#64))) := by
  unfold output4500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4500_skip : Flapjack.WordAlloc.isSkip output4500 = false := by
  rw [output4500_def]
  conv => lhs; cbv
  try rfl
theorem node4500_eq : Flapjack.WordAlloc.removeDeadStructural input4500 value5 value1 value2 = (output4500, value2254, value1) := by
  rw [input4500_def, output4500_def]
  try (conv => lhs; cbv)
  try rfl

def value2255 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21097, 21085)])).val
theorem input4501_def : input4501 = (Flapjack.WordLangProgHOL.move 0 [(21097, 21085)]) := by
  unfold input4501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21097, 21085)])).val
theorem output4501_def : output4501 = (Flapjack.WordLangProgHOL.move 0 [(21097, 21085)]) := by
  unfold output4501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4501_skip : Flapjack.WordAlloc.isSkip output4501 = false := by
  rw [output4501_def]
  conv => lhs; cbv
  try rfl
theorem node4501_eq : Flapjack.WordAlloc.removeDeadStructural input4501 value2254 value1 value2 = (output4501, value2255, value1) := by
  rw [input4501_def, output4501_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4501 input4500)).val
theorem input4502_def : input4502 = (.seq input4501 input4500) := by
  unfold input4502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4501 output4500)).val
theorem output4502_def : output4502 = (.seq output4501 output4500) := by
  unfold output4502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4502_skip : Flapjack.WordAlloc.isSkip output4502 = false := by
  rw [output4502_def]
  conv => lhs; cbv
  try rfl
theorem node4502_eq : Flapjack.WordAlloc.removeDeadStructural input4502 value5 value1 value2 = (output4502, value2255, value1) := by
  rw [input4502_def, output4502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4500_eq]
  dsimp only
  rw [node4501_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2256 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21093 8911396054101125557#64))).val
theorem input4503_def : input4503 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21093 8911396054101125557#64)) := by
  unfold input4503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21093 8911396054101125557#64))).val
theorem output4503_def : output4503 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21093 8911396054101125557#64)) := by
  unfold output4503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4503_skip : Flapjack.WordAlloc.isSkip output4503 = false := by
  rw [output4503_def]
  conv => lhs; cbv
  try rfl
theorem node4503_eq : Flapjack.WordAlloc.removeDeadStructural input4503 value2255 value1 value2 = (output4503, value2256, value1) := by
  rw [input4503_def, output4503_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21089 8911396054101125557#64))).val
theorem input4504_def : input4504 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21089 8911396054101125557#64)) := by
  unfold input4504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4504_def : output4504 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4504_skip : Flapjack.WordAlloc.isSkip output4504 = true := by
  rw [output4504_def]
  conv => lhs; cbv
  try rfl
theorem node4504_eq : Flapjack.WordAlloc.removeDeadStructural input4504 value2256 value1 value2 = (output4504, value2256, value1) := by
  rw [input4504_def, output4504_def]
  try (conv => lhs; cbv)
  try rfl

def value2257 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21085 21077 (Flapjack.WordRegImm.reg 21081))))).val
theorem input4505_def : input4505 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21085 21077 (Flapjack.WordRegImm.reg 21081)))) := by
  unfold input4505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21085 21077 (Flapjack.WordRegImm.reg 21081))))).val
theorem output4505_def : output4505 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21085 21077 (Flapjack.WordRegImm.reg 21081)))) := by
  unfold output4505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4505_skip : Flapjack.WordAlloc.isSkip output4505 = false := by
  rw [output4505_def]
  conv => lhs; cbv
  try rfl
theorem node4505_eq : Flapjack.WordAlloc.removeDeadStructural input4505 value2256 value1 value2 = (output4505, value2257, value1) := by
  rw [input4505_def, output4505_def]
  try (conv => lhs; cbv)
  try rfl

def value2258 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21081 4880#64))).val
theorem input4506_def : input4506 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21081 4880#64)) := by
  unfold input4506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21081 4880#64))).val
theorem output4506_def : output4506 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21081 4880#64)) := by
  unfold output4506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4506_skip : Flapjack.WordAlloc.isSkip output4506 = false := by
  rw [output4506_def]
  conv => lhs; cbv
  try rfl
theorem node4506_eq : Flapjack.WordAlloc.removeDeadStructural input4506 value2257 value1 value2 = (output4506, value2258, value1) := by
  rw [input4506_def, output4506_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4506 input4505)).val
theorem input4507_def : input4507 = (.seq input4506 input4505) := by
  unfold input4507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4506 output4505)).val
theorem output4507_def : output4507 = (.seq output4506 output4505) := by
  unfold output4507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4507_skip : Flapjack.WordAlloc.isSkip output4507 = false := by
  rw [output4507_def]
  conv => lhs; cbv
  try rfl
theorem node4507_eq : Flapjack.WordAlloc.removeDeadStructural input4507 value2256 value1 value2 = (output4507, value2258, value1) := by
  rw [input4507_def, output4507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4505_eq]
  dsimp only
  rw [node4506_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2259 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21077 (Flapjack.WordLangAddr.addr 21073 18446744073709551104#64)))).val
theorem input4508_def : input4508 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21077 (Flapjack.WordLangAddr.addr 21073 18446744073709551104#64))) := by
  unfold input4508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21077 (Flapjack.WordLangAddr.addr 21073 18446744073709551104#64)))).val
theorem output4508_def : output4508 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21077 (Flapjack.WordLangAddr.addr 21073 18446744073709551104#64))) := by
  unfold output4508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4508_skip : Flapjack.WordAlloc.isSkip output4508 = false := by
  rw [output4508_def]
  conv => lhs; cbv
  try rfl
theorem node4508_eq : Flapjack.WordAlloc.removeDeadStructural input4508 value2258 value1 value2 = (output4508, value2259, value1) := by
  rw [input4508_def, output4508_def]
  try (conv => lhs; cbv)
  try rfl

def value2260 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21073 21069)).val
theorem input4509_def : input4509 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21073 21069) := by
  unfold input4509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21073 21069)).val
theorem output4509_def : output4509 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21073 21069) := by
  unfold output4509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4509_skip : Flapjack.WordAlloc.isSkip output4509 = false := by
  rw [output4509_def]
  conv => lhs; cbv
  try rfl
theorem node4509_eq : Flapjack.WordAlloc.removeDeadStructural input4509 value2259 value1 value2 = (output4509, value2260, value1) := by
  rw [input4509_def, output4509_def]
  try (conv => lhs; cbv)
  try rfl

def value2261 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21069 21065 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4510_def : input4510 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21069 21065 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21069 21065 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4510_def : output4510 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21069 21065 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4510_skip : Flapjack.WordAlloc.isSkip output4510 = false := by
  rw [output4510_def]
  conv => lhs; cbv
  try rfl
theorem node4510_eq : Flapjack.WordAlloc.removeDeadStructural input4510 value2260 value1 value2 = (output4510, value2261, value1) := by
  rw [input4510_def, output4510_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21065 Flapjack.WordStore.heapLength)).val
theorem input4511_def : input4511 = (Flapjack.WordLangProgHOL.get 21065 Flapjack.WordStore.heapLength) := by
  unfold input4511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21065 Flapjack.WordStore.heapLength)).val
theorem output4511_def : output4511 = (Flapjack.WordLangProgHOL.get 21065 Flapjack.WordStore.heapLength) := by
  unfold output4511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4511_skip : Flapjack.WordAlloc.isSkip output4511 = false := by
  rw [output4511_def]
  conv => lhs; cbv
  try rfl
theorem node4511_eq : Flapjack.WordAlloc.removeDeadStructural input4511 value2261 value1 value2 = (output4511, value5, value1) := by
  rw [input4511_def, output4511_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4511 input4510)).val
theorem input4512_def : input4512 = (.seq input4511 input4510) := by
  unfold input4512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4511 output4510)).val
theorem output4512_def : output4512 = (.seq output4511 output4510) := by
  unfold output4512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4512_skip : Flapjack.WordAlloc.isSkip output4512 = false := by
  rw [output4512_def]
  conv => lhs; cbv
  try rfl
theorem node4512_eq : Flapjack.WordAlloc.removeDeadStructural input4512 value2260 value1 value2 = (output4512, value5, value1) := by
  rw [input4512_def, output4512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4510_eq]
  dsimp only
  rw [node4511_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4512 input4509)).val
theorem input4513_def : input4513 = (.seq input4512 input4509) := by
  unfold input4513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4512 output4509)).val
theorem output4513_def : output4513 = (.seq output4512 output4509) := by
  unfold output4513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4513_skip : Flapjack.WordAlloc.isSkip output4513 = false := by
  rw [output4513_def]
  conv => lhs; cbv
  try rfl
theorem node4513_eq : Flapjack.WordAlloc.removeDeadStructural input4513 value2259 value1 value2 = (output4513, value5, value1) := by
  rw [input4513_def, output4513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4509_eq]
  dsimp only
  rw [node4512_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4513 input4508)).val
theorem input4514_def : input4514 = (.seq input4513 input4508) := by
  unfold input4514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4513 output4508)).val
theorem output4514_def : output4514 = (.seq output4513 output4508) := by
  unfold output4514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4514_skip : Flapjack.WordAlloc.isSkip output4514 = false := by
  rw [output4514_def]
  conv => lhs; cbv
  try rfl
theorem node4514_eq : Flapjack.WordAlloc.removeDeadStructural input4514 value2258 value1 value2 = (output4514, value5, value1) := by
  rw [input4514_def, output4514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4508_eq]
  dsimp only
  rw [node4513_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4514 input4507)).val
theorem input4515_def : input4515 = (.seq input4514 input4507) := by
  unfold input4515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4514 output4507)).val
theorem output4515_def : output4515 = (.seq output4514 output4507) := by
  unfold output4515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4515_skip : Flapjack.WordAlloc.isSkip output4515 = false := by
  rw [output4515_def]
  conv => lhs; cbv
  try rfl
theorem node4515_eq : Flapjack.WordAlloc.removeDeadStructural input4515 value2256 value1 value2 = (output4515, value5, value1) := by
  rw [input4515_def, output4515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4507_eq]
  dsimp only
  rw [node4514_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2262 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21057 (Flapjack.WordLangAddr.addr 21061 0#64)))).val
theorem input4516_def : input4516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21057 (Flapjack.WordLangAddr.addr 21061 0#64))) := by
  unfold input4516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21057 (Flapjack.WordLangAddr.addr 21061 0#64)))).val
theorem output4516_def : output4516 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21057 (Flapjack.WordLangAddr.addr 21061 0#64))) := by
  unfold output4516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4516_skip : Flapjack.WordAlloc.isSkip output4516 = false := by
  rw [output4516_def]
  conv => lhs; cbv
  try rfl
theorem node4516_eq : Flapjack.WordAlloc.removeDeadStructural input4516 value5 value1 value2 = (output4516, value2262, value1) := by
  rw [input4516_def, output4516_def]
  try (conv => lhs; cbv)
  try rfl

def value2263 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21061, 21049)])).val
theorem input4517_def : input4517 = (Flapjack.WordLangProgHOL.move 0 [(21061, 21049)]) := by
  unfold input4517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21061, 21049)])).val
theorem output4517_def : output4517 = (Flapjack.WordLangProgHOL.move 0 [(21061, 21049)]) := by
  unfold output4517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4517_skip : Flapjack.WordAlloc.isSkip output4517 = false := by
  rw [output4517_def]
  conv => lhs; cbv
  try rfl
theorem node4517_eq : Flapjack.WordAlloc.removeDeadStructural input4517 value2262 value1 value2 = (output4517, value2263, value1) := by
  rw [input4517_def, output4517_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4517 input4516)).val
theorem input4518_def : input4518 = (.seq input4517 input4516) := by
  unfold input4518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4517 output4516)).val
theorem output4518_def : output4518 = (.seq output4517 output4516) := by
  unfold output4518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4518_skip : Flapjack.WordAlloc.isSkip output4518 = false := by
  rw [output4518_def]
  conv => lhs; cbv
  try rfl
theorem node4518_eq : Flapjack.WordAlloc.removeDeadStructural input4518 value5 value1 value2 = (output4518, value2263, value1) := by
  rw [input4518_def, output4518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4516_eq]
  dsimp only
  rw [node4517_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2264 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21057 475620398632300694#64))).val
theorem input4519_def : input4519 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21057 475620398632300694#64)) := by
  unfold input4519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21057 475620398632300694#64))).val
theorem output4519_def : output4519 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21057 475620398632300694#64)) := by
  unfold output4519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4519_skip : Flapjack.WordAlloc.isSkip output4519 = false := by
  rw [output4519_def]
  conv => lhs; cbv
  try rfl
theorem node4519_eq : Flapjack.WordAlloc.removeDeadStructural input4519 value2263 value1 value2 = (output4519, value2264, value1) := by
  rw [input4519_def, output4519_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21053 475620398632300694#64))).val
theorem input4520_def : input4520 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21053 475620398632300694#64)) := by
  unfold input4520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4520_def : output4520 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4520_skip : Flapjack.WordAlloc.isSkip output4520 = true := by
  rw [output4520_def]
  conv => lhs; cbv
  try rfl
theorem node4520_eq : Flapjack.WordAlloc.removeDeadStructural input4520 value2264 value1 value2 = (output4520, value2264, value1) := by
  rw [input4520_def, output4520_def]
  try (conv => lhs; cbv)
  try rfl

def value2265 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21049 21041 (Flapjack.WordRegImm.reg 21045))))).val
theorem input4521_def : input4521 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21049 21041 (Flapjack.WordRegImm.reg 21045)))) := by
  unfold input4521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21049 21041 (Flapjack.WordRegImm.reg 21045))))).val
theorem output4521_def : output4521 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21049 21041 (Flapjack.WordRegImm.reg 21045)))) := by
  unfold output4521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4521_skip : Flapjack.WordAlloc.isSkip output4521 = false := by
  rw [output4521_def]
  conv => lhs; cbv
  try rfl
theorem node4521_eq : Flapjack.WordAlloc.removeDeadStructural input4521 value2264 value1 value2 = (output4521, value2265, value1) := by
  rw [input4521_def, output4521_def]
  try (conv => lhs; cbv)
  try rfl

def value2266 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21045 4872#64))).val
theorem input4522_def : input4522 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21045 4872#64)) := by
  unfold input4522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21045 4872#64))).val
theorem output4522_def : output4522 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21045 4872#64)) := by
  unfold output4522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4522_skip : Flapjack.WordAlloc.isSkip output4522 = false := by
  rw [output4522_def]
  conv => lhs; cbv
  try rfl
theorem node4522_eq : Flapjack.WordAlloc.removeDeadStructural input4522 value2265 value1 value2 = (output4522, value2266, value1) := by
  rw [input4522_def, output4522_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4522 input4521)).val
theorem input4523_def : input4523 = (.seq input4522 input4521) := by
  unfold input4523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4522 output4521)).val
theorem output4523_def : output4523 = (.seq output4522 output4521) := by
  unfold output4523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4523_skip : Flapjack.WordAlloc.isSkip output4523 = false := by
  rw [output4523_def]
  conv => lhs; cbv
  try rfl
theorem node4523_eq : Flapjack.WordAlloc.removeDeadStructural input4523 value2264 value1 value2 = (output4523, value2266, value1) := by
  rw [input4523_def, output4523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4521_eq]
  dsimp only
  rw [node4522_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2267 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21041 (Flapjack.WordLangAddr.addr 21037 18446744073709551104#64)))).val
theorem input4524_def : input4524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21041 (Flapjack.WordLangAddr.addr 21037 18446744073709551104#64))) := by
  unfold input4524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21041 (Flapjack.WordLangAddr.addr 21037 18446744073709551104#64)))).val
theorem output4524_def : output4524 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21041 (Flapjack.WordLangAddr.addr 21037 18446744073709551104#64))) := by
  unfold output4524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4524_skip : Flapjack.WordAlloc.isSkip output4524 = false := by
  rw [output4524_def]
  conv => lhs; cbv
  try rfl
theorem node4524_eq : Flapjack.WordAlloc.removeDeadStructural input4524 value2266 value1 value2 = (output4524, value2267, value1) := by
  rw [input4524_def, output4524_def]
  try (conv => lhs; cbv)
  try rfl

def value2268 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21037 21033)).val
theorem input4525_def : input4525 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21037 21033) := by
  unfold input4525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21037 21033)).val
theorem output4525_def : output4525 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21037 21033) := by
  unfold output4525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4525_skip : Flapjack.WordAlloc.isSkip output4525 = false := by
  rw [output4525_def]
  conv => lhs; cbv
  try rfl
theorem node4525_eq : Flapjack.WordAlloc.removeDeadStructural input4525 value2267 value1 value2 = (output4525, value2268, value1) := by
  rw [input4525_def, output4525_def]
  try (conv => lhs; cbv)
  try rfl

def value2269 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21033 21029 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4526_def : input4526 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21033 21029 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21033 21029 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4526_def : output4526 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 21033 21029 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4526_skip : Flapjack.WordAlloc.isSkip output4526 = false := by
  rw [output4526_def]
  conv => lhs; cbv
  try rfl
theorem node4526_eq : Flapjack.WordAlloc.removeDeadStructural input4526 value2268 value1 value2 = (output4526, value2269, value1) := by
  rw [input4526_def, output4526_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21029 Flapjack.WordStore.heapLength)).val
theorem input4527_def : input4527 = (Flapjack.WordLangProgHOL.get 21029 Flapjack.WordStore.heapLength) := by
  unfold input4527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 21029 Flapjack.WordStore.heapLength)).val
theorem output4527_def : output4527 = (Flapjack.WordLangProgHOL.get 21029 Flapjack.WordStore.heapLength) := by
  unfold output4527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4527_skip : Flapjack.WordAlloc.isSkip output4527 = false := by
  rw [output4527_def]
  conv => lhs; cbv
  try rfl
theorem node4527_eq : Flapjack.WordAlloc.removeDeadStructural input4527 value2269 value1 value2 = (output4527, value5, value1) := by
  rw [input4527_def, output4527_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4527 input4526)).val
theorem input4528_def : input4528 = (.seq input4527 input4526) := by
  unfold input4528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4527 output4526)).val
theorem output4528_def : output4528 = (.seq output4527 output4526) := by
  unfold output4528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4528_skip : Flapjack.WordAlloc.isSkip output4528 = false := by
  rw [output4528_def]
  conv => lhs; cbv
  try rfl
theorem node4528_eq : Flapjack.WordAlloc.removeDeadStructural input4528 value2268 value1 value2 = (output4528, value5, value1) := by
  rw [input4528_def, output4528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4526_eq]
  dsimp only
  rw [node4527_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4528 input4525)).val
theorem input4529_def : input4529 = (.seq input4528 input4525) := by
  unfold input4529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4528 output4525)).val
theorem output4529_def : output4529 = (.seq output4528 output4525) := by
  unfold output4529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4529_skip : Flapjack.WordAlloc.isSkip output4529 = false := by
  rw [output4529_def]
  conv => lhs; cbv
  try rfl
theorem node4529_eq : Flapjack.WordAlloc.removeDeadStructural input4529 value2267 value1 value2 = (output4529, value5, value1) := by
  rw [input4529_def, output4529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4525_eq]
  dsimp only
  rw [node4528_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4529 input4524)).val
theorem input4530_def : input4530 = (.seq input4529 input4524) := by
  unfold input4530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4529 output4524)).val
theorem output4530_def : output4530 = (.seq output4529 output4524) := by
  unfold output4530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4530_skip : Flapjack.WordAlloc.isSkip output4530 = false := by
  rw [output4530_def]
  conv => lhs; cbv
  try rfl
theorem node4530_eq : Flapjack.WordAlloc.removeDeadStructural input4530 value2266 value1 value2 = (output4530, value5, value1) := by
  rw [input4530_def, output4530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4524_eq]
  dsimp only
  rw [node4529_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4530 input4523)).val
theorem input4531_def : input4531 = (.seq input4530 input4523) := by
  unfold input4531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4530 output4523)).val
theorem output4531_def : output4531 = (.seq output4530 output4523) := by
  unfold output4531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4531_skip : Flapjack.WordAlloc.isSkip output4531 = false := by
  rw [output4531_def]
  conv => lhs; cbv
  try rfl
theorem node4531_eq : Flapjack.WordAlloc.removeDeadStructural input4531 value2264 value1 value2 = (output4531, value5, value1) := by
  rw [input4531_def, output4531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4523_eq]
  dsimp only
  rw [node4530_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2270 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21021 (Flapjack.WordLangAddr.addr 21025 0#64)))).val
theorem input4532_def : input4532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21021 (Flapjack.WordLangAddr.addr 21025 0#64))) := by
  unfold input4532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21021 (Flapjack.WordLangAddr.addr 21025 0#64)))).val
theorem output4532_def : output4532 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 21021 (Flapjack.WordLangAddr.addr 21025 0#64))) := by
  unfold output4532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4532_skip : Flapjack.WordAlloc.isSkip output4532 = false := by
  rw [output4532_def]
  conv => lhs; cbv
  try rfl
theorem node4532_eq : Flapjack.WordAlloc.removeDeadStructural input4532 value5 value1 value2 = (output4532, value2270, value1) := by
  rw [input4532_def, output4532_def]
  try (conv => lhs; cbv)
  try rfl

def value2271 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21025, 21013)])).val
theorem input4533_def : input4533 = (Flapjack.WordLangProgHOL.move 0 [(21025, 21013)]) := by
  unfold input4533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21025, 21013)])).val
theorem output4533_def : output4533 = (Flapjack.WordLangProgHOL.move 0 [(21025, 21013)]) := by
  unfold output4533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4533_skip : Flapjack.WordAlloc.isSkip output4533 = false := by
  rw [output4533_def]
  conv => lhs; cbv
  try rfl
theorem node4533_eq : Flapjack.WordAlloc.removeDeadStructural input4533 value2270 value1 value2 = (output4533, value2271, value1) := by
  rw [input4533_def, output4533_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4533 input4532)).val
theorem input4534_def : input4534 = (.seq input4533 input4532) := by
  unfold input4534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4533 output4532)).val
theorem output4534_def : output4534 = (.seq output4533 output4532) := by
  unfold output4534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4534_skip : Flapjack.WordAlloc.isSkip output4534 = false := by
  rw [output4534_def]
  conv => lhs; cbv
  try rfl
theorem node4534_eq : Flapjack.WordAlloc.removeDeadStructural input4534 value5 value1 value2 = (output4534, value2271, value1) := by
  rw [input4534_def, output4534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4532_eq]
  dsimp only
  rw [node4533_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2272 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21021 6799301371303374023#64))).val
theorem input4535_def : input4535 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21021 6799301371303374023#64)) := by
  unfold input4535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21021 6799301371303374023#64))).val
theorem output4535_def : output4535 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21021 6799301371303374023#64)) := by
  unfold output4535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4535_skip : Flapjack.WordAlloc.isSkip output4535 = false := by
  rw [output4535_def]
  conv => lhs; cbv
  try rfl
theorem node4535_eq : Flapjack.WordAlloc.removeDeadStructural input4535 value2271 value1 value2 = (output4535, value2272, value1) := by
  rw [input4535_def, output4535_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21017 6799301371303374023#64))).val
theorem input4536_def : input4536 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21017 6799301371303374023#64)) := by
  unfold input4536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4536_def : output4536 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4536_skip : Flapjack.WordAlloc.isSkip output4536 = true := by
  rw [output4536_def]
  conv => lhs; cbv
  try rfl
theorem node4536_eq : Flapjack.WordAlloc.removeDeadStructural input4536 value2272 value1 value2 = (output4536, value2272, value1) := by
  rw [input4536_def, output4536_def]
  try (conv => lhs; cbv)
  try rfl

def value2273 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21013 21005 (Flapjack.WordRegImm.reg 21009))))).val
theorem input4537_def : input4537 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21013 21005 (Flapjack.WordRegImm.reg 21009)))) := by
  unfold input4537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21013 21005 (Flapjack.WordRegImm.reg 21009))))).val
theorem output4537_def : output4537 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 21013 21005 (Flapjack.WordRegImm.reg 21009)))) := by
  unfold output4537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4537_skip : Flapjack.WordAlloc.isSkip output4537 = false := by
  rw [output4537_def]
  conv => lhs; cbv
  try rfl
theorem node4537_eq : Flapjack.WordAlloc.removeDeadStructural input4537 value2272 value1 value2 = (output4537, value2273, value1) := by
  rw [input4537_def, output4537_def]
  try (conv => lhs; cbv)
  try rfl

def value2274 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21009 4864#64))).val
theorem input4538_def : input4538 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21009 4864#64)) := by
  unfold input4538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21009 4864#64))).val
theorem output4538_def : output4538 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 21009 4864#64)) := by
  unfold output4538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4538_skip : Flapjack.WordAlloc.isSkip output4538 = false := by
  rw [output4538_def]
  conv => lhs; cbv
  try rfl
theorem node4538_eq : Flapjack.WordAlloc.removeDeadStructural input4538 value2273 value1 value2 = (output4538, value2274, value1) := by
  rw [input4538_def, output4538_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4538 input4537)).val
theorem input4539_def : input4539 = (.seq input4538 input4537) := by
  unfold input4539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4538 output4537)).val
theorem output4539_def : output4539 = (.seq output4538 output4537) := by
  unfold output4539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4539_skip : Flapjack.WordAlloc.isSkip output4539 = false := by
  rw [output4539_def]
  conv => lhs; cbv
  try rfl
theorem node4539_eq : Flapjack.WordAlloc.removeDeadStructural input4539 value2272 value1 value2 = (output4539, value2274, value1) := by
  rw [input4539_def, output4539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4537_eq]
  dsimp only
  rw [node4538_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2275 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21005 (Flapjack.WordLangAddr.addr 21001 18446744073709551104#64)))).val
theorem input4540_def : input4540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21005 (Flapjack.WordLangAddr.addr 21001 18446744073709551104#64))) := by
  unfold input4540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21005 (Flapjack.WordLangAddr.addr 21001 18446744073709551104#64)))).val
theorem output4540_def : output4540 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 21005 (Flapjack.WordLangAddr.addr 21001 18446744073709551104#64))) := by
  unfold output4540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4540_skip : Flapjack.WordAlloc.isSkip output4540 = false := by
  rw [output4540_def]
  conv => lhs; cbv
  try rfl
theorem node4540_eq : Flapjack.WordAlloc.removeDeadStructural input4540 value2274 value1 value2 = (output4540, value2275, value1) := by
  rw [input4540_def, output4540_def]
  try (conv => lhs; cbv)
  try rfl

def value2276 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21001 20997)).val
theorem input4541_def : input4541 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21001 20997) := by
  unfold input4541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21001 20997)).val
theorem output4541_def : output4541 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 21001 20997) := by
  unfold output4541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4541_skip : Flapjack.WordAlloc.isSkip output4541 = false := by
  rw [output4541_def]
  conv => lhs; cbv
  try rfl
theorem node4541_eq : Flapjack.WordAlloc.removeDeadStructural input4541 value2275 value1 value2 = (output4541, value2276, value1) := by
  rw [input4541_def, output4541_def]
  try (conv => lhs; cbv)
  try rfl

def value2277 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20997 20993 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4542_def : input4542 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20997 20993 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20997 20993 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4542_def : output4542 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20997 20993 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4542_skip : Flapjack.WordAlloc.isSkip output4542 = false := by
  rw [output4542_def]
  conv => lhs; cbv
  try rfl
theorem node4542_eq : Flapjack.WordAlloc.removeDeadStructural input4542 value2276 value1 value2 = (output4542, value2277, value1) := by
  rw [input4542_def, output4542_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20993 Flapjack.WordStore.heapLength)).val
theorem input4543_def : input4543 = (Flapjack.WordLangProgHOL.get 20993 Flapjack.WordStore.heapLength) := by
  unfold input4543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20993 Flapjack.WordStore.heapLength)).val
theorem output4543_def : output4543 = (Flapjack.WordLangProgHOL.get 20993 Flapjack.WordStore.heapLength) := by
  unfold output4543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4543_skip : Flapjack.WordAlloc.isSkip output4543 = false := by
  rw [output4543_def]
  conv => lhs; cbv
  try rfl
theorem node4543_eq : Flapjack.WordAlloc.removeDeadStructural input4543 value2277 value1 value2 = (output4543, value5, value1) := by
  rw [input4543_def, output4543_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4543 input4542)).val
theorem input4544_def : input4544 = (.seq input4543 input4542) := by
  unfold input4544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4543 output4542)).val
theorem output4544_def : output4544 = (.seq output4543 output4542) := by
  unfold output4544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4544_skip : Flapjack.WordAlloc.isSkip output4544 = false := by
  rw [output4544_def]
  conv => lhs; cbv
  try rfl
theorem node4544_eq : Flapjack.WordAlloc.removeDeadStructural input4544 value2276 value1 value2 = (output4544, value5, value1) := by
  rw [input4544_def, output4544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4542_eq]
  dsimp only
  rw [node4543_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4544 input4541)).val
theorem input4545_def : input4545 = (.seq input4544 input4541) := by
  unfold input4545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4544 output4541)).val
theorem output4545_def : output4545 = (.seq output4544 output4541) := by
  unfold output4545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4545_skip : Flapjack.WordAlloc.isSkip output4545 = false := by
  rw [output4545_def]
  conv => lhs; cbv
  try rfl
theorem node4545_eq : Flapjack.WordAlloc.removeDeadStructural input4545 value2275 value1 value2 = (output4545, value5, value1) := by
  rw [input4545_def, output4545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4541_eq]
  dsimp only
  rw [node4544_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4545 input4540)).val
theorem input4546_def : input4546 = (.seq input4545 input4540) := by
  unfold input4546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4545 output4540)).val
theorem output4546_def : output4546 = (.seq output4545 output4540) := by
  unfold output4546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4546_skip : Flapjack.WordAlloc.isSkip output4546 = false := by
  rw [output4546_def]
  conv => lhs; cbv
  try rfl
theorem node4546_eq : Flapjack.WordAlloc.removeDeadStructural input4546 value2274 value1 value2 = (output4546, value5, value1) := by
  rw [input4546_def, output4546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4540_eq]
  dsimp only
  rw [node4545_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4546 input4539)).val
theorem input4547_def : input4547 = (.seq input4546 input4539) := by
  unfold input4547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4546 output4539)).val
theorem output4547_def : output4547 = (.seq output4546 output4539) := by
  unfold output4547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4547_skip : Flapjack.WordAlloc.isSkip output4547 = false := by
  rw [output4547_def]
  conv => lhs; cbv
  try rfl
theorem node4547_eq : Flapjack.WordAlloc.removeDeadStructural input4547 value2272 value1 value2 = (output4547, value5, value1) := by
  rw [input4547_def, output4547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4539_eq]
  dsimp only
  rw [node4546_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2278 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20985 (Flapjack.WordLangAddr.addr 20989 0#64)))).val
theorem input4548_def : input4548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20985 (Flapjack.WordLangAddr.addr 20989 0#64))) := by
  unfold input4548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20985 (Flapjack.WordLangAddr.addr 20989 0#64)))).val
theorem output4548_def : output4548 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20985 (Flapjack.WordLangAddr.addr 20989 0#64))) := by
  unfold output4548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4548_skip : Flapjack.WordAlloc.isSkip output4548 = false := by
  rw [output4548_def]
  conv => lhs; cbv
  try rfl
theorem node4548_eq : Flapjack.WordAlloc.removeDeadStructural input4548 value5 value1 value2 = (output4548, value2278, value1) := by
  rw [input4548_def, output4548_def]
  try (conv => lhs; cbv)
  try rfl

def value2279 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20989, 20977)])).val
theorem input4549_def : input4549 = (Flapjack.WordLangProgHOL.move 0 [(20989, 20977)]) := by
  unfold input4549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20989, 20977)])).val
theorem output4549_def : output4549 = (Flapjack.WordLangProgHOL.move 0 [(20989, 20977)]) := by
  unfold output4549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4549_skip : Flapjack.WordAlloc.isSkip output4549 = false := by
  rw [output4549_def]
  conv => lhs; cbv
  try rfl
theorem node4549_eq : Flapjack.WordAlloc.removeDeadStructural input4549 value2278 value1 value2 = (output4549, value2279, value1) := by
  rw [input4549_def, output4549_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4549 input4548)).val
theorem input4550_def : input4550 = (.seq input4549 input4548) := by
  unfold input4550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4549 output4548)).val
theorem output4550_def : output4550 = (.seq output4549 output4548) := by
  unfold output4550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4550_skip : Flapjack.WordAlloc.isSkip output4550 = false := by
  rw [output4550_def]
  conv => lhs; cbv
  try rfl
theorem node4550_eq : Flapjack.WordAlloc.removeDeadStructural input4550 value5 value1 value2 = (output4550, value2279, value1) := by
  rw [input4550_def, output4550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4548_eq]
  dsimp only
  rw [node4549_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2280 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20985 12747537776279478232#64))).val
theorem input4551_def : input4551 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20985 12747537776279478232#64)) := by
  unfold input4551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20985 12747537776279478232#64))).val
theorem output4551_def : output4551 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20985 12747537776279478232#64)) := by
  unfold output4551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4551_skip : Flapjack.WordAlloc.isSkip output4551 = false := by
  rw [output4551_def]
  conv => lhs; cbv
  try rfl
theorem node4551_eq : Flapjack.WordAlloc.removeDeadStructural input4551 value2279 value1 value2 = (output4551, value2280, value1) := by
  rw [input4551_def, output4551_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20981 12747537776279478232#64))).val
theorem input4552_def : input4552 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20981 12747537776279478232#64)) := by
  unfold input4552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4552_def : output4552 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4552_skip : Flapjack.WordAlloc.isSkip output4552 = true := by
  rw [output4552_def]
  conv => lhs; cbv
  try rfl
theorem node4552_eq : Flapjack.WordAlloc.removeDeadStructural input4552 value2280 value1 value2 = (output4552, value2280, value1) := by
  rw [input4552_def, output4552_def]
  try (conv => lhs; cbv)
  try rfl

def value2281 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20977 20969 (Flapjack.WordRegImm.reg 20973))))).val
theorem input4553_def : input4553 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20977 20969 (Flapjack.WordRegImm.reg 20973)))) := by
  unfold input4553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20977 20969 (Flapjack.WordRegImm.reg 20973))))).val
theorem output4553_def : output4553 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20977 20969 (Flapjack.WordRegImm.reg 20973)))) := by
  unfold output4553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4553_skip : Flapjack.WordAlloc.isSkip output4553 = false := by
  rw [output4553_def]
  conv => lhs; cbv
  try rfl
theorem node4553_eq : Flapjack.WordAlloc.removeDeadStructural input4553 value2280 value1 value2 = (output4553, value2281, value1) := by
  rw [input4553_def, output4553_def]
  try (conv => lhs; cbv)
  try rfl

def value2282 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20973 4856#64))).val
theorem input4554_def : input4554 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20973 4856#64)) := by
  unfold input4554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20973 4856#64))).val
theorem output4554_def : output4554 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20973 4856#64)) := by
  unfold output4554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4554_skip : Flapjack.WordAlloc.isSkip output4554 = false := by
  rw [output4554_def]
  conv => lhs; cbv
  try rfl
theorem node4554_eq : Flapjack.WordAlloc.removeDeadStructural input4554 value2281 value1 value2 = (output4554, value2282, value1) := by
  rw [input4554_def, output4554_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4554 input4553)).val
theorem input4555_def : input4555 = (.seq input4554 input4553) := by
  unfold input4555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4554 output4553)).val
theorem output4555_def : output4555 = (.seq output4554 output4553) := by
  unfold output4555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4555_skip : Flapjack.WordAlloc.isSkip output4555 = false := by
  rw [output4555_def]
  conv => lhs; cbv
  try rfl
theorem node4555_eq : Flapjack.WordAlloc.removeDeadStructural input4555 value2280 value1 value2 = (output4555, value2282, value1) := by
  rw [input4555_def, output4555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4553_eq]
  dsimp only
  rw [node4554_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2283 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20969 (Flapjack.WordLangAddr.addr 20965 18446744073709551104#64)))).val
theorem input4556_def : input4556 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20969 (Flapjack.WordLangAddr.addr 20965 18446744073709551104#64))) := by
  unfold input4556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20969 (Flapjack.WordLangAddr.addr 20965 18446744073709551104#64)))).val
theorem output4556_def : output4556 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20969 (Flapjack.WordLangAddr.addr 20965 18446744073709551104#64))) := by
  unfold output4556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4556_skip : Flapjack.WordAlloc.isSkip output4556 = false := by
  rw [output4556_def]
  conv => lhs; cbv
  try rfl
theorem node4556_eq : Flapjack.WordAlloc.removeDeadStructural input4556 value2282 value1 value2 = (output4556, value2283, value1) := by
  rw [input4556_def, output4556_def]
  try (conv => lhs; cbv)
  try rfl

def value2284 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20965 20961)).val
theorem input4557_def : input4557 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20965 20961) := by
  unfold input4557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20965 20961)).val
theorem output4557_def : output4557 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20965 20961) := by
  unfold output4557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4557_skip : Flapjack.WordAlloc.isSkip output4557 = false := by
  rw [output4557_def]
  conv => lhs; cbv
  try rfl
theorem node4557_eq : Flapjack.WordAlloc.removeDeadStructural input4557 value2283 value1 value2 = (output4557, value2284, value1) := by
  rw [input4557_def, output4557_def]
  try (conv => lhs; cbv)
  try rfl

def value2285 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20961 20957 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4558_def : input4558 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20961 20957 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20961 20957 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4558_def : output4558 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20961 20957 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4558_skip : Flapjack.WordAlloc.isSkip output4558 = false := by
  rw [output4558_def]
  conv => lhs; cbv
  try rfl
theorem node4558_eq : Flapjack.WordAlloc.removeDeadStructural input4558 value2284 value1 value2 = (output4558, value2285, value1) := by
  rw [input4558_def, output4558_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20957 Flapjack.WordStore.heapLength)).val
theorem input4559_def : input4559 = (Flapjack.WordLangProgHOL.get 20957 Flapjack.WordStore.heapLength) := by
  unfold input4559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20957 Flapjack.WordStore.heapLength)).val
theorem output4559_def : output4559 = (Flapjack.WordLangProgHOL.get 20957 Flapjack.WordStore.heapLength) := by
  unfold output4559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4559_skip : Flapjack.WordAlloc.isSkip output4559 = false := by
  rw [output4559_def]
  conv => lhs; cbv
  try rfl
theorem node4559_eq : Flapjack.WordAlloc.removeDeadStructural input4559 value2285 value1 value2 = (output4559, value5, value1) := by
  rw [input4559_def, output4559_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4559 input4558)).val
theorem input4560_def : input4560 = (.seq input4559 input4558) := by
  unfold input4560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4559 output4558)).val
theorem output4560_def : output4560 = (.seq output4559 output4558) := by
  unfold output4560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4560_skip : Flapjack.WordAlloc.isSkip output4560 = false := by
  rw [output4560_def]
  conv => lhs; cbv
  try rfl
theorem node4560_eq : Flapjack.WordAlloc.removeDeadStructural input4560 value2284 value1 value2 = (output4560, value5, value1) := by
  rw [input4560_def, output4560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4558_eq]
  dsimp only
  rw [node4559_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4560 input4557)).val
theorem input4561_def : input4561 = (.seq input4560 input4557) := by
  unfold input4561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4560 output4557)).val
theorem output4561_def : output4561 = (.seq output4560 output4557) := by
  unfold output4561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4561_skip : Flapjack.WordAlloc.isSkip output4561 = false := by
  rw [output4561_def]
  conv => lhs; cbv
  try rfl
theorem node4561_eq : Flapjack.WordAlloc.removeDeadStructural input4561 value2283 value1 value2 = (output4561, value5, value1) := by
  rw [input4561_def, output4561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4557_eq]
  dsimp only
  rw [node4560_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4561 input4556)).val
theorem input4562_def : input4562 = (.seq input4561 input4556) := by
  unfold input4562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4561 output4556)).val
theorem output4562_def : output4562 = (.seq output4561 output4556) := by
  unfold output4562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4562_skip : Flapjack.WordAlloc.isSkip output4562 = false := by
  rw [output4562_def]
  conv => lhs; cbv
  try rfl
theorem node4562_eq : Flapjack.WordAlloc.removeDeadStructural input4562 value2282 value1 value2 = (output4562, value5, value1) := by
  rw [input4562_def, output4562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4556_eq]
  dsimp only
  rw [node4561_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4562 input4555)).val
theorem input4563_def : input4563 = (.seq input4562 input4555) := by
  unfold input4563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4562 output4555)).val
theorem output4563_def : output4563 = (.seq output4562 output4555) := by
  unfold output4563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4563_skip : Flapjack.WordAlloc.isSkip output4563 = false := by
  rw [output4563_def]
  conv => lhs; cbv
  try rfl
theorem node4563_eq : Flapjack.WordAlloc.removeDeadStructural input4563 value2280 value1 value2 = (output4563, value5, value1) := by
  rw [input4563_def, output4563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4555_eq]
  dsimp only
  rw [node4562_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2286 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20949 (Flapjack.WordLangAddr.addr 20953 0#64)))).val
theorem input4564_def : input4564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20949 (Flapjack.WordLangAddr.addr 20953 0#64))) := by
  unfold input4564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20949 (Flapjack.WordLangAddr.addr 20953 0#64)))).val
theorem output4564_def : output4564 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20949 (Flapjack.WordLangAddr.addr 20953 0#64))) := by
  unfold output4564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4564_skip : Flapjack.WordAlloc.isSkip output4564 = false := by
  rw [output4564_def]
  conv => lhs; cbv
  try rfl
theorem node4564_eq : Flapjack.WordAlloc.removeDeadStructural input4564 value5 value1 value2 = (output4564, value2286, value1) := by
  rw [input4564_def, output4564_def]
  try (conv => lhs; cbv)
  try rfl

def value2287 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20953, 20941)])).val
theorem input4565_def : input4565 = (Flapjack.WordLangProgHOL.move 0 [(20953, 20941)]) := by
  unfold input4565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20953, 20941)])).val
theorem output4565_def : output4565 = (Flapjack.WordLangProgHOL.move 0 [(20953, 20941)]) := by
  unfold output4565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4565_skip : Flapjack.WordAlloc.isSkip output4565 = false := by
  rw [output4565_def]
  conv => lhs; cbv
  try rfl
theorem node4565_eq : Flapjack.WordAlloc.removeDeadStructural input4565 value2286 value1 value2 = (output4565, value2287, value1) := by
  rw [input4565_def, output4565_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4565 input4564)).val
theorem input4566_def : input4566 = (.seq input4565 input4564) := by
  unfold input4566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4565 output4564)).val
theorem output4566_def : output4566 = (.seq output4565 output4564) := by
  unfold output4566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4566_skip : Flapjack.WordAlloc.isSkip output4566 = false := by
  rw [output4566_def]
  conv => lhs; cbv
  try rfl
theorem node4566_eq : Flapjack.WordAlloc.removeDeadStructural input4566 value5 value1 value2 = (output4566, value2287, value1) := by
  rw [input4566_def, output4566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4564_eq]
  dsimp only
  rw [node4565_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2288 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20949 4287227371909732728#64))).val
theorem input4567_def : input4567 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20949 4287227371909732728#64)) := by
  unfold input4567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20949 4287227371909732728#64))).val
theorem output4567_def : output4567 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20949 4287227371909732728#64)) := by
  unfold output4567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4567_skip : Flapjack.WordAlloc.isSkip output4567 = false := by
  rw [output4567_def]
  conv => lhs; cbv
  try rfl
theorem node4567_eq : Flapjack.WordAlloc.removeDeadStructural input4567 value2287 value1 value2 = (output4567, value2288, value1) := by
  rw [input4567_def, output4567_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20945 4287227371909732728#64))).val
theorem input4568_def : input4568 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20945 4287227371909732728#64)) := by
  unfold input4568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4568_def : output4568 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4568_skip : Flapjack.WordAlloc.isSkip output4568 = true := by
  rw [output4568_def]
  conv => lhs; cbv
  try rfl
theorem node4568_eq : Flapjack.WordAlloc.removeDeadStructural input4568 value2288 value1 value2 = (output4568, value2288, value1) := by
  rw [input4568_def, output4568_def]
  try (conv => lhs; cbv)
  try rfl

def value2289 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20941 20933 (Flapjack.WordRegImm.reg 20937))))).val
theorem input4569_def : input4569 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20941 20933 (Flapjack.WordRegImm.reg 20937)))) := by
  unfold input4569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20941 20933 (Flapjack.WordRegImm.reg 20937))))).val
theorem output4569_def : output4569 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20941 20933 (Flapjack.WordRegImm.reg 20937)))) := by
  unfold output4569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4569_skip : Flapjack.WordAlloc.isSkip output4569 = false := by
  rw [output4569_def]
  conv => lhs; cbv
  try rfl
theorem node4569_eq : Flapjack.WordAlloc.removeDeadStructural input4569 value2288 value1 value2 = (output4569, value2289, value1) := by
  rw [input4569_def, output4569_def]
  try (conv => lhs; cbv)
  try rfl

def value2290 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20937 4848#64))).val
theorem input4570_def : input4570 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20937 4848#64)) := by
  unfold input4570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20937 4848#64))).val
theorem output4570_def : output4570 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20937 4848#64)) := by
  unfold output4570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4570_skip : Flapjack.WordAlloc.isSkip output4570 = false := by
  rw [output4570_def]
  conv => lhs; cbv
  try rfl
theorem node4570_eq : Flapjack.WordAlloc.removeDeadStructural input4570 value2289 value1 value2 = (output4570, value2290, value1) := by
  rw [input4570_def, output4570_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4570 input4569)).val
theorem input4571_def : input4571 = (.seq input4570 input4569) := by
  unfold input4571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4570 output4569)).val
theorem output4571_def : output4571 = (.seq output4570 output4569) := by
  unfold output4571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4571_skip : Flapjack.WordAlloc.isSkip output4571 = false := by
  rw [output4571_def]
  conv => lhs; cbv
  try rfl
theorem node4571_eq : Flapjack.WordAlloc.removeDeadStructural input4571 value2288 value1 value2 = (output4571, value2290, value1) := by
  rw [input4571_def, output4571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4569_eq]
  dsimp only
  rw [node4570_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2291 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20933 (Flapjack.WordLangAddr.addr 20929 18446744073709551104#64)))).val
theorem input4572_def : input4572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20933 (Flapjack.WordLangAddr.addr 20929 18446744073709551104#64))) := by
  unfold input4572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20933 (Flapjack.WordLangAddr.addr 20929 18446744073709551104#64)))).val
theorem output4572_def : output4572 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20933 (Flapjack.WordLangAddr.addr 20929 18446744073709551104#64))) := by
  unfold output4572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4572_skip : Flapjack.WordAlloc.isSkip output4572 = false := by
  rw [output4572_def]
  conv => lhs; cbv
  try rfl
theorem node4572_eq : Flapjack.WordAlloc.removeDeadStructural input4572 value2290 value1 value2 = (output4572, value2291, value1) := by
  rw [input4572_def, output4572_def]
  try (conv => lhs; cbv)
  try rfl

def value2292 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20929 20925)).val
theorem input4573_def : input4573 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20929 20925) := by
  unfold input4573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20929 20925)).val
theorem output4573_def : output4573 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20929 20925) := by
  unfold output4573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4573_skip : Flapjack.WordAlloc.isSkip output4573 = false := by
  rw [output4573_def]
  conv => lhs; cbv
  try rfl
theorem node4573_eq : Flapjack.WordAlloc.removeDeadStructural input4573 value2291 value1 value2 = (output4573, value2292, value1) := by
  rw [input4573_def, output4573_def]
  try (conv => lhs; cbv)
  try rfl

def value2293 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20925 20921 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4574_def : input4574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20925 20921 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20925 20921 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4574_def : output4574 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20925 20921 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4574_skip : Flapjack.WordAlloc.isSkip output4574 = false := by
  rw [output4574_def]
  conv => lhs; cbv
  try rfl
theorem node4574_eq : Flapjack.WordAlloc.removeDeadStructural input4574 value2292 value1 value2 = (output4574, value2293, value1) := by
  rw [input4574_def, output4574_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20921 Flapjack.WordStore.heapLength)).val
theorem input4575_def : input4575 = (Flapjack.WordLangProgHOL.get 20921 Flapjack.WordStore.heapLength) := by
  unfold input4575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20921 Flapjack.WordStore.heapLength)).val
theorem output4575_def : output4575 = (Flapjack.WordLangProgHOL.get 20921 Flapjack.WordStore.heapLength) := by
  unfold output4575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4575_skip : Flapjack.WordAlloc.isSkip output4575 = false := by
  rw [output4575_def]
  conv => lhs; cbv
  try rfl
theorem node4575_eq : Flapjack.WordAlloc.removeDeadStructural input4575 value2293 value1 value2 = (output4575, value5, value1) := by
  rw [input4575_def, output4575_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4575 input4574)).val
theorem input4576_def : input4576 = (.seq input4575 input4574) := by
  unfold input4576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4575 output4574)).val
theorem output4576_def : output4576 = (.seq output4575 output4574) := by
  unfold output4576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4576_skip : Flapjack.WordAlloc.isSkip output4576 = false := by
  rw [output4576_def]
  conv => lhs; cbv
  try rfl
theorem node4576_eq : Flapjack.WordAlloc.removeDeadStructural input4576 value2292 value1 value2 = (output4576, value5, value1) := by
  rw [input4576_def, output4576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4574_eq]
  dsimp only
  rw [node4575_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4576 input4573)).val
theorem input4577_def : input4577 = (.seq input4576 input4573) := by
  unfold input4577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4576 output4573)).val
theorem output4577_def : output4577 = (.seq output4576 output4573) := by
  unfold output4577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4577_skip : Flapjack.WordAlloc.isSkip output4577 = false := by
  rw [output4577_def]
  conv => lhs; cbv
  try rfl
theorem node4577_eq : Flapjack.WordAlloc.removeDeadStructural input4577 value2291 value1 value2 = (output4577, value5, value1) := by
  rw [input4577_def, output4577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4573_eq]
  dsimp only
  rw [node4576_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4577 input4572)).val
theorem input4578_def : input4578 = (.seq input4577 input4572) := by
  unfold input4578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4577 output4572)).val
theorem output4578_def : output4578 = (.seq output4577 output4572) := by
  unfold output4578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4578_skip : Flapjack.WordAlloc.isSkip output4578 = false := by
  rw [output4578_def]
  conv => lhs; cbv
  try rfl
theorem node4578_eq : Flapjack.WordAlloc.removeDeadStructural input4578 value2290 value1 value2 = (output4578, value5, value1) := by
  rw [input4578_def, output4578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4572_eq]
  dsimp only
  rw [node4577_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4578 input4571)).val
theorem input4579_def : input4579 = (.seq input4578 input4571) := by
  unfold input4579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4578 output4571)).val
theorem output4579_def : output4579 = (.seq output4578 output4571) := by
  unfold output4579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4579_skip : Flapjack.WordAlloc.isSkip output4579 = false := by
  rw [output4579_def]
  conv => lhs; cbv
  try rfl
theorem node4579_eq : Flapjack.WordAlloc.removeDeadStructural input4579 value2288 value1 value2 = (output4579, value5, value1) := by
  rw [input4579_def, output4579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4571_eq]
  dsimp only
  rw [node4578_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2294 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20913 (Flapjack.WordLangAddr.addr 20917 0#64)))).val
theorem input4580_def : input4580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20913 (Flapjack.WordLangAddr.addr 20917 0#64))) := by
  unfold input4580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20913 (Flapjack.WordLangAddr.addr 20917 0#64)))).val
theorem output4580_def : output4580 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20913 (Flapjack.WordLangAddr.addr 20917 0#64))) := by
  unfold output4580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4580_skip : Flapjack.WordAlloc.isSkip output4580 = false := by
  rw [output4580_def]
  conv => lhs; cbv
  try rfl
theorem node4580_eq : Flapjack.WordAlloc.removeDeadStructural input4580 value5 value1 value2 = (output4580, value2294, value1) := by
  rw [input4580_def, output4580_def]
  try (conv => lhs; cbv)
  try rfl

def value2295 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20917, 20905)])).val
theorem input4581_def : input4581 = (Flapjack.WordLangProgHOL.move 0 [(20917, 20905)]) := by
  unfold input4581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20917, 20905)])).val
theorem output4581_def : output4581 = (Flapjack.WordLangProgHOL.move 0 [(20917, 20905)]) := by
  unfold output4581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4581_skip : Flapjack.WordAlloc.isSkip output4581 = false := by
  rw [output4581_def]
  conv => lhs; cbv
  try rfl
theorem node4581_eq : Flapjack.WordAlloc.removeDeadStructural input4581 value2294 value1 value2 = (output4581, value2295, value1) := by
  rw [input4581_def, output4581_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4581 input4580)).val
theorem input4582_def : input4582 = (.seq input4581 input4580) := by
  unfold input4582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4581 output4580)).val
theorem output4582_def : output4582 = (.seq output4581 output4580) := by
  unfold output4582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4582_skip : Flapjack.WordAlloc.isSkip output4582 = false := by
  rw [output4582_def]
  conv => lhs; cbv
  try rfl
theorem node4582_eq : Flapjack.WordAlloc.removeDeadStructural input4582 value5 value1 value2 = (output4582, value2295, value1) := by
  rw [input4582_def, output4582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4580_eq]
  dsimp only
  rw [node4581_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2296 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20913 5296890268881783494#64))).val
theorem input4583_def : input4583 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20913 5296890268881783494#64)) := by
  unfold input4583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20913 5296890268881783494#64))).val
theorem output4583_def : output4583 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20913 5296890268881783494#64)) := by
  unfold output4583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4583_skip : Flapjack.WordAlloc.isSkip output4583 = false := by
  rw [output4583_def]
  conv => lhs; cbv
  try rfl
theorem node4583_eq : Flapjack.WordAlloc.removeDeadStructural input4583 value2295 value1 value2 = (output4583, value2296, value1) := by
  rw [input4583_def, output4583_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20909 5296890268881783494#64))).val
theorem input4584_def : input4584 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20909 5296890268881783494#64)) := by
  unfold input4584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4584_def : output4584 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4584_skip : Flapjack.WordAlloc.isSkip output4584 = true := by
  rw [output4584_def]
  conv => lhs; cbv
  try rfl
theorem node4584_eq : Flapjack.WordAlloc.removeDeadStructural input4584 value2296 value1 value2 = (output4584, value2296, value1) := by
  rw [input4584_def, output4584_def]
  try (conv => lhs; cbv)
  try rfl

def value2297 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20905 20897 (Flapjack.WordRegImm.reg 20901))))).val
theorem input4585_def : input4585 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20905 20897 (Flapjack.WordRegImm.reg 20901)))) := by
  unfold input4585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20905 20897 (Flapjack.WordRegImm.reg 20901))))).val
theorem output4585_def : output4585 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20905 20897 (Flapjack.WordRegImm.reg 20901)))) := by
  unfold output4585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4585_skip : Flapjack.WordAlloc.isSkip output4585 = false := by
  rw [output4585_def]
  conv => lhs; cbv
  try rfl
theorem node4585_eq : Flapjack.WordAlloc.removeDeadStructural input4585 value2296 value1 value2 = (output4585, value2297, value1) := by
  rw [input4585_def, output4585_def]
  try (conv => lhs; cbv)
  try rfl

def value2298 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20901 4840#64))).val
theorem input4586_def : input4586 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20901 4840#64)) := by
  unfold input4586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20901 4840#64))).val
theorem output4586_def : output4586 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20901 4840#64)) := by
  unfold output4586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4586_skip : Flapjack.WordAlloc.isSkip output4586 = false := by
  rw [output4586_def]
  conv => lhs; cbv
  try rfl
theorem node4586_eq : Flapjack.WordAlloc.removeDeadStructural input4586 value2297 value1 value2 = (output4586, value2298, value1) := by
  rw [input4586_def, output4586_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4586 input4585)).val
theorem input4587_def : input4587 = (.seq input4586 input4585) := by
  unfold input4587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4586 output4585)).val
theorem output4587_def : output4587 = (.seq output4586 output4585) := by
  unfold output4587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4587_skip : Flapjack.WordAlloc.isSkip output4587 = false := by
  rw [output4587_def]
  conv => lhs; cbv
  try rfl
theorem node4587_eq : Flapjack.WordAlloc.removeDeadStructural input4587 value2296 value1 value2 = (output4587, value2298, value1) := by
  rw [input4587_def, output4587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4585_eq]
  dsimp only
  rw [node4586_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2299 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20897 (Flapjack.WordLangAddr.addr 20893 18446744073709551104#64)))).val
theorem input4588_def : input4588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20897 (Flapjack.WordLangAddr.addr 20893 18446744073709551104#64))) := by
  unfold input4588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20897 (Flapjack.WordLangAddr.addr 20893 18446744073709551104#64)))).val
theorem output4588_def : output4588 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20897 (Flapjack.WordLangAddr.addr 20893 18446744073709551104#64))) := by
  unfold output4588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4588_skip : Flapjack.WordAlloc.isSkip output4588 = false := by
  rw [output4588_def]
  conv => lhs; cbv
  try rfl
theorem node4588_eq : Flapjack.WordAlloc.removeDeadStructural input4588 value2298 value1 value2 = (output4588, value2299, value1) := by
  rw [input4588_def, output4588_def]
  try (conv => lhs; cbv)
  try rfl

def value2300 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20893 20889)).val
theorem input4589_def : input4589 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20893 20889) := by
  unfold input4589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20893 20889)).val
theorem output4589_def : output4589 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20893 20889) := by
  unfold output4589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4589_skip : Flapjack.WordAlloc.isSkip output4589 = false := by
  rw [output4589_def]
  conv => lhs; cbv
  try rfl
theorem node4589_eq : Flapjack.WordAlloc.removeDeadStructural input4589 value2299 value1 value2 = (output4589, value2300, value1) := by
  rw [input4589_def, output4589_def]
  try (conv => lhs; cbv)
  try rfl

def value2301 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20889 20885 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4590_def : input4590 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20889 20885 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20889 20885 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4590_def : output4590 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20889 20885 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4590_skip : Flapjack.WordAlloc.isSkip output4590 = false := by
  rw [output4590_def]
  conv => lhs; cbv
  try rfl
theorem node4590_eq : Flapjack.WordAlloc.removeDeadStructural input4590 value2300 value1 value2 = (output4590, value2301, value1) := by
  rw [input4590_def, output4590_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20885 Flapjack.WordStore.heapLength)).val
theorem input4591_def : input4591 = (Flapjack.WordLangProgHOL.get 20885 Flapjack.WordStore.heapLength) := by
  unfold input4591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20885 Flapjack.WordStore.heapLength)).val
theorem output4591_def : output4591 = (Flapjack.WordLangProgHOL.get 20885 Flapjack.WordStore.heapLength) := by
  unfold output4591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4591_skip : Flapjack.WordAlloc.isSkip output4591 = false := by
  rw [output4591_def]
  conv => lhs; cbv
  try rfl
theorem node4591_eq : Flapjack.WordAlloc.removeDeadStructural input4591 value2301 value1 value2 = (output4591, value5, value1) := by
  rw [input4591_def, output4591_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4591 input4590)).val
theorem input4592_def : input4592 = (.seq input4591 input4590) := by
  unfold input4592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4591 output4590)).val
theorem output4592_def : output4592 = (.seq output4591 output4590) := by
  unfold output4592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4592_skip : Flapjack.WordAlloc.isSkip output4592 = false := by
  rw [output4592_def]
  conv => lhs; cbv
  try rfl
theorem node4592_eq : Flapjack.WordAlloc.removeDeadStructural input4592 value2300 value1 value2 = (output4592, value5, value1) := by
  rw [input4592_def, output4592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4590_eq]
  dsimp only
  rw [node4591_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4592 input4589)).val
theorem input4593_def : input4593 = (.seq input4592 input4589) := by
  unfold input4593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4592 output4589)).val
theorem output4593_def : output4593 = (.seq output4592 output4589) := by
  unfold output4593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4593_skip : Flapjack.WordAlloc.isSkip output4593 = false := by
  rw [output4593_def]
  conv => lhs; cbv
  try rfl
theorem node4593_eq : Flapjack.WordAlloc.removeDeadStructural input4593 value2299 value1 value2 = (output4593, value5, value1) := by
  rw [input4593_def, output4593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4589_eq]
  dsimp only
  rw [node4592_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4593 input4588)).val
theorem input4594_def : input4594 = (.seq input4593 input4588) := by
  unfold input4594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4593 output4588)).val
theorem output4594_def : output4594 = (.seq output4593 output4588) := by
  unfold output4594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4594_skip : Flapjack.WordAlloc.isSkip output4594 = false := by
  rw [output4594_def]
  conv => lhs; cbv
  try rfl
theorem node4594_eq : Flapjack.WordAlloc.removeDeadStructural input4594 value2298 value1 value2 = (output4594, value5, value1) := by
  rw [input4594_def, output4594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4588_eq]
  dsimp only
  rw [node4593_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4594 input4587)).val
theorem input4595_def : input4595 = (.seq input4594 input4587) := by
  unfold input4595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4594 output4587)).val
theorem output4595_def : output4595 = (.seq output4594 output4587) := by
  unfold output4595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4595_skip : Flapjack.WordAlloc.isSkip output4595 = false := by
  rw [output4595_def]
  conv => lhs; cbv
  try rfl
theorem node4595_eq : Flapjack.WordAlloc.removeDeadStructural input4595 value2296 value1 value2 = (output4595, value5, value1) := by
  rw [input4595_def, output4595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4587_eq]
  dsimp only
  rw [node4594_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2302 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20877 (Flapjack.WordLangAddr.addr 20881 0#64)))).val
theorem input4596_def : input4596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20877 (Flapjack.WordLangAddr.addr 20881 0#64))) := by
  unfold input4596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20877 (Flapjack.WordLangAddr.addr 20881 0#64)))).val
theorem output4596_def : output4596 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20877 (Flapjack.WordLangAddr.addr 20881 0#64))) := by
  unfold output4596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4596_skip : Flapjack.WordAlloc.isSkip output4596 = false := by
  rw [output4596_def]
  conv => lhs; cbv
  try rfl
theorem node4596_eq : Flapjack.WordAlloc.removeDeadStructural input4596 value5 value1 value2 = (output4596, value2302, value1) := by
  rw [input4596_def, output4596_def]
  try (conv => lhs; cbv)
  try rfl

def value2303 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20881, 20869)])).val
theorem input4597_def : input4597 = (Flapjack.WordLangProgHOL.move 0 [(20881, 20869)]) := by
  unfold input4597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(20881, 20869)])).val
theorem output4597_def : output4597 = (Flapjack.WordLangProgHOL.move 0 [(20881, 20869)]) := by
  unfold output4597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4597_skip : Flapjack.WordAlloc.isSkip output4597 = false := by
  rw [output4597_def]
  conv => lhs; cbv
  try rfl
theorem node4597_eq : Flapjack.WordAlloc.removeDeadStructural input4597 value2302 value1 value2 = (output4597, value2303, value1) := by
  rw [input4597_def, output4597_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4597 input4596)).val
theorem input4598_def : input4598 = (.seq input4597 input4596) := by
  unfold input4598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4597 output4596)).val
theorem output4598_def : output4598 = (.seq output4597 output4596) := by
  unfold output4598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4598_skip : Flapjack.WordAlloc.isSkip output4598 = false := by
  rw [output4598_def]
  conv => lhs; cbv
  try rfl
theorem node4598_eq : Flapjack.WordAlloc.removeDeadStructural input4598 value5 value1 value2 = (output4598, value2303, value1) := by
  rw [input4598_def, output4598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4596_eq]
  dsimp only
  rw [node4597_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2304 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20877 2861386368603331728#64))).val
theorem input4599_def : input4599 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20877 2861386368603331728#64)) := by
  unfold input4599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20877 2861386368603331728#64))).val
theorem output4599_def : output4599 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20877 2861386368603331728#64)) := by
  unfold output4599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4599_skip : Flapjack.WordAlloc.isSkip output4599 = false := by
  rw [output4599_def]
  conv => lhs; cbv
  try rfl
theorem node4599_eq : Flapjack.WordAlloc.removeDeadStructural input4599 value2303 value1 value2 = (output4599, value2304, value1) := by
  rw [input4599_def, output4599_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20873 2861386368603331728#64))).val
theorem input4600_def : input4600 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20873 2861386368603331728#64)) := by
  unfold input4600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4600_def : output4600 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4600_skip : Flapjack.WordAlloc.isSkip output4600 = true := by
  rw [output4600_def]
  conv => lhs; cbv
  try rfl
theorem node4600_eq : Flapjack.WordAlloc.removeDeadStructural input4600 value2304 value1 value2 = (output4600, value2304, value1) := by
  rw [input4600_def, output4600_def]
  try (conv => lhs; cbv)
  try rfl

def value2305 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20869 20861 (Flapjack.WordRegImm.reg 20865))))).val
theorem input4601_def : input4601 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20869 20861 (Flapjack.WordRegImm.reg 20865)))) := by
  unfold input4601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20869 20861 (Flapjack.WordRegImm.reg 20865))))).val
theorem output4601_def : output4601 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20869 20861 (Flapjack.WordRegImm.reg 20865)))) := by
  unfold output4601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4601_skip : Flapjack.WordAlloc.isSkip output4601 = false := by
  rw [output4601_def]
  conv => lhs; cbv
  try rfl
theorem node4601_eq : Flapjack.WordAlloc.removeDeadStructural input4601 value2304 value1 value2 = (output4601, value2305, value1) := by
  rw [input4601_def, output4601_def]
  try (conv => lhs; cbv)
  try rfl

def value2306 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20865 4832#64))).val
theorem input4602_def : input4602 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20865 4832#64)) := by
  unfold input4602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20865 4832#64))).val
theorem output4602_def : output4602 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20865 4832#64)) := by
  unfold output4602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4602_skip : Flapjack.WordAlloc.isSkip output4602 = false := by
  rw [output4602_def]
  conv => lhs; cbv
  try rfl
theorem node4602_eq : Flapjack.WordAlloc.removeDeadStructural input4602 value2305 value1 value2 = (output4602, value2306, value1) := by
  rw [input4602_def, output4602_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4602 input4601)).val
theorem input4603_def : input4603 = (.seq input4602 input4601) := by
  unfold input4603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4602 output4601)).val
theorem output4603_def : output4603 = (.seq output4602 output4601) := by
  unfold output4603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4603_skip : Flapjack.WordAlloc.isSkip output4603 = false := by
  rw [output4603_def]
  conv => lhs; cbv
  try rfl
theorem node4603_eq : Flapjack.WordAlloc.removeDeadStructural input4603 value2304 value1 value2 = (output4603, value2306, value1) := by
  rw [input4603_def, output4603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4601_eq]
  dsimp only
  rw [node4602_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2307 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20861 (Flapjack.WordLangAddr.addr 20857 18446744073709551104#64)))).val
theorem input4604_def : input4604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20861 (Flapjack.WordLangAddr.addr 20857 18446744073709551104#64))) := by
  unfold input4604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20861 (Flapjack.WordLangAddr.addr 20857 18446744073709551104#64)))).val
theorem output4604_def : output4604 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20861 (Flapjack.WordLangAddr.addr 20857 18446744073709551104#64))) := by
  unfold output4604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4604_skip : Flapjack.WordAlloc.isSkip output4604 = false := by
  rw [output4604_def]
  conv => lhs; cbv
  try rfl
theorem node4604_eq : Flapjack.WordAlloc.removeDeadStructural input4604 value2306 value1 value2 = (output4604, value2307, value1) := by
  rw [input4604_def, output4604_def]
  try (conv => lhs; cbv)
  try rfl

def value2308 : Flapjack.NumSet :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20857 20853)).val
theorem input4605_def : input4605 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20857 20853) := by
  unfold input4605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20857 20853)).val
theorem output4605_def : output4605 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 20857 20853) := by
  unfold output4605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4605_skip : Flapjack.WordAlloc.isSkip output4605 = false := by
  rw [output4605_def]
  conv => lhs; cbv
  try rfl
theorem node4605_eq : Flapjack.WordAlloc.removeDeadStructural input4605 value2307 value1 value2 = (output4605, value2308, value1) := by
  rw [input4605_def, output4605_def]
  try (conv => lhs; cbv)
  try rfl

def value2309 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20853 20849 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input4606_def : input4606 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20853 20849 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input4606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20853 20849 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output4606_def : output4606 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 20853 20849 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output4606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4606_skip : Flapjack.WordAlloc.isSkip output4606 = false := by
  rw [output4606_def]
  conv => lhs; cbv
  try rfl
theorem node4606_eq : Flapjack.WordAlloc.removeDeadStructural input4606 value2308 value1 value2 = (output4606, value2309, value1) := by
  rw [input4606_def, output4606_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20849 Flapjack.WordStore.heapLength)).val
theorem input4607_def : input4607 = (Flapjack.WordLangProgHOL.get 20849 Flapjack.WordStore.heapLength) := by
  unfold input4607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 20849 Flapjack.WordStore.heapLength)).val
theorem output4607_def : output4607 = (Flapjack.WordLangProgHOL.get 20849 Flapjack.WordStore.heapLength) := by
  unfold output4607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4607_skip : Flapjack.WordAlloc.isSkip output4607 = false := by
  rw [output4607_def]
  conv => lhs; cbv
  try rfl
theorem node4607_eq : Flapjack.WordAlloc.removeDeadStructural input4607 value2309 value1 value2 = (output4607, value5, value1) := by
  rw [input4607_def, output4607_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node4607_eq
end InitECandidate.Proofs.DeadStages713
