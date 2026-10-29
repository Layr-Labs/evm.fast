import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_164
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_164
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_164_eq : LabToTarget.sectionLabels 97924 Initial164.lines [] = (98620, localLabels0_164) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_164_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
