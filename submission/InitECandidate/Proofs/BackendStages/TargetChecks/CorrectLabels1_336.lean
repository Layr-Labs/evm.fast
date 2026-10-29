import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_336
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_336
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_336_eq : LabToTarget.sectionLabels 289060 Reencode0_336.lines [] = (289276, localLabels1_336) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_336_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
