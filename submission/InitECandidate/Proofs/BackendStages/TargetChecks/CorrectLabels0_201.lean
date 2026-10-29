import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_201
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_201
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_201_eq : LabToTarget.sectionLabels 115188 Initial201.lines [] = (115204, localLabels0_201) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_201_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
