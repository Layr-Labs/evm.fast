import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_529
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_529
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_529_eq : LabToTarget.sectionLabels 431352 Reencode0_529.lines [] = (431644, localLabels1_529) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_529_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
