import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_280
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_280
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_280_eq : LabToTarget.sectionLabels 239760 Reencode0_280.lines [] = (239948, localLabels1_280) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_280_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
