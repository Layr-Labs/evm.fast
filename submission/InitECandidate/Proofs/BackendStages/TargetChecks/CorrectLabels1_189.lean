import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_189
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_189
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_189_eq : LabToTarget.sectionLabels 107144 Reencode0_189.lines [] = (107616, localLabels1_189) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_189_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
