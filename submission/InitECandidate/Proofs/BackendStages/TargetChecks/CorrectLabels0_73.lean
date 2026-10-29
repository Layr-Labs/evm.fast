import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_73
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_73
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_73_eq : LabToTarget.sectionLabels 6564 Initial73.lines [] = (6600, localLabels0_73) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_73_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
