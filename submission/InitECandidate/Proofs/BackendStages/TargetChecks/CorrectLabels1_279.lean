import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_279
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_279
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_279_eq : LabToTarget.sectionLabels 236692 Reencode0_279.lines [] = (239760, localLabels1_279) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_279_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
