import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_106
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_106
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_106_eq : LabToTarget.sectionLabels 12772 Initial106.lines [] = (12904, localLabels0_106) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_106_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
