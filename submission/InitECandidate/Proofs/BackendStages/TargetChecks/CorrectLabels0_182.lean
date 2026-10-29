import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_182
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_182
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_182_eq : LabToTarget.sectionLabels 104064 Initial182.lines [] = (104868, localLabels0_182) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_182_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
