import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_348
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_348
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_348_eq : LabToTarget.sectionLabels 300652 Reencode0_348.lines [] = (300684, localLabels1_348) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_348_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
