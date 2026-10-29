import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_459
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_459
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_459_eq : LabToTarget.sectionLabels 374040 Reencode0_459.lines [] = (386588, localLabels1_459) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_459_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
