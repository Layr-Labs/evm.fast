import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_493
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_493
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_493_eq : LabToTarget.sectionLabels 402468 Initial493.lines [] = (402664, localLabels0_493) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_493_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
