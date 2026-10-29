import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_513
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_513
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_513_eq : LabToTarget.sectionLabels 417848 Initial513.lines [] = (418552, localLabels0_513) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_513_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
