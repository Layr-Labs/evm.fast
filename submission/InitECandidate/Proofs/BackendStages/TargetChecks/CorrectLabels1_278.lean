import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_278
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_278
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_278_eq : LabToTarget.sectionLabels 235500 Reencode0_278.lines [] = (236692, localLabels1_278) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_278_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
