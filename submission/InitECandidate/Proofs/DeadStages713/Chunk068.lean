import InitECandidate.Proofs.DeadStages713.Chunk067
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input17408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17407 input17406)).val
theorem input17408_def : input17408 = (.seq input17407 input17406) := by
  unfold input17408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17407 output17406)).val
theorem output17408_def : output17408 = (.seq output17407 output17406) := by
  unfold output17408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17408_skip : Flapjack.WordAlloc.isSkip output17408 = false := by
  rw [output17408_def]
  conv => lhs; cbv
  try rfl
theorem node17408_eq : Flapjack.WordAlloc.removeDeadStructural input17408 value0 value1 value2 = (output17408, value6906, value1) := by
  rw [input17408_def, output17408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node17406_eq]
  try dsimp only
  rw [node17407_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node17408_eq
end InitECandidate.Proofs.DeadStages713
