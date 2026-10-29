import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_516
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_516
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_516_eq : LabToTarget.sectionLabels 420072 Initial516.lines [] = (420832, localLabels0_516) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_516_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
