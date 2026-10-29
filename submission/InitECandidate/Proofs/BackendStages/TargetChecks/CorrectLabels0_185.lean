import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_185
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_185
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_185_eq : LabToTarget.sectionLabels 105860 Initial185.lines [] = (106024, localLabels0_185) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_185_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
