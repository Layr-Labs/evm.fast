import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_212
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_212
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_212_eq : LabToTarget.sectionLabels 131344 Reencode0_212.lines [] = (132008, localLabels1_212) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_212_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
