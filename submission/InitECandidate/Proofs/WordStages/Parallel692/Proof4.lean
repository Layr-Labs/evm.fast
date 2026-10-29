import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel692.Data4
import InitECandidate.Proofs.WordStages.Parallel692.Data3
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel692
theorem pass692_4_eq : WordCse.wordCommonSubexpElim (pass692_3) = pass692_4 := by
  kernel_rfl
#print axioms pass692_4_eq
end InitECandidate.Proofs.WordStages.Parallel692
