import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_241
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_241
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_241_eq : LabToTarget.sectionLabels 188780 Reencode0_241.lines [] = (189300, localLabels1_241) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_241_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
