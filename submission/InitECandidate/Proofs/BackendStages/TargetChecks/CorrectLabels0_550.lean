import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_550
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_550
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_550_eq : LabToTarget.sectionLabels 448948 Initial550.lines [] = (453592, localLabels0_550) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_550_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
