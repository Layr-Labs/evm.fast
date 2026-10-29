import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_452
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_452
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_452_eq : LabToTarget.sectionLabels 364752 Initial452.lines [] = (365148, localLabels0_452) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_452_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
