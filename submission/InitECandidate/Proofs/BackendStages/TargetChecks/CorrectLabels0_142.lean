import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_142
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_142
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_142_eq : LabToTarget.sectionLabels 32184 Initial142.lines [] = (32472, localLabels0_142) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_142_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
