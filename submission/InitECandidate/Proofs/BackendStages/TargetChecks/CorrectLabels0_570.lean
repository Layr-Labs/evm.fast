import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_570
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_570
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_570_eq : LabToTarget.sectionLabels 471308 Initial570.lines [] = (472784, localLabels0_570) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_570_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
