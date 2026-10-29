import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_313
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_313
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_313_eq : LabToTarget.sectionLabels 264708 Initial313.lines [] = (265532, localLabels0_313) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_313_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
