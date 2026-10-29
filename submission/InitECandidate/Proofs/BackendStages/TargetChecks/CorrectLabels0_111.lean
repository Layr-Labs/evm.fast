import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_111
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_111
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_111_eq : LabToTarget.sectionLabels 13608 Initial111.lines [] = (13636, localLabels0_111) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_111_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
