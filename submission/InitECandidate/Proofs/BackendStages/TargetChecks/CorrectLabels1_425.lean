import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_425
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_425
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_425_eq : LabToTarget.sectionLabels 345648 Reencode0_425.lines [] = (345844, localLabels1_425) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_425_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
