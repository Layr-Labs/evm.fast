import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_336
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_336
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_336_eq : LabToTarget.sectionLabels 289056 Initial336.lines [] = (289272, localLabels0_336) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_336_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
