import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_173
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_173
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_173_eq : LabToTarget.sectionLabels 102052 Initial173.lines [] = (102120, localLabels0_173) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_173_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
