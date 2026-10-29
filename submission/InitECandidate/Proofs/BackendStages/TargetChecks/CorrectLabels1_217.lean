import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_217
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_217
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_217_eq : LabToTarget.sectionLabels 132244 Reencode0_217.lines [] = (133392, localLabels1_217) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_217_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
