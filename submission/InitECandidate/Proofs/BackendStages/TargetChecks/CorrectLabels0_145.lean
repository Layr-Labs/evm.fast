import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_145
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_145
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_145_eq : LabToTarget.sectionLabels 33884 Initial145.lines [] = (34136, localLabels0_145) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_145_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
