import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_402
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_402
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_402_eq : LabToTarget.sectionLabels 333320 Reencode0_402.lines [] = (333740, localLabels1_402) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_402_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
