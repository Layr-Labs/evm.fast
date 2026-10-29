import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_494
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_494
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_494_eq : LabToTarget.sectionLabels 402664 Initial494.lines [] = (402860, localLabels0_494) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_494_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
