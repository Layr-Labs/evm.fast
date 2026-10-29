import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_574
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_574
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_574_eq : LabToTarget.sectionLabels 473932 Initial574.lines [] = (474972, localLabels0_574) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_574_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
