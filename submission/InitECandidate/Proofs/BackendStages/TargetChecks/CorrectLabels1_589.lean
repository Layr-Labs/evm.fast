import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_589
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_589
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_589_eq : LabToTarget.sectionLabels 490796 Reencode0_589.lines [] = (491008, localLabels1_589) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_589_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
