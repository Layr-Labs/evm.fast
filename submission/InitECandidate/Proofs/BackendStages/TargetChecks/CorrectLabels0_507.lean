import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_507
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_507
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_507_eq : LabToTarget.sectionLabels 412444 Initial507.lines [] = (413488, localLabels0_507) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_507_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
