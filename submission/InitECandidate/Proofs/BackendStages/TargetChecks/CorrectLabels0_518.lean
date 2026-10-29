import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_518
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_518
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_518_eq : LabToTarget.sectionLabels 421424 Initial518.lines [] = (422484, localLabels0_518) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_518_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
