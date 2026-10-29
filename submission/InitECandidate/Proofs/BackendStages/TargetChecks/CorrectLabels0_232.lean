import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_232
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_232
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_232_eq : LabToTarget.sectionLabels 170728 Initial232.lines [] = (171460, localLabels0_232) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_232_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
