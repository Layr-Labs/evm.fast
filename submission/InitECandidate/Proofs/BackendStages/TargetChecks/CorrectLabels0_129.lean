import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_129
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_129
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_129_eq : LabToTarget.sectionLabels 24812 Initial129.lines [] = (26024, localLabels0_129) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_129_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
