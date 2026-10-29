import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_439
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_439
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_439_eq : LabToTarget.sectionLabels 355400 Reencode0_439.lines [] = (356644, localLabels1_439) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_439_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
