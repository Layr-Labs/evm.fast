import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_427
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_427
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_427_eq : LabToTarget.sectionLabels 346704 Reencode0_427.lines [] = (348316, localLabels1_427) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_427_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
