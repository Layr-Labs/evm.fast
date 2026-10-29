import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel647.Data4
import InitECandidate.Proofs.WordStages.Parallel647.Data3
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel647
theorem pass647_4_eq : WordCse.wordCommonSubexpElim (pass647_3) = pass647_4 := by
  kernel_rfl
#print axioms pass647_4_eq
end InitECandidate.Proofs.WordStages.Parallel647
