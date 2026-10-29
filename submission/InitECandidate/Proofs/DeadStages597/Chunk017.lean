import InitECandidate.Proofs.DeadStages597.Chunk016
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages597
@[irreducible, cbv_opaque] def input4352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4351 input4338)).val
theorem input4352_def : input4352 = (.seq input4351 input4338) := by
  unfold input4352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4351 output4338)).val
theorem output4352_def : output4352 = (.seq output4351 output4338) := by
  unfold output4352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4352_skip : Flapjack.WordAlloc.isSkip output4352 = false := by
  rw [output4352_def]
  conv => lhs; cbv
  try rfl
theorem node4352_eq : Flapjack.WordAlloc.removeDeadStructural input4352 value788 value1 value2 = (output4352, value790, value1) := by
  rw [input4352_def, output4352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4338_eq]
  try dsimp only
  rw [node4351_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4352 input4337)).val
theorem input4353_def : input4353 = (.seq input4352 input4337) := by
  unfold input4353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4352 output4337)).val
theorem output4353_def : output4353 = (.seq output4352 output4337) := by
  unfold output4353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4353_skip : Flapjack.WordAlloc.isSkip output4353 = false := by
  rw [output4353_def]
  conv => lhs; cbv
  try rfl
theorem node4353_eq : Flapjack.WordAlloc.removeDeadStructural input4353 value786 value1 value2 = (output4353, value790, value1) := by
  rw [input4353_def, output4353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4337_eq]
  try dsimp only
  rw [node4352_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4353 input4334)).val
theorem input4354_def : input4354 = (.seq input4353 input4334) := by
  unfold input4354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4353 output4334)).val
theorem output4354_def : output4354 = (.seq output4353 output4334) := by
  unfold output4354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4354_skip : Flapjack.WordAlloc.isSkip output4354 = false := by
  rw [output4354_def]
  conv => lhs; cbv
  try rfl
theorem node4354_eq : Flapjack.WordAlloc.removeDeadStructural input4354 value785 value1 value2 = (output4354, value790, value1) := by
  rw [input4354_def, output4354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4334_eq]
  try dsimp only
  rw [node4353_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2129, 2057)])).val
theorem input4355_def : input4355 = (Flapjack.WordLangProgHOL.move 2 [(2129, 2057)]) := by
  unfold input4355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4355_def : output4355 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4355_skip : Flapjack.WordAlloc.isSkip output4355 = true := by
  rw [output4355_def]
  conv => lhs; cbv
  try rfl
theorem node4355_eq : Flapjack.WordAlloc.removeDeadStructural input4355 value785 value1 value2 = (output4355, value785, value1) := by
  rw [input4355_def, output4355_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2125, 2065)])).val
theorem input4356_def : input4356 = (Flapjack.WordLangProgHOL.move 2 [(2125, 2065)]) := by
  unfold input4356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4356_def : output4356 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4356_skip : Flapjack.WordAlloc.isSkip output4356 = true := by
  rw [output4356_def]
  conv => lhs; cbv
  try rfl
theorem node4356_eq : Flapjack.WordAlloc.removeDeadStructural input4356 value785 value1 value2 = (output4356, value785, value1) := by
  rw [input4356_def, output4356_def]
  try (conv => lhs; cbv)
  try rfl

def value791 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2121, 2061)])).val
theorem input4357_def : input4357 = (Flapjack.WordLangProgHOL.move 2 [(2121, 2061)]) := by
  unfold input4357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2121, 2061)])).val
theorem output4357_def : output4357 = (Flapjack.WordLangProgHOL.move 2 [(2121, 2061)]) := by
  unfold output4357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4357_skip : Flapjack.WordAlloc.isSkip output4357 = false := by
  rw [output4357_def]
  conv => lhs; cbv
  try rfl
theorem node4357_eq : Flapjack.WordAlloc.removeDeadStructural input4357 value785 value1 value2 = (output4357, value791, value1) := by
  rw [input4357_def, output4357_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4358_def : input4358 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4358_def : output4358 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4358_skip : Flapjack.WordAlloc.isSkip output4358 = true := by
  rw [output4358_def]
  conv => lhs; cbv
  try rfl
theorem node4358_eq : Flapjack.WordAlloc.removeDeadStructural input4358 value791 value1 value2 = (output4358, value791, value1) := by
  rw [input4358_def, output4358_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4358 input4357)).val
theorem input4359_def : input4359 = (.seq input4358 input4357) := by
  unfold input4359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4357)).val
theorem output4359_def : output4359 = (output4357) := by
  unfold output4359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4359_skip : Flapjack.WordAlloc.isSkip output4359 = false := by
  rw [output4359_def]
  conv => lhs; cbv
  try rfl
theorem node4359_eq : Flapjack.WordAlloc.removeDeadStructural input4359 value785 value1 value2 = (output4359, value791, value1) := by
  rw [input4359_def, output4359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4357_eq]
  try dsimp only
  rw [node4358_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4359 input4356)).val
theorem input4360_def : input4360 = (.seq input4359 input4356) := by
  unfold input4360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4359)).val
theorem output4360_def : output4360 = (output4359) := by
  unfold output4360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4360_skip : Flapjack.WordAlloc.isSkip output4360 = false := by
  rw [output4360_def]
  conv => lhs; cbv
  try rfl
theorem node4360_eq : Flapjack.WordAlloc.removeDeadStructural input4360 value785 value1 value2 = (output4360, value791, value1) := by
  rw [input4360_def, output4360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4356_eq]
  try dsimp only
  rw [node4359_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4360 input4355)).val
theorem input4361_def : input4361 = (.seq input4360 input4355) := by
  unfold input4361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4360)).val
theorem output4361_def : output4361 = (output4360) := by
  unfold output4361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4361_skip : Flapjack.WordAlloc.isSkip output4361 = false := by
  rw [output4361_def]
  conv => lhs; cbv
  try rfl
theorem node4361_eq : Flapjack.WordAlloc.removeDeadStructural input4361 value785 value1 value2 = (output4361, value791, value1) := by
  rw [input4361_def, output4361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4355_eq]
  try dsimp only
  rw [node4360_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value792 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2117, 2037), (2113, 2061), (2109, 2029)])).val
theorem input4362_def : input4362 = (Flapjack.WordLangProgHOL.move 2 [(2117, 2037), (2113, 2061), (2109, 2029)]) := by
  unfold input4362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2117, 2037)])).val
theorem output4362_def : output4362 = (Flapjack.WordLangProgHOL.move 2 [(2117, 2037)]) := by
  unfold output4362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4362_skip : Flapjack.WordAlloc.isSkip output4362 = false := by
  rw [output4362_def]
  conv => lhs; cbv
  try rfl
theorem node4362_eq : Flapjack.WordAlloc.removeDeadStructural input4362 value791 value1 value2 = (output4362, value792, value1) := by
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
theorem node4363_eq : Flapjack.WordAlloc.removeDeadStructural input4363 value785 value1 value2 = (output4363, value792, value1) := by
  rw [input4363_def, output4363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4361_eq]
  try dsimp only
  rw [node4362_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4364_def : input4364 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4364_def : output4364 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4364_skip : Flapjack.WordAlloc.isSkip output4364 = true := by
  rw [output4364_def]
  conv => lhs; cbv
  try rfl
theorem node4364_eq : Flapjack.WordAlloc.removeDeadStructural input4364 value792 value1 value2 = (output4364, value792, value1) := by
  rw [input4364_def, output4364_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4364 input4363)).val
theorem input4365_def : input4365 = (.seq input4364 input4363) := by
  unfold input4365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4363)).val
theorem output4365_def : output4365 = (output4363) := by
  unfold output4365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4365_skip : Flapjack.WordAlloc.isSkip output4365 = false := by
  rw [output4365_def]
  conv => lhs; cbv
  try rfl
theorem node4365_eq : Flapjack.WordAlloc.removeDeadStructural input4365 value785 value1 value2 = (output4365, value792, value1) := by
  rw [input4365_def, output4365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4363_eq]
  try dsimp only
  rw [node4364_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value793 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 2065

def value794 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 2061 value793 input4354 input4365)).val
theorem input4366_def : input4366 = (.ite value15 2061 value793 input4354 input4365) := by
  unfold input4366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 2061 value793 output4354 output4365)).val
theorem output4366_def : output4366 = (.ite value15 2061 value793 output4354 output4365) := by
  unfold output4366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4366_skip : Flapjack.WordAlloc.isSkip output4366 = false := by
  rw [output4366_def]
  conv => lhs; cbv
  try rfl
theorem node4366_eq : Flapjack.WordAlloc.removeDeadStructural input4366 value785 value1 value2 = (output4366, value794, value1) := by
  rw [input4366_def, output4366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node4354_eq]
  try dsimp only
  rw [node4365_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4366 input4325)).val
theorem input4367_def : input4367 = (.seq input4366 input4325) := by
  unfold input4367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4366 output4325)).val
theorem output4367_def : output4367 = (.seq output4366 output4325) := by
  unfold output4367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4367_skip : Flapjack.WordAlloc.isSkip output4367 = false := by
  rw [output4367_def]
  conv => lhs; cbv
  try rfl
theorem node4367_eq : Flapjack.WordAlloc.removeDeadStructural input4367 value785 value1 value2 = (output4367, value794, value1) := by
  rw [input4367_def, output4367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4325_eq]
  try dsimp only
  rw [node4366_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2065 29#64))).val
theorem input4368_def : input4368 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2065 29#64)) := by
  unfold input4368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2065 29#64))).val
theorem output4368_def : output4368 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2065 29#64)) := by
  unfold output4368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4368_skip : Flapjack.WordAlloc.isSkip output4368 = false := by
  rw [output4368_def]
  conv => lhs; cbv
  try rfl
theorem node4368_eq : Flapjack.WordAlloc.removeDeadStructural input4368 value794 value1 value2 = (output4368, value792, value1) := by
  rw [input4368_def, output4368_def]
  try (conv => lhs; cbv)
  try rfl

def value795 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2061, 2041)])).val
theorem input4369_def : input4369 = (Flapjack.WordLangProgHOL.move 0 [(2061, 2041)]) := by
  unfold input4369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2061, 2041)])).val
theorem output4369_def : output4369 = (Flapjack.WordLangProgHOL.move 0 [(2061, 2041)]) := by
  unfold output4369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4369_skip : Flapjack.WordAlloc.isSkip output4369 = false := by
  rw [output4369_def]
  conv => lhs; cbv
  try rfl
theorem node4369_eq : Flapjack.WordAlloc.removeDeadStructural input4369 value792 value1 value2 = (output4369, value795, value1) := by
  rw [input4369_def, output4369_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4370_def : input4370 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4370_def : output4370 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4370_skip : Flapjack.WordAlloc.isSkip output4370 = false := by
  rw [output4370_def]
  conv => lhs; cbv
  try rfl
theorem node4370_eq : Flapjack.WordAlloc.removeDeadStructural input4370 value795 value1 value2 = (output4370, value795, value1) := by
  rw [input4370_def, output4370_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2057 0#64))).val
theorem input4371_def : input4371 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2057 0#64)) := by
  unfold input4371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4371_def : output4371 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4371_skip : Flapjack.WordAlloc.isSkip output4371 = true := by
  rw [output4371_def]
  conv => lhs; cbv
  try rfl
theorem node4371_eq : Flapjack.WordAlloc.removeDeadStructural input4371 value795 value1 value2 = (output4371, value795, value1) := by
  rw [input4371_def, output4371_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4372_def : input4372 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4372_def : output4372 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4372_skip : Flapjack.WordAlloc.isSkip output4372 = false := by
  rw [output4372_def]
  conv => lhs; cbv
  try rfl
theorem node4372_eq : Flapjack.WordAlloc.removeDeadStructural input4372 value795 value1 value2 = (output4372, value795, value1) := by
  rw [input4372_def, output4372_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2053 0#64))).val
theorem input4373_def : input4373 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2053 0#64)) := by
  unfold input4373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4373_def : output4373 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4373_skip : Flapjack.WordAlloc.isSkip output4373 = true := by
  rw [output4373_def]
  conv => lhs; cbv
  try rfl
theorem node4373_eq : Flapjack.WordAlloc.removeDeadStructural input4373 value795 value1 value2 = (output4373, value795, value1) := by
  rw [input4373_def, output4373_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4373 input4372)).val
theorem input4374_def : input4374 = (.seq input4373 input4372) := by
  unfold input4374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4372)).val
theorem output4374_def : output4374 = (output4372) := by
  unfold output4374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4374_skip : Flapjack.WordAlloc.isSkip output4374 = false := by
  rw [output4374_def]
  conv => lhs; cbv
  try rfl
theorem node4374_eq : Flapjack.WordAlloc.removeDeadStructural input4374 value795 value1 value2 = (output4374, value795, value1) := by
  rw [input4374_def, output4374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4372_eq]
  try dsimp only
  rw [node4373_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4374 input4371)).val
theorem input4375_def : input4375 = (.seq input4374 input4371) := by
  unfold input4375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4374)).val
theorem output4375_def : output4375 = (output4374) := by
  unfold output4375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4375_skip : Flapjack.WordAlloc.isSkip output4375 = false := by
  rw [output4375_def]
  conv => lhs; cbv
  try rfl
theorem node4375_eq : Flapjack.WordAlloc.removeDeadStructural input4375 value795 value1 value2 = (output4375, value795, value1) := by
  rw [input4375_def, output4375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4371_eq]
  try dsimp only
  rw [node4374_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2049 0#64))).val
theorem input4376_def : input4376 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2049 0#64)) := by
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
theorem node4376_eq : Flapjack.WordAlloc.removeDeadStructural input4376 value795 value1 value2 = (output4376, value795, value1) := by
  rw [input4376_def, output4376_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2045 0#64))).val
theorem input4377_def : input4377 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2045 0#64)) := by
  unfold input4377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4377_def : output4377 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4377_skip : Flapjack.WordAlloc.isSkip output4377 = true := by
  rw [output4377_def]
  conv => lhs; cbv
  try rfl
theorem node4377_eq : Flapjack.WordAlloc.removeDeadStructural input4377 value795 value1 value2 = (output4377, value795, value1) := by
  rw [input4377_def, output4377_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2041 0#64))).val
theorem input4378_def : input4378 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2041 0#64)) := by
  unfold input4378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2041 0#64))).val
theorem output4378_def : output4378 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2041 0#64)) := by
  unfold output4378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4378_skip : Flapjack.WordAlloc.isSkip output4378 = false := by
  rw [output4378_def]
  conv => lhs; cbv
  try rfl
theorem node4378_eq : Flapjack.WordAlloc.removeDeadStructural input4378 value795 value1 value2 = (output4378, value790, value1) := by
  rw [input4378_def, output4378_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4379_def : input4379 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4379_def : output4379 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4379_skip : Flapjack.WordAlloc.isSkip output4379 = true := by
  rw [output4379_def]
  conv => lhs; cbv
  try rfl
theorem node4379_eq : Flapjack.WordAlloc.removeDeadStructural input4379 value790 value1 value2 = (output4379, value790, value1) := by
  rw [input4379_def, output4379_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4379 input4378)).val
theorem input4380_def : input4380 = (.seq input4379 input4378) := by
  unfold input4380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4378)).val
theorem output4380_def : output4380 = (output4378) := by
  unfold output4380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4380_skip : Flapjack.WordAlloc.isSkip output4380 = false := by
  rw [output4380_def]
  conv => lhs; cbv
  try rfl
theorem node4380_eq : Flapjack.WordAlloc.removeDeadStructural input4380 value795 value1 value2 = (output4380, value790, value1) := by
  rw [input4380_def, output4380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4378_eq]
  try dsimp only
  rw [node4379_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4380 input4377)).val
theorem input4381_def : input4381 = (.seq input4380 input4377) := by
  unfold input4381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4380)).val
theorem output4381_def : output4381 = (output4380) := by
  unfold output4381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4381_skip : Flapjack.WordAlloc.isSkip output4381 = false := by
  rw [output4381_def]
  conv => lhs; cbv
  try rfl
theorem node4381_eq : Flapjack.WordAlloc.removeDeadStructural input4381 value795 value1 value2 = (output4381, value790, value1) := by
  rw [input4381_def, output4381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4377_eq]
  try dsimp only
  rw [node4380_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4381 input4376)).val
theorem input4382_def : input4382 = (.seq input4381 input4376) := by
  unfold input4382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4381)).val
theorem output4382_def : output4382 = (output4381) := by
  unfold output4382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4382_skip : Flapjack.WordAlloc.isSkip output4382 = false := by
  rw [output4382_def]
  conv => lhs; cbv
  try rfl
theorem node4382_eq : Flapjack.WordAlloc.removeDeadStructural input4382 value795 value1 value2 = (output4382, value790, value1) := by
  rw [input4382_def, output4382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4376_eq]
  try dsimp only
  rw [node4381_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value796 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2037, 2005), (2033, 2021), (2029, 2025)])).val
theorem input4383_def : input4383 = (Flapjack.WordLangProgHOL.move 1 [(2037, 2005), (2033, 2021), (2029, 2025)]) := by
  unfold input4383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2037, 2005)])).val
theorem output4383_def : output4383 = (Flapjack.WordLangProgHOL.move 1 [(2037, 2005)]) := by
  unfold output4383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4383_skip : Flapjack.WordAlloc.isSkip output4383 = false := by
  rw [output4383_def]
  conv => lhs; cbv
  try rfl
theorem node4383_eq : Flapjack.WordAlloc.removeDeadStructural input4383 value790 value1 value2 = (output4383, value796, value1) := by
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
theorem node4384_eq : Flapjack.WordAlloc.removeDeadStructural input4384 value795 value1 value2 = (output4384, value796, value1) := by
  rw [input4384_def, output4384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4382_eq]
  try dsimp only
  rw [node4383_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value797 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 2005 [2])).val
theorem input4385_def : input4385 = (Flapjack.WordLangProgHOL.return 2005 [2]) := by
  unfold input4385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 2005 [2])).val
theorem output4385_def : output4385 = (Flapjack.WordLangProgHOL.return 2005 [2]) := by
  unfold output4385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4385_skip : Flapjack.WordAlloc.isSkip output4385 = false := by
  rw [output4385_def]
  conv => lhs; cbv
  try rfl
theorem node4385_eq : Flapjack.WordAlloc.removeDeadStructural input4385 value796 value1 value2 = (output4385, value797, value1) := by
  rw [input4385_def, output4385_def]
  try (conv => lhs; cbv)
  try rfl

def value798 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 2025)])).val
theorem input4386_def : input4386 = (Flapjack.WordLangProgHOL.move 0 [(2, 2025)]) := by
  unfold input4386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 2025)])).val
theorem output4386_def : output4386 = (Flapjack.WordLangProgHOL.move 0 [(2, 2025)]) := by
  unfold output4386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4386_skip : Flapjack.WordAlloc.isSkip output4386 = false := by
  rw [output4386_def]
  conv => lhs; cbv
  try rfl
theorem node4386_eq : Flapjack.WordAlloc.removeDeadStructural input4386 value797 value1 value2 = (output4386, value798, value1) := by
  rw [input4386_def, output4386_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4386 input4385)).val
theorem input4387_def : input4387 = (.seq input4386 input4385) := by
  unfold input4387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4386 output4385)).val
theorem output4387_def : output4387 = (.seq output4386 output4385) := by
  unfold output4387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4387_skip : Flapjack.WordAlloc.isSkip output4387 = false := by
  rw [output4387_def]
  conv => lhs; cbv
  try rfl
theorem node4387_eq : Flapjack.WordAlloc.removeDeadStructural input4387 value796 value1 value2 = (output4387, value798, value1) := by
  rw [input4387_def, output4387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4385_eq]
  try dsimp only
  rw [node4386_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2025 0#64))).val
theorem input4388_def : input4388 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2025 0#64)) := by
  unfold input4388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2025 0#64))).val
theorem output4388_def : output4388 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2025 0#64)) := by
  unfold output4388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4388_skip : Flapjack.WordAlloc.isSkip output4388 = false := by
  rw [output4388_def]
  conv => lhs; cbv
  try rfl
theorem node4388_eq : Flapjack.WordAlloc.removeDeadStructural input4388 value798 value1 value2 = (output4388, value796, value1) := by
  rw [input4388_def, output4388_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4389_def : input4389 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4389_def : output4389 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4389_skip : Flapjack.WordAlloc.isSkip output4389 = false := by
  rw [output4389_def]
  conv => lhs; cbv
  try rfl
theorem node4389_eq : Flapjack.WordAlloc.removeDeadStructural input4389 value796 value1 value2 = (output4389, value796, value1) := by
  rw [input4389_def, output4389_def]
  try (conv => lhs; cbv)
  try rfl

def value799 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input4390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(2005, 1999)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2009, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(2017, 2009)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2021 0#64)))),
      597, 50))
  (some 522) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(2005, 1999)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2013, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 2013)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2017 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(2021, 2013)]))),
      597, 51)))).val
theorem input4390_def : input4390 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(2005, 1999)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2009, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(2017, 2009)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2021 0#64)))),
      597, 50))
  (some 522) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(2005, 1999)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2013, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 2013)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2017 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(2021, 2013)]))),
      597, 51))) := by
  unfold input4390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(2005, 1999)], 597, 50))
  (some 522) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(2005, 1999)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2013, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 2013)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 51)))).val
theorem output4390_def : output4390 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(2005, 1999)], 597, 50))
  (some 522) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(2005, 1999)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2013, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 2013)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 51))) := by
  unfold output4390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4390_skip : Flapjack.WordAlloc.isSkip output4390 = false := by
  rw [output4390_def]
  conv => lhs; cbv
  try rfl
theorem node4390_eq : Flapjack.WordAlloc.removeDeadStructural input4390 value796 value1 value2 = (output4390, value799, value1) := by
  rw [input4390_def, output4390_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input4391_def : input4391 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input4391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4391_def : output4391 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4391_skip : Flapjack.WordAlloc.isSkip output4391 = true := by
  rw [output4391_def]
  conv => lhs; cbv
  try rfl
theorem node4391_eq : Flapjack.WordAlloc.removeDeadStructural input4391 value799 value1 value2 = (output4391, value799, value1) := by
  rw [input4391_def, output4391_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4391 input4390)).val
theorem input4392_def : input4392 = (.seq input4391 input4390) := by
  unfold input4392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4390)).val
theorem output4392_def : output4392 = (output4390) := by
  unfold output4392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4392_skip : Flapjack.WordAlloc.isSkip output4392 = false := by
  rw [output4392_def]
  conv => lhs; cbv
  try rfl
theorem node4392_eq : Flapjack.WordAlloc.removeDeadStructural input4392 value796 value1 value2 = (output4392, value799, value1) := by
  rw [input4392_def, output4392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4390_eq]
  try dsimp only
  rw [node4391_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value800 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1999, 1957)])).val
theorem input4393_def : input4393 = (Flapjack.WordLangProgHOL.move 0 [(1999, 1957)]) := by
  unfold input4393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1999, 1957)])).val
theorem output4393_def : output4393 = (Flapjack.WordLangProgHOL.move 0 [(1999, 1957)]) := by
  unfold output4393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4393_skip : Flapjack.WordAlloc.isSkip output4393 = false := by
  rw [output4393_def]
  conv => lhs; cbv
  try rfl
theorem node4393_eq : Flapjack.WordAlloc.removeDeadStructural input4393 value799 value1 value2 = (output4393, value800, value1) := by
  rw [input4393_def, output4393_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4393 input4392)).val
theorem input4394_def : input4394 = (.seq input4393 input4392) := by
  unfold input4394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4393 output4392)).val
theorem output4394_def : output4394 = (.seq output4393 output4392) := by
  unfold output4394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4394_skip : Flapjack.WordAlloc.isSkip output4394 = false := by
  rw [output4394_def]
  conv => lhs; cbv
  try rfl
theorem node4394_eq : Flapjack.WordAlloc.removeDeadStructural input4394 value796 value1 value2 = (output4394, value800, value1) := by
  rw [input4394_def, output4394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4392_eq]
  try dsimp only
  rw [node4393_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1993 1#64))).val
theorem input4395_def : input4395 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1993 1#64)) := by
  unfold input4395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4395_def : output4395 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4395_skip : Flapjack.WordAlloc.isSkip output4395 = true := by
  rw [output4395_def]
  conv => lhs; cbv
  try rfl
theorem node4395_eq : Flapjack.WordAlloc.removeDeadStructural input4395 value800 value1 value2 = (output4395, value800, value1) := by
  rw [input4395_def, output4395_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4396_def : input4396 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4396_def : output4396 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4396_skip : Flapjack.WordAlloc.isSkip output4396 = false := by
  rw [output4396_def]
  conv => lhs; cbv
  try rfl
theorem node4396_eq : Flapjack.WordAlloc.removeDeadStructural input4396 value800 value1 value2 = (output4396, value800, value1) := by
  rw [input4396_def, output4396_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1989 1#64))).val
theorem input4397_def : input4397 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1989 1#64)) := by
  unfold input4397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4397_def : output4397 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4397_skip : Flapjack.WordAlloc.isSkip output4397 = true := by
  rw [output4397_def]
  conv => lhs; cbv
  try rfl
theorem node4397_eq : Flapjack.WordAlloc.removeDeadStructural input4397 value800 value1 value2 = (output4397, value800, value1) := by
  rw [input4397_def, output4397_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4397 input4396)).val
theorem input4398_def : input4398 = (.seq input4397 input4396) := by
  unfold input4398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4396)).val
theorem output4398_def : output4398 = (output4396) := by
  unfold output4398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4398_skip : Flapjack.WordAlloc.isSkip output4398 = false := by
  rw [output4398_def]
  conv => lhs; cbv
  try rfl
theorem node4398_eq : Flapjack.WordAlloc.removeDeadStructural input4398 value800 value1 value2 = (output4398, value800, value1) := by
  rw [input4398_def, output4398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4396_eq]
  try dsimp only
  rw [node4397_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4398 input4395)).val
theorem input4399_def : input4399 = (.seq input4398 input4395) := by
  unfold input4399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4398)).val
theorem output4399_def : output4399 = (output4398) := by
  unfold output4399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4399_skip : Flapjack.WordAlloc.isSkip output4399 = false := by
  rw [output4399_def]
  conv => lhs; cbv
  try rfl
theorem node4399_eq : Flapjack.WordAlloc.removeDeadStructural input4399 value800 value1 value2 = (output4399, value800, value1) := by
  rw [input4399_def, output4399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4395_eq]
  try dsimp only
  rw [node4398_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4399 input4394)).val
theorem input4400_def : input4400 = (.seq input4399 input4394) := by
  unfold input4400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4399 output4394)).val
theorem output4400_def : output4400 = (.seq output4399 output4394) := by
  unfold output4400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4400_skip : Flapjack.WordAlloc.isSkip output4400 = false := by
  rw [output4400_def]
  conv => lhs; cbv
  try rfl
theorem node4400_eq : Flapjack.WordAlloc.removeDeadStructural input4400 value796 value1 value2 = (output4400, value800, value1) := by
  rw [input4400_def, output4400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4394_eq]
  try dsimp only
  rw [node4399_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4400 input4389)).val
theorem input4401_def : input4401 = (.seq input4400 input4389) := by
  unfold input4401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4400 output4389)).val
theorem output4401_def : output4401 = (.seq output4400 output4389) := by
  unfold output4401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4401_skip : Flapjack.WordAlloc.isSkip output4401 = false := by
  rw [output4401_def]
  conv => lhs; cbv
  try rfl
theorem node4401_eq : Flapjack.WordAlloc.removeDeadStructural input4401 value796 value1 value2 = (output4401, value800, value1) := by
  rw [input4401_def, output4401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4389_eq]
  try dsimp only
  rw [node4400_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4401 input4388)).val
theorem input4402_def : input4402 = (.seq input4401 input4388) := by
  unfold input4402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4401 output4388)).val
theorem output4402_def : output4402 = (.seq output4401 output4388) := by
  unfold output4402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4402_skip : Flapjack.WordAlloc.isSkip output4402 = false := by
  rw [output4402_def]
  conv => lhs; cbv
  try rfl
theorem node4402_eq : Flapjack.WordAlloc.removeDeadStructural input4402 value798 value1 value2 = (output4402, value800, value1) := by
  rw [input4402_def, output4402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4388_eq]
  try dsimp only
  rw [node4401_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4402 input4387)).val
theorem input4403_def : input4403 = (.seq input4402 input4387) := by
  unfold input4403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4402 output4387)).val
theorem output4403_def : output4403 = (.seq output4402 output4387) := by
  unfold output4403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4403_skip : Flapjack.WordAlloc.isSkip output4403 = false := by
  rw [output4403_def]
  conv => lhs; cbv
  try rfl
theorem node4403_eq : Flapjack.WordAlloc.removeDeadStructural input4403 value796 value1 value2 = (output4403, value800, value1) := by
  rw [input4403_def, output4403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4387_eq]
  try dsimp only
  rw [node4402_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4403 input4384)).val
theorem input4404_def : input4404 = (.seq input4403 input4384) := by
  unfold input4404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4403 output4384)).val
theorem output4404_def : output4404 = (.seq output4403 output4384) := by
  unfold output4404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4404_skip : Flapjack.WordAlloc.isSkip output4404 = false := by
  rw [output4404_def]
  conv => lhs; cbv
  try rfl
theorem node4404_eq : Flapjack.WordAlloc.removeDeadStructural input4404 value795 value1 value2 = (output4404, value800, value1) := by
  rw [input4404_def, output4404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4384_eq]
  try dsimp only
  rw [node4403_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2049, 1977)])).val
theorem input4405_def : input4405 = (Flapjack.WordLangProgHOL.move 2 [(2049, 1977)]) := by
  unfold input4405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4405_def : output4405 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4405_skip : Flapjack.WordAlloc.isSkip output4405 = true := by
  rw [output4405_def]
  conv => lhs; cbv
  try rfl
theorem node4405_eq : Flapjack.WordAlloc.removeDeadStructural input4405 value795 value1 value2 = (output4405, value795, value1) := by
  rw [input4405_def, output4405_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2045, 1985)])).val
theorem input4406_def : input4406 = (Flapjack.WordLangProgHOL.move 2 [(2045, 1985)]) := by
  unfold input4406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4406_def : output4406 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4406_skip : Flapjack.WordAlloc.isSkip output4406 = true := by
  rw [output4406_def]
  conv => lhs; cbv
  try rfl
theorem node4406_eq : Flapjack.WordAlloc.removeDeadStructural input4406 value795 value1 value2 = (output4406, value795, value1) := by
  rw [input4406_def, output4406_def]
  try (conv => lhs; cbv)
  try rfl

def value801 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2041, 1981)])).val
theorem input4407_def : input4407 = (Flapjack.WordLangProgHOL.move 2 [(2041, 1981)]) := by
  unfold input4407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2041, 1981)])).val
theorem output4407_def : output4407 = (Flapjack.WordLangProgHOL.move 2 [(2041, 1981)]) := by
  unfold output4407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4407_skip : Flapjack.WordAlloc.isSkip output4407 = false := by
  rw [output4407_def]
  conv => lhs; cbv
  try rfl
theorem node4407_eq : Flapjack.WordAlloc.removeDeadStructural input4407 value795 value1 value2 = (output4407, value801, value1) := by
  rw [input4407_def, output4407_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4408_def : input4408 = (Flapjack.WordLangProgHOL.skip) := by
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
theorem node4408_eq : Flapjack.WordAlloc.removeDeadStructural input4408 value801 value1 value2 = (output4408, value801, value1) := by
  rw [input4408_def, output4408_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4408 input4407)).val
theorem input4409_def : input4409 = (.seq input4408 input4407) := by
  unfold input4409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4407)).val
theorem output4409_def : output4409 = (output4407) := by
  unfold output4409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4409_skip : Flapjack.WordAlloc.isSkip output4409 = false := by
  rw [output4409_def]
  conv => lhs; cbv
  try rfl
theorem node4409_eq : Flapjack.WordAlloc.removeDeadStructural input4409 value795 value1 value2 = (output4409, value801, value1) := by
  rw [input4409_def, output4409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4407_eq]
  try dsimp only
  rw [node4408_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4409 input4406)).val
theorem input4410_def : input4410 = (.seq input4409 input4406) := by
  unfold input4410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4409)).val
theorem output4410_def : output4410 = (output4409) := by
  unfold output4410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4410_skip : Flapjack.WordAlloc.isSkip output4410 = false := by
  rw [output4410_def]
  conv => lhs; cbv
  try rfl
theorem node4410_eq : Flapjack.WordAlloc.removeDeadStructural input4410 value795 value1 value2 = (output4410, value801, value1) := by
  rw [input4410_def, output4410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4406_eq]
  try dsimp only
  rw [node4409_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4410 input4405)).val
theorem input4411_def : input4411 = (.seq input4410 input4405) := by
  unfold input4411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4410)).val
theorem output4411_def : output4411 = (output4410) := by
  unfold output4411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4411_skip : Flapjack.WordAlloc.isSkip output4411 = false := by
  rw [output4411_def]
  conv => lhs; cbv
  try rfl
theorem node4411_eq : Flapjack.WordAlloc.removeDeadStructural input4411 value795 value1 value2 = (output4411, value801, value1) := by
  rw [input4411_def, output4411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4405_eq]
  try dsimp only
  rw [node4410_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value802 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2037, 1957), (2033, 1981), (2029, 1949)])).val
theorem input4412_def : input4412 = (Flapjack.WordLangProgHOL.move 2 [(2037, 1957), (2033, 1981), (2029, 1949)]) := by
  unfold input4412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2037, 1957)])).val
theorem output4412_def : output4412 = (Flapjack.WordLangProgHOL.move 2 [(2037, 1957)]) := by
  unfold output4412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4412_skip : Flapjack.WordAlloc.isSkip output4412 = false := by
  rw [output4412_def]
  conv => lhs; cbv
  try rfl
theorem node4412_eq : Flapjack.WordAlloc.removeDeadStructural input4412 value801 value1 value2 = (output4412, value802, value1) := by
  rw [input4412_def, output4412_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4412 input4411)).val
theorem input4413_def : input4413 = (.seq input4412 input4411) := by
  unfold input4413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4412 output4411)).val
theorem output4413_def : output4413 = (.seq output4412 output4411) := by
  unfold output4413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4413_skip : Flapjack.WordAlloc.isSkip output4413 = false := by
  rw [output4413_def]
  conv => lhs; cbv
  try rfl
theorem node4413_eq : Flapjack.WordAlloc.removeDeadStructural input4413 value795 value1 value2 = (output4413, value802, value1) := by
  rw [input4413_def, output4413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4411_eq]
  try dsimp only
  rw [node4412_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4414_def : input4414 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4414_def : output4414 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4414_skip : Flapjack.WordAlloc.isSkip output4414 = true := by
  rw [output4414_def]
  conv => lhs; cbv
  try rfl
theorem node4414_eq : Flapjack.WordAlloc.removeDeadStructural input4414 value802 value1 value2 = (output4414, value802, value1) := by
  rw [input4414_def, output4414_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4414 input4413)).val
theorem input4415_def : input4415 = (.seq input4414 input4413) := by
  unfold input4415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4413)).val
theorem output4415_def : output4415 = (output4413) := by
  unfold output4415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4415_skip : Flapjack.WordAlloc.isSkip output4415 = false := by
  rw [output4415_def]
  conv => lhs; cbv
  try rfl
theorem node4415_eq : Flapjack.WordAlloc.removeDeadStructural input4415 value795 value1 value2 = (output4415, value802, value1) := by
  rw [input4415_def, output4415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4413_eq]
  try dsimp only
  rw [node4414_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value803 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 1985

def value804 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1981 value803 input4404 input4415)).val
theorem input4416_def : input4416 = (.ite value15 1981 value803 input4404 input4415) := by
  unfold input4416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1981 value803 output4404 output4415)).val
theorem output4416_def : output4416 = (.ite value15 1981 value803 output4404 output4415) := by
  unfold output4416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4416_skip : Flapjack.WordAlloc.isSkip output4416 = false := by
  rw [output4416_def]
  conv => lhs; cbv
  try rfl
theorem node4416_eq : Flapjack.WordAlloc.removeDeadStructural input4416 value795 value1 value2 = (output4416, value804, value1) := by
  rw [input4416_def, output4416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node4404_eq]
  try dsimp only
  rw [node4415_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4416 input4375)).val
theorem input4417_def : input4417 = (.seq input4416 input4375) := by
  unfold input4417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4416 output4375)).val
theorem output4417_def : output4417 = (.seq output4416 output4375) := by
  unfold output4417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4417_skip : Flapjack.WordAlloc.isSkip output4417 = false := by
  rw [output4417_def]
  conv => lhs; cbv
  try rfl
theorem node4417_eq : Flapjack.WordAlloc.removeDeadStructural input4417 value795 value1 value2 = (output4417, value804, value1) := by
  rw [input4417_def, output4417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4375_eq]
  try dsimp only
  rw [node4416_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1985 28#64))).val
theorem input4418_def : input4418 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1985 28#64)) := by
  unfold input4418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1985 28#64))).val
theorem output4418_def : output4418 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1985 28#64)) := by
  unfold output4418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4418_skip : Flapjack.WordAlloc.isSkip output4418 = false := by
  rw [output4418_def]
  conv => lhs; cbv
  try rfl
theorem node4418_eq : Flapjack.WordAlloc.removeDeadStructural input4418 value804 value1 value2 = (output4418, value802, value1) := by
  rw [input4418_def, output4418_def]
  try (conv => lhs; cbv)
  try rfl

def value805 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1981, 1961)])).val
theorem input4419_def : input4419 = (Flapjack.WordLangProgHOL.move 0 [(1981, 1961)]) := by
  unfold input4419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1981, 1961)])).val
theorem output4419_def : output4419 = (Flapjack.WordLangProgHOL.move 0 [(1981, 1961)]) := by
  unfold output4419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4419_skip : Flapjack.WordAlloc.isSkip output4419 = false := by
  rw [output4419_def]
  conv => lhs; cbv
  try rfl
theorem node4419_eq : Flapjack.WordAlloc.removeDeadStructural input4419 value802 value1 value2 = (output4419, value805, value1) := by
  rw [input4419_def, output4419_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4420_def : input4420 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4420_def : output4420 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4420_skip : Flapjack.WordAlloc.isSkip output4420 = false := by
  rw [output4420_def]
  conv => lhs; cbv
  try rfl
theorem node4420_eq : Flapjack.WordAlloc.removeDeadStructural input4420 value805 value1 value2 = (output4420, value805, value1) := by
  rw [input4420_def, output4420_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1977 0#64))).val
theorem input4421_def : input4421 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1977 0#64)) := by
  unfold input4421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4421_def : output4421 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4421_skip : Flapjack.WordAlloc.isSkip output4421 = true := by
  rw [output4421_def]
  conv => lhs; cbv
  try rfl
theorem node4421_eq : Flapjack.WordAlloc.removeDeadStructural input4421 value805 value1 value2 = (output4421, value805, value1) := by
  rw [input4421_def, output4421_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4422_def : input4422 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4422_def : output4422 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4422_skip : Flapjack.WordAlloc.isSkip output4422 = false := by
  rw [output4422_def]
  conv => lhs; cbv
  try rfl
theorem node4422_eq : Flapjack.WordAlloc.removeDeadStructural input4422 value805 value1 value2 = (output4422, value805, value1) := by
  rw [input4422_def, output4422_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1973 0#64))).val
theorem input4423_def : input4423 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1973 0#64)) := by
  unfold input4423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4423_def : output4423 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4423_skip : Flapjack.WordAlloc.isSkip output4423 = true := by
  rw [output4423_def]
  conv => lhs; cbv
  try rfl
theorem node4423_eq : Flapjack.WordAlloc.removeDeadStructural input4423 value805 value1 value2 = (output4423, value805, value1) := by
  rw [input4423_def, output4423_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4423 input4422)).val
theorem input4424_def : input4424 = (.seq input4423 input4422) := by
  unfold input4424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4422)).val
theorem output4424_def : output4424 = (output4422) := by
  unfold output4424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4424_skip : Flapjack.WordAlloc.isSkip output4424 = false := by
  rw [output4424_def]
  conv => lhs; cbv
  try rfl
theorem node4424_eq : Flapjack.WordAlloc.removeDeadStructural input4424 value805 value1 value2 = (output4424, value805, value1) := by
  rw [input4424_def, output4424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4422_eq]
  try dsimp only
  rw [node4423_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4424 input4421)).val
theorem input4425_def : input4425 = (.seq input4424 input4421) := by
  unfold input4425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4424)).val
theorem output4425_def : output4425 = (output4424) := by
  unfold output4425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4425_skip : Flapjack.WordAlloc.isSkip output4425 = false := by
  rw [output4425_def]
  conv => lhs; cbv
  try rfl
theorem node4425_eq : Flapjack.WordAlloc.removeDeadStructural input4425 value805 value1 value2 = (output4425, value805, value1) := by
  rw [input4425_def, output4425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4421_eq]
  try dsimp only
  rw [node4424_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1969 0#64))).val
theorem input4426_def : input4426 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1969 0#64)) := by
  unfold input4426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4426_def : output4426 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4426_skip : Flapjack.WordAlloc.isSkip output4426 = true := by
  rw [output4426_def]
  conv => lhs; cbv
  try rfl
theorem node4426_eq : Flapjack.WordAlloc.removeDeadStructural input4426 value805 value1 value2 = (output4426, value805, value1) := by
  rw [input4426_def, output4426_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1965 0#64))).val
theorem input4427_def : input4427 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1965 0#64)) := by
  unfold input4427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4427_def : output4427 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4427_skip : Flapjack.WordAlloc.isSkip output4427 = true := by
  rw [output4427_def]
  conv => lhs; cbv
  try rfl
theorem node4427_eq : Flapjack.WordAlloc.removeDeadStructural input4427 value805 value1 value2 = (output4427, value805, value1) := by
  rw [input4427_def, output4427_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1961 0#64))).val
theorem input4428_def : input4428 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1961 0#64)) := by
  unfold input4428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1961 0#64))).val
theorem output4428_def : output4428 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1961 0#64)) := by
  unfold output4428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4428_skip : Flapjack.WordAlloc.isSkip output4428 = false := by
  rw [output4428_def]
  conv => lhs; cbv
  try rfl
theorem node4428_eq : Flapjack.WordAlloc.removeDeadStructural input4428 value805 value1 value2 = (output4428, value800, value1) := by
  rw [input4428_def, output4428_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4429_def : input4429 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4429_def : output4429 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4429_skip : Flapjack.WordAlloc.isSkip output4429 = true := by
  rw [output4429_def]
  conv => lhs; cbv
  try rfl
theorem node4429_eq : Flapjack.WordAlloc.removeDeadStructural input4429 value800 value1 value2 = (output4429, value800, value1) := by
  rw [input4429_def, output4429_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4429 input4428)).val
theorem input4430_def : input4430 = (.seq input4429 input4428) := by
  unfold input4430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4428)).val
theorem output4430_def : output4430 = (output4428) := by
  unfold output4430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4430_skip : Flapjack.WordAlloc.isSkip output4430 = false := by
  rw [output4430_def]
  conv => lhs; cbv
  try rfl
theorem node4430_eq : Flapjack.WordAlloc.removeDeadStructural input4430 value805 value1 value2 = (output4430, value800, value1) := by
  rw [input4430_def, output4430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4428_eq]
  try dsimp only
  rw [node4429_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4430 input4427)).val
theorem input4431_def : input4431 = (.seq input4430 input4427) := by
  unfold input4431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4430)).val
theorem output4431_def : output4431 = (output4430) := by
  unfold output4431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4431_skip : Flapjack.WordAlloc.isSkip output4431 = false := by
  rw [output4431_def]
  conv => lhs; cbv
  try rfl
theorem node4431_eq : Flapjack.WordAlloc.removeDeadStructural input4431 value805 value1 value2 = (output4431, value800, value1) := by
  rw [input4431_def, output4431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4427_eq]
  try dsimp only
  rw [node4430_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4431 input4426)).val
theorem input4432_def : input4432 = (.seq input4431 input4426) := by
  unfold input4432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4431)).val
theorem output4432_def : output4432 = (output4431) := by
  unfold output4432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4432_skip : Flapjack.WordAlloc.isSkip output4432 = false := by
  rw [output4432_def]
  conv => lhs; cbv
  try rfl
theorem node4432_eq : Flapjack.WordAlloc.removeDeadStructural input4432 value805 value1 value2 = (output4432, value800, value1) := by
  rw [input4432_def, output4432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4426_eq]
  try dsimp only
  rw [node4431_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value806 : Flapjack.NumSet :=
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
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1957, 1925), (1953, 1941), (1949, 1945)])).val
theorem input4433_def : input4433 = (Flapjack.WordLangProgHOL.move 1 [(1957, 1925), (1953, 1941), (1949, 1945)]) := by
  unfold input4433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1957, 1925)])).val
theorem output4433_def : output4433 = (Flapjack.WordLangProgHOL.move 1 [(1957, 1925)]) := by
  unfold output4433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4433_skip : Flapjack.WordAlloc.isSkip output4433 = false := by
  rw [output4433_def]
  conv => lhs; cbv
  try rfl
theorem node4433_eq : Flapjack.WordAlloc.removeDeadStructural input4433 value800 value1 value2 = (output4433, value806, value1) := by
  rw [input4433_def, output4433_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4433 input4432)).val
theorem input4434_def : input4434 = (.seq input4433 input4432) := by
  unfold input4434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4433 output4432)).val
theorem output4434_def : output4434 = (.seq output4433 output4432) := by
  unfold output4434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4434_skip : Flapjack.WordAlloc.isSkip output4434 = false := by
  rw [output4434_def]
  conv => lhs; cbv
  try rfl
theorem node4434_eq : Flapjack.WordAlloc.removeDeadStructural input4434 value805 value1 value2 = (output4434, value806, value1) := by
  rw [input4434_def, output4434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4432_eq]
  try dsimp only
  rw [node4433_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value807 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1925 [2])).val
theorem input4435_def : input4435 = (Flapjack.WordLangProgHOL.return 1925 [2]) := by
  unfold input4435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1925 [2])).val
theorem output4435_def : output4435 = (Flapjack.WordLangProgHOL.return 1925 [2]) := by
  unfold output4435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4435_skip : Flapjack.WordAlloc.isSkip output4435 = false := by
  rw [output4435_def]
  conv => lhs; cbv
  try rfl
theorem node4435_eq : Flapjack.WordAlloc.removeDeadStructural input4435 value806 value1 value2 = (output4435, value807, value1) := by
  rw [input4435_def, output4435_def]
  try (conv => lhs; cbv)
  try rfl

def value808 : Flapjack.NumSet :=
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
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1945)])).val
theorem input4436_def : input4436 = (Flapjack.WordLangProgHOL.move 0 [(2, 1945)]) := by
  unfold input4436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1945)])).val
theorem output4436_def : output4436 = (Flapjack.WordLangProgHOL.move 0 [(2, 1945)]) := by
  unfold output4436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4436_skip : Flapjack.WordAlloc.isSkip output4436 = false := by
  rw [output4436_def]
  conv => lhs; cbv
  try rfl
theorem node4436_eq : Flapjack.WordAlloc.removeDeadStructural input4436 value807 value1 value2 = (output4436, value808, value1) := by
  rw [input4436_def, output4436_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4436 input4435)).val
theorem input4437_def : input4437 = (.seq input4436 input4435) := by
  unfold input4437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4436 output4435)).val
theorem output4437_def : output4437 = (.seq output4436 output4435) := by
  unfold output4437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4437_skip : Flapjack.WordAlloc.isSkip output4437 = false := by
  rw [output4437_def]
  conv => lhs; cbv
  try rfl
theorem node4437_eq : Flapjack.WordAlloc.removeDeadStructural input4437 value806 value1 value2 = (output4437, value808, value1) := by
  rw [input4437_def, output4437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4435_eq]
  try dsimp only
  rw [node4436_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1945 0#64))).val
theorem input4438_def : input4438 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1945 0#64)) := by
  unfold input4438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1945 0#64))).val
theorem output4438_def : output4438 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1945 0#64)) := by
  unfold output4438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4438_skip : Flapjack.WordAlloc.isSkip output4438 = false := by
  rw [output4438_def]
  conv => lhs; cbv
  try rfl
theorem node4438_eq : Flapjack.WordAlloc.removeDeadStructural input4438 value808 value1 value2 = (output4438, value806, value1) := by
  rw [input4438_def, output4438_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4439_def : input4439 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4439_def : output4439 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4439_skip : Flapjack.WordAlloc.isSkip output4439 = false := by
  rw [output4439_def]
  conv => lhs; cbv
  try rfl
theorem node4439_eq : Flapjack.WordAlloc.removeDeadStructural input4439 value806 value1 value2 = (output4439, value806, value1) := by
  rw [input4439_def, output4439_def]
  try (conv => lhs; cbv)
  try rfl

def value809 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))))

@[irreducible, cbv_opaque] def input4440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1925, 1919)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1929, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1937, 1929)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1941 0#64)))),
      597, 48))
  (some 521) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1925, 1919)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1933, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1933)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1937 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1941, 1933)]))),
      597, 49)))).val
theorem input4440_def : input4440 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1925, 1919)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1929, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1937, 1929)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1941 0#64)))),
      597, 48))
  (some 521) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1925, 1919)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1933, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1933)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1937 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1941, 1933)]))),
      597, 49))) := by
  unfold input4440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1925, 1919)], 597, 48))
  (some 521) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1925, 1919)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1933, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1933)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 49)))).val
theorem output4440_def : output4440 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1925, 1919)], 597, 48))
  (some 521) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1925, 1919)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1933, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1933)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 49))) := by
  unfold output4440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4440_skip : Flapjack.WordAlloc.isSkip output4440 = false := by
  rw [output4440_def]
  conv => lhs; cbv
  try rfl
theorem node4440_eq : Flapjack.WordAlloc.removeDeadStructural input4440 value806 value1 value2 = (output4440, value809, value1) := by
  rw [input4440_def, output4440_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input4441_def : input4441 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input4441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4441_def : output4441 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4441_skip : Flapjack.WordAlloc.isSkip output4441 = true := by
  rw [output4441_def]
  conv => lhs; cbv
  try rfl
theorem node4441_eq : Flapjack.WordAlloc.removeDeadStructural input4441 value809 value1 value2 = (output4441, value809, value1) := by
  rw [input4441_def, output4441_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4441 input4440)).val
theorem input4442_def : input4442 = (.seq input4441 input4440) := by
  unfold input4442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4440)).val
theorem output4442_def : output4442 = (output4440) := by
  unfold output4442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4442_skip : Flapjack.WordAlloc.isSkip output4442 = false := by
  rw [output4442_def]
  conv => lhs; cbv
  try rfl
theorem node4442_eq : Flapjack.WordAlloc.removeDeadStructural input4442 value806 value1 value2 = (output4442, value809, value1) := by
  rw [input4442_def, output4442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4440_eq]
  try dsimp only
  rw [node4441_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value810 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1919, 1877)])).val
theorem input4443_def : input4443 = (Flapjack.WordLangProgHOL.move 0 [(1919, 1877)]) := by
  unfold input4443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1919, 1877)])).val
theorem output4443_def : output4443 = (Flapjack.WordLangProgHOL.move 0 [(1919, 1877)]) := by
  unfold output4443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4443_skip : Flapjack.WordAlloc.isSkip output4443 = false := by
  rw [output4443_def]
  conv => lhs; cbv
  try rfl
theorem node4443_eq : Flapjack.WordAlloc.removeDeadStructural input4443 value809 value1 value2 = (output4443, value810, value1) := by
  rw [input4443_def, output4443_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4443 input4442)).val
theorem input4444_def : input4444 = (.seq input4443 input4442) := by
  unfold input4444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4443 output4442)).val
theorem output4444_def : output4444 = (.seq output4443 output4442) := by
  unfold output4444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4444_skip : Flapjack.WordAlloc.isSkip output4444 = false := by
  rw [output4444_def]
  conv => lhs; cbv
  try rfl
theorem node4444_eq : Flapjack.WordAlloc.removeDeadStructural input4444 value806 value1 value2 = (output4444, value810, value1) := by
  rw [input4444_def, output4444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4442_eq]
  try dsimp only
  rw [node4443_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1913 1#64))).val
theorem input4445_def : input4445 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1913 1#64)) := by
  unfold input4445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4445_def : output4445 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4445_skip : Flapjack.WordAlloc.isSkip output4445 = true := by
  rw [output4445_def]
  conv => lhs; cbv
  try rfl
theorem node4445_eq : Flapjack.WordAlloc.removeDeadStructural input4445 value810 value1 value2 = (output4445, value810, value1) := by
  rw [input4445_def, output4445_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4446_def : input4446 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4446_def : output4446 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4446_skip : Flapjack.WordAlloc.isSkip output4446 = false := by
  rw [output4446_def]
  conv => lhs; cbv
  try rfl
theorem node4446_eq : Flapjack.WordAlloc.removeDeadStructural input4446 value810 value1 value2 = (output4446, value810, value1) := by
  rw [input4446_def, output4446_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1909 1#64))).val
theorem input4447_def : input4447 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1909 1#64)) := by
  unfold input4447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4447_def : output4447 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4447_skip : Flapjack.WordAlloc.isSkip output4447 = true := by
  rw [output4447_def]
  conv => lhs; cbv
  try rfl
theorem node4447_eq : Flapjack.WordAlloc.removeDeadStructural input4447 value810 value1 value2 = (output4447, value810, value1) := by
  rw [input4447_def, output4447_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4447 input4446)).val
theorem input4448_def : input4448 = (.seq input4447 input4446) := by
  unfold input4448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4446)).val
theorem output4448_def : output4448 = (output4446) := by
  unfold output4448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4448_skip : Flapjack.WordAlloc.isSkip output4448 = false := by
  rw [output4448_def]
  conv => lhs; cbv
  try rfl
theorem node4448_eq : Flapjack.WordAlloc.removeDeadStructural input4448 value810 value1 value2 = (output4448, value810, value1) := by
  rw [input4448_def, output4448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4446_eq]
  try dsimp only
  rw [node4447_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4448 input4445)).val
theorem input4449_def : input4449 = (.seq input4448 input4445) := by
  unfold input4449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4448)).val
theorem output4449_def : output4449 = (output4448) := by
  unfold output4449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4449_skip : Flapjack.WordAlloc.isSkip output4449 = false := by
  rw [output4449_def]
  conv => lhs; cbv
  try rfl
theorem node4449_eq : Flapjack.WordAlloc.removeDeadStructural input4449 value810 value1 value2 = (output4449, value810, value1) := by
  rw [input4449_def, output4449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4445_eq]
  try dsimp only
  rw [node4448_eq]
  try dsimp only
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
theorem node4450_eq : Flapjack.WordAlloc.removeDeadStructural input4450 value806 value1 value2 = (output4450, value810, value1) := by
  rw [input4450_def, output4450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4444_eq]
  try dsimp only
  rw [node4449_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4450 input4439)).val
theorem input4451_def : input4451 = (.seq input4450 input4439) := by
  unfold input4451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4450 output4439)).val
theorem output4451_def : output4451 = (.seq output4450 output4439) := by
  unfold output4451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4451_skip : Flapjack.WordAlloc.isSkip output4451 = false := by
  rw [output4451_def]
  conv => lhs; cbv
  try rfl
theorem node4451_eq : Flapjack.WordAlloc.removeDeadStructural input4451 value806 value1 value2 = (output4451, value810, value1) := by
  rw [input4451_def, output4451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4439_eq]
  try dsimp only
  rw [node4450_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4451 input4438)).val
theorem input4452_def : input4452 = (.seq input4451 input4438) := by
  unfold input4452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4451 output4438)).val
theorem output4452_def : output4452 = (.seq output4451 output4438) := by
  unfold output4452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4452_skip : Flapjack.WordAlloc.isSkip output4452 = false := by
  rw [output4452_def]
  conv => lhs; cbv
  try rfl
theorem node4452_eq : Flapjack.WordAlloc.removeDeadStructural input4452 value808 value1 value2 = (output4452, value810, value1) := by
  rw [input4452_def, output4452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4438_eq]
  try dsimp only
  rw [node4451_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4452 input4437)).val
theorem input4453_def : input4453 = (.seq input4452 input4437) := by
  unfold input4453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4452 output4437)).val
theorem output4453_def : output4453 = (.seq output4452 output4437) := by
  unfold output4453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4453_skip : Flapjack.WordAlloc.isSkip output4453 = false := by
  rw [output4453_def]
  conv => lhs; cbv
  try rfl
theorem node4453_eq : Flapjack.WordAlloc.removeDeadStructural input4453 value806 value1 value2 = (output4453, value810, value1) := by
  rw [input4453_def, output4453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4437_eq]
  try dsimp only
  rw [node4452_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4453 input4434)).val
theorem input4454_def : input4454 = (.seq input4453 input4434) := by
  unfold input4454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4453 output4434)).val
theorem output4454_def : output4454 = (.seq output4453 output4434) := by
  unfold output4454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4454_skip : Flapjack.WordAlloc.isSkip output4454 = false := by
  rw [output4454_def]
  conv => lhs; cbv
  try rfl
theorem node4454_eq : Flapjack.WordAlloc.removeDeadStructural input4454 value805 value1 value2 = (output4454, value810, value1) := by
  rw [input4454_def, output4454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4434_eq]
  try dsimp only
  rw [node4453_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1969, 1897)])).val
theorem input4455_def : input4455 = (Flapjack.WordLangProgHOL.move 2 [(1969, 1897)]) := by
  unfold input4455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4455_def : output4455 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4455_skip : Flapjack.WordAlloc.isSkip output4455 = true := by
  rw [output4455_def]
  conv => lhs; cbv
  try rfl
theorem node4455_eq : Flapjack.WordAlloc.removeDeadStructural input4455 value805 value1 value2 = (output4455, value805, value1) := by
  rw [input4455_def, output4455_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1965, 1905)])).val
theorem input4456_def : input4456 = (Flapjack.WordLangProgHOL.move 2 [(1965, 1905)]) := by
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
theorem node4456_eq : Flapjack.WordAlloc.removeDeadStructural input4456 value805 value1 value2 = (output4456, value805, value1) := by
  rw [input4456_def, output4456_def]
  try (conv => lhs; cbv)
  try rfl

def value811 : Flapjack.NumSet :=
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
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1961, 1901)])).val
theorem input4457_def : input4457 = (Flapjack.WordLangProgHOL.move 2 [(1961, 1901)]) := by
  unfold input4457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1961, 1901)])).val
theorem output4457_def : output4457 = (Flapjack.WordLangProgHOL.move 2 [(1961, 1901)]) := by
  unfold output4457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4457_skip : Flapjack.WordAlloc.isSkip output4457 = false := by
  rw [output4457_def]
  conv => lhs; cbv
  try rfl
theorem node4457_eq : Flapjack.WordAlloc.removeDeadStructural input4457 value805 value1 value2 = (output4457, value811, value1) := by
  rw [input4457_def, output4457_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4458_def : input4458 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4458_def : output4458 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4458_skip : Flapjack.WordAlloc.isSkip output4458 = true := by
  rw [output4458_def]
  conv => lhs; cbv
  try rfl
theorem node4458_eq : Flapjack.WordAlloc.removeDeadStructural input4458 value811 value1 value2 = (output4458, value811, value1) := by
  rw [input4458_def, output4458_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4458 input4457)).val
theorem input4459_def : input4459 = (.seq input4458 input4457) := by
  unfold input4459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4457)).val
theorem output4459_def : output4459 = (output4457) := by
  unfold output4459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4459_skip : Flapjack.WordAlloc.isSkip output4459 = false := by
  rw [output4459_def]
  conv => lhs; cbv
  try rfl
theorem node4459_eq : Flapjack.WordAlloc.removeDeadStructural input4459 value805 value1 value2 = (output4459, value811, value1) := by
  rw [input4459_def, output4459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4457_eq]
  try dsimp only
  rw [node4458_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4459 input4456)).val
theorem input4460_def : input4460 = (.seq input4459 input4456) := by
  unfold input4460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4459)).val
theorem output4460_def : output4460 = (output4459) := by
  unfold output4460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4460_skip : Flapjack.WordAlloc.isSkip output4460 = false := by
  rw [output4460_def]
  conv => lhs; cbv
  try rfl
theorem node4460_eq : Flapjack.WordAlloc.removeDeadStructural input4460 value805 value1 value2 = (output4460, value811, value1) := by
  rw [input4460_def, output4460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4456_eq]
  try dsimp only
  rw [node4459_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4460 input4455)).val
theorem input4461_def : input4461 = (.seq input4460 input4455) := by
  unfold input4461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4460)).val
theorem output4461_def : output4461 = (output4460) := by
  unfold output4461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4461_skip : Flapjack.WordAlloc.isSkip output4461 = false := by
  rw [output4461_def]
  conv => lhs; cbv
  try rfl
theorem node4461_eq : Flapjack.WordAlloc.removeDeadStructural input4461 value805 value1 value2 = (output4461, value811, value1) := by
  rw [input4461_def, output4461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4455_eq]
  try dsimp only
  rw [node4460_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value812 : Flapjack.NumSet :=
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
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1957, 1877), (1953, 1901), (1949, 1869)])).val
theorem input4462_def : input4462 = (Flapjack.WordLangProgHOL.move 2 [(1957, 1877), (1953, 1901), (1949, 1869)]) := by
  unfold input4462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1957, 1877)])).val
theorem output4462_def : output4462 = (Flapjack.WordLangProgHOL.move 2 [(1957, 1877)]) := by
  unfold output4462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4462_skip : Flapjack.WordAlloc.isSkip output4462 = false := by
  rw [output4462_def]
  conv => lhs; cbv
  try rfl
theorem node4462_eq : Flapjack.WordAlloc.removeDeadStructural input4462 value811 value1 value2 = (output4462, value812, value1) := by
  rw [input4462_def, output4462_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4462 input4461)).val
theorem input4463_def : input4463 = (.seq input4462 input4461) := by
  unfold input4463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4462 output4461)).val
theorem output4463_def : output4463 = (.seq output4462 output4461) := by
  unfold output4463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4463_skip : Flapjack.WordAlloc.isSkip output4463 = false := by
  rw [output4463_def]
  conv => lhs; cbv
  try rfl
theorem node4463_eq : Flapjack.WordAlloc.removeDeadStructural input4463 value805 value1 value2 = (output4463, value812, value1) := by
  rw [input4463_def, output4463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4461_eq]
  try dsimp only
  rw [node4462_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4464_def : input4464 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4464_def : output4464 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4464_skip : Flapjack.WordAlloc.isSkip output4464 = true := by
  rw [output4464_def]
  conv => lhs; cbv
  try rfl
theorem node4464_eq : Flapjack.WordAlloc.removeDeadStructural input4464 value812 value1 value2 = (output4464, value812, value1) := by
  rw [input4464_def, output4464_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4464 input4463)).val
theorem input4465_def : input4465 = (.seq input4464 input4463) := by
  unfold input4465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4463)).val
theorem output4465_def : output4465 = (output4463) := by
  unfold output4465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4465_skip : Flapjack.WordAlloc.isSkip output4465 = false := by
  rw [output4465_def]
  conv => lhs; cbv
  try rfl
theorem node4465_eq : Flapjack.WordAlloc.removeDeadStructural input4465 value805 value1 value2 = (output4465, value812, value1) := by
  rw [input4465_def, output4465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4463_eq]
  try dsimp only
  rw [node4464_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value813 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 1905

def value814 : Flapjack.NumSet :=
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
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1901 value813 input4454 input4465)).val
theorem input4466_def : input4466 = (.ite value15 1901 value813 input4454 input4465) := by
  unfold input4466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1901 value813 output4454 output4465)).val
theorem output4466_def : output4466 = (.ite value15 1901 value813 output4454 output4465) := by
  unfold output4466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4466_skip : Flapjack.WordAlloc.isSkip output4466 = false := by
  rw [output4466_def]
  conv => lhs; cbv
  try rfl
theorem node4466_eq : Flapjack.WordAlloc.removeDeadStructural input4466 value805 value1 value2 = (output4466, value814, value1) := by
  rw [input4466_def, output4466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node4454_eq]
  try dsimp only
  rw [node4465_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4466 input4425)).val
theorem input4467_def : input4467 = (.seq input4466 input4425) := by
  unfold input4467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4466 output4425)).val
theorem output4467_def : output4467 = (.seq output4466 output4425) := by
  unfold output4467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4467_skip : Flapjack.WordAlloc.isSkip output4467 = false := by
  rw [output4467_def]
  conv => lhs; cbv
  try rfl
theorem node4467_eq : Flapjack.WordAlloc.removeDeadStructural input4467 value805 value1 value2 = (output4467, value814, value1) := by
  rw [input4467_def, output4467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4425_eq]
  try dsimp only
  rw [node4466_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1905 27#64))).val
theorem input4468_def : input4468 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1905 27#64)) := by
  unfold input4468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1905 27#64))).val
theorem output4468_def : output4468 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1905 27#64)) := by
  unfold output4468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4468_skip : Flapjack.WordAlloc.isSkip output4468 = false := by
  rw [output4468_def]
  conv => lhs; cbv
  try rfl
theorem node4468_eq : Flapjack.WordAlloc.removeDeadStructural input4468 value814 value1 value2 = (output4468, value812, value1) := by
  rw [input4468_def, output4468_def]
  try (conv => lhs; cbv)
  try rfl

def value815 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1901, 1881)])).val
theorem input4469_def : input4469 = (Flapjack.WordLangProgHOL.move 0 [(1901, 1881)]) := by
  unfold input4469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1901, 1881)])).val
theorem output4469_def : output4469 = (Flapjack.WordLangProgHOL.move 0 [(1901, 1881)]) := by
  unfold output4469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4469_skip : Flapjack.WordAlloc.isSkip output4469 = false := by
  rw [output4469_def]
  conv => lhs; cbv
  try rfl
theorem node4469_eq : Flapjack.WordAlloc.removeDeadStructural input4469 value812 value1 value2 = (output4469, value815, value1) := by
  rw [input4469_def, output4469_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4470_def : input4470 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4470_def : output4470 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4470_skip : Flapjack.WordAlloc.isSkip output4470 = false := by
  rw [output4470_def]
  conv => lhs; cbv
  try rfl
theorem node4470_eq : Flapjack.WordAlloc.removeDeadStructural input4470 value815 value1 value2 = (output4470, value815, value1) := by
  rw [input4470_def, output4470_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1897 0#64))).val
theorem input4471_def : input4471 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1897 0#64)) := by
  unfold input4471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4471_def : output4471 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4471_skip : Flapjack.WordAlloc.isSkip output4471 = true := by
  rw [output4471_def]
  conv => lhs; cbv
  try rfl
theorem node4471_eq : Flapjack.WordAlloc.removeDeadStructural input4471 value815 value1 value2 = (output4471, value815, value1) := by
  rw [input4471_def, output4471_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4472_def : input4472 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4472_def : output4472 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4472_skip : Flapjack.WordAlloc.isSkip output4472 = false := by
  rw [output4472_def]
  conv => lhs; cbv
  try rfl
theorem node4472_eq : Flapjack.WordAlloc.removeDeadStructural input4472 value815 value1 value2 = (output4472, value815, value1) := by
  rw [input4472_def, output4472_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1893 0#64))).val
theorem input4473_def : input4473 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1893 0#64)) := by
  unfold input4473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4473_def : output4473 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4473_skip : Flapjack.WordAlloc.isSkip output4473 = true := by
  rw [output4473_def]
  conv => lhs; cbv
  try rfl
theorem node4473_eq : Flapjack.WordAlloc.removeDeadStructural input4473 value815 value1 value2 = (output4473, value815, value1) := by
  rw [input4473_def, output4473_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4473 input4472)).val
theorem input4474_def : input4474 = (.seq input4473 input4472) := by
  unfold input4474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4472)).val
theorem output4474_def : output4474 = (output4472) := by
  unfold output4474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4474_skip : Flapjack.WordAlloc.isSkip output4474 = false := by
  rw [output4474_def]
  conv => lhs; cbv
  try rfl
theorem node4474_eq : Flapjack.WordAlloc.removeDeadStructural input4474 value815 value1 value2 = (output4474, value815, value1) := by
  rw [input4474_def, output4474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4472_eq]
  try dsimp only
  rw [node4473_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4474 input4471)).val
theorem input4475_def : input4475 = (.seq input4474 input4471) := by
  unfold input4475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4474)).val
theorem output4475_def : output4475 = (output4474) := by
  unfold output4475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4475_skip : Flapjack.WordAlloc.isSkip output4475 = false := by
  rw [output4475_def]
  conv => lhs; cbv
  try rfl
theorem node4475_eq : Flapjack.WordAlloc.removeDeadStructural input4475 value815 value1 value2 = (output4475, value815, value1) := by
  rw [input4475_def, output4475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4471_eq]
  try dsimp only
  rw [node4474_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1889 0#64))).val
theorem input4476_def : input4476 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1889 0#64)) := by
  unfold input4476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4476_def : output4476 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4476_skip : Flapjack.WordAlloc.isSkip output4476 = true := by
  rw [output4476_def]
  conv => lhs; cbv
  try rfl
theorem node4476_eq : Flapjack.WordAlloc.removeDeadStructural input4476 value815 value1 value2 = (output4476, value815, value1) := by
  rw [input4476_def, output4476_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1885 0#64))).val
theorem input4477_def : input4477 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1885 0#64)) := by
  unfold input4477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4477_def : output4477 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4477_skip : Flapjack.WordAlloc.isSkip output4477 = true := by
  rw [output4477_def]
  conv => lhs; cbv
  try rfl
theorem node4477_eq : Flapjack.WordAlloc.removeDeadStructural input4477 value815 value1 value2 = (output4477, value815, value1) := by
  rw [input4477_def, output4477_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1881 0#64))).val
theorem input4478_def : input4478 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1881 0#64)) := by
  unfold input4478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1881 0#64))).val
theorem output4478_def : output4478 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1881 0#64)) := by
  unfold output4478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4478_skip : Flapjack.WordAlloc.isSkip output4478 = false := by
  rw [output4478_def]
  conv => lhs; cbv
  try rfl
theorem node4478_eq : Flapjack.WordAlloc.removeDeadStructural input4478 value815 value1 value2 = (output4478, value810, value1) := by
  rw [input4478_def, output4478_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4479_def : input4479 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4479_def : output4479 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4479_skip : Flapjack.WordAlloc.isSkip output4479 = true := by
  rw [output4479_def]
  conv => lhs; cbv
  try rfl
theorem node4479_eq : Flapjack.WordAlloc.removeDeadStructural input4479 value810 value1 value2 = (output4479, value810, value1) := by
  rw [input4479_def, output4479_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4479 input4478)).val
theorem input4480_def : input4480 = (.seq input4479 input4478) := by
  unfold input4480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4478)).val
theorem output4480_def : output4480 = (output4478) := by
  unfold output4480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4480_skip : Flapjack.WordAlloc.isSkip output4480 = false := by
  rw [output4480_def]
  conv => lhs; cbv
  try rfl
theorem node4480_eq : Flapjack.WordAlloc.removeDeadStructural input4480 value815 value1 value2 = (output4480, value810, value1) := by
  rw [input4480_def, output4480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4478_eq]
  try dsimp only
  rw [node4479_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4480 input4477)).val
theorem input4481_def : input4481 = (.seq input4480 input4477) := by
  unfold input4481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4480)).val
theorem output4481_def : output4481 = (output4480) := by
  unfold output4481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4481_skip : Flapjack.WordAlloc.isSkip output4481 = false := by
  rw [output4481_def]
  conv => lhs; cbv
  try rfl
theorem node4481_eq : Flapjack.WordAlloc.removeDeadStructural input4481 value815 value1 value2 = (output4481, value810, value1) := by
  rw [input4481_def, output4481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4477_eq]
  try dsimp only
  rw [node4480_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4481 input4476)).val
theorem input4482_def : input4482 = (.seq input4481 input4476) := by
  unfold input4482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4481)).val
theorem output4482_def : output4482 = (output4481) := by
  unfold output4482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4482_skip : Flapjack.WordAlloc.isSkip output4482 = false := by
  rw [output4482_def]
  conv => lhs; cbv
  try rfl
theorem node4482_eq : Flapjack.WordAlloc.removeDeadStructural input4482 value815 value1 value2 = (output4482, value810, value1) := by
  rw [input4482_def, output4482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4476_eq]
  try dsimp only
  rw [node4481_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value816 : Flapjack.NumSet :=
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
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1877, 1845), (1873, 1861), (1869, 1865)])).val
theorem input4483_def : input4483 = (Flapjack.WordLangProgHOL.move 1 [(1877, 1845), (1873, 1861), (1869, 1865)]) := by
  unfold input4483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1877, 1845)])).val
theorem output4483_def : output4483 = (Flapjack.WordLangProgHOL.move 1 [(1877, 1845)]) := by
  unfold output4483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4483_skip : Flapjack.WordAlloc.isSkip output4483 = false := by
  rw [output4483_def]
  conv => lhs; cbv
  try rfl
theorem node4483_eq : Flapjack.WordAlloc.removeDeadStructural input4483 value810 value1 value2 = (output4483, value816, value1) := by
  rw [input4483_def, output4483_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4483 input4482)).val
theorem input4484_def : input4484 = (.seq input4483 input4482) := by
  unfold input4484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4483 output4482)).val
theorem output4484_def : output4484 = (.seq output4483 output4482) := by
  unfold output4484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4484_skip : Flapjack.WordAlloc.isSkip output4484 = false := by
  rw [output4484_def]
  conv => lhs; cbv
  try rfl
theorem node4484_eq : Flapjack.WordAlloc.removeDeadStructural input4484 value815 value1 value2 = (output4484, value816, value1) := by
  rw [input4484_def, output4484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4482_eq]
  try dsimp only
  rw [node4483_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value817 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
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
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1845 [2])).val
theorem input4485_def : input4485 = (Flapjack.WordLangProgHOL.return 1845 [2]) := by
  unfold input4485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1845 [2])).val
theorem output4485_def : output4485 = (Flapjack.WordLangProgHOL.return 1845 [2]) := by
  unfold output4485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4485_skip : Flapjack.WordAlloc.isSkip output4485 = false := by
  rw [output4485_def]
  conv => lhs; cbv
  try rfl
theorem node4485_eq : Flapjack.WordAlloc.removeDeadStructural input4485 value816 value1 value2 = (output4485, value817, value1) := by
  rw [input4485_def, output4485_def]
  try (conv => lhs; cbv)
  try rfl

def value818 : Flapjack.NumSet :=
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
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1865)])).val
theorem input4486_def : input4486 = (Flapjack.WordLangProgHOL.move 0 [(2, 1865)]) := by
  unfold input4486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1865)])).val
theorem output4486_def : output4486 = (Flapjack.WordLangProgHOL.move 0 [(2, 1865)]) := by
  unfold output4486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4486_skip : Flapjack.WordAlloc.isSkip output4486 = false := by
  rw [output4486_def]
  conv => lhs; cbv
  try rfl
theorem node4486_eq : Flapjack.WordAlloc.removeDeadStructural input4486 value817 value1 value2 = (output4486, value818, value1) := by
  rw [input4486_def, output4486_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4486 input4485)).val
theorem input4487_def : input4487 = (.seq input4486 input4485) := by
  unfold input4487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4486 output4485)).val
theorem output4487_def : output4487 = (.seq output4486 output4485) := by
  unfold output4487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4487_skip : Flapjack.WordAlloc.isSkip output4487 = false := by
  rw [output4487_def]
  conv => lhs; cbv
  try rfl
theorem node4487_eq : Flapjack.WordAlloc.removeDeadStructural input4487 value816 value1 value2 = (output4487, value818, value1) := by
  rw [input4487_def, output4487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4485_eq]
  try dsimp only
  rw [node4486_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1865 0#64))).val
theorem input4488_def : input4488 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1865 0#64)) := by
  unfold input4488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1865 0#64))).val
theorem output4488_def : output4488 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1865 0#64)) := by
  unfold output4488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4488_skip : Flapjack.WordAlloc.isSkip output4488 = false := by
  rw [output4488_def]
  conv => lhs; cbv
  try rfl
theorem node4488_eq : Flapjack.WordAlloc.removeDeadStructural input4488 value818 value1 value2 = (output4488, value816, value1) := by
  rw [input4488_def, output4488_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4489_def : input4489 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4489_def : output4489 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4489_skip : Flapjack.WordAlloc.isSkip output4489 = false := by
  rw [output4489_def]
  conv => lhs; cbv
  try rfl
theorem node4489_eq : Flapjack.WordAlloc.removeDeadStructural input4489 value816 value1 value2 = (output4489, value816, value1) := by
  rw [input4489_def, output4489_def]
  try (conv => lhs; cbv)
  try rfl

def value819 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input4490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1845, 1839)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1849, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1857, 1849)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1861 0#64)))),
      597, 46))
  (some 520) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1845, 1839)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1853, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1853)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1857 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1861, 1853)]))),
      597, 47)))).val
theorem input4490_def : input4490 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1845, 1839)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1849, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1857, 1849)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1861 0#64)))),
      597, 46))
  (some 520) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1845, 1839)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1853, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1853)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1857 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1861, 1853)]))),
      597, 47))) := by
  unfold input4490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1845, 1839)], 597, 46))
  (some 520) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1845, 1839)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1853, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1853)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 47)))).val
theorem output4490_def : output4490 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          Flapjack.Spt.ln)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1845, 1839)], 597, 46))
  (some 520) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1845, 1839)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1853, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1853)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 47))) := by
  unfold output4490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4490_skip : Flapjack.WordAlloc.isSkip output4490 = false := by
  rw [output4490_def]
  conv => lhs; cbv
  try rfl
theorem node4490_eq : Flapjack.WordAlloc.removeDeadStructural input4490 value816 value1 value2 = (output4490, value819, value1) := by
  rw [input4490_def, output4490_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input4491_def : input4491 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input4491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4491_def : output4491 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4491_skip : Flapjack.WordAlloc.isSkip output4491 = true := by
  rw [output4491_def]
  conv => lhs; cbv
  try rfl
theorem node4491_eq : Flapjack.WordAlloc.removeDeadStructural input4491 value819 value1 value2 = (output4491, value819, value1) := by
  rw [input4491_def, output4491_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4491 input4490)).val
theorem input4492_def : input4492 = (.seq input4491 input4490) := by
  unfold input4492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4490)).val
theorem output4492_def : output4492 = (output4490) := by
  unfold output4492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4492_skip : Flapjack.WordAlloc.isSkip output4492 = false := by
  rw [output4492_def]
  conv => lhs; cbv
  try rfl
theorem node4492_eq : Flapjack.WordAlloc.removeDeadStructural input4492 value816 value1 value2 = (output4492, value819, value1) := by
  rw [input4492_def, output4492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4490_eq]
  try dsimp only
  rw [node4491_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value820 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1839, 1797)])).val
theorem input4493_def : input4493 = (Flapjack.WordLangProgHOL.move 0 [(1839, 1797)]) := by
  unfold input4493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1839, 1797)])).val
theorem output4493_def : output4493 = (Flapjack.WordLangProgHOL.move 0 [(1839, 1797)]) := by
  unfold output4493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4493_skip : Flapjack.WordAlloc.isSkip output4493 = false := by
  rw [output4493_def]
  conv => lhs; cbv
  try rfl
theorem node4493_eq : Flapjack.WordAlloc.removeDeadStructural input4493 value819 value1 value2 = (output4493, value820, value1) := by
  rw [input4493_def, output4493_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4493 input4492)).val
theorem input4494_def : input4494 = (.seq input4493 input4492) := by
  unfold input4494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4493 output4492)).val
theorem output4494_def : output4494 = (.seq output4493 output4492) := by
  unfold output4494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4494_skip : Flapjack.WordAlloc.isSkip output4494 = false := by
  rw [output4494_def]
  conv => lhs; cbv
  try rfl
theorem node4494_eq : Flapjack.WordAlloc.removeDeadStructural input4494 value816 value1 value2 = (output4494, value820, value1) := by
  rw [input4494_def, output4494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4492_eq]
  try dsimp only
  rw [node4493_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1833 1#64))).val
theorem input4495_def : input4495 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1833 1#64)) := by
  unfold input4495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4495_def : output4495 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4495_skip : Flapjack.WordAlloc.isSkip output4495 = true := by
  rw [output4495_def]
  conv => lhs; cbv
  try rfl
theorem node4495_eq : Flapjack.WordAlloc.removeDeadStructural input4495 value820 value1 value2 = (output4495, value820, value1) := by
  rw [input4495_def, output4495_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4496_def : input4496 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4496_def : output4496 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4496_skip : Flapjack.WordAlloc.isSkip output4496 = false := by
  rw [output4496_def]
  conv => lhs; cbv
  try rfl
theorem node4496_eq : Flapjack.WordAlloc.removeDeadStructural input4496 value820 value1 value2 = (output4496, value820, value1) := by
  rw [input4496_def, output4496_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1829 1#64))).val
theorem input4497_def : input4497 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1829 1#64)) := by
  unfold input4497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4497_def : output4497 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4497_skip : Flapjack.WordAlloc.isSkip output4497 = true := by
  rw [output4497_def]
  conv => lhs; cbv
  try rfl
theorem node4497_eq : Flapjack.WordAlloc.removeDeadStructural input4497 value820 value1 value2 = (output4497, value820, value1) := by
  rw [input4497_def, output4497_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4497 input4496)).val
theorem input4498_def : input4498 = (.seq input4497 input4496) := by
  unfold input4498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4496)).val
theorem output4498_def : output4498 = (output4496) := by
  unfold output4498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4498_skip : Flapjack.WordAlloc.isSkip output4498 = false := by
  rw [output4498_def]
  conv => lhs; cbv
  try rfl
theorem node4498_eq : Flapjack.WordAlloc.removeDeadStructural input4498 value820 value1 value2 = (output4498, value820, value1) := by
  rw [input4498_def, output4498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4496_eq]
  try dsimp only
  rw [node4497_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4498 input4495)).val
theorem input4499_def : input4499 = (.seq input4498 input4495) := by
  unfold input4499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4498)).val
theorem output4499_def : output4499 = (output4498) := by
  unfold output4499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4499_skip : Flapjack.WordAlloc.isSkip output4499 = false := by
  rw [output4499_def]
  conv => lhs; cbv
  try rfl
theorem node4499_eq : Flapjack.WordAlloc.removeDeadStructural input4499 value820 value1 value2 = (output4499, value820, value1) := by
  rw [input4499_def, output4499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4495_eq]
  try dsimp only
  rw [node4498_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4499 input4494)).val
theorem input4500_def : input4500 = (.seq input4499 input4494) := by
  unfold input4500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4499 output4494)).val
theorem output4500_def : output4500 = (.seq output4499 output4494) := by
  unfold output4500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4500_skip : Flapjack.WordAlloc.isSkip output4500 = false := by
  rw [output4500_def]
  conv => lhs; cbv
  try rfl
theorem node4500_eq : Flapjack.WordAlloc.removeDeadStructural input4500 value816 value1 value2 = (output4500, value820, value1) := by
  rw [input4500_def, output4500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4494_eq]
  try dsimp only
  rw [node4499_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4500 input4489)).val
theorem input4501_def : input4501 = (.seq input4500 input4489) := by
  unfold input4501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4500 output4489)).val
theorem output4501_def : output4501 = (.seq output4500 output4489) := by
  unfold output4501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4501_skip : Flapjack.WordAlloc.isSkip output4501 = false := by
  rw [output4501_def]
  conv => lhs; cbv
  try rfl
theorem node4501_eq : Flapjack.WordAlloc.removeDeadStructural input4501 value816 value1 value2 = (output4501, value820, value1) := by
  rw [input4501_def, output4501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4489_eq]
  try dsimp only
  rw [node4500_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4501 input4488)).val
theorem input4502_def : input4502 = (.seq input4501 input4488) := by
  unfold input4502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4501 output4488)).val
theorem output4502_def : output4502 = (.seq output4501 output4488) := by
  unfold output4502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4502_skip : Flapjack.WordAlloc.isSkip output4502 = false := by
  rw [output4502_def]
  conv => lhs; cbv
  try rfl
theorem node4502_eq : Flapjack.WordAlloc.removeDeadStructural input4502 value818 value1 value2 = (output4502, value820, value1) := by
  rw [input4502_def, output4502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4488_eq]
  try dsimp only
  rw [node4501_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4502 input4487)).val
theorem input4503_def : input4503 = (.seq input4502 input4487) := by
  unfold input4503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4502 output4487)).val
theorem output4503_def : output4503 = (.seq output4502 output4487) := by
  unfold output4503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4503_skip : Flapjack.WordAlloc.isSkip output4503 = false := by
  rw [output4503_def]
  conv => lhs; cbv
  try rfl
theorem node4503_eq : Flapjack.WordAlloc.removeDeadStructural input4503 value816 value1 value2 = (output4503, value820, value1) := by
  rw [input4503_def, output4503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4487_eq]
  try dsimp only
  rw [node4502_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4503 input4484)).val
theorem input4504_def : input4504 = (.seq input4503 input4484) := by
  unfold input4504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4503 output4484)).val
theorem output4504_def : output4504 = (.seq output4503 output4484) := by
  unfold output4504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4504_skip : Flapjack.WordAlloc.isSkip output4504 = false := by
  rw [output4504_def]
  conv => lhs; cbv
  try rfl
theorem node4504_eq : Flapjack.WordAlloc.removeDeadStructural input4504 value815 value1 value2 = (output4504, value820, value1) := by
  rw [input4504_def, output4504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4484_eq]
  try dsimp only
  rw [node4503_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1889, 1817)])).val
theorem input4505_def : input4505 = (Flapjack.WordLangProgHOL.move 2 [(1889, 1817)]) := by
  unfold input4505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4505_def : output4505 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4505_skip : Flapjack.WordAlloc.isSkip output4505 = true := by
  rw [output4505_def]
  conv => lhs; cbv
  try rfl
theorem node4505_eq : Flapjack.WordAlloc.removeDeadStructural input4505 value815 value1 value2 = (output4505, value815, value1) := by
  rw [input4505_def, output4505_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1885, 1825)])).val
theorem input4506_def : input4506 = (Flapjack.WordLangProgHOL.move 2 [(1885, 1825)]) := by
  unfold input4506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4506_def : output4506 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4506_skip : Flapjack.WordAlloc.isSkip output4506 = true := by
  rw [output4506_def]
  conv => lhs; cbv
  try rfl
theorem node4506_eq : Flapjack.WordAlloc.removeDeadStructural input4506 value815 value1 value2 = (output4506, value815, value1) := by
  rw [input4506_def, output4506_def]
  try (conv => lhs; cbv)
  try rfl

def value821 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1881, 1821)])).val
theorem input4507_def : input4507 = (Flapjack.WordLangProgHOL.move 2 [(1881, 1821)]) := by
  unfold input4507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1881, 1821)])).val
theorem output4507_def : output4507 = (Flapjack.WordLangProgHOL.move 2 [(1881, 1821)]) := by
  unfold output4507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4507_skip : Flapjack.WordAlloc.isSkip output4507 = false := by
  rw [output4507_def]
  conv => lhs; cbv
  try rfl
theorem node4507_eq : Flapjack.WordAlloc.removeDeadStructural input4507 value815 value1 value2 = (output4507, value821, value1) := by
  rw [input4507_def, output4507_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4508_def : input4508 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4508_def : output4508 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4508_skip : Flapjack.WordAlloc.isSkip output4508 = true := by
  rw [output4508_def]
  conv => lhs; cbv
  try rfl
theorem node4508_eq : Flapjack.WordAlloc.removeDeadStructural input4508 value821 value1 value2 = (output4508, value821, value1) := by
  rw [input4508_def, output4508_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4508 input4507)).val
theorem input4509_def : input4509 = (.seq input4508 input4507) := by
  unfold input4509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4507)).val
theorem output4509_def : output4509 = (output4507) := by
  unfold output4509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4509_skip : Flapjack.WordAlloc.isSkip output4509 = false := by
  rw [output4509_def]
  conv => lhs; cbv
  try rfl
theorem node4509_eq : Flapjack.WordAlloc.removeDeadStructural input4509 value815 value1 value2 = (output4509, value821, value1) := by
  rw [input4509_def, output4509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4507_eq]
  try dsimp only
  rw [node4508_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4509 input4506)).val
theorem input4510_def : input4510 = (.seq input4509 input4506) := by
  unfold input4510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4509)).val
theorem output4510_def : output4510 = (output4509) := by
  unfold output4510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4510_skip : Flapjack.WordAlloc.isSkip output4510 = false := by
  rw [output4510_def]
  conv => lhs; cbv
  try rfl
theorem node4510_eq : Flapjack.WordAlloc.removeDeadStructural input4510 value815 value1 value2 = (output4510, value821, value1) := by
  rw [input4510_def, output4510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4506_eq]
  try dsimp only
  rw [node4509_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4510 input4505)).val
theorem input4511_def : input4511 = (.seq input4510 input4505) := by
  unfold input4511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4510)).val
theorem output4511_def : output4511 = (output4510) := by
  unfold output4511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4511_skip : Flapjack.WordAlloc.isSkip output4511 = false := by
  rw [output4511_def]
  conv => lhs; cbv
  try rfl
theorem node4511_eq : Flapjack.WordAlloc.removeDeadStructural input4511 value815 value1 value2 = (output4511, value821, value1) := by
  rw [input4511_def, output4511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4505_eq]
  try dsimp only
  rw [node4510_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value822 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1877, 1797), (1873, 1821), (1869, 1789)])).val
theorem input4512_def : input4512 = (Flapjack.WordLangProgHOL.move 2 [(1877, 1797), (1873, 1821), (1869, 1789)]) := by
  unfold input4512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1877, 1797)])).val
theorem output4512_def : output4512 = (Flapjack.WordLangProgHOL.move 2 [(1877, 1797)]) := by
  unfold output4512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4512_skip : Flapjack.WordAlloc.isSkip output4512 = false := by
  rw [output4512_def]
  conv => lhs; cbv
  try rfl
theorem node4512_eq : Flapjack.WordAlloc.removeDeadStructural input4512 value821 value1 value2 = (output4512, value822, value1) := by
  rw [input4512_def, output4512_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4512 input4511)).val
theorem input4513_def : input4513 = (.seq input4512 input4511) := by
  unfold input4513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4512 output4511)).val
theorem output4513_def : output4513 = (.seq output4512 output4511) := by
  unfold output4513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4513_skip : Flapjack.WordAlloc.isSkip output4513 = false := by
  rw [output4513_def]
  conv => lhs; cbv
  try rfl
theorem node4513_eq : Flapjack.WordAlloc.removeDeadStructural input4513 value815 value1 value2 = (output4513, value822, value1) := by
  rw [input4513_def, output4513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4511_eq]
  try dsimp only
  rw [node4512_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4514_def : input4514 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4514_def : output4514 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4514_skip : Flapjack.WordAlloc.isSkip output4514 = true := by
  rw [output4514_def]
  conv => lhs; cbv
  try rfl
theorem node4514_eq : Flapjack.WordAlloc.removeDeadStructural input4514 value822 value1 value2 = (output4514, value822, value1) := by
  rw [input4514_def, output4514_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4514 input4513)).val
theorem input4515_def : input4515 = (.seq input4514 input4513) := by
  unfold input4515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4513)).val
theorem output4515_def : output4515 = (output4513) := by
  unfold output4515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4515_skip : Flapjack.WordAlloc.isSkip output4515 = false := by
  rw [output4515_def]
  conv => lhs; cbv
  try rfl
theorem node4515_eq : Flapjack.WordAlloc.removeDeadStructural input4515 value815 value1 value2 = (output4515, value822, value1) := by
  rw [input4515_def, output4515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4513_eq]
  try dsimp only
  rw [node4514_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value823 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 1825

def value824 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1821 value823 input4504 input4515)).val
theorem input4516_def : input4516 = (.ite value15 1821 value823 input4504 input4515) := by
  unfold input4516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1821 value823 output4504 output4515)).val
theorem output4516_def : output4516 = (.ite value15 1821 value823 output4504 output4515) := by
  unfold output4516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4516_skip : Flapjack.WordAlloc.isSkip output4516 = false := by
  rw [output4516_def]
  conv => lhs; cbv
  try rfl
theorem node4516_eq : Flapjack.WordAlloc.removeDeadStructural input4516 value815 value1 value2 = (output4516, value824, value1) := by
  rw [input4516_def, output4516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node4504_eq]
  try dsimp only
  rw [node4515_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4516 input4475)).val
theorem input4517_def : input4517 = (.seq input4516 input4475) := by
  unfold input4517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4516 output4475)).val
theorem output4517_def : output4517 = (.seq output4516 output4475) := by
  unfold output4517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4517_skip : Flapjack.WordAlloc.isSkip output4517 = false := by
  rw [output4517_def]
  conv => lhs; cbv
  try rfl
theorem node4517_eq : Flapjack.WordAlloc.removeDeadStructural input4517 value815 value1 value2 = (output4517, value824, value1) := by
  rw [input4517_def, output4517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4475_eq]
  try dsimp only
  rw [node4516_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1825 26#64))).val
theorem input4518_def : input4518 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1825 26#64)) := by
  unfold input4518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1825 26#64))).val
theorem output4518_def : output4518 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1825 26#64)) := by
  unfold output4518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4518_skip : Flapjack.WordAlloc.isSkip output4518 = false := by
  rw [output4518_def]
  conv => lhs; cbv
  try rfl
theorem node4518_eq : Flapjack.WordAlloc.removeDeadStructural input4518 value824 value1 value2 = (output4518, value822, value1) := by
  rw [input4518_def, output4518_def]
  try (conv => lhs; cbv)
  try rfl

def value825 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1821, 1801)])).val
theorem input4519_def : input4519 = (Flapjack.WordLangProgHOL.move 0 [(1821, 1801)]) := by
  unfold input4519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1821, 1801)])).val
theorem output4519_def : output4519 = (Flapjack.WordLangProgHOL.move 0 [(1821, 1801)]) := by
  unfold output4519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4519_skip : Flapjack.WordAlloc.isSkip output4519 = false := by
  rw [output4519_def]
  conv => lhs; cbv
  try rfl
theorem node4519_eq : Flapjack.WordAlloc.removeDeadStructural input4519 value822 value1 value2 = (output4519, value825, value1) := by
  rw [input4519_def, output4519_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4520_def : input4520 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4520_def : output4520 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4520_skip : Flapjack.WordAlloc.isSkip output4520 = false := by
  rw [output4520_def]
  conv => lhs; cbv
  try rfl
theorem node4520_eq : Flapjack.WordAlloc.removeDeadStructural input4520 value825 value1 value2 = (output4520, value825, value1) := by
  rw [input4520_def, output4520_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1817 0#64))).val
theorem input4521_def : input4521 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1817 0#64)) := by
  unfold input4521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4521_def : output4521 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4521_skip : Flapjack.WordAlloc.isSkip output4521 = true := by
  rw [output4521_def]
  conv => lhs; cbv
  try rfl
theorem node4521_eq : Flapjack.WordAlloc.removeDeadStructural input4521 value825 value1 value2 = (output4521, value825, value1) := by
  rw [input4521_def, output4521_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4522_def : input4522 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4522_def : output4522 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4522_skip : Flapjack.WordAlloc.isSkip output4522 = false := by
  rw [output4522_def]
  conv => lhs; cbv
  try rfl
theorem node4522_eq : Flapjack.WordAlloc.removeDeadStructural input4522 value825 value1 value2 = (output4522, value825, value1) := by
  rw [input4522_def, output4522_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1813 0#64))).val
theorem input4523_def : input4523 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1813 0#64)) := by
  unfold input4523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4523_def : output4523 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4523_skip : Flapjack.WordAlloc.isSkip output4523 = true := by
  rw [output4523_def]
  conv => lhs; cbv
  try rfl
theorem node4523_eq : Flapjack.WordAlloc.removeDeadStructural input4523 value825 value1 value2 = (output4523, value825, value1) := by
  rw [input4523_def, output4523_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4523 input4522)).val
theorem input4524_def : input4524 = (.seq input4523 input4522) := by
  unfold input4524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4522)).val
theorem output4524_def : output4524 = (output4522) := by
  unfold output4524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4524_skip : Flapjack.WordAlloc.isSkip output4524 = false := by
  rw [output4524_def]
  conv => lhs; cbv
  try rfl
theorem node4524_eq : Flapjack.WordAlloc.removeDeadStructural input4524 value825 value1 value2 = (output4524, value825, value1) := by
  rw [input4524_def, output4524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4522_eq]
  try dsimp only
  rw [node4523_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4524 input4521)).val
theorem input4525_def : input4525 = (.seq input4524 input4521) := by
  unfold input4525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4524)).val
theorem output4525_def : output4525 = (output4524) := by
  unfold output4525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4525_skip : Flapjack.WordAlloc.isSkip output4525 = false := by
  rw [output4525_def]
  conv => lhs; cbv
  try rfl
theorem node4525_eq : Flapjack.WordAlloc.removeDeadStructural input4525 value825 value1 value2 = (output4525, value825, value1) := by
  rw [input4525_def, output4525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4521_eq]
  try dsimp only
  rw [node4524_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1809 0#64))).val
theorem input4526_def : input4526 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1809 0#64)) := by
  unfold input4526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4526_def : output4526 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4526_skip : Flapjack.WordAlloc.isSkip output4526 = true := by
  rw [output4526_def]
  conv => lhs; cbv
  try rfl
theorem node4526_eq : Flapjack.WordAlloc.removeDeadStructural input4526 value825 value1 value2 = (output4526, value825, value1) := by
  rw [input4526_def, output4526_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1805 0#64))).val
theorem input4527_def : input4527 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1805 0#64)) := by
  unfold input4527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4527_def : output4527 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4527_skip : Flapjack.WordAlloc.isSkip output4527 = true := by
  rw [output4527_def]
  conv => lhs; cbv
  try rfl
theorem node4527_eq : Flapjack.WordAlloc.removeDeadStructural input4527 value825 value1 value2 = (output4527, value825, value1) := by
  rw [input4527_def, output4527_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1801 0#64))).val
theorem input4528_def : input4528 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1801 0#64)) := by
  unfold input4528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1801 0#64))).val
theorem output4528_def : output4528 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1801 0#64)) := by
  unfold output4528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4528_skip : Flapjack.WordAlloc.isSkip output4528 = false := by
  rw [output4528_def]
  conv => lhs; cbv
  try rfl
theorem node4528_eq : Flapjack.WordAlloc.removeDeadStructural input4528 value825 value1 value2 = (output4528, value820, value1) := by
  rw [input4528_def, output4528_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4529_def : input4529 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4529_def : output4529 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4529_skip : Flapjack.WordAlloc.isSkip output4529 = true := by
  rw [output4529_def]
  conv => lhs; cbv
  try rfl
theorem node4529_eq : Flapjack.WordAlloc.removeDeadStructural input4529 value820 value1 value2 = (output4529, value820, value1) := by
  rw [input4529_def, output4529_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4529 input4528)).val
theorem input4530_def : input4530 = (.seq input4529 input4528) := by
  unfold input4530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4528)).val
theorem output4530_def : output4530 = (output4528) := by
  unfold output4530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4530_skip : Flapjack.WordAlloc.isSkip output4530 = false := by
  rw [output4530_def]
  conv => lhs; cbv
  try rfl
theorem node4530_eq : Flapjack.WordAlloc.removeDeadStructural input4530 value825 value1 value2 = (output4530, value820, value1) := by
  rw [input4530_def, output4530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4528_eq]
  try dsimp only
  rw [node4529_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4530 input4527)).val
theorem input4531_def : input4531 = (.seq input4530 input4527) := by
  unfold input4531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4530)).val
theorem output4531_def : output4531 = (output4530) := by
  unfold output4531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4531_skip : Flapjack.WordAlloc.isSkip output4531 = false := by
  rw [output4531_def]
  conv => lhs; cbv
  try rfl
theorem node4531_eq : Flapjack.WordAlloc.removeDeadStructural input4531 value825 value1 value2 = (output4531, value820, value1) := by
  rw [input4531_def, output4531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4527_eq]
  try dsimp only
  rw [node4530_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4531 input4526)).val
theorem input4532_def : input4532 = (.seq input4531 input4526) := by
  unfold input4532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4531)).val
theorem output4532_def : output4532 = (output4531) := by
  unfold output4532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4532_skip : Flapjack.WordAlloc.isSkip output4532 = false := by
  rw [output4532_def]
  conv => lhs; cbv
  try rfl
theorem node4532_eq : Flapjack.WordAlloc.removeDeadStructural input4532 value825 value1 value2 = (output4532, value820, value1) := by
  rw [input4532_def, output4532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4526_eq]
  try dsimp only
  rw [node4531_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value826 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1797, 1765), (1793, 1781), (1789, 1785)])).val
theorem input4533_def : input4533 = (Flapjack.WordLangProgHOL.move 1 [(1797, 1765), (1793, 1781), (1789, 1785)]) := by
  unfold input4533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1797, 1765)])).val
theorem output4533_def : output4533 = (Flapjack.WordLangProgHOL.move 1 [(1797, 1765)]) := by
  unfold output4533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4533_skip : Flapjack.WordAlloc.isSkip output4533 = false := by
  rw [output4533_def]
  conv => lhs; cbv
  try rfl
theorem node4533_eq : Flapjack.WordAlloc.removeDeadStructural input4533 value820 value1 value2 = (output4533, value826, value1) := by
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
theorem node4534_eq : Flapjack.WordAlloc.removeDeadStructural input4534 value825 value1 value2 = (output4534, value826, value1) := by
  rw [input4534_def, output4534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4532_eq]
  try dsimp only
  rw [node4533_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value827 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1765 [2])).val
theorem input4535_def : input4535 = (Flapjack.WordLangProgHOL.return 1765 [2]) := by
  unfold input4535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1765 [2])).val
theorem output4535_def : output4535 = (Flapjack.WordLangProgHOL.return 1765 [2]) := by
  unfold output4535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4535_skip : Flapjack.WordAlloc.isSkip output4535 = false := by
  rw [output4535_def]
  conv => lhs; cbv
  try rfl
theorem node4535_eq : Flapjack.WordAlloc.removeDeadStructural input4535 value826 value1 value2 = (output4535, value827, value1) := by
  rw [input4535_def, output4535_def]
  try (conv => lhs; cbv)
  try rfl

def value828 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1785)])).val
theorem input4536_def : input4536 = (Flapjack.WordLangProgHOL.move 0 [(2, 1785)]) := by
  unfold input4536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1785)])).val
theorem output4536_def : output4536 = (Flapjack.WordLangProgHOL.move 0 [(2, 1785)]) := by
  unfold output4536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4536_skip : Flapjack.WordAlloc.isSkip output4536 = false := by
  rw [output4536_def]
  conv => lhs; cbv
  try rfl
theorem node4536_eq : Flapjack.WordAlloc.removeDeadStructural input4536 value827 value1 value2 = (output4536, value828, value1) := by
  rw [input4536_def, output4536_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4536 input4535)).val
theorem input4537_def : input4537 = (.seq input4536 input4535) := by
  unfold input4537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4536 output4535)).val
theorem output4537_def : output4537 = (.seq output4536 output4535) := by
  unfold output4537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4537_skip : Flapjack.WordAlloc.isSkip output4537 = false := by
  rw [output4537_def]
  conv => lhs; cbv
  try rfl
theorem node4537_eq : Flapjack.WordAlloc.removeDeadStructural input4537 value826 value1 value2 = (output4537, value828, value1) := by
  rw [input4537_def, output4537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4535_eq]
  try dsimp only
  rw [node4536_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1785 0#64))).val
theorem input4538_def : input4538 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1785 0#64)) := by
  unfold input4538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1785 0#64))).val
theorem output4538_def : output4538 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1785 0#64)) := by
  unfold output4538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4538_skip : Flapjack.WordAlloc.isSkip output4538 = false := by
  rw [output4538_def]
  conv => lhs; cbv
  try rfl
theorem node4538_eq : Flapjack.WordAlloc.removeDeadStructural input4538 value828 value1 value2 = (output4538, value826, value1) := by
  rw [input4538_def, output4538_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4539_def : input4539 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4539_def : output4539 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4539_skip : Flapjack.WordAlloc.isSkip output4539 = false := by
  rw [output4539_def]
  conv => lhs; cbv
  try rfl
theorem node4539_eq : Flapjack.WordAlloc.removeDeadStructural input4539 value826 value1 value2 = (output4539, value826, value1) := by
  rw [input4539_def, output4539_def]
  try (conv => lhs; cbv)
  try rfl

def value829 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))))

@[irreducible, cbv_opaque] def input4540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1765, 1759)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1769, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1777, 1769)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1781 0#64)))),
      597, 44))
  (some 519) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1765, 1759)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1773, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1773)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1777 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1781, 1773)]))),
      597, 45)))).val
theorem input4540_def : input4540 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1765, 1759)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1769, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1777, 1769)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1781 0#64)))),
      597, 44))
  (some 519) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1765, 1759)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1773, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1773)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1777 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1781, 1773)]))),
      597, 45))) := by
  unfold input4540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1765, 1759)], 597, 44))
  (some 519) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1765, 1759)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1773, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1773)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 45)))).val
theorem output4540_def : output4540 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1765, 1759)], 597, 44))
  (some 519) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1765, 1759)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1773, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1773)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 45))) := by
  unfold output4540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4540_skip : Flapjack.WordAlloc.isSkip output4540 = false := by
  rw [output4540_def]
  conv => lhs; cbv
  try rfl
theorem node4540_eq : Flapjack.WordAlloc.removeDeadStructural input4540 value826 value1 value2 = (output4540, value829, value1) := by
  rw [input4540_def, output4540_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input4541_def : input4541 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input4541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4541_def : output4541 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4541_skip : Flapjack.WordAlloc.isSkip output4541 = true := by
  rw [output4541_def]
  conv => lhs; cbv
  try rfl
theorem node4541_eq : Flapjack.WordAlloc.removeDeadStructural input4541 value829 value1 value2 = (output4541, value829, value1) := by
  rw [input4541_def, output4541_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4541 input4540)).val
theorem input4542_def : input4542 = (.seq input4541 input4540) := by
  unfold input4542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4540)).val
theorem output4542_def : output4542 = (output4540) := by
  unfold output4542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4542_skip : Flapjack.WordAlloc.isSkip output4542 = false := by
  rw [output4542_def]
  conv => lhs; cbv
  try rfl
theorem node4542_eq : Flapjack.WordAlloc.removeDeadStructural input4542 value826 value1 value2 = (output4542, value829, value1) := by
  rw [input4542_def, output4542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4540_eq]
  try dsimp only
  rw [node4541_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value830 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1759, 1717)])).val
theorem input4543_def : input4543 = (Flapjack.WordLangProgHOL.move 0 [(1759, 1717)]) := by
  unfold input4543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1759, 1717)])).val
theorem output4543_def : output4543 = (Flapjack.WordLangProgHOL.move 0 [(1759, 1717)]) := by
  unfold output4543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4543_skip : Flapjack.WordAlloc.isSkip output4543 = false := by
  rw [output4543_def]
  conv => lhs; cbv
  try rfl
theorem node4543_eq : Flapjack.WordAlloc.removeDeadStructural input4543 value829 value1 value2 = (output4543, value830, value1) := by
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
theorem node4544_eq : Flapjack.WordAlloc.removeDeadStructural input4544 value826 value1 value2 = (output4544, value830, value1) := by
  rw [input4544_def, output4544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4542_eq]
  try dsimp only
  rw [node4543_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1753 1#64))).val
theorem input4545_def : input4545 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1753 1#64)) := by
  unfold input4545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4545_def : output4545 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4545_skip : Flapjack.WordAlloc.isSkip output4545 = true := by
  rw [output4545_def]
  conv => lhs; cbv
  try rfl
theorem node4545_eq : Flapjack.WordAlloc.removeDeadStructural input4545 value830 value1 value2 = (output4545, value830, value1) := by
  rw [input4545_def, output4545_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4546_def : input4546 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4546_def : output4546 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4546_skip : Flapjack.WordAlloc.isSkip output4546 = false := by
  rw [output4546_def]
  conv => lhs; cbv
  try rfl
theorem node4546_eq : Flapjack.WordAlloc.removeDeadStructural input4546 value830 value1 value2 = (output4546, value830, value1) := by
  rw [input4546_def, output4546_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1749 1#64))).val
theorem input4547_def : input4547 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1749 1#64)) := by
  unfold input4547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4547_def : output4547 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4547_skip : Flapjack.WordAlloc.isSkip output4547 = true := by
  rw [output4547_def]
  conv => lhs; cbv
  try rfl
theorem node4547_eq : Flapjack.WordAlloc.removeDeadStructural input4547 value830 value1 value2 = (output4547, value830, value1) := by
  rw [input4547_def, output4547_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4547 input4546)).val
theorem input4548_def : input4548 = (.seq input4547 input4546) := by
  unfold input4548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4546)).val
theorem output4548_def : output4548 = (output4546) := by
  unfold output4548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4548_skip : Flapjack.WordAlloc.isSkip output4548 = false := by
  rw [output4548_def]
  conv => lhs; cbv
  try rfl
theorem node4548_eq : Flapjack.WordAlloc.removeDeadStructural input4548 value830 value1 value2 = (output4548, value830, value1) := by
  rw [input4548_def, output4548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4546_eq]
  try dsimp only
  rw [node4547_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4548 input4545)).val
theorem input4549_def : input4549 = (.seq input4548 input4545) := by
  unfold input4549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4548)).val
theorem output4549_def : output4549 = (output4548) := by
  unfold output4549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4549_skip : Flapjack.WordAlloc.isSkip output4549 = false := by
  rw [output4549_def]
  conv => lhs; cbv
  try rfl
theorem node4549_eq : Flapjack.WordAlloc.removeDeadStructural input4549 value830 value1 value2 = (output4549, value830, value1) := by
  rw [input4549_def, output4549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4545_eq]
  try dsimp only
  rw [node4548_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4549 input4544)).val
theorem input4550_def : input4550 = (.seq input4549 input4544) := by
  unfold input4550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4549 output4544)).val
theorem output4550_def : output4550 = (.seq output4549 output4544) := by
  unfold output4550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4550_skip : Flapjack.WordAlloc.isSkip output4550 = false := by
  rw [output4550_def]
  conv => lhs; cbv
  try rfl
theorem node4550_eq : Flapjack.WordAlloc.removeDeadStructural input4550 value826 value1 value2 = (output4550, value830, value1) := by
  rw [input4550_def, output4550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4544_eq]
  try dsimp only
  rw [node4549_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4550 input4539)).val
theorem input4551_def : input4551 = (.seq input4550 input4539) := by
  unfold input4551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4550 output4539)).val
theorem output4551_def : output4551 = (.seq output4550 output4539) := by
  unfold output4551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4551_skip : Flapjack.WordAlloc.isSkip output4551 = false := by
  rw [output4551_def]
  conv => lhs; cbv
  try rfl
theorem node4551_eq : Flapjack.WordAlloc.removeDeadStructural input4551 value826 value1 value2 = (output4551, value830, value1) := by
  rw [input4551_def, output4551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4539_eq]
  try dsimp only
  rw [node4550_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4551 input4538)).val
theorem input4552_def : input4552 = (.seq input4551 input4538) := by
  unfold input4552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4551 output4538)).val
theorem output4552_def : output4552 = (.seq output4551 output4538) := by
  unfold output4552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4552_skip : Flapjack.WordAlloc.isSkip output4552 = false := by
  rw [output4552_def]
  conv => lhs; cbv
  try rfl
theorem node4552_eq : Flapjack.WordAlloc.removeDeadStructural input4552 value828 value1 value2 = (output4552, value830, value1) := by
  rw [input4552_def, output4552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4538_eq]
  try dsimp only
  rw [node4551_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4552 input4537)).val
theorem input4553_def : input4553 = (.seq input4552 input4537) := by
  unfold input4553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4552 output4537)).val
theorem output4553_def : output4553 = (.seq output4552 output4537) := by
  unfold output4553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4553_skip : Flapjack.WordAlloc.isSkip output4553 = false := by
  rw [output4553_def]
  conv => lhs; cbv
  try rfl
theorem node4553_eq : Flapjack.WordAlloc.removeDeadStructural input4553 value826 value1 value2 = (output4553, value830, value1) := by
  rw [input4553_def, output4553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4537_eq]
  try dsimp only
  rw [node4552_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4553 input4534)).val
theorem input4554_def : input4554 = (.seq input4553 input4534) := by
  unfold input4554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4553 output4534)).val
theorem output4554_def : output4554 = (.seq output4553 output4534) := by
  unfold output4554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4554_skip : Flapjack.WordAlloc.isSkip output4554 = false := by
  rw [output4554_def]
  conv => lhs; cbv
  try rfl
theorem node4554_eq : Flapjack.WordAlloc.removeDeadStructural input4554 value825 value1 value2 = (output4554, value830, value1) := by
  rw [input4554_def, output4554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4534_eq]
  try dsimp only
  rw [node4553_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1809, 1737)])).val
theorem input4555_def : input4555 = (Flapjack.WordLangProgHOL.move 2 [(1809, 1737)]) := by
  unfold input4555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4555_def : output4555 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4555_skip : Flapjack.WordAlloc.isSkip output4555 = true := by
  rw [output4555_def]
  conv => lhs; cbv
  try rfl
theorem node4555_eq : Flapjack.WordAlloc.removeDeadStructural input4555 value825 value1 value2 = (output4555, value825, value1) := by
  rw [input4555_def, output4555_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1805, 1745)])).val
theorem input4556_def : input4556 = (Flapjack.WordLangProgHOL.move 2 [(1805, 1745)]) := by
  unfold input4556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4556_def : output4556 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4556_skip : Flapjack.WordAlloc.isSkip output4556 = true := by
  rw [output4556_def]
  conv => lhs; cbv
  try rfl
theorem node4556_eq : Flapjack.WordAlloc.removeDeadStructural input4556 value825 value1 value2 = (output4556, value825, value1) := by
  rw [input4556_def, output4556_def]
  try (conv => lhs; cbv)
  try rfl

def value831 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1801, 1741)])).val
theorem input4557_def : input4557 = (Flapjack.WordLangProgHOL.move 2 [(1801, 1741)]) := by
  unfold input4557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1801, 1741)])).val
theorem output4557_def : output4557 = (Flapjack.WordLangProgHOL.move 2 [(1801, 1741)]) := by
  unfold output4557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4557_skip : Flapjack.WordAlloc.isSkip output4557 = false := by
  rw [output4557_def]
  conv => lhs; cbv
  try rfl
theorem node4557_eq : Flapjack.WordAlloc.removeDeadStructural input4557 value825 value1 value2 = (output4557, value831, value1) := by
  rw [input4557_def, output4557_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4558_def : input4558 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4558_def : output4558 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4558_skip : Flapjack.WordAlloc.isSkip output4558 = true := by
  rw [output4558_def]
  conv => lhs; cbv
  try rfl
theorem node4558_eq : Flapjack.WordAlloc.removeDeadStructural input4558 value831 value1 value2 = (output4558, value831, value1) := by
  rw [input4558_def, output4558_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4558 input4557)).val
theorem input4559_def : input4559 = (.seq input4558 input4557) := by
  unfold input4559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4557)).val
theorem output4559_def : output4559 = (output4557) := by
  unfold output4559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4559_skip : Flapjack.WordAlloc.isSkip output4559 = false := by
  rw [output4559_def]
  conv => lhs; cbv
  try rfl
theorem node4559_eq : Flapjack.WordAlloc.removeDeadStructural input4559 value825 value1 value2 = (output4559, value831, value1) := by
  rw [input4559_def, output4559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4557_eq]
  try dsimp only
  rw [node4558_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4559 input4556)).val
theorem input4560_def : input4560 = (.seq input4559 input4556) := by
  unfold input4560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4559)).val
theorem output4560_def : output4560 = (output4559) := by
  unfold output4560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4560_skip : Flapjack.WordAlloc.isSkip output4560 = false := by
  rw [output4560_def]
  conv => lhs; cbv
  try rfl
theorem node4560_eq : Flapjack.WordAlloc.removeDeadStructural input4560 value825 value1 value2 = (output4560, value831, value1) := by
  rw [input4560_def, output4560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4556_eq]
  try dsimp only
  rw [node4559_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4560 input4555)).val
theorem input4561_def : input4561 = (.seq input4560 input4555) := by
  unfold input4561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4560)).val
theorem output4561_def : output4561 = (output4560) := by
  unfold output4561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4561_skip : Flapjack.WordAlloc.isSkip output4561 = false := by
  rw [output4561_def]
  conv => lhs; cbv
  try rfl
theorem node4561_eq : Flapjack.WordAlloc.removeDeadStructural input4561 value825 value1 value2 = (output4561, value831, value1) := by
  rw [input4561_def, output4561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4555_eq]
  try dsimp only
  rw [node4560_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value832 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1797, 1717), (1793, 1741), (1789, 1709)])).val
theorem input4562_def : input4562 = (Flapjack.WordLangProgHOL.move 2 [(1797, 1717), (1793, 1741), (1789, 1709)]) := by
  unfold input4562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1797, 1717)])).val
theorem output4562_def : output4562 = (Flapjack.WordLangProgHOL.move 2 [(1797, 1717)]) := by
  unfold output4562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4562_skip : Flapjack.WordAlloc.isSkip output4562 = false := by
  rw [output4562_def]
  conv => lhs; cbv
  try rfl
theorem node4562_eq : Flapjack.WordAlloc.removeDeadStructural input4562 value831 value1 value2 = (output4562, value832, value1) := by
  rw [input4562_def, output4562_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4562 input4561)).val
theorem input4563_def : input4563 = (.seq input4562 input4561) := by
  unfold input4563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4562 output4561)).val
theorem output4563_def : output4563 = (.seq output4562 output4561) := by
  unfold output4563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4563_skip : Flapjack.WordAlloc.isSkip output4563 = false := by
  rw [output4563_def]
  conv => lhs; cbv
  try rfl
theorem node4563_eq : Flapjack.WordAlloc.removeDeadStructural input4563 value825 value1 value2 = (output4563, value832, value1) := by
  rw [input4563_def, output4563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4561_eq]
  try dsimp only
  rw [node4562_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4564_def : input4564 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4564_def : output4564 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4564_skip : Flapjack.WordAlloc.isSkip output4564 = true := by
  rw [output4564_def]
  conv => lhs; cbv
  try rfl
theorem node4564_eq : Flapjack.WordAlloc.removeDeadStructural input4564 value832 value1 value2 = (output4564, value832, value1) := by
  rw [input4564_def, output4564_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4564 input4563)).val
theorem input4565_def : input4565 = (.seq input4564 input4563) := by
  unfold input4565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4563)).val
theorem output4565_def : output4565 = (output4563) := by
  unfold output4565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4565_skip : Flapjack.WordAlloc.isSkip output4565 = false := by
  rw [output4565_def]
  conv => lhs; cbv
  try rfl
theorem node4565_eq : Flapjack.WordAlloc.removeDeadStructural input4565 value825 value1 value2 = (output4565, value832, value1) := by
  rw [input4565_def, output4565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4563_eq]
  try dsimp only
  rw [node4564_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value833 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 1745

def value834 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1741 value833 input4554 input4565)).val
theorem input4566_def : input4566 = (.ite value15 1741 value833 input4554 input4565) := by
  unfold input4566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1741 value833 output4554 output4565)).val
theorem output4566_def : output4566 = (.ite value15 1741 value833 output4554 output4565) := by
  unfold output4566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4566_skip : Flapjack.WordAlloc.isSkip output4566 = false := by
  rw [output4566_def]
  conv => lhs; cbv
  try rfl
theorem node4566_eq : Flapjack.WordAlloc.removeDeadStructural input4566 value825 value1 value2 = (output4566, value834, value1) := by
  rw [input4566_def, output4566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node4554_eq]
  try dsimp only
  rw [node4565_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4566 input4525)).val
theorem input4567_def : input4567 = (.seq input4566 input4525) := by
  unfold input4567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4566 output4525)).val
theorem output4567_def : output4567 = (.seq output4566 output4525) := by
  unfold output4567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4567_skip : Flapjack.WordAlloc.isSkip output4567 = false := by
  rw [output4567_def]
  conv => lhs; cbv
  try rfl
theorem node4567_eq : Flapjack.WordAlloc.removeDeadStructural input4567 value825 value1 value2 = (output4567, value834, value1) := by
  rw [input4567_def, output4567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4525_eq]
  try dsimp only
  rw [node4566_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1745 25#64))).val
theorem input4568_def : input4568 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1745 25#64)) := by
  unfold input4568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1745 25#64))).val
theorem output4568_def : output4568 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1745 25#64)) := by
  unfold output4568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4568_skip : Flapjack.WordAlloc.isSkip output4568 = false := by
  rw [output4568_def]
  conv => lhs; cbv
  try rfl
theorem node4568_eq : Flapjack.WordAlloc.removeDeadStructural input4568 value834 value1 value2 = (output4568, value832, value1) := by
  rw [input4568_def, output4568_def]
  try (conv => lhs; cbv)
  try rfl

def value835 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
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

@[irreducible, cbv_opaque] def input4569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1741, 1721)])).val
theorem input4569_def : input4569 = (Flapjack.WordLangProgHOL.move 0 [(1741, 1721)]) := by
  unfold input4569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1741, 1721)])).val
theorem output4569_def : output4569 = (Flapjack.WordLangProgHOL.move 0 [(1741, 1721)]) := by
  unfold output4569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4569_skip : Flapjack.WordAlloc.isSkip output4569 = false := by
  rw [output4569_def]
  conv => lhs; cbv
  try rfl
theorem node4569_eq : Flapjack.WordAlloc.removeDeadStructural input4569 value832 value1 value2 = (output4569, value835, value1) := by
  rw [input4569_def, output4569_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4570_def : input4570 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4570_def : output4570 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4570_skip : Flapjack.WordAlloc.isSkip output4570 = false := by
  rw [output4570_def]
  conv => lhs; cbv
  try rfl
theorem node4570_eq : Flapjack.WordAlloc.removeDeadStructural input4570 value835 value1 value2 = (output4570, value835, value1) := by
  rw [input4570_def, output4570_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1737 0#64))).val
theorem input4571_def : input4571 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1737 0#64)) := by
  unfold input4571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4571_def : output4571 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4571_skip : Flapjack.WordAlloc.isSkip output4571 = true := by
  rw [output4571_def]
  conv => lhs; cbv
  try rfl
theorem node4571_eq : Flapjack.WordAlloc.removeDeadStructural input4571 value835 value1 value2 = (output4571, value835, value1) := by
  rw [input4571_def, output4571_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4572_def : input4572 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4572_def : output4572 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4572_skip : Flapjack.WordAlloc.isSkip output4572 = false := by
  rw [output4572_def]
  conv => lhs; cbv
  try rfl
theorem node4572_eq : Flapjack.WordAlloc.removeDeadStructural input4572 value835 value1 value2 = (output4572, value835, value1) := by
  rw [input4572_def, output4572_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1733 0#64))).val
theorem input4573_def : input4573 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1733 0#64)) := by
  unfold input4573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4573_def : output4573 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4573_skip : Flapjack.WordAlloc.isSkip output4573 = true := by
  rw [output4573_def]
  conv => lhs; cbv
  try rfl
theorem node4573_eq : Flapjack.WordAlloc.removeDeadStructural input4573 value835 value1 value2 = (output4573, value835, value1) := by
  rw [input4573_def, output4573_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4573 input4572)).val
theorem input4574_def : input4574 = (.seq input4573 input4572) := by
  unfold input4574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4572)).val
theorem output4574_def : output4574 = (output4572) := by
  unfold output4574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4574_skip : Flapjack.WordAlloc.isSkip output4574 = false := by
  rw [output4574_def]
  conv => lhs; cbv
  try rfl
theorem node4574_eq : Flapjack.WordAlloc.removeDeadStructural input4574 value835 value1 value2 = (output4574, value835, value1) := by
  rw [input4574_def, output4574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4572_eq]
  try dsimp only
  rw [node4573_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4574 input4571)).val
theorem input4575_def : input4575 = (.seq input4574 input4571) := by
  unfold input4575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4574)).val
theorem output4575_def : output4575 = (output4574) := by
  unfold output4575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4575_skip : Flapjack.WordAlloc.isSkip output4575 = false := by
  rw [output4575_def]
  conv => lhs; cbv
  try rfl
theorem node4575_eq : Flapjack.WordAlloc.removeDeadStructural input4575 value835 value1 value2 = (output4575, value835, value1) := by
  rw [input4575_def, output4575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4571_eq]
  try dsimp only
  rw [node4574_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1729 0#64))).val
theorem input4576_def : input4576 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1729 0#64)) := by
  unfold input4576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4576_def : output4576 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4576_skip : Flapjack.WordAlloc.isSkip output4576 = true := by
  rw [output4576_def]
  conv => lhs; cbv
  try rfl
theorem node4576_eq : Flapjack.WordAlloc.removeDeadStructural input4576 value835 value1 value2 = (output4576, value835, value1) := by
  rw [input4576_def, output4576_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1725 0#64))).val
theorem input4577_def : input4577 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1725 0#64)) := by
  unfold input4577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4577_def : output4577 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4577_skip : Flapjack.WordAlloc.isSkip output4577 = true := by
  rw [output4577_def]
  conv => lhs; cbv
  try rfl
theorem node4577_eq : Flapjack.WordAlloc.removeDeadStructural input4577 value835 value1 value2 = (output4577, value835, value1) := by
  rw [input4577_def, output4577_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1721 0#64))).val
theorem input4578_def : input4578 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1721 0#64)) := by
  unfold input4578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1721 0#64))).val
theorem output4578_def : output4578 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1721 0#64)) := by
  unfold output4578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4578_skip : Flapjack.WordAlloc.isSkip output4578 = false := by
  rw [output4578_def]
  conv => lhs; cbv
  try rfl
theorem node4578_eq : Flapjack.WordAlloc.removeDeadStructural input4578 value835 value1 value2 = (output4578, value830, value1) := by
  rw [input4578_def, output4578_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4579_def : input4579 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4579_def : output4579 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4579_skip : Flapjack.WordAlloc.isSkip output4579 = true := by
  rw [output4579_def]
  conv => lhs; cbv
  try rfl
theorem node4579_eq : Flapjack.WordAlloc.removeDeadStructural input4579 value830 value1 value2 = (output4579, value830, value1) := by
  rw [input4579_def, output4579_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4579 input4578)).val
theorem input4580_def : input4580 = (.seq input4579 input4578) := by
  unfold input4580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4578)).val
theorem output4580_def : output4580 = (output4578) := by
  unfold output4580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4580_skip : Flapjack.WordAlloc.isSkip output4580 = false := by
  rw [output4580_def]
  conv => lhs; cbv
  try rfl
theorem node4580_eq : Flapjack.WordAlloc.removeDeadStructural input4580 value835 value1 value2 = (output4580, value830, value1) := by
  rw [input4580_def, output4580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4578_eq]
  try dsimp only
  rw [node4579_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4580 input4577)).val
theorem input4581_def : input4581 = (.seq input4580 input4577) := by
  unfold input4581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4580)).val
theorem output4581_def : output4581 = (output4580) := by
  unfold output4581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4581_skip : Flapjack.WordAlloc.isSkip output4581 = false := by
  rw [output4581_def]
  conv => lhs; cbv
  try rfl
theorem node4581_eq : Flapjack.WordAlloc.removeDeadStructural input4581 value835 value1 value2 = (output4581, value830, value1) := by
  rw [input4581_def, output4581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4577_eq]
  try dsimp only
  rw [node4580_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4581 input4576)).val
theorem input4582_def : input4582 = (.seq input4581 input4576) := by
  unfold input4582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4581)).val
theorem output4582_def : output4582 = (output4581) := by
  unfold output4582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4582_skip : Flapjack.WordAlloc.isSkip output4582 = false := by
  rw [output4582_def]
  conv => lhs; cbv
  try rfl
theorem node4582_eq : Flapjack.WordAlloc.removeDeadStructural input4582 value835 value1 value2 = (output4582, value830, value1) := by
  rw [input4582_def, output4582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4576_eq]
  try dsimp only
  rw [node4581_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value836 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1717, 1685), (1713, 1701), (1709, 1705)])).val
theorem input4583_def : input4583 = (Flapjack.WordLangProgHOL.move 1 [(1717, 1685), (1713, 1701), (1709, 1705)]) := by
  unfold input4583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1717, 1685)])).val
theorem output4583_def : output4583 = (Flapjack.WordLangProgHOL.move 1 [(1717, 1685)]) := by
  unfold output4583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4583_skip : Flapjack.WordAlloc.isSkip output4583 = false := by
  rw [output4583_def]
  conv => lhs; cbv
  try rfl
theorem node4583_eq : Flapjack.WordAlloc.removeDeadStructural input4583 value830 value1 value2 = (output4583, value836, value1) := by
  rw [input4583_def, output4583_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4583 input4582)).val
theorem input4584_def : input4584 = (.seq input4583 input4582) := by
  unfold input4584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4583 output4582)).val
theorem output4584_def : output4584 = (.seq output4583 output4582) := by
  unfold output4584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4584_skip : Flapjack.WordAlloc.isSkip output4584 = false := by
  rw [output4584_def]
  conv => lhs; cbv
  try rfl
theorem node4584_eq : Flapjack.WordAlloc.removeDeadStructural input4584 value835 value1 value2 = (output4584, value836, value1) := by
  rw [input4584_def, output4584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4582_eq]
  try dsimp only
  rw [node4583_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value837 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1685 [2])).val
theorem input4585_def : input4585 = (Flapjack.WordLangProgHOL.return 1685 [2]) := by
  unfold input4585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1685 [2])).val
theorem output4585_def : output4585 = (Flapjack.WordLangProgHOL.return 1685 [2]) := by
  unfold output4585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4585_skip : Flapjack.WordAlloc.isSkip output4585 = false := by
  rw [output4585_def]
  conv => lhs; cbv
  try rfl
theorem node4585_eq : Flapjack.WordAlloc.removeDeadStructural input4585 value836 value1 value2 = (output4585, value837, value1) := by
  rw [input4585_def, output4585_def]
  try (conv => lhs; cbv)
  try rfl

def value838 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
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

@[irreducible, cbv_opaque] def input4586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1705)])).val
theorem input4586_def : input4586 = (Flapjack.WordLangProgHOL.move 0 [(2, 1705)]) := by
  unfold input4586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1705)])).val
theorem output4586_def : output4586 = (Flapjack.WordLangProgHOL.move 0 [(2, 1705)]) := by
  unfold output4586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4586_skip : Flapjack.WordAlloc.isSkip output4586 = false := by
  rw [output4586_def]
  conv => lhs; cbv
  try rfl
theorem node4586_eq : Flapjack.WordAlloc.removeDeadStructural input4586 value837 value1 value2 = (output4586, value838, value1) := by
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
theorem node4587_eq : Flapjack.WordAlloc.removeDeadStructural input4587 value836 value1 value2 = (output4587, value838, value1) := by
  rw [input4587_def, output4587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4585_eq]
  try dsimp only
  rw [node4586_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1705 0#64))).val
theorem input4588_def : input4588 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1705 0#64)) := by
  unfold input4588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1705 0#64))).val
theorem output4588_def : output4588 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1705 0#64)) := by
  unfold output4588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4588_skip : Flapjack.WordAlloc.isSkip output4588 = false := by
  rw [output4588_def]
  conv => lhs; cbv
  try rfl
theorem node4588_eq : Flapjack.WordAlloc.removeDeadStructural input4588 value838 value1 value2 = (output4588, value836, value1) := by
  rw [input4588_def, output4588_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4589_def : input4589 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4589_def : output4589 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4589_skip : Flapjack.WordAlloc.isSkip output4589 = false := by
  rw [output4589_def]
  conv => lhs; cbv
  try rfl
theorem node4589_eq : Flapjack.WordAlloc.removeDeadStructural input4589 value836 value1 value2 = (output4589, value836, value1) := by
  rw [input4589_def, output4589_def]
  try (conv => lhs; cbv)
  try rfl

def value839 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input4590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1685, 1679)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1689, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1697, 1689)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1701 0#64)))),
      597, 42))
  (some 518) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1685, 1679)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1693, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1693)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1697 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1701, 1693)]))),
      597, 43)))).val
theorem input4590_def : input4590 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1685, 1679)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1689, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1697, 1689)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1701 0#64)))),
      597, 42))
  (some 518) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1685, 1679)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1693, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1693)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1697 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1701, 1693)]))),
      597, 43))) := by
  unfold input4590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1685, 1679)], 597, 42))
  (some 518) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1685, 1679)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1693, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1693)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 43)))).val
theorem output4590_def : output4590 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                        Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1685, 1679)], 597, 42))
  (some 518) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1685, 1679)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1693, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1693)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 43))) := by
  unfold output4590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4590_skip : Flapjack.WordAlloc.isSkip output4590 = false := by
  rw [output4590_def]
  conv => lhs; cbv
  try rfl
theorem node4590_eq : Flapjack.WordAlloc.removeDeadStructural input4590 value836 value1 value2 = (output4590, value839, value1) := by
  rw [input4590_def, output4590_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input4591_def : input4591 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input4591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4591_def : output4591 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4591_skip : Flapjack.WordAlloc.isSkip output4591 = true := by
  rw [output4591_def]
  conv => lhs; cbv
  try rfl
theorem node4591_eq : Flapjack.WordAlloc.removeDeadStructural input4591 value839 value1 value2 = (output4591, value839, value1) := by
  rw [input4591_def, output4591_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4591 input4590)).val
theorem input4592_def : input4592 = (.seq input4591 input4590) := by
  unfold input4592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4590)).val
theorem output4592_def : output4592 = (output4590) := by
  unfold output4592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4592_skip : Flapjack.WordAlloc.isSkip output4592 = false := by
  rw [output4592_def]
  conv => lhs; cbv
  try rfl
theorem node4592_eq : Flapjack.WordAlloc.removeDeadStructural input4592 value836 value1 value2 = (output4592, value839, value1) := by
  rw [input4592_def, output4592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4590_eq]
  try dsimp only
  rw [node4591_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value840 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1679, 1637)])).val
theorem input4593_def : input4593 = (Flapjack.WordLangProgHOL.move 0 [(1679, 1637)]) := by
  unfold input4593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1679, 1637)])).val
theorem output4593_def : output4593 = (Flapjack.WordLangProgHOL.move 0 [(1679, 1637)]) := by
  unfold output4593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4593_skip : Flapjack.WordAlloc.isSkip output4593 = false := by
  rw [output4593_def]
  conv => lhs; cbv
  try rfl
theorem node4593_eq : Flapjack.WordAlloc.removeDeadStructural input4593 value839 value1 value2 = (output4593, value840, value1) := by
  rw [input4593_def, output4593_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4593 input4592)).val
theorem input4594_def : input4594 = (.seq input4593 input4592) := by
  unfold input4594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4593 output4592)).val
theorem output4594_def : output4594 = (.seq output4593 output4592) := by
  unfold output4594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4594_skip : Flapjack.WordAlloc.isSkip output4594 = false := by
  rw [output4594_def]
  conv => lhs; cbv
  try rfl
theorem node4594_eq : Flapjack.WordAlloc.removeDeadStructural input4594 value836 value1 value2 = (output4594, value840, value1) := by
  rw [input4594_def, output4594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4592_eq]
  try dsimp only
  rw [node4593_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1673 1#64))).val
theorem input4595_def : input4595 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1673 1#64)) := by
  unfold input4595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4595_def : output4595 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4595_skip : Flapjack.WordAlloc.isSkip output4595 = true := by
  rw [output4595_def]
  conv => lhs; cbv
  try rfl
theorem node4595_eq : Flapjack.WordAlloc.removeDeadStructural input4595 value840 value1 value2 = (output4595, value840, value1) := by
  rw [input4595_def, output4595_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4596_def : input4596 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4596_def : output4596 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4596_skip : Flapjack.WordAlloc.isSkip output4596 = false := by
  rw [output4596_def]
  conv => lhs; cbv
  try rfl
theorem node4596_eq : Flapjack.WordAlloc.removeDeadStructural input4596 value840 value1 value2 = (output4596, value840, value1) := by
  rw [input4596_def, output4596_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1669 1#64))).val
theorem input4597_def : input4597 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1669 1#64)) := by
  unfold input4597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4597_def : output4597 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4597_skip : Flapjack.WordAlloc.isSkip output4597 = true := by
  rw [output4597_def]
  conv => lhs; cbv
  try rfl
theorem node4597_eq : Flapjack.WordAlloc.removeDeadStructural input4597 value840 value1 value2 = (output4597, value840, value1) := by
  rw [input4597_def, output4597_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4597 input4596)).val
theorem input4598_def : input4598 = (.seq input4597 input4596) := by
  unfold input4598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4596)).val
theorem output4598_def : output4598 = (output4596) := by
  unfold output4598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4598_skip : Flapjack.WordAlloc.isSkip output4598 = false := by
  rw [output4598_def]
  conv => lhs; cbv
  try rfl
theorem node4598_eq : Flapjack.WordAlloc.removeDeadStructural input4598 value840 value1 value2 = (output4598, value840, value1) := by
  rw [input4598_def, output4598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4596_eq]
  try dsimp only
  rw [node4597_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4598 input4595)).val
theorem input4599_def : input4599 = (.seq input4598 input4595) := by
  unfold input4599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4598)).val
theorem output4599_def : output4599 = (output4598) := by
  unfold output4599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4599_skip : Flapjack.WordAlloc.isSkip output4599 = false := by
  rw [output4599_def]
  conv => lhs; cbv
  try rfl
theorem node4599_eq : Flapjack.WordAlloc.removeDeadStructural input4599 value840 value1 value2 = (output4599, value840, value1) := by
  rw [input4599_def, output4599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4595_eq]
  try dsimp only
  rw [node4598_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4599 input4594)).val
theorem input4600_def : input4600 = (.seq input4599 input4594) := by
  unfold input4600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4599 output4594)).val
theorem output4600_def : output4600 = (.seq output4599 output4594) := by
  unfold output4600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4600_skip : Flapjack.WordAlloc.isSkip output4600 = false := by
  rw [output4600_def]
  conv => lhs; cbv
  try rfl
theorem node4600_eq : Flapjack.WordAlloc.removeDeadStructural input4600 value836 value1 value2 = (output4600, value840, value1) := by
  rw [input4600_def, output4600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4594_eq]
  try dsimp only
  rw [node4599_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4600 input4589)).val
theorem input4601_def : input4601 = (.seq input4600 input4589) := by
  unfold input4601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4600 output4589)).val
theorem output4601_def : output4601 = (.seq output4600 output4589) := by
  unfold output4601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4601_skip : Flapjack.WordAlloc.isSkip output4601 = false := by
  rw [output4601_def]
  conv => lhs; cbv
  try rfl
theorem node4601_eq : Flapjack.WordAlloc.removeDeadStructural input4601 value836 value1 value2 = (output4601, value840, value1) := by
  rw [input4601_def, output4601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4589_eq]
  try dsimp only
  rw [node4600_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4601 input4588)).val
theorem input4602_def : input4602 = (.seq input4601 input4588) := by
  unfold input4602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4601 output4588)).val
theorem output4602_def : output4602 = (.seq output4601 output4588) := by
  unfold output4602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4602_skip : Flapjack.WordAlloc.isSkip output4602 = false := by
  rw [output4602_def]
  conv => lhs; cbv
  try rfl
theorem node4602_eq : Flapjack.WordAlloc.removeDeadStructural input4602 value838 value1 value2 = (output4602, value840, value1) := by
  rw [input4602_def, output4602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4588_eq]
  try dsimp only
  rw [node4601_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4602 input4587)).val
theorem input4603_def : input4603 = (.seq input4602 input4587) := by
  unfold input4603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4602 output4587)).val
theorem output4603_def : output4603 = (.seq output4602 output4587) := by
  unfold output4603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4603_skip : Flapjack.WordAlloc.isSkip output4603 = false := by
  rw [output4603_def]
  conv => lhs; cbv
  try rfl
theorem node4603_eq : Flapjack.WordAlloc.removeDeadStructural input4603 value836 value1 value2 = (output4603, value840, value1) := by
  rw [input4603_def, output4603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4587_eq]
  try dsimp only
  rw [node4602_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4603 input4584)).val
theorem input4604_def : input4604 = (.seq input4603 input4584) := by
  unfold input4604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4603 output4584)).val
theorem output4604_def : output4604 = (.seq output4603 output4584) := by
  unfold output4604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4604_skip : Flapjack.WordAlloc.isSkip output4604 = false := by
  rw [output4604_def]
  conv => lhs; cbv
  try rfl
theorem node4604_eq : Flapjack.WordAlloc.removeDeadStructural input4604 value835 value1 value2 = (output4604, value840, value1) := by
  rw [input4604_def, output4604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4584_eq]
  try dsimp only
  rw [node4603_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1729, 1657)])).val
theorem input4605_def : input4605 = (Flapjack.WordLangProgHOL.move 2 [(1729, 1657)]) := by
  unfold input4605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4605_def : output4605 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4605_skip : Flapjack.WordAlloc.isSkip output4605 = true := by
  rw [output4605_def]
  conv => lhs; cbv
  try rfl
theorem node4605_eq : Flapjack.WordAlloc.removeDeadStructural input4605 value835 value1 value2 = (output4605, value835, value1) := by
  rw [input4605_def, output4605_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1725, 1665)])).val
theorem input4606_def : input4606 = (Flapjack.WordLangProgHOL.move 2 [(1725, 1665)]) := by
  unfold input4606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4606_def : output4606 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4606_skip : Flapjack.WordAlloc.isSkip output4606 = true := by
  rw [output4606_def]
  conv => lhs; cbv
  try rfl
theorem node4606_eq : Flapjack.WordAlloc.removeDeadStructural input4606 value835 value1 value2 = (output4606, value835, value1) := by
  rw [input4606_def, output4606_def]
  try (conv => lhs; cbv)
  try rfl

def value841 : Flapjack.NumSet :=
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1721, 1661)])).val
theorem input4607_def : input4607 = (Flapjack.WordLangProgHOL.move 2 [(1721, 1661)]) := by
  unfold input4607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1721, 1661)])).val
theorem output4607_def : output4607 = (Flapjack.WordLangProgHOL.move 2 [(1721, 1661)]) := by
  unfold output4607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4607_skip : Flapjack.WordAlloc.isSkip output4607 = false := by
  rw [output4607_def]
  conv => lhs; cbv
  try rfl
theorem node4607_eq : Flapjack.WordAlloc.removeDeadStructural input4607 value835 value1 value2 = (output4607, value841, value1) := by
  rw [input4607_def, output4607_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node4607_eq
end InitECandidate.Proofs.DeadStages597
