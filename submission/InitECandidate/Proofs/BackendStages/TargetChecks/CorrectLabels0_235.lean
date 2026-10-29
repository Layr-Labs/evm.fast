import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_235
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_235
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_235_eq : LabToTarget.sectionLabels 182080 Initial235.lines [] = (184724, localLabels0_235) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_235_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
