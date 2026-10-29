import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_375
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_375
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_375_eq : LabToTarget.sectionLabels 312832 Initial375.lines [] = (312856, localLabels0_375) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_375_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
