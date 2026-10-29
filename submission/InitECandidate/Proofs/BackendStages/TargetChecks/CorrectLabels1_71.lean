import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_71
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_71
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_71_eq : LabToTarget.sectionLabels 6084 Reencode0_71.lines [] = (6540, localLabels1_71) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_71_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
