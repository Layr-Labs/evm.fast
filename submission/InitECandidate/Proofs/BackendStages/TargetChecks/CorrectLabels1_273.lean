import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_273
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_273
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_273_eq : LabToTarget.sectionLabels 224836 Reencode0_273.lines [] = (225056, localLabels1_273) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_273_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
