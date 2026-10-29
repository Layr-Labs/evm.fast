import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel652.Data7
import InitECandidate.Proofs.WordStages.Parallel652.Data6
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel652
theorem pass652_7_eq : WordUnreach.removeUnreach (pass652_6) = pass652_7 := by
  kernel_rfl
#print axioms pass652_7_eq
end InitECandidate.Proofs.WordStages.Parallel652
