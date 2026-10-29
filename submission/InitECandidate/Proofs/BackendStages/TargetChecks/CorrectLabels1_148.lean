import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_148
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_148
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_148_eq : LabToTarget.sectionLabels 36324 Reencode0_148.lines [] = (36884, localLabels1_148) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_148_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
