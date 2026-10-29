import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages808.Data
import InitECandidate.Proofs.WordStages.Parallel808.Data8
import InitECandidate.Proofs.WordStages.Parallel808.Data9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages.Parallel808
namespace InitECandidate.Proofs.ClashStages808
theorem apply_eq : WordAlloc.applyColour (WordAlloc.totalColour colour) pass808_8 = pass808_9 := by
  kernel_rfl
#print axioms apply_eq
end InitECandidate.Proofs.ClashStages808
