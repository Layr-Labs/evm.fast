import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_186
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_186
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_186_eq : LabToTarget.sectionLabels 106024 Initial186.lines [] = (106480, localLabels0_186) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_186_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
