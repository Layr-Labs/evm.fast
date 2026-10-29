import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_298
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_298
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_298_eq : LabToTarget.sectionLabels 252064 Reencode0_298.lines [] = (252384, localLabels1_298) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_298_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
