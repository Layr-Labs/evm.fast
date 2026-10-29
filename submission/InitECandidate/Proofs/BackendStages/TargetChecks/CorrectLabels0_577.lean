import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_577
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_577
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_577_eq : LabToTarget.sectionLabels 477212 Initial577.lines [] = (477868, localLabels0_577) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_577_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
